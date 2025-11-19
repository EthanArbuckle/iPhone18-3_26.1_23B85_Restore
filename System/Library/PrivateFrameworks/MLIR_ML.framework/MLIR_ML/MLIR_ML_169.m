__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZNS2_4ODIE8Compiler6CoreML11Specializer14specializeFromEPNS2_9OperationEENK3__0clESA_EUlNS7_13ParamBindAttrEE_SC_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSE_E_NS_9allocatorISN_EEFNS2_10WalkResultESE_EE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286893D18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZNS2_4ODIE8Compiler6CoreML11Specializer14specializeFromEPNS2_9OperationEENK3__0clESA_EUlNS7_13ParamBindAttrEE_SC_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSE_E_NS_9allocatorISN_EEFNS2_10WalkResultESE_EEclEOSE_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    return 1;
  }

  v4 = *(a1 + 8);
  v5 = v4[15];
  v6 = v4[14];
  v7 = *(**(a1 + 16) + 24);
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 * (v5 - v6) - 1;
  }

  v9 = v4[18] + v4[17];
  if (v8 == v9)
  {
    std::deque<mlir::SymbolOpInterface>::__add_back_capacity(v4 + 13);
    v6 = v4[14];
    v9 = v4[18] + v4[17];
  }

  v10 = (*(v6 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9);
  *v10 = v7;
  v10[1] = v2;
  ++v4[18];
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZNS2_4ODIE8Compiler6CoreML11Specializer14specializeFromEPNS2_9OperationEENK3__0clESA_EUlNS7_13ParamBindAttrEE_SC_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSE_E_NS_9allocatorISN_EEFNS2_10WalkResultESE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir14AttrTypeWalker7addWalkIZZNS_4ODIE8Compiler6CoreML11Specializer14specializeFromEPNS_9OperationEENK3$_0clES7_EUlNS4_13ParamBindAttrEE_S9_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir14AttrTypeWalker7addWalkIZZNS_4ODIE8Compiler6CoreML11Specializer14specializeFromEPNS_9OperationEENK3$_0clES7_EUlNS4_13ParamBindAttrEE_S9_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir14AttrTypeWalker7addWalkIZZNS_4ODIE8Compiler6CoreML11Specializer14specializeFromEPNS_9OperationEENK3$_0clES7_EUlNS4_13ParamBindAttrEE_S9_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir14AttrTypeWalker7addWalkIZZNS_4ODIE8Compiler6CoreML11Specializer14specializeFromEPNS_9OperationEENK3$_0clES7_EUlNS4_13ParamBindAttrEE_S9_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSB_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::Specializer::specializeBinding(mlir::ODIE::Compiler::CoreML::PendingSpecialization)::$_1>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::NoTerminator,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait,mlir::RegionKindInterface::Trait,mlir::OpTrait::HasOnlyGraphRegion>();
  }

  if (!(*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 2;
  }

  InterfaceFor = mlir::SymbolTableCollection::lookupSymbolIn(v4 + 8, a2, **(a1 + 16));
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
    if (InterfaceFor)
    {
      InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *a1;
  *v8 = v6;
  v8[1] = InterfaceFor;
  return **a1 == 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreML11Specializer17specializeBindingENSA_21PendingSpecializationEE3__0NSA_12ParamRefAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISI_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSF_E_NS_9allocatorIST_EEFNSK_INSL_ISF_SM_EEEESF_EE7__cloneEPNS0_6__baseISY_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286893D98;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreML11Specializer17specializeBindingENSA_21PendingSpecializationEE3__0NSA_12ParamRefAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISI_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSF_E_NS_9allocatorIST_EEFNSK_INSL_ISF_SM_EEEESF_EEclEOSF_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    v4 = *(result + 8);
    v12 = *a2;
    Name = mlir::ODIE::Compiler::CoreML::ParamRefAttr::getName(&v12);
    Value = mlir::StringAttr::getValue(&Name);
    v7 = v6;
    v9 = llvm::StringMapImpl::hash(Value, v6, v8);
    result = llvm::StringMapImpl::FindKey(v4, Value, v7, v9);
    if (result == -1 || result == *(v4 + 8) || (v10 = *(*(*v4 + 8 * result) + 8)) == 0)
    {
      v10 = v12;
    }

    *a3 = v10;
    *(a3 + 8) = 1;
    *(a3 + 16) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZNS2_4ODIE8Compiler6CoreML11Specializer17specializeBindingENSA_21PendingSpecializationEE3__0NSA_12ParamRefAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISI_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSF_E_NS_9allocatorIST_EEFNSK_INSL_ISF_SM_EEEESF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreML11Specializer17specializeBindingENS7_21PendingSpecializationEE3$_0NS7_12ParamRefAttrENS_9AttributeESC_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSD_8optionalINSD_4pairISG_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSC_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreML11Specializer17specializeBindingENS7_21PendingSpecializationEE3$_0NS7_12ParamRefAttrENS_9AttributeESC_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSD_8optionalINSD_4pairISG_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSC_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreML11Specializer17specializeBindingENS7_21PendingSpecializationEE3$_0NS7_12ParamRefAttrENS_9AttributeESC_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSD_8optionalINSD_4pairISG_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSC_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZNS_4ODIE8Compiler6CoreML11Specializer17specializeBindingENS7_21PendingSpecializationEE3$_0NS7_12ParamRefAttrENS_9AttributeESC_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSD_8optionalINSD_4pairISG_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSC_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::tensorOfValueExceptDimension(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t **a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = a4;
  v6 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = 0;
  }

  v23 = v6;
  if (!v6)
  {
    return 0;
  }

  mlir::RankedTensorType::getShape(&v23);
  v25 = v27;
  v26 = 0xC00000000;
  if (v12 >= 0xD)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v12)
  {
    v14 = vdupq_n_s64(v12 - 1);
    v15 = vmovn_s64(vcgeq_u64(v14, xmmword_2573686A0));
    if (vuzp1_s16(v15, *v14.i8).u8[0])
    {
      v27[0] = a5;
    }

    v16 = v12 + 3;
    if (vuzp1_s16(v15, *&v14).i8[2])
    {
      v27[1] = a5;
    }

    if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, xmmword_2573695C0))).i32[1])
    {
      v27[2] = a5;
      v17 = v16 & 0x1C;
      v27[3] = a5;
      if (v17 == 4)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v17 = v16 & 0x1C;
      if (v17 == 4)
      {
        goto LABEL_30;
      }
    }

    v18 = vmovn_s64(vcgtq_u64(v14, xmmword_2573686C0));
    if (vuzp1_s16(v18, *v14.i8).u8[0])
    {
      v27[4] = a5;
    }

    if (vuzp1_s16(v18, *&v14).i8[2])
    {
      v27[5] = a5;
    }

    if (vuzp1_s16(*&v14, vmovn_s64(vcgtq_u64(v14, xmmword_2573695F0))).i32[1])
    {
      v27[6] = a5;
      v27[7] = a5;
      if (v17 == 8)
      {
        goto LABEL_30;
      }
    }

    else if (v17 == 8)
    {
      goto LABEL_30;
    }

    v19 = vmovn_s64(vcgtq_u64(v14, xmmword_25738FDC0));
    if (vuzp1_s16(v19, *v14.i8).u8[0])
    {
      v27[8] = a5;
    }

    if (vuzp1_s16(v19, *&v14).i8[2])
    {
      v27[9] = a5;
    }

    v20 = vmovn_s64(vcgtq_u64(v14, xmmword_25738FDD0));
    if (vuzp1_s16(v20, v20).i32[1])
    {
      v27[10] = a5;
      v27[11] = a5;
    }
  }

LABEL_30:
  LODWORD(v26) = v12;
  Loc = mlir::Value::getLoc(&v24);
  result = mlir::ODIE::Compiler::tensorFromConstantWithValue(a1, a2, a3, Loc, v25, v26, a6);
  if (v25 != v27)
  {
    v22 = result;
    free(v25);
    return v22;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::tensorFromConstantWithValue(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t **a7)
{
  v26 = *MEMORY[0x277D85DE8];
  Type = a2;
  v25 = 0;
  v12 = mlir::ValueRange::dereference_iterator(&Type, 0);
  v21 = 0;
  v22 = 0;
  RawIntOrFloat = &v22;
  Type = a1;
  result = mlir::Value::getDefiningOp(&Type);
  if (result)
  {
    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&RawIntOrFloat, result))
    {
      RawIntOrFloat = &v21;
      Type = v12;
      result = mlir::Value::getDefiningOp(&Type);
      if (result)
      {
        if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&RawIntOrFloat, result))
        {
          mlir::DenseElementsAttr::isValidIntOrFloat(&v21, 4, 1, 1u);
          RawData = mlir::DenseElementsAttr::getRawData(&v21);
          mlir::DenseElementsAttr::isSplat(&v21);
          mlir::DenseElementsAttr::getType(&v21);
          mlir::DenseElementsAttr::getNumElements(&v21);
          v15 = *RawData;
          mlir::DenseElementsAttr::isValidIntOrFloat(&v22, 4, 1, 1u);
          v16 = mlir::DenseElementsAttr::getRawData(&v22);
          mlir::DenseElementsAttr::isSplat(&v22);
          mlir::DenseElementsAttr::getType(&v22);
          mlir::DenseElementsAttr::getNumElements(&v22);
          *(a5 + 4 * *v16) = v15;
          v23 = a6;
          IntegerType = mlir::Builder::getIntegerType(a7, 32, 1);
          Type = mlir::RankedTensorType::get(&v23, 1, IntegerType, 0);
          v18 = mlir::TensorType::operator mlir::ShapedType(&Type);
          RawIntOrFloat = mlir::DenseElementsAttr::getRawIntOrFloat(v18);
          Type = mlir::DenseElementsAttr::getType(&RawIntOrFloat);
          v25 = v19;
          return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ShapedType,mlir::DenseElementsAttr &>(a7, a4, &Type, &RawIntOrFloat) - 16;
        }

        else
        {
          return 0;
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

uint64_t mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ShapedType,mlir::DenseElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v21[38] = *MEMORY[0x277D85DE8];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ElementsAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v11 = *a3;
  v13 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a4);
  if (v13)
  {
    v14 = *(v12 + 24);
  }

  else
  {
    v14 = 0;
  }

  mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, v21, v11, v13, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
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

void *mlir::ODIE::Compiler::getRank0ToNWithLast2DimensionsSwapped(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = a1;
  result = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (result)
  {
    result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(result);
    v4 = result;
    v5 = v2;
    if (result)
    {
      mlir::ShapedType::getShape(&v4);
      if (v3 >= 2)
      {
        if (!(v3 >> 62))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      return 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::getAttrFromValue(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = 0;
  v5[1] = 0;
  if (!a2)
  {
    return 0;
  }

  result = mlir::ValueRange::dereference_iterator(v6, 0);
  if (!result)
  {
    return result;
  }

  v4 = mlir::ValueRange::dereference_iterator(v6, 0);
  DefiningOp = mlir::Value::getDefiningOp(&v4);
  {
    mlir::ODIE::Compiler::CoreML::ConcatOp::refineReturnTypes();
  }

  if (*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) && (v4 = v5, (mlir::detail::constant_op_binder<mlir::TypedAttr>::match(&v4, DefiningOp)))
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

llvm::APFloatBase *mlir::ODIE::Compiler::getAttrOfType(llvm::APFloatBase *result, uint64_t a2, uint64_t a3, int a4)
{
  v108 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return result;
  }

  v6 = result;
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v106 = result;
    mlir::IntegerAttr::getValue(&v106, v105);
    v102 = a3;
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v102);
    llvm::APInt::sextOrTrunc(v105, IntOrFloatBitWidth, v107);
    result = mlir::IntegerAttr::get(a3, v107);
    if (DWORD2(v107[0]) >= 0x41 && *&v107[0])
    {
      v20 = result;
      MEMORY[0x259C63150](*&v107[0], 0x1000C8000313F17);
      result = v20;
    }

    if (DWORD2(v105[0]) >= 0x41 && *&v105[0])
    {
      v21 = result;
      MEMORY[0x259C63150](*&v105[0], 0x1000C8000313F17);
      result = v21;
    }

    if (a4)
    {
      if (result)
      {
        v22 = *result;
        {
          v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v24 = *(v22 + 8);
          v25 = *(v22 + 16);
          if (!v25)
          {
            return result;
          }
        }

        else
        {
          v95 = result;
          mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
          result = v95;
          v23 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v24 = *(v22 + 8);
          v25 = *(v22 + 16);
          if (!v25)
          {
            return result;
          }
        }

        v26 = v24;
        v27 = v25;
        do
        {
          v28 = v27 >> 1;
          v29 = &v26[2 * (v27 >> 1)];
          v31 = *v29;
          v30 = v29 + 2;
          v27 += ~(v27 >> 1);
          if (v31 < v23)
          {
            v26 = v30;
          }

          else
          {
            v27 = v28;
          }
        }

        while (v27);
      }

      return result;
    }

    if (result)
    {
      v62 = *result;
      {
        v63 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v64 = *(v62 + 8);
        v65 = *(v62 + 16);
        if (!v65)
        {
          return mlir::ODIE::Compiler::getDenseFromScalar(result, 0);
        }
      }

      else
      {
        v96 = result;
        mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
        result = v96;
        v63 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v64 = *(v62 + 8);
        v65 = *(v62 + 16);
        if (!v65)
        {
          return mlir::ODIE::Compiler::getDenseFromScalar(result, 0);
        }
      }

      v66 = v64;
      v67 = v65;
      do
      {
        v68 = v67 >> 1;
        v69 = &v66[2 * (v67 >> 1)];
        v71 = *v69;
        v70 = v69 + 2;
        v67 += ~(v67 >> 1);
        if (v71 < v63)
        {
          v66 = v70;
        }

        else
        {
          v67 = v68;
        }
      }

      while (v67);
      if (v66 == &v64[2 * v65] || *v66 != v63)
      {
        return mlir::ODIE::Compiler::getDenseFromScalar(result, 0);
      }

      return mlir::ODIE::Compiler::getDenseFromScalar(result, v66[1]);
    }

    return mlir::ODIE::Compiler::getDenseFromScalar(result, 0);
  }

  if (mlir::DenseIntElementsAttr::classof(result))
  {
    v106 = v6;
    v104 = a3;
    if (!a4)
    {
      *&v105[0] = &v104;
      *&v107[0] = mlir::DenseIntElementsAttr::mapValues(&v106, a3, llvm::function_ref<llvm::APInt ()(llvm::APInt const&)>::callback_fn<mlir::ODIE::Compiler::getAttrOfType(mlir::DenseIntElementsAttr,mlir::Type,BOOL)::$_0>, v105);
      return mlir::DenseElementsAttr::operator mlir::ElementsAttr(v107);
    }

    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v106, v107);
    v105[0] = v107[0];
    v105[1] = v107[1];
    mlir::DenseElementsAttr::IntElementIterator::operator*(v105, &v102);
    *&v105[0] = a3;
    v7 = mlir::Type::getIntOrFloatBitWidth(v105);
    llvm::APInt::sextOrTrunc(&v102, v7, v107);
    result = mlir::IntegerAttr::get(a3, v107);
    if (DWORD2(v107[0]) >= 0x41 && *&v107[0])
    {
      v8 = result;
      MEMORY[0x259C63150](*&v107[0], 0x1000C8000313F17);
      result = v8;
    }

    if (result)
    {
      v9 = *result;
      {
        v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        if (!v12)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v97 = result;
        mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
        result = v97;
        v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        if (!v12)
        {
          goto LABEL_141;
        }
      }

      v13 = v11;
      v14 = v12;
      do
      {
        v15 = v14 >> 1;
        v16 = &v13[2 * (v14 >> 1)];
        v18 = *v16;
        v17 = v16 + 2;
        v14 += ~(v14 >> 1);
        if (v18 < v10)
        {
          v13 = v17;
        }

        else
        {
          v14 = v15;
        }
      }

      while (v14);
      if (v13 != &v11[2 * v12] && *v13 == v10)
      {
        if (v103 < 0x41)
        {
          return result;
        }

        goto LABEL_142;
      }
    }

LABEL_141:
    if (v103 < 0x41)
    {
      return result;
    }

LABEL_142:
    if (v102)
    {
      v98 = result;
      MEMORY[0x259C63150](v102, 0x1000C8000313F17);
      return v98;
    }

    return result;
  }

  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    mlir::DenseFPElementsAttr::classof(v6);
    *&v105[0] = v6;
    v32 = *(*a3 + 136);
    if (v32 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v102 = a3;
      if (!a4)
      {
LABEL_131:
        v106 = &v102;
        *&v107[0] = mlir::DenseFPElementsAttr::mapValues(v105, a3, llvm::function_ref<llvm::APInt ()(llvm::APFloat const&)>::callback_fn<mlir::ODIE::Compiler::getAttrOfType(mlir::DenseFPElementsAttr,mlir::Type,BOOL)::$_0>, &v106);
        return mlir::DenseElementsAttr::operator mlir::ElementsAttr(v107);
      }
    }

    else
    {
      v102 = 0;
      if (!a4)
      {
        goto LABEL_131;
      }
    }

    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v105, v107);
    v49 = llvm::APFloat::convertToDouble(v107);
    v50 = mlir::FloatAttr::get(a3, v49);
    if (!v50)
    {
      v61 = 0;
      v94 = *(&v107[0] + 1);
      if (llvm::APFloatBase::PPCDoubleDouble(0) != v94)
      {
LABEL_150:
        llvm::detail::IEEEFloat::~IEEEFloat((v107 + 8));
        return v61;
      }

LABEL_152:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat((v107 + 8));
      return v61;
    }

    v51 = *v50;
    {
      v52 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v53 = *(v51 + 8);
      v54 = *(v51 + 16);
      if (v54)
      {
LABEL_89:
        v55 = v53;
        v56 = v54;
        do
        {
          v57 = v56 >> 1;
          v58 = &v55[2 * (v56 >> 1)];
          v60 = *v58;
          v59 = v58 + 2;
          v56 += ~(v56 >> 1);
          if (v60 < v52)
          {
            v55 = v59;
          }

          else
          {
            v56 = v57;
          }
        }

        while (v56);
        v61 = v50;
        if (v55 != &v53[2 * v54] && *v55 == v52)
        {
          v101 = *(&v107[0] + 1);
          if (llvm::APFloatBase::PPCDoubleDouble(v50) != v101)
          {
            goto LABEL_150;
          }

          goto LABEL_152;
        }

        goto LABEL_149;
      }
    }

    else
    {
      v99 = v50;
      mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
      v50 = v99;
      v52 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v53 = *(v51 + 8);
      v54 = *(v51 + 16);
      if (v54)
      {
        goto LABEL_89;
      }
    }

    v61 = v50;
LABEL_149:
    v100 = *(&v107[0] + 1);
    if (llvm::APFloatBase::PPCDoubleDouble(v50) != v100)
    {
      goto LABEL_150;
    }

    goto LABEL_152;
  }

  *&v105[0] = v6;
  mlir::FloatAttr::getValue(v105, v107);
  v72 = llvm::APFloat::convertToDouble(v107);
  v73 = mlir::FloatAttr::get(a3, v72);
  v74 = *(&v107[0] + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(v73) == v74)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat((v107 + 8));
    result = v73;
    if (a4)
    {
      goto LABEL_109;
    }

LABEL_119:
    if (result)
    {
      v85 = *result;
      {
        v86 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v87 = *(v85 + 8);
        v88 = *(v85 + 16);
        if (v88)
        {
          goto LABEL_122;
        }
      }

      else
      {
        mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
        result = v73;
        v86 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v87 = *(v85 + 8);
        v88 = *(v85 + 16);
        if (v88)
        {
LABEL_122:
          v66 = v87;
          v89 = v88;
          do
          {
            v90 = v89 >> 1;
            v91 = &v66[2 * (v89 >> 1)];
            v93 = *v91;
            v92 = v91 + 2;
            v89 += ~(v89 >> 1);
            if (v93 < v86)
            {
              v66 = v92;
            }

            else
            {
              v89 = v90;
            }
          }

          while (v89);
LABEL_158:
          if (v66 == &v87[2 * v88] || *v66 != v86)
          {
            return mlir::ODIE::Compiler::getDenseFromScalar(result, 0);
          }

          return mlir::ODIE::Compiler::getDenseFromScalar(result, v66[1]);
        }
      }

      v88 = 0;
      v66 = v87;
      goto LABEL_158;
    }

    return mlir::ODIE::Compiler::getDenseFromScalar(result, 0);
  }

  llvm::detail::IEEEFloat::~IEEEFloat((v107 + 8));
  result = v73;
  if (!a4)
  {
    goto LABEL_119;
  }

LABEL_109:
  if (!result)
  {
    return result;
  }

  v75 = *result;
  {
    v76 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v77 = *(v75 + 8);
    v78 = *(v75 + 16);
    if (!v78)
    {
      return result;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
    result = v73;
    v76 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v77 = *(v75 + 8);
    v78 = *(v75 + 16);
    if (!v78)
    {
      return result;
    }
  }

  v79 = v77;
  v80 = v78;
  do
  {
    v81 = v80 >> 1;
    v82 = &v79[2 * (v80 >> 1)];
    v84 = *v82;
    v83 = v82 + 2;
    v80 += ~(v80 >> 1);
    if (v84 < v76)
    {
      v79 = v83;
    }

    else
    {
      v80 = v81;
    }
  }

  while (v80);
  return result;
}

llvm::APFloatBase *mlir::ODIE::Compiler::getAttrOfType(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  AttrFromValue = mlir::ODIE::Compiler::getAttrFromValue(a1, a2);

  return mlir::ODIE::Compiler::getAttrOfType(AttrFromValue, v7, a3, a4);
}

void *mlir::ODIE::Compiler::getDenseFromScalar(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  Type = mlir::TypedAttr::getType(v9);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(Type);
  if (!v3)
  {
    v5 = mlir::TypedAttr::getType(v9);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v5);
    v8 = mlir::RankedTensorType::get(0, 0, ElementTypeOrSelf, 0);
    v3 = mlir::TensorType::operator mlir::ShapedType(&v8);
  }

  v8 = mlir::DenseElementsAttr::get(v3, v4, v9, 1uLL);
  return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v8);
}

BOOL mlir::ODIE::Compiler::isOperationDelegated(mlir::ODIE::Compiler *this, mlir::Operation *a2)
{
  do
  {
    v2 = *(this + 2);
    if (v2)
    {
      this = mlir::Block::getParentOp(v2);
      if (this)
      {
        continue;
      }
    }

    return 0;
  }

  while (*(*(this + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp,void>::id);
  v7 = this;
  DelegateId = mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getDelegateId(&v7);
  if (v4 != 11)
  {
    return 1;
  }

  return *DelegateId != 0x6572707265746E49 || *(DelegateId + 3) != 0x7265746572707265;
}

uint64_t mlir::ODIE::Compiler::getHandleForToken(uint64_t a1)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    v2 = *(*(result + 48) + 16);
    if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReadHandleOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::WriteHandleOp,void>::id)
    {
      return *(*(result + 72) + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::TypedAttr>::match(void **a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v9[0] = v10;
    v9[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v9);
    v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible((*v9[0] & 0xFFFFFFFFFFFFFFF8));
    result = v6 != 0;
    if (v6)
    {
      v7 = *a1;
      if (*a1)
      {
        *v7 = v6;
        v7[1] = v5;
      }
    }

    if (v9[0] != v10)
    {
      v8 = v6 != 0;
      free(v9[0]);
      return v8;
    }
  }

  return result;
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&)>::callback_fn<mlir::ODIE::Compiler::getAttrOfType(mlir::DenseIntElementsAttr,mlir::Type,BOOL)::$_0>@<X0>(mlir::Type **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(*a1);

  return llvm::APInt::sextOrTrunc(a2, IntOrFloatBitWidth, a3);
}

void llvm::function_ref<llvm::APInt ()(llvm::APFloat const&)>::callback_fn<mlir::ODIE::Compiler::getAttrOfType(mlir::DenseFPElementsAttr,mlir::Type,BOOL)::$_0>(llvm::APFloatBase *a1@<X0>, uint64_t a2@<X1>, llvm::APInt *a3@<X8>)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v5);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v11, v5);
  }

  v9 = 0;
  FloatSemantics = mlir::FloatType::getFloatSemantics(*a1);
  llvm::APFloat::convert(v10, FloatSemantics, 1, &v9);
  if (v7 == v11[0])
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(v11, a3);
    if (v7 != v11[0])
    {
      goto LABEL_6;
    }

LABEL_9:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v11);
    return;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(v11, a3);
  if (v7 == v11[0])
  {
    goto LABEL_9;
  }

LABEL_6:
  llvm::detail::IEEEFloat::~IEEEFloat(v11);
}

uint64_t mlir::detail::Parser::parseAffineMapOrIntegerSetReference(mlir::detail::Parser *this, mlir::AffineMap *a2, mlir::IntegerSet *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(this + 1);
  v26 = **v5;
  v27 = v5;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v33;
  v32 = 0x400000000;
  v18 = 0;
  v19 = 0;
  *&v34 = &v19;
  *(&v34 + 1) = &v26;
  {
    goto LABEL_10;
  }

  v6 = v27;
  v7 = *(v27 + 14);
  if (v7 == 22)
  {
    *&v34 = &v18;
    *(&v34 + 1) = &v26;
    {
      goto LABEL_10;
    }

    v6 = v27;
    if (*(v27 + 14) != 13)
    {
LABEL_5:
      *&v34 = "expected '->' or ':'";
      v36 = 259;
      if (mlir::detail::Parser::parseToken(&v26, 15, &v34))
      {
        v8 = v18;
        v9 = v19;
        *&v34 = v35;
        *(&v34 + 1) = 0x400000000;
        v22[2] = &v23;
        v23 = &v25;
        v24 = xmmword_25736EFF0;
        v22[0] = &v26;
        v22[1] = &v34;
        {
          if (DWORD2(v34))
          {
            *a3 = mlir::IntegerSet::get(v9, v8, v34, DWORD2(v34), v23, v24);
            v11 = 1;
            v12 = v23;
            if (v23 == &v25)
            {
              goto LABEL_22;
            }
          }

          else
          {
            AffineConstantExpr = mlir::getAffineConstantExpr(0, **v27, v10);
            v11 = 1;
            v20 = 1;
            *a3 = mlir::IntegerSet::get(v9, v8, &AffineConstantExpr, 1, &v20, 1);
            v12 = v23;
            if (v23 == &v25)
            {
LABEL_22:
              v17 = v34;
              if (v34 == v35)
              {
                goto LABEL_11;
              }

              goto LABEL_23;
            }
          }
        }

        else
        {
          v11 = 0;
          v12 = v23;
          if (v23 == &v25)
          {
            goto LABEL_22;
          }
        }

        free(v12);
        goto LABEL_22;
      }

LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    if (v7 != 13)
    {
      goto LABEL_5;
    }
  }

  *(v6 + 5) = *(v6 + 7);
  v6[12] = v6[9];
  mlir::Lexer::lexToken((v6 + 1), &v34);
  v14 = v27;
  *(v27 + 7) = v34;
  v14[9] = v35[0];
  v16 = v18;
  v15 = v19;
  *&v34 = v35;
  *(&v34 + 1) = 0x400000000;
  v23 = &v26;
  *&v24 = &v34;
  {
    *a2 = mlir::AffineMap::get(v15, v16, v34, DWORD2(v34), **v27);
    v11 = 1;
    v17 = v34;
    if (v34 == v35)
    {
      goto LABEL_11;
    }

LABEL_23:
    free(v17);
    goto LABEL_11;
  }

  v11 = 0;
  v17 = v34;
  if (v34 != v35)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (v31 != v33)
  {
    free(v31);
  }

  return v11;
}

BOOL mlir::detail::Parser::parseAffineMapReference(mlir::detail::Parser *this, mlir::AffineMap *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v17 = 0;
  if ((mlir::detail::Parser::parseAffineMapOrIntegerSetReference(this, a2, &v17) & 1) == 0)
  {
    return 0;
  }

  if (!v17)
  {
    return 1;
  }

  v15 = "expected AffineMap, but got IntegerSet";
  v16 = 259;
  mlir::detail::Parser::emitError(this, Loc, &v15, v18);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v24;
      v8 = __p;
      if (v24 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v24 = v6;
      operator delete(v8);
    }

    v9 = v21;
    if (v21)
    {
      v10 = v22;
      v11 = v21;
      if (v22 != v21)
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
        v11 = v21;
      }

      v22 = v9;
      operator delete(v11);
    }

    if (v19 != &v20)
    {
      free(v19);
    }
  }

  return v5;
}

BOOL mlir::detail::Parser::parseAffineExprReference(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = 0;
  v16[12] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v10[0] = **v6;
  v10[1] = v6;
  v11 = 0;
  v12 = 0;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((24 * a3) >> 3);
  v13 = 0;
  v14 = v16;
  v15 = 0x400000000;
  if (v7 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3)
  {
    memcpy(v14, a2, 24 * a3);
    v5 = v15;
  }

  LODWORD(v15) = v5 + v7;
  *a4 = v8;
  if (v14 != v16)
  {
    free(v14);
  }

  return v8 != 0;
}

BOOL mlir::detail::Parser::parseIntegerSetReference(mlir::detail::Parser *this, mlir::IntegerSet *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v17 = 0;
  if ((mlir::detail::Parser::parseAffineMapOrIntegerSetReference(this, &v17, a2) & 1) == 0)
  {
    return 0;
  }

  if (!v17)
  {
    return 1;
  }

  v15 = "expected IntegerSet, but got AffineMap";
  v16 = 259;
  mlir::detail::Parser::emitError(this, Loc, &v15, v18);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v24;
      v8 = __p;
      if (v24 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v24 = v6;
      operator delete(v8);
    }

    v9 = v21;
    if (v21)
    {
      v10 = v22;
      v11 = v21;
      if (v22 != v21)
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
        v11 = v21;
      }

      v22 = v9;
      operator delete(v11);
    }

    if (v19 != &v20)
    {
      free(v19);
    }
  }

  return v5;
}

uint64_t mlir::detail::Parser::parseAffineMapOfSSAIds(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v10 = **v6;
  v11 = v6;
  v12 = 1;
  v13 = a3;
  v14 = a4;
  v15 = 0;
  v16 = v18;
  v17 = 0x400000000;
  v19 = v21;
  v20 = 0x400000000;
  v9[0] = &v10;
  v9[1] = &v19;
  v7 = 0;
  {
    *a2 = mlir::AffineMap::get(v15, v17 - v15, v19, v20, **v11);
    v7 = 1;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  return v7;
}

BOOL mlir::detail::Parser::parseAffineExprOfSSAIds(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v15[12] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v8[0] = **v5;
  v8[1] = v5;
  v9 = 1;
  v10 = a3;
  v11 = a4;
  v12 = 0;
  v13 = v15;
  v14 = 0x400000000;
  *a2 = v6;
  if (v13 != v15)
  {
    free(v13);
  }

  return v6 != 0;
}

void parseAffineMapOrIntegerSet(uint64_t a1, uint64_t a2, uint64_t **a3, mlir::AffineMap *a4, mlir::IntegerSet *a5)
{
  v76[6] = *MEMORY[0x277D85DE8];
  llvm::SourceMgr::SourceMgr(&v34);
  llvm::MemoryBuffer::getMemBuffer(a1, a2, "<mlir_parser_buffer>", 20, &v33);
  v10 = v33;
  v33 = 0;
  v51[1] = 0;
  v51[0] = 0;
  v50 = v10;
  if (v35 >= v36)
  {
    v11 = std::vector<llvm::SourceMgr::SrcBuffer>::__emplace_back_slow_path<llvm::SourceMgr::SrcBuffer>(&v34, &v50);
  }

  else
  {
    v11 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v35, &v50) + 3;
  }

  v35 = v11;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v50);
  v28[0] = 0;
  v28[1] = 0;
  v28[2] = 0x1000000000;
  v28[3] = 0;
  v28[4] = 0;
  v28[5] = 0x1000000000;
  v28[6] = 0;
  v28[7] = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v67 = a3;
  v68 = 1;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = v75;
  v74 = 0x600000000;
  v75[6] = v76;
  v75[7] = 0x600000000;
  v50 = &v67;
  mlir::Lexer::Lexer(v51, &v34, a3, 0);
  mlir::Lexer::lexToken(v51, &v52);
  v54 = 1;
  v55 = "";
  v56 = 0;
  v59 = 0;
  v57 = v28;
  v58 = 0;
  v60 = 0;
  v61 = v63;
  v62 = 0;
  v63[1] = 0;
  v63[0] = 0;
  v66[0] = "builtin";
  v66[1] = 7;
  v64 = v66;
  v65 = 0x300000001;
  v27[0] = *v50;
  v27[1] = &v50;
  v13 = llvm::errs(v12);
  v37 = 0u;
  *v38 = 0u;
  mlir::SourceMgrDiagnosticHandler::SourceMgrDiagnosticHandler(v49, &v34, a3, v13, &v37);
  v14 = v38[1];
  if (v38[1] >= 8)
  {
    if ((v38[1] & 4) != 0)
    {
      if ((v38[1] & 2) != 0)
      {
        v15 = &v37;
      }

      else
      {
        v15 = v37;
      }

      (*((v38[1] & 0xFFFFFFFFFFFFFFF8) + 16))(v15);
    }

    if ((v14 & 2) == 0)
    {
      llvm::deallocate_buffer(v37, *(&v37 + 1));
    }
  }

  if (mlir::detail::Parser::parseAffineMapOrIntegerSetReference(v27, a4, a5))
  {
    v25 = v52;
    v26 = v53;
    if (v52)
    {
      Loc = mlir::Token::getLoc(&v25);
      *&v37 = "encountered unexpected token";
      v39 = 259;
      mlir::detail::Parser::emitError(v27, Loc, &v37, v40);
      if (v40[0])
      {
        mlir::InFlightDiagnostic::report(v40);
      }

      if (v48 == 1)
      {
        if (v47 != &v48)
        {
          free(v47);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v46;
          v19 = __p;
          if (v46 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v46 = v17;
          operator delete(v19);
        }

        v20 = v43;
        if (v43)
        {
          v21 = v44;
          v22 = v43;
          if (v44 != v43)
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
            v22 = v43;
          }

          v44 = v20;
          operator delete(v22);
        }

        if (v41 != &v42)
        {
          free(v41);
        }
      }
    }
  }

  mlir::SourceMgrDiagnosticHandler::~SourceMgrDiagnosticHandler(v49);
  if (v64 != v66)
  {
    free(v64);
  }

  if (v61 != v63)
  {
    free(v61);
  }

  llvm::deallocate_buffer(v58, (8 * v60));
}

void sub_256EF7F7C()
{
  if (v0)
  {
    (*(*v0 + 8))();
  }

  llvm::SourceMgr::~SourceMgr(&v1);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseDimIdList(unsigned int &)::$_0>(unsigned int **a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  *v3 = v5 + 1;
  AffineDimExpr = mlir::getAffineDimExpr(v5, ***(v4 + 8), a3);
}

uint64_t anonymous namespace::AffineParser::parseIdentifierDefinition(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = *(v4 + 56);
  if (v5 == 3 || v5 == 12)
  {
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    if (!v10)
    {
LABEL_30:
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v38);
      v22 = *(a1 + 8);
      *(v22 + 56) = v38;
      *(v22 + 72) = v39;
      *&v38 = v8;
      *(&v38 + 1) = v7;
      v39 = a2;
      v23 = *(a1 + 56);
      v24 = *(a1 + 48);
      if (v23 >= *(a1 + 60))
      {
        if (v24 > &v38 || v24 + 24 * v23 <= &v38)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25 = v24 + 24 * *(a1 + 56);
      v26 = v38;
      *(v25 + 16) = v39;
      *v25 = v26;
      ++*(a1 + 56);
      return 1;
    }

LABEL_7:
    v11 = v9 + 24 * v10;
    while (*(v9 + 8) != v7 || v7 && memcmp(*v9, v8, v7))
    {
      v9 += 24;
      if (v9 == v11)
      {
        goto LABEL_30;
      }
    }

    v35 = 1283;
    v34[0] = "redefinition of identifier '";
    v34[2] = v8;
    v34[3] = v7;
    v36[0] = v34;
    v36[2] = "'";
    v37 = 770;
    mlir::detail::Parser::emitError(a1, v36, &v38);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
    if (v38)
    {
      mlir::InFlightDiagnostic::report(&v38);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v45;
        v15 = __p;
        if (v45 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v45 = v13;
        operator delete(v15);
      }

      v16 = v42;
      if (!v42)
      {
        goto LABEL_51;
      }

      v17 = v43;
      v18 = v42;
      if (v43 == v42)
      {
LABEL_50:
        v43 = v16;
        operator delete(v18);
LABEL_51:
        if (v40 != &v41)
        {
          free(v40);
        }

        return v12;
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
LABEL_49:
      v18 = v42;
      goto LABEL_50;
    }

    return v12;
  }

  if (mlir::Token::isKeyword((v4 + 56)))
  {
    v4 = *(a1 + 8);
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    if (!v10)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  v36[0] = "expected bare identifier";
  v37 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, v36, &v38);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    mlir::InFlightDiagnostic::report(&v38);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v45;
      v30 = __p;
      if (v45 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v45 = v28;
      operator delete(v30);
    }

    v16 = v42;
    if (!v42)
    {
      goto LABEL_51;
    }

    v31 = v43;
    v18 = v42;
    if (v43 == v42)
    {
      goto LABEL_50;
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

    while (v31 != v16);
    goto LABEL_49;
  }

  return v12;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseSymbolIdList(unsigned int &)::$_0>(unsigned int **a1, uint64_t a2, mlir::MLIRContext *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = **a1;
  *v3 = v5 + 1;
  AffineSymbolExpr = mlir::getAffineSymbolExpr(v5, ***(v4 + 8), a3);
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseAffineMapRange(unsigned int,unsigned int,mlir::AffineMap &)::$_0>(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v3 + 8 * v4) = v2;
  ++*(v3 + 8);
  return v2 != 0;
}

uint64_t anonymous namespace::AffineParser::parseAffineLowPrecOpExpr(mlir::detail::Parser *a1, uint64_t a2, int a3)
{
  AffineBinaryOpExpr = v6;
  if (v6)
  {
    v8 = *(a1 + 1);
    v9 = (v8 + 56);
    v10 = *(v8 + 56);
    if (v10 == 24)
    {
      *(v8 + 80) = *v9;
      *(v8 + 96) = *(v8 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
      v14 = *(a1 + 1);
      *(v14 + 56) = v34;
      *(v14 + 72) = v35;
      v12 = 2;
      if (a2)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

    if (v10 == 25)
    {
      *(v8 + 80) = *v9;
      *(v8 + 96) = *(v8 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
      v11 = *(a1 + 1);
      *(v11 + 56) = v34;
      *(v11 + 72) = v35;
      v12 = 1;
      if (a2)
      {
LABEL_5:
        *&v34 = a2;
        if (a3 == 1)
        {
          v13 = mlir::AffineExpr::operator+(&v34, AffineBinaryOpExpr);
        }

        else
        {
          v13 = mlir::AffineExpr::operator-(&v34, AffineBinaryOpExpr);
        }

        v16 = v13;
        v15 = a1;
        goto LABEL_17;
      }

LABEL_8:
      v15 = a1;
      v16 = AffineBinaryOpExpr;
LABEL_17:
      v25 = v12;
    }

    Loc = mlir::Token::getLoc(v9);
    if (!v18)
    {
      if (!a2)
      {
        return AffineBinaryOpExpr;
      }

      *&v34 = a2;
      if (a3 == 1)
      {
        return mlir::AffineExpr::operator+(&v34, AffineBinaryOpExpr);
      }

      else
      {
        return mlir::AffineExpr::operator-(&v34, AffineBinaryOpExpr);
      }
    }

    v19 = v18;
    if (v20)
    {
      while (1)
      {
        v21 = v20;
        v22 = mlir::Token::getLoc((*(a1 + 1) + 56));
        if (!v23)
        {
          break;
        }

        v24 = v19;
        Loc = v22;
        v19 = v23;
        if (!AffineBinaryOpExpr)
        {
          return AffineBinaryOpExpr;
        }

        if (!v20)
        {
          return 0;
        }
      }

      if (AffineBinaryOpExpr)
      {
        if (a2)
        {
          *&v34 = a2;
          if (a3 == 1)
          {
            v28 = mlir::AffineExpr::operator+(&v34, AffineBinaryOpExpr);
          }

          else
          {
            v28 = mlir::AffineExpr::operator-(&v34, AffineBinaryOpExpr);
          }

          AffineBinaryOpExpr = v28;
        }

        v29 = *(a1 + 1);
        v30 = (v29 + 56);
        v31 = *(v29 + 56);
        if (v31 == 24)
        {
          *(v29 + 80) = *v30;
          *(v29 + 96) = *(v29 + 72);
          mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
          v33 = *(a1 + 1);
          *(v33 + 56) = v34;
          *(v33 + 72) = v35;
          v25 = 2;
        }

        else
        {
          if (v31 != 25)
          {
            return AffineBinaryOpExpr;
          }

          *(v29 + 80) = *v30;
          *(v29 + 96) = *(v29 + 72);
          mlir::Lexer::lexToken((*(a1 + 1) + 8), &v34);
          v32 = *(a1 + 1);
          *(v32 + 56) = v34;
          *(v32 + 72) = v35;
          v25 = 1;
        }

        v15 = a1;
        v16 = AffineBinaryOpExpr;
      }
    }

    else
    {
      return 0;
    }
  }

  return AffineBinaryOpExpr;
}

void anonymous namespace::AffineParser::parseAffineOperandExpr(mlir::detail::Parser *a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1);
  v5 = *(v2 + 56);
  v3 = (v2 + 56);
  v4 = v5;
  if (v5 > 20)
  {
    v6 = (v4 - 25);
    if (v6 <= 0x32)
    {
      if (((1 << (v4 - 25)) & 0x80800004000) != 0)
      {
        goto LABEL_43;
      }

      if (((1 << (v4 - 25)) & 0x21) != 0)
      {
        if (a2)
        {
          v75[0] = "missing right operand of binary operator";
          v77 = 259;
          mlir::detail::Parser::emitError(a1, v75, v66);
          if (v66[0])
          {
            mlir::InFlightDiagnostic::report(v66);
          }

          if (v74 != 1)
          {
            return;
          }

          if (v73 != &v74)
          {
            free(v73);
          }

          v7 = __p;
          if (__p)
          {
            v8 = v72;
            v9 = __p;
            if (v72 != __p)
            {
              do
              {
                v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
              }

              while (v8 != v7);
              v9 = __p;
            }

            v72 = v7;
            operator delete(v9);
          }

          v10 = v69;
          if (v69)
          {
            v11 = v70;
            v12 = v69;
            if (v70 != v69)
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
              v12 = v69;
            }

            v70 = v10;
            operator delete(v12);
          }

          v49 = v67;
          if (v67 == &v68)
          {
            return;
          }
        }

        else
        {
          v75[0] = "missing left operand of binary operator";
          v77 = 259;
          mlir::detail::Parser::emitError(a1, v75, v57);
          if (v57[0])
          {
            mlir::InFlightDiagnostic::report(v57);
          }

          if (v65 != 1)
          {
            return;
          }

          if (v64 != &v65)
          {
            free(v64);
          }

          v40 = v62;
          if (v62)
          {
            v41 = v63;
            v42 = v62;
            if (v63 != v62)
            {
              do
              {
                v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
              }

              while (v41 != v40);
              v42 = v62;
            }

            v63 = v40;
            operator delete(v42);
          }

          v43 = v60;
          if (v60)
          {
            v44 = v61;
            v45 = v60;
            if (v61 != v60)
            {
              do
              {
                v47 = *--v44;
                v46 = v47;
                *v44 = 0;
                if (v47)
                {
                  MEMORY[0x259C63150](v46, 0x1000C8077774924);
                }
              }

              while (v44 != v43);
              v45 = v60;
            }

            v61 = v43;
            operator delete(v45);
          }

          v49 = v58;
          if (v58 == &v59)
          {
            return;
          }
        }

        goto LABEL_104;
      }

      if (v6 == 50)
      {
        v75[0] = "expected symbol keyword";
        v77 = 259;
        v22 = a1;
        if ((mlir::detail::Parser::parseToken(a1, 75, v75) & 1) == 0)
        {
          return;
        }

        *&v50 = "expected '(' at start of SSA symbol";
        v52 = 259;
        if ((mlir::detail::Parser::parseToken(v22, 21, &v50) & 1) == 0)
        {
          return;
        }

        if (!v23)
        {
          return;
        }

        v24 = "expected ')' at end of SSA symbol";
LABEL_90:
        v75[0] = v24;
        v77 = 259;
        mlir::detail::Parser::parseToken(v22, 28, v75);
        return;
      }
    }

    if (v4 == 21)
    {
      v75[0] = "expected '('";
      v77 = 259;
      v22 = a1;
      if ((mlir::detail::Parser::parseToken(a1, 21, v75) & 1) == 0)
      {
        return;
      }

      v31 = v22;
      if (*(*(v22 + 1) + 56) != 28)
      {
        {
          return;
        }

        v24 = "expected ')'";
        goto LABEL_90;
      }

      *&v50 = "no expression inside parentheses";
      v52 = 259;
    }

    else
    {
      if (v4 != 24)
      {
        goto LABEL_42;
      }

      v75[0] = "expected '-'";
      v77 = 259;
      v26 = a1;
      if ((mlir::detail::Parser::parseToken(a1, 24, v75) & 1) == 0)
      {
        return;
      }

      if (v27)
      {
        v75[0] = v27;
        mlir::AffineExpr::operator*(v75, -1);
        return;
      }

      *&v50 = "missing operand of negation";
      v52 = 259;
      v31 = v26;
    }

    mlir::detail::Parser::emitError(v31, &v50, v75);
    if (v75[0])
    {
      mlir::InFlightDiagnostic::report(v75);
    }

    if (v84 == 1)
    {
      v48 = v75;
      goto LABEL_100;
    }

    return;
  }

  if (v4 > 9)
  {
    if (v4 != 10)
    {
      if (v4 != 12)
      {
        goto LABEL_42;
      }

LABEL_43:
      return;
    }

    v15 = a1;
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(*(a1 + 1) + 64), *(*(a1 + 1) + 72));
    if (v17)
    {
      v18 = UInt64IntegerValue;
      if ((UInt64IntegerValue & 0x8000000000000000) == 0)
      {
        v19 = v15[1];
        *(v19 + 5) = *(v19 + 56);
        *(v19 + 12) = *(v19 + 9);
        mlir::Lexer::lexToken((v15[1] + 8), &v50);
        v20 = v15[1];
        *(v20 + 56) = v50;
        *(v20 + 9) = v51;
        mlir::Builder::getAffineConstantExpr(v15, v18, v21);
        return;
      }
    }

    *&v50 = "constant too large for index";
    v52 = 259;
    mlir::detail::Parser::emitError(v15, &v50, v75);
    if (v75[0])
    {
      mlir::InFlightDiagnostic::report(v75);
    }

    if (v84 != 1)
    {
      return;
    }

    if (v83 != &v84)
    {
      free(v83);
    }

    v32 = v81;
    if (v81)
    {
      v33 = v82;
      v34 = v81;
      if (v82 != v81)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = v81;
      }

      v82 = v32;
      operator delete(v34);
    }

    v35 = v79;
    if (v79)
    {
      v36 = v80;
      v37 = v79;
      if (v80 != v79)
      {
        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v36 != v35);
        v37 = v79;
      }

      v80 = v35;
      operator delete(v37);
    }

    v49 = v76;
    if (v76 == &v78)
    {
      return;
    }

LABEL_104:
    free(v49);
    return;
  }

  if (v4 == 3)
  {
    goto LABEL_43;
  }

  if (v4 == 6)
  {
    return;
  }

LABEL_42:
  v28 = a1;
  isKeyword = mlir::Token::isKeyword(v3);
  a1 = v28;
  if (isKeyword)
  {
    goto LABEL_43;
  }

  if (a2)
  {
    v75[0] = "missing right operand of binary operator";
    v77 = 259;
    mlir::detail::Parser::emitError(v28, v75, v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v56 == 1)
    {
      v48 = v55;
LABEL_100:
      mlir::Diagnostic::~Diagnostic((v48 + 1));
    }
  }

  else
  {
    v75[0] = "expected affine expression";
    v77 = 259;
    mlir::detail::Parser::emitError(v28, v75, v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v54 == 1)
    {
      v48 = v53;
      goto LABEL_100;
    }
  }
}

uint64_t anonymous namespace::AffineParser::consumeIfHighPrecOp(_anonymous_namespace_::AffineParser *this)
{
  result = 0;
  v3 = *(this + 1);
  v4 = (v3 + 56);
  v5 = *(v3 + 56);
  if (v5 > 59)
  {
    if (v5 == 60)
    {
      *(v3 + 80) = *v4;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
      v9 = *(this + 1);
      *(v9 + 56) = v10;
      *(v9 + 72) = v11;
      return 2;
    }

    else if (v5 == 68)
    {
      *(v3 + 80) = *v4;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
      v7 = *(this + 1);
      *(v7 + 56) = v10;
      *(v7 + 72) = v11;
      return 4;
    }
  }

  else if (v5 == 30)
  {
    *(v3 + 80) = *v4;
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
    v8 = *(this + 1);
    *(v8 + 56) = v10;
    *(v8 + 72) = v11;
    return 1;
  }

  else if (v5 == 39)
  {
    *(v3 + 80) = *v4;
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
    v6 = *(this + 1);
    *(v6 + 56) = v10;
    *(v6 + 72) = v11;
    return 3;
  }

  return result;
}

__n128 anonymous namespace::AffineParser::parseSSAIdExpr(mlir::MLIRContext ****this, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  if ((this[2] & 1) == 0)
  {
    v38.n128_u64[0] = "unexpected ssa identifier";
    v40 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v38, v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 != 1)
    {
      return result;
    }

    if (v57 != &v58)
    {
      free(v57);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v56;
      v16 = __p;
      if (v56 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v56 = v14;
      operator delete(v16);
    }

    v17 = v53;
    if (v53)
    {
      v18 = v54;
      v19 = v53;
      if (v54 != v53)
      {
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
        v19 = v53;
      }

      v54 = v17;
      operator delete(v19);
    }

    v33 = v51;
    if (v51 == &v52)
    {
      return result;
    }

LABEL_48:
    free(v33);
    return result;
  }

  v3 = this[1];
  if (*(v3 + 14) != 6)
  {
    v38.n128_u64[0] = "expected ssa identifier";
    v40 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v38, v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 != 1)
    {
      return result;
    }

    if (v48 != &v49)
    {
      free(v48);
    }

    v22 = v46;
    if (v46)
    {
      v23 = v47;
      v24 = v46;
      if (v47 != v46)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = v46;
      }

      v47 = v22;
      operator delete(v24);
    }

    v25 = v44;
    if (v44)
    {
      v26 = v45;
      v27 = v44;
      if (v45 != v44)
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
        v27 = v44;
      }

      v45 = v25;
      operator delete(v27);
    }

    v33 = v42;
    if (v42 == &v43)
    {
      return result;
    }

    goto LABEL_48;
  }

  v6 = v3[8];
  v5 = v3[9];
  v7 = this[6];
  v8 = *(this + 14);
  if (v8)
  {
    v9 = &v7[3 * v8];
    v10 = v7 + 2;
    while (1)
    {
      v11 = v10 - 2;
      if (*(v10 - 1) == v5 && (!v5 || !memcmp(*(v10 - 2), v6, v5)))
      {
        break;
      }

      v10 += 3;
      if (v11 + 3 == v9)
      {
        goto LABEL_42;
      }
    }

    *(v3 + 5) = *(v3 + 7);
    v3[12] = v3[9];
    mlir::Lexer::lexToken((this[1] + 1), &v38);
    v12 = this[1];
    result.n128_u64[0] = v38.n128_u64[0];
    *(v12 + 7) = v38;
    v12[9] = v39;
  }

  else
  {
LABEL_42:
    if ((this[3])(this[4], a2))
    {
      if (a2)
      {
        v31 = *(this + 11);
        *(this + 11) = v31 + 1;
        AffineSymbolExpr = mlir::getAffineSymbolExpr(v31, **this[1], v30);
      }

      else
      {
        v34 = *(this + 10);
        *(this + 10) = v34 + 1;
        AffineSymbolExpr = mlir::getAffineDimExpr(v34, **this[1], v30);
      }

      v38.n128_u64[0] = v6;
      v38.n128_u64[1] = v5;
      v39 = AffineSymbolExpr;
      v35 = *(this + 14);
      v36 = this[6];
      if (v35 >= *(this + 15))
      {
        if (v36 <= &v38 && &v36[3 * v35] > &v38)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v37 = &v36[3 * *(this + 14)];
      result = v38;
      v37[1].n128_u64[0] = v39;
      *v37 = result;
      ++*(this + 14);
    }
  }

  return result;
}

uint64_t anonymous namespace::AffineParser::parseBareIdExpr(_anonymous_namespace_::AffineParser *this)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3 == 3 || v3 == 12)
  {
    v5 = *(this + 14);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::Token::isKeyword((v2 + 56)))
    {
      *&v33 = "expected bare identifier";
      v35 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, &v33, v45);
      if (v45[0])
      {
        mlir::InFlightDiagnostic::report(v45);
      }

      if (v53 != 1)
      {
        return 0;
      }

      if (v52 != &v53)
      {
        free(v52);
      }

      v24 = v50;
      if (v50)
      {
        v25 = v51;
        v26 = v50;
        if (v51 != v50)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = v50;
        }

        v51 = v24;
        operator delete(v26);
      }

      v27 = v48;
      if (v48)
      {
        v28 = v49;
        v29 = v48;
        if (v49 != v48)
        {
          do
          {
            v31 = *--v28;
            v30 = v31;
            *v28 = 0;
            if (v31)
            {
              MEMORY[0x259C63150](v30, 0x1000C8077774924);
            }
          }

          while (v28 != v27);
          v29 = v48;
        }

        v49 = v27;
        operator delete(v29);
      }

      v32 = v46;
      if (v46 == &v47)
      {
        return 0;
      }

LABEL_50:
      free(v32);
      return 0;
    }

    v2 = *(this + 1);
    v5 = *(this + 14);
    if (!v5)
    {
LABEL_15:
      *&v33 = "use of undeclared identifier";
      v35 = 259;
      mlir::detail::Parser::emitWrongTokenError(this, &v33, v36);
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }

      if (v44 != 1)
      {
        return 0;
      }

      if (v43 != &v44)
      {
        free(v43);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v42;
        v18 = __p;
        if (v42 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v42 = v16;
        operator delete(v18);
      }

      v19 = v39;
      if (v39)
      {
        v20 = v40;
        v21 = v39;
        if (v40 != v39)
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
          v21 = v39;
        }

        v40 = v19;
        operator delete(v21);
      }

      v32 = v37;
      if (v37 == &v38)
      {
        return 0;
      }

      goto LABEL_50;
    }
  }

  v6 = *(this + 6);
  v7 = (v6 + 24 * v5);
  v9 = *(v2 + 64);
  v8 = *(v2 + 72);
  v10 = (v6 + 16);
  while (1)
  {
    v11 = v10 - 2;
    if (*(v10 - 1) == v8 && (!v8 || !memcmp(*(v10 - 2), v9, v8)))
    {
      break;
    }

    v10 += 3;
    if (v11 + 3 == v7)
    {
      goto LABEL_15;
    }
  }

  v12 = *v10;
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v33);
  result = v12;
  v14 = *(this + 1);
  *(v14 + 56) = v33;
  *(v14 + 72) = v34;
  return result;
}

uint64_t anonymous namespace::AffineParser::getAffineBinaryOpExpr(uint64_t a1, int a2, mlir::MLIRContext **a3, uint64_t a4, const char *a5)
{
  v81 = *MEMORY[0x277D85DE8];
  v43 = a4;
  v44 = a3;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (mlir::AffineExpr::isSymbolicOrConstant(&v44) & 1) != 0 || (mlir::AffineExpr::isSymbolicOrConstant(&v43))
      {
        return mlir::AffineExpr::operator*(&v44, v43);
      }

      v41[0] = "non-affine expression: at least one of the multiply operands has to be either a constant or symbolic";
      v42 = 259;
      mlir::detail::Parser::emitError(a1, a5, v41, v72);
      if (v72[0])
      {
        mlir::InFlightDiagnostic::report(v72);
      }

      if (v80 != 1)
      {
        return 0;
      }

      if (v79 != &v80)
      {
        free(v79);
      }

      v32 = v77;
      if (v77)
      {
        v33 = v78;
        v34 = v77;
        if (v78 != v77)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = v77;
        }

        v78 = v32;
        operator delete(v34);
      }

      v35 = v75;
      if (v75)
      {
        v36 = v76;
        v37 = v75;
        if (v76 != v75)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              MEMORY[0x259C63150](v38, 0x1000C8077774924);
            }
          }

          while (v36 != v35);
          v37 = v75;
        }

        v76 = v35;
        operator delete(v37);
      }

      v40 = v73;
      if (v73 == &v74)
      {
        return 0;
      }
    }

    else
    {
      if (mlir::AffineExpr::isSymbolicOrConstant(&v43))
      {
        return mlir::AffineExpr::floorDiv(&v44, v43);
      }

      v41[0] = "non-affine expression: right operand of floordiv has to be either a constant or symbolic";
      v42 = 259;
      mlir::detail::Parser::emitError(a1, a5, v41, v63);
      if (v63[0])
      {
        mlir::InFlightDiagnostic::report(v63);
      }

      if (v71 != 1)
      {
        return 0;
      }

      if (v70 != &v71)
      {
        free(v70);
      }

      v16 = v68;
      if (v68)
      {
        v17 = v69;
        v18 = v68;
        if (v69 != v68)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = v68;
        }

        v69 = v16;
        operator delete(v18);
      }

      v19 = v66;
      if (v66)
      {
        v20 = v67;
        v21 = v66;
        if (v67 != v66)
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
          v21 = v66;
        }

        v67 = v19;
        operator delete(v21);
      }

      v40 = v64;
      if (v64 == &v65)
      {
        return 0;
      }
    }

    goto LABEL_88;
  }

  if (a2 == 3)
  {
    if (mlir::AffineExpr::isSymbolicOrConstant(&v43))
    {
      return mlir::AffineExpr::ceilDiv(&v44, v43);
    }

    v41[0] = "non-affine expression: right operand of ceildiv has to be either a constant or symbolic";
    v42 = 259;
    mlir::detail::Parser::emitError(a1, a5, v41, v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v62 != 1)
    {
      return 0;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v60;
      v10 = __p;
      if (v60 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v60 = v8;
      operator delete(v10);
    }

    v11 = v57;
    if (v57)
    {
      v12 = v58;
      v13 = v57;
      if (v58 != v57)
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
        v13 = v57;
      }

      v58 = v11;
      operator delete(v13);
    }

    v40 = v55;
    if (v55 == &v56)
    {
      return 0;
    }

    goto LABEL_88;
  }

  if (mlir::AffineExpr::isSymbolicOrConstant(&v43))
  {
    return mlir::AffineExpr::operator%(&v44, v43);
  }

  v41[0] = "non-affine expression: right operand of mod has to be either a constant or symbolic";
  v42 = 259;
  mlir::detail::Parser::emitError(a1, a5, v41, v45);
  if (v45[0])
  {
    mlir::InFlightDiagnostic::report(v45);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v24 = v50;
    if (v50)
    {
      v25 = v51;
      v26 = v50;
      if (v51 != v50)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = v50;
      }

      v51 = v24;
      operator delete(v26);
    }

    v27 = v48;
    if (v48)
    {
      v28 = v49;
      v29 = v48;
      if (v49 != v48)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            MEMORY[0x259C63150](v30, 0x1000C8077774924);
          }
        }

        while (v28 != v27);
        v29 = v48;
      }

      v49 = v27;
      operator delete(v29);
    }

    v40 = v46;
    if (v46 != &v47)
    {
LABEL_88:
      free(v40);
    }
  }

  return 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseIntegerSetConstraints(unsigned int,unsigned int,mlir::IntegerSet &)::$_0>(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!v32)
  {
    return 0;
  }

  v3 = *(v2 + 1);
  v4 = *(v3 + 56);
  if (v4 == 19)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
    v5 = *(v2 + 1);
    *(v5 + 56) = v29;
    *(v5 + 72) = v30;
    v3 = *(v2 + 1);
    v4 = *(v3 + 56);
    if (v4 == 18)
    {
      *(v3 + 80) = *(v3 + 56);
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
      v6 = *(v2 + 1);
      *(v6 + 56) = v29;
      *(v6 + 72) = v30;
      if (v7)
      {
        result = mlir::AffineExpr::operator-(&v32, v7);
        v9 = 0;
        if (!result)
        {
          return result;
        }

        goto LABEL_17;
      }

      return 0;
    }
  }

  if (v4 == 18)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
    v13 = *(v2 + 1);
    *(v13 + 56) = v29;
    *(v13 + 72) = v30;
    v14 = *(v2 + 1);
    if (*(v14 + 56) == 18)
    {
      *(v14 + 80) = *(v14 + 56);
      *(v14 + 96) = *(v14 + 72);
      mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
      v15 = *(v2 + 1);
      *(v15 + 56) = v29;
      *(v15 + 72) = v30;
      if (v16)
      {
        result = mlir::AffineExpr::operator-(&v32, v16);
        v9 = 1;
        if (!result)
        {
          return result;
        }

        goto LABEL_17;
      }

      return 0;
    }

LABEL_20:
    *&v29 = "expected '== affine-expr' or '>= affine-expr' at end of affine constraint";
    v31 = 259;
    mlir::detail::Parser::emitError(v2, &v29, v33);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v39;
        v23 = __p;
        if (v39 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v39 = v21;
        operator delete(v23);
      }

      v24 = v36;
      if (v36)
      {
        v25 = v37;
        v26 = v36;
        if (v37 != v36)
        {
          do
          {
            v28 = *--v25;
            v27 = v28;
            *v25 = 0;
            if (v28)
            {
              MEMORY[0x259C63150](v27, 0x1000C8077774924);
            }
          }

          while (v25 != v24);
          v26 = v36;
        }

        v37 = v24;
        operator delete(v26);
      }

      if (v34 != &v35)
      {
        free(v34);
      }
    }

    return 0;
  }

  if (v4 != 23)
  {
    goto LABEL_20;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
  v10 = *(v2 + 1);
  *(v10 + 56) = v29;
  *(v10 + 72) = v30;
  v11 = *(v2 + 1);
  if (*(v11 + 56) != 18)
  {
    goto LABEL_20;
  }

  *(v11 + 80) = *(v11 + 56);
  *(v11 + 96) = *(v11 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
  v12 = *(v2 + 1);
  *(v12 + 56) = v29;
  *(v12 + 72) = v30;
  *&v29 = result;
  if (result)
  {
    result = mlir::AffineExpr::operator-(&v29, v32);
  }

  v9 = 0;
  if (result)
  {
LABEL_17:
    v17 = *(a1 + 8);
    v18 = *(v17 + 8);
    if (v18 >= *(v17 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v17 + 8 * v18) = result;
    ++*(v17 + 8);
    v19 = *(a1 + 16);
    v20 = v19[1];
    if ((v20 + 1) > v19[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v19 + v20) = v9;
    ++v19[1];
    return 1;
  }

  return result;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseAffineMapOfSSAIds(mlir::AffineMap &,mlir::AsmParser::Delimiter)::$_0>(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v3 + 8 * v4) = v2;
  ++*(v3 + 8);
  return v2 != 0;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::destroyAll(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = *a1;
    v3 = *a1 + 32 * v1;
    do
    {
      if ((*v2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*(v2 + 20))
        {
          v4 = *(v2 + 16);
          if (v4)
          {
            v5 = 0;
            do
            {
              v6 = *(*(v2 + 8) + v5);
              if (v6 != -8 && v6 != 0)
              {
                v8 = *v6;
                if (*(v6 + 31) < 0)
                {
                  operator delete(*(v6 + 1));
                }

                llvm::deallocate_buffer(v6, (v8 + 57));
              }

              v5 += 8;
            }

            while (8 * v4 != v5);
          }
        }

        free(*(v2 + 8));
      }

      v2 += 32;
    }

    while (v2 != v3);
  }
}

void mlir::AsmParserState::Impl::resolveSymbolUses(mlir::AsmParserState::Impl *this)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v29 = v31;
  v30 = 0x600000000;
  v1 = *(this + 96);
  if (v1)
  {
    v3 = *(this + 47);
    v27 = &v3[2 * v1];
    do
    {
      v4 = v3[1];
      if (*(v4 + 8))
      {
        v5 = *v4;
        v6 = *(v4 + 16);
        if (v6)
        {
          v7 = 24 * v6;
          v8 = v5;
          while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v8 += 24;
            v7 -= 24;
            if (!v7)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {
          v8 = v5;
        }

        v9 = v5 + 24 * v6;
        v28 = v3;
        while (v8 != v9)
        {
          LODWORD(v30) = 0;
          if (mlir::SymbolTableCollection::lookupSymbolIn(this + 568, *v3, *v8, &v29))
          {
            v10 = *(v8 + 16);
            if (v10)
            {
              v11 = *(v8 + 8);
              v12 = v11 + (v10 << 6);
              do
              {
                v13 = *(v11 + 8);
                if (v30)
                {
                  v14 = v13 == 0;
                }

                else
                {
                  v14 = 1;
                }

                if (!v14)
                {
                  v15 = *v11;
                  v16 = v29;
                  v17 = v29 + 8 * v30;
                  v18 = *v11 + 16 * v13;
                  do
                  {
                    v19 = *(this + 20);
                    if (v19)
                    {
                      v20 = *(this + 8);
                      v21 = ((*v16 >> 4) ^ (*v16 >> 9)) & (v19 - 1);
                      v22 = *(v20 + 16 * v21);
                      if (v22 == *v16)
                      {
LABEL_26:
                        if (v21 != v19)
                        {
                          v23 = *(*this + 8 * *(v20 + 16 * v21 + 8));
                          v24 = *(v23 + 152);
                          if (v24 >= *(v23 + 156))
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod();
                          }

                          *(*(v23 + 144) + 16 * v24) = *v15;
                          ++*(v23 + 152);
                        }
                      }

                      else
                      {
                        v25 = 1;
                        while (v22 != -4096)
                        {
                          v26 = v21 + v25++;
                          v21 = v26 & (v19 - 1);
                          v22 = *(v20 + 16 * v21);
                          if (v22 == *v16)
                          {
                            goto LABEL_26;
                          }
                        }
                      }
                    }

                    if (++v16 == v17)
                    {
                      break;
                    }

                    ++v15;
                  }

                  while (v15 != v18);
                }

                v11 += 64;
              }

              while (v11 != v12);
            }
          }

          v8 += 24;
          if (v8 == v9)
          {
            v3 = v28;
          }

          else
          {
            v3 = v28;
            do
            {
              if ((*v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                break;
              }

              v8 += 24;
            }

            while (v8 != v9);
          }
        }
      }

LABEL_3:
      v3 += 2;
    }

    while (v3 != v27);
    if (v29 != v31)
    {
      free(v29);
    }
  }
}

void mlir::AsmParserState::AsmParserState(mlir::AsmParserState *this)
{
  operator new();
}

{
  operator new();
}

void mlir::AsmParserState::~AsmParserState(mlir::AsmParserState::Impl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::AsmParserState::Impl::~Impl(v2);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::AsmParserState::Impl::~Impl(v2);
  }
}

mlir::AsmParserState::Impl **mlir::AsmParserState::operator=(mlir::AsmParserState::Impl **result, mlir::AsmParserState::Impl **a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    mlir::AsmParserState::Impl::~Impl(v3);
  }

  return result;
}

uint64_t mlir::AsmParserState::getBlockDef(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 152);
  v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v4 + 16 * v5);
  if (v6 != a2)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & (v3 - 1);
      v6 = *(v4 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v5 == v3)
  {
    return 0;
  }

  return *(*(v2 + 88) + 8 * *(v4 + 16 * v5 + 8));
}

uint64_t mlir::AsmParserState::getOpDef(mlir::AsmParserState *this, Operation *a2)
{
  v2 = *this;
  v3 = *(*this + 80);
  if (!v3)
  {
    return 0;
  }

  v4 = v2[8];
  v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v4 + 16 * v5);
  if (v6 != a2)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & (v3 - 1);
      v6 = *(v4 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v5 == v3)
  {
    return 0;
  }

  return *(*v2 + 8 * *(v4 + 16 * v5 + 8));
}

uint64_t mlir::AsmParserState::getAttributeAliasDef(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = *a1;
  v7 = llvm::StringMapImpl::hash(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey((v6 + 304), a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 312);
  }

  else
  {
    v9 = Key;
  }

  v10 = *(v6 + 304) + 8 * v9;
  if (v10 == *(*a1 + 304) + 8 * *(*a1 + 312))
  {
    return 0;
  }

  else
  {
    return *(*(*a1 + 176) + 8 * *(*v10 + 8));
  }
}

uint64_t mlir::AsmParserState::getTypeAliasDef(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = *a1;
  v7 = llvm::StringMapImpl::hash(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey((v6 + 328), a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 336);
  }

  else
  {
    v9 = Key;
  }

  v10 = *(v6 + 328) + 8 * v9;
  if (v10 == *(*a1 + 328) + 8 * *(*a1 + 336))
  {
    return 0;
  }

  else
  {
    return *(*(*a1 + 240) + 8 * *(*v10 + 8));
  }
}

_BYTE *mlir::AsmParserState::convertIdLocToRange(_BYTE *a1)
{
  if (!a1 || !*a1)
  {
    return a1;
  }

  if (*a1 != 34)
  {
    v9 = a1 + 1;
    v10 = MEMORY[0x277D85DE0];
    while (1)
    {
      v11 = v9;
      v12 = *v9;
      if ((v12 & 0x80000000) != 0)
      {
        if (__maskrune(*v9, 0x500uLL))
        {
          goto LABEL_26;
        }
      }

      else if ((*(v10 + 4 * v12 + 60) & 0x500) != 0)
      {
        goto LABEL_26;
      }

      if (v12 - 36 > 0x3B || ((1 << (v12 - 36)) & 0x800000000000601) == 0)
      {
        return a1;
      }

LABEL_26:
      v9 = v11 + 1;
      if (!*v11)
      {
        return a1;
      }
    }
  }

  v2 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    do
    {
      v4 = v2 + 1;
      v5 = memchr("\n\v\f", v3, 4uLL);
      if (v5 && v5 - "\n\v\f" != -1)
      {
        break;
      }

      if (v3 == 92)
      {
        v7 = *v4;
        v8 = (v7 - 92) > 0x18 || ((1 << (v7 - 92)) & 0x1040001) == 0;
        if (!v8 || v7 == 34)
        {
          v4 = v2 + 2;
        }

        else
        {
          if (llvm::hexDigitValue(char)::LUT[*v4] == -1 || llvm::hexDigitValue(char)::LUT[v2[2]] == -1)
          {
            return a1;
          }

          v4 = v2 + 3;
        }
      }

      v3 = *v4;
      v2 = v4;
    }

    while (*v4);
  }

  return a1;
}

mlir::AsmParserState::Impl::PartialOpDef *mlir::AsmParserState::initialize(mlir::AsmParserState *this, mlir::Operation *a2)
{
  v9 = *(a2 + 6);
  v3 = *this;
  v4 = *(*this + 448);
  if (v4 >= *(*this + 452))
  {
    llvm::SmallVectorTemplateBase<mlir::AsmParserState::Impl::PartialOpDef,false>::growAndEmplaceBack<mlir::OperationName const&>();
  }

  result = mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef((*(v3 + 440) + 8 * v4), &v9);
  ++*(v3 + 448);
  v6 = *this;
  v7 = *(*(v6 + 440) + 8 * *(v6 + 448) - 8);
  if (v7)
  {
    v8 = *(v6 + 512);
    if (v8 >= *(v6 + 516))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v6 + 504) + 8 * v8) = v7;
    ++*(v6 + 512);
  }

  return result;
}

mlir::AsmParserState::Impl::PartialOpDef *mlir::AsmParserState::startOperationDefinition(mlir::AsmParserState *this, const mlir::OperationName *a2)
{
  v2 = *this;
  v3 = *(*this + 448);
  if (v3 >= *(*this + 452))
  {

    llvm::SmallVectorTemplateBase<mlir::AsmParserState::Impl::PartialOpDef,false>::growAndEmplaceBack<mlir::OperationName const&>();
  }

  result = mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef((*(v2 + 440) + 8 * v3), a2);
  ++*(v2 + 448);
  return result;
}

void mlir::AsmParserState::finalize(mlir::AsmParserState *this, mlir::Operation *a2)
{
  v14[1] = a2;
  v4 = *this;
  v5 = *(v4 + 440);
  v6 = *(v4 + 448);
  v7 = v5 + 8 * v6;
  v8 = *(v7 - 8);
  *(v7 - 8) = 0;
  v14[0] = v8;
  LODWORD(v6) = v6 - 1;
  *(v4 + 448) = v6;
  v9 = (v5 + 8 * v6);
  v10 = *v9;
  *v9 = 0;
  if (v10)
  {
    std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](v9, v10);
    v4 = *this;
  }

  if (v8)
  {
    v11 = *(v4 + 384);
    if (v11 >= *(v4 + 388))
    {
      llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>,false>::growAndEmplaceBack<mlir::Operation *&,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>();
    }

    v12 = (*(v4 + 376) + 16 * v11);
    v14[0] = 0;
    *v12 = a2;
    v12[1] = v8;
    *(v4 + 384) = v11 + 1;
  }

  mlir::AsmParserState::Impl::resolveSymbolUses(v4);
  v13 = v14[0];
  v14[0] = 0;
  if (v13)
  {
    std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](v14, v13);
  }
}

void mlir::AsmParserState::finalizeOperationDefinition(uint64_t *a1, uint64_t a2)
{
  v10 = a2;
  v2 = *a1;
  v3 = *(*a1 + 440);
  v4 = *(*a1 + 448);
  v5 = v3 + 8 * v4;
  v6 = *(v5 - 8);
  *(v5 - 8) = 0;
  v9 = v6;
  LODWORD(v4) = v4 - 1;
  *(v2 + 448) = v4;
  v7 = (v3 + 8 * v4);
  v8 = *v7;
  *v7 = 0;
  if (v8)
  {
    std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](v7, v8);
  }

  operator new();
}

uint64_t *mlir::AsmParserState::startRegionDefinition(uint64_t *this)
{
  v1 = *this;
  v2 = *(*(*this + 440) + 8 * *(*this + 448) - 8);
  if (v2)
  {
    v3 = *(v1 + 512);
    if (v3 >= *(v1 + 516))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v1 + 504) + 8 * v3) = v2;
    ++*(v1 + 512);
  }

  return this;
}

uint64_t mlir::AsmParserState::finalizeRegionDefinition(uint64_t this)
{
  if (*(*(*this + 440) + 8 * *(*this + 448) - 8))
  {
    --*(*this + 512);
  }

  return this;
}

_BYTE *mlir::AsmParserState::addDefinition(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v12 = a2;
  v5 = *a1;
  v9 = *(*a1 + 96);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>(v5 + 152, &v12, &v9, &v10);
  if (v11 == 1)
  {
    mlir::AsmParserState::convertIdLocToRange(a3);
    operator new();
  }

  result = mlir::AsmParserState::convertIdLocToRange(a3);
  v7 = *(*(*a1 + 88) + 8 * *(v10 + 8));
  *(v7 + 8) = result;
  *(v7 + 16) = v8;
  return result;
}

void mlir::AsmParserState::addDefinition(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 152);
  v5 = *(*a1 + 168);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = ((v6 >> 4) ^ (v6 >> 9)) & (v5 - 1);
    v8 = *(v4 + 16 * v7);
    if (v8 == v6)
    {
      goto LABEL_8;
    }

    v9 = 1;
    while (v8 != -4096)
    {
      v10 = v7 + v9++;
      v7 = v10 & (v5 - 1);
      v8 = *(v4 + 16 * v7);
      if (v8 == v6)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = *(*a1 + 168);
LABEL_8:
  v11 = *(*(*a1 + 88) + 8 * *(v4 + 16 * v7 + 8));
  v12 = *(a2 + 24);
  v13 = *(v11 + 96);
  v14 = (v12 + 1);
  if (v12 >= v13 && v13 != v14)
  {
    if (v13 <= v14)
    {
      if (*(v11 + 100) < v14)
      {
        llvm::SmallVectorTemplateBase<mlir::AsmParserState::SMDefinition,false>::grow();
      }

      if (v13 != v14)
      {
        v19 = *(v11 + 88);
        v20 = v19 + 80 * v13;
        do
        {
          *(v20 + 48) = 0uLL;
          *(v20 + 64) = 0uLL;
          *v20 = 0uLL;
          *(v20 + 16) = 0uLL;
          *(v20 + 32) = 0uLL;
          *(v20 + 16) = v20 + 32;
          *(v20 + 28) = 3;
          v20 += 80;
        }

        while (v20 != v19 + 80 * v14);
      }
    }

    else
    {
      v16 = 80 * v13;
      v17 = (v16 + *(v11 + 88) - 64);
      v18 = 80 * v14 - v16;
      do
      {
        if (v17 + 2 != *v17)
        {
          free(*v17);
        }

        v17 -= 10;
        v18 += 80;
      }

      while (v18);
    }

    *(v11 + 96) = v14;
  }

  *&v28 = mlir::AsmParserState::convertIdLocToRange(a3);
  *(&v28 + 1) = v21;
  __src = v31;
  v30 = 0x300000000;
  v22 = *(v11 + 88) + 80 * v12;
  *v22 = v28;
  v23 = __src;
  if (v22 != &v28)
  {
    if (__src != v31)
    {
      v24 = *(v22 + 16);
      if (v24 != (v22 + 32))
      {
        free(v24);
        v23 = __src;
      }

      *(v22 + 16) = v23;
      *(v22 + 24) = v30;
      __src = v31;
      HIDWORD(v30) = 0;
      goto LABEL_37;
    }

    v25 = v30;
    v26 = *(v22 + 24);
    if (v26 >= v30)
    {
      if (v30)
      {
        memmove(*(v22 + 16), __src, 16 * v30);
      }

      goto LABEL_36;
    }

    if (*(v22 + 28) < v30)
    {
      *(v22 + 24) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v26)
    {
      memmove(*(v22 + 16), __src, 16 * v26);
      v27 = v30 - v26;
      if (v30 == v26)
      {
LABEL_36:
        *(v22 + 24) = v25;
LABEL_37:
        LODWORD(v30) = 0;
        v23 = __src;
        goto LABEL_38;
      }
    }

    else
    {
      v26 = 0;
      v27 = v30;
      if (!v30)
      {
        goto LABEL_36;
      }
    }

    memcpy((*(v22 + 16) + 16 * v26), __src + 16 * v26, 16 * v27);
    goto LABEL_36;
  }

LABEL_38:
  if (v23 != v31)
  {
    free(v23);
  }
}

uint64_t *mlir::AsmParserState::addAttrAliasDefinition(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v17 = *(*a1 + 184);
  v13 = llvm::StringMapImpl::hash(a2, a3, a3);
  result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>((v12 + 304), a2, a3, v13, &v17);
  if (v15)
  {
    operator new();
  }

  v16 = *(*(*a1 + 176) + 8 * *(*result + 8));
  v16[2] = a4;
  v16[3] = a5;
  v16[12] = a6;
  return result;
}

void mlir::AsmParserState::addTypeAliasDefinition(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v5 = *a1;
  v7 = *(*a1 + 248);
  v6 = llvm::StringMapImpl::hash(a2, a3, a3);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>((v5 + 328), a2, a3, v6, &v7);
  operator new();
}

uint64_t mlir::AsmParserState::addUses(uint64_t result, uint64_t a2, _BYTE **a3, uint64_t a4)
{
  v6 = result;
  v52 = a2;
  if ((~*(a2 + 8) & 7) != 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v15 = *(*result + 152);
    v16 = *(*result + 168);
    if (v16)
    {
      v17 = *(a2 + 16);
      v18 = ((v17 >> 4) ^ (v17 >> 9)) & (v16 - 1);
      v19 = *(v15 + 16 * v18);
      if (v19 == v17)
      {
        goto LABEL_22;
      }

      v20 = 1;
      while (v19 != -4096)
      {
        v21 = v18 + v20++;
        v18 = v21 & (v16 - 1);
        v19 = *(v15 + 16 * v18);
        if (v19 == v17)
        {
          goto LABEL_22;
        }
      }
    }

    v18 = *(*result + 168);
LABEL_22:
    if (a4)
    {
      v24 = *(*(*(*result + 88) + 8 * *(v15 + 16 * v18 + 8)) + 88) + 80 * *(a2 + 24);
      v25 = 8 * a4;
      do
      {
        while (1)
        {
          result = mlir::AsmParserState::convertIdLocToRange(*a3);
          *&v51 = result;
          *(&v51 + 1) = v26;
          v27 = *(v24 + 24);
          if (v27 >= *(v24 + 28))
          {
            break;
          }

          *(*(v24 + 16) + 16 * v27) = v51;
          ++*(v24 + 24);
          ++a3;
          v25 -= 8;
          if (!v25)
          {
            return result;
          }
        }

        result = llvm::SmallVectorTemplateBase<mlir::PromotableAllocationOpInterface,true>::growAndEmplaceBack<mlir::PromotableAllocationOpInterface&>(v24 + 16, &v51);
        ++a3;
        v25 -= 8;
      }

      while (v25);
    }

    return result;
  }

  result = mlir::detail::OpResultImpl::getOwner(v7);
  v8 = *v6;
  v9 = *(*v6 + 80);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v8[8];
  v11 = (v9 - 1) & ((result >> 4) ^ (result >> 9));
  v12 = *(v10 + 16 * v11);
  if (v12 != result)
  {
    v48 = 1;
    while (v12 != -4096)
    {
      v49 = v11 + v48++;
      v11 = v49 & (v9 - 1);
      v12 = *(v10 + 16 * v11);
      if (v12 == result)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_8;
  }

LABEL_7:
  if (v11 == v9)
  {
LABEL_8:
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::operator[]((v8 + 44), &v52);
    v13 = result;
    v14 = *(result + 8);
    if (v14 + ((8 * a4) >> 3) > *(result + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a4)
    {
      result = memcpy((*result + 8 * v14), a3, 8 * a4);
      LODWORD(v14) = *(v13 + 8);
    }

    *(v13 + 8) = v14 + a4;
    return result;
  }

  v22 = *(v7 + 8);
  if ((v22 & 7) == 6)
  {
    v23 = *(v7 + 16) + 6;
  }

  else
  {
    v23 = v22 & 7;
  }

  v28 = 0;
  v29 = *(*v8 + 8 * *(v10 + 16 * v11 + 8));
  v30 = *(v29 + 40);
  v31 = *(v29 + 48);
  v32 = 88 * v31;
  do
  {
    if (v32 == v28)
    {
      return result;
    }

    v33 = *(v30 + v32 - 88);
    v30 -= 88;
    v28 += 88;
  }

  while (v23 < v33);
  if (a4)
  {
    v50 = &a3[a4];
    v34 = v30 + 88 * v31;
    v35 = MEMORY[0x277D85DE0];
    do
    {
      v36 = *a3;
      if (*a3)
      {
        v37 = *a3;
        if (*v36)
        {
          if (*v36 == 34)
          {
            v38 = v36 + 1;
            v39 = v36[1];
            if (v39)
            {
              while (1)
              {
                v37 = v38 + 1;
                result = memchr("\n\v\f", v39, 4uLL);
                if (result && result - "\n\v\f" != -1)
                {
                  break;
                }

                if (v39 == 92)
                {
                  v41 = *v37;
                  v42 = (v41 - 92) > 0x18 || ((1 << (v41 - 92)) & 0x1040001) == 0;
                  if (!v42 || v41 == 34)
                  {
                    v37 = v38 + 2;
                  }

                  else
                  {
                    if (llvm::hexDigitValue(char)::LUT[*v37] == -1 || llvm::hexDigitValue(char)::LUT[v38[2]] == -1)
                    {
                      goto LABEL_58;
                    }

                    v37 = v38 + 3;
                  }
                }

                v39 = *v37;
                v38 = v37;
                if (!*v37)
                {
                  goto LABEL_58;
                }
              }
            }

            else
            {
              v37 = v36 + 1;
            }

            goto LABEL_58;
          }

          v45 = v36 + 1;
          while (2)
          {
            v37 = v45;
            v46 = *v45;
            if ((v46 & 0x80000000) != 0)
            {
              result = __maskrune(*v45, 0x500uLL);
              if (!result)
              {
LABEL_67:
                if (v46 - 36 > 0x3B || ((1 << (v46 - 36)) & 0x800000000000601) == 0)
                {
                  break;
                }
              }
            }

            else
            {
              result = *(v35 + 4 * v46 + 60) & 0x500;
              if (!result)
              {
                goto LABEL_67;
              }
            }

            v45 = (v37 + 1);
            if (!*v37)
            {
              break;
            }

            continue;
          }
        }
      }

      else
      {
        v37 = 0;
      }

LABEL_58:
      v43 = *(v34 + 32);
      if (v43 >= *(v34 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v44 = (*(v34 + 24) + 16 * v43);
      *v44 = v36;
      v44[1] = v37;
      ++*(v34 + 32);
      ++a3;
    }

    while (a3 != v50);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 72 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 72 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>,mlir::Value,llvm::SmallVector<mlir::Value,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<mlir::Value,6u>>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = v7 + 3;
  v7[2] = 0x600000000;
  return v7 + 1;
}

uint64_t mlir::AsmParserState::addUses(uint64_t *a1, uint64_t a2, _BYTE **a3, uint64_t a4)
{
  v17 = a2;
  v7 = *a1;
  v14 = *(*a1 + 96);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>(v7 + 152, &v17, &v14, &v15);
  if (v16 == 1)
  {
    operator new();
  }

  if (a4)
  {
    v9 = *(*(*a1 + 88) + 8 * *(v15 + 8));
    v10 = 8 * a4;
    do
    {
      result = mlir::AsmParserState::convertIdLocToRange(*a3);
      v12 = *(v9 + 32);
      if (v12 >= *(v9 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = (*(v9 + 24) + 16 * v12);
      *v13 = result;
      v13[1] = v11;
      ++*(v9 + 32);
      ++a3;
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

unsigned int *mlir::AsmParserState::addUses(unsigned int *result, uint64_t a2, const void *a3, uint64_t a4)
{
  v11 = a2;
  v4 = *(*result + 512);
  if (v4)
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::operator[](*(*(*result + 504) + 8 * v4 - 8), &v11);
    v7 = result;
    v8 = result[2];
    if (v8 >= result[3])
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::growAndEmplaceBack<llvm::SMRange const*,llvm::SMRange const*>();
    }

    v9 = *result + (v8 << 6);
    *v9 = v9 + 16;
    *(v9 + 8) = 0x300000000;
    if (((16 * a4) >> 4) >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = 0;
    if (a4)
    {
      result = memcpy(*v9, a3, 16 * a4);
      v10 = *(v9 + 8);
    }

    *(v9 + 8) = v10 + a4;
    ++v7[2];
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 24 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 24 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = v5 + 3;
  v5[2] = 0;
  return v5 + 1;
}

uint64_t mlir::AsmParserState::addAttrAliasUses(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = llvm::StringMapImpl::hash(a2, a3, a3);
  result = llvm::StringMapImpl::FindKey((v10 + 304), a2, a3, v11);
  if (result == -1)
  {
    v14 = *(v10 + 312);
  }

  else
  {
    v14 = result;
  }

  v15 = *(v10 + 304) + 8 * v14;
  v16 = *a1;
  if (v15 == *(*a1 + 304) + 8 * *(*a1 + 312))
  {
    v21 = *(v16 + 184);
    v17 = llvm::StringMapImpl::hash(a2, a3, v13);
    llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>((v16 + 304), a2, a3, v17, &v21);
    operator new();
  }

  v18 = *(*(v16 + 176) + 8 * *(*v15 + 8));
  v19 = *(v18 + 40);
  if (v19 >= *(v18 + 44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v20 = (*(v18 + 32) + 16 * v19);
  *v20 = a4;
  v20[1] = a5;
  ++*(v18 + 40);
  return result;
}

uint64_t mlir::AsmParserState::addTypeAliasUses(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = llvm::StringMapImpl::hash(a2, a3, a3);
  result = llvm::StringMapImpl::FindKey((v10 + 328), a2, a3, v11);
  if (result == -1)
  {
    v13 = *(v10 + 336);
  }

  else
  {
    v13 = result;
  }

  v14 = *(*(*a1 + 240) + 8 * *(*(*(v10 + 328) + 8 * v13) + 8));
  v15 = *(v14 + 40);
  if (v15 >= *(v14 + 44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v16 = (*(v14 + 32) + 16 * v15);
  *v16 = a4;
  v16[1] = a5;
  ++*(v14 + 40);
  return result;
}

void mlir::AsmParserState::refineDefinition(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 352);
  v6 = *(*a1 + 368);
  v7 = HIDWORD(a2);
  v8 = 8 * a2;
  if (v6)
  {
    v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
    v10 = (v6 - 1) & (-348639895 * ((v9 >> 47) ^ v9));
    v11 = (v5 + 72 * v10);
    v12 = *v11;
    if (*v11 == a2)
    {
      goto LABEL_8;
    }

    v13 = 1;
    while (v12 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & (v6 - 1);
      v11 = (v5 + 72 * v10);
      v12 = *v11;
      if (*v11 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v11 = (v5 + 72 * v6);
LABEL_8:
  mlir::AsmParserState::addUses(a1, a3, v11[1], *(v11 + 4));
  v15 = *a1;
  v16 = v15[46].i32[0];
  if (v16)
  {
    v17 = v15[44];
    v18 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
    v19 = v16 - 1;
    v20 = v19 & (-348639895 * ((v18 >> 47) ^ v18));
    v21 = (*&v17 + 72 * v20);
    v22 = *v21;
    if (*v21 == a2)
    {
LABEL_10:
      v23 = v21[1];
      if (v23 != v21 + 3)
      {
        free(v23);
      }

      *v21 = -8192;
      v15[45] = vadd_s32(v15[45], 0x1FFFFFFFFLL);
    }

    else
    {
      v24 = 1;
      while (v22 != -4096)
      {
        v25 = v20 + v24++;
        v20 = v25 & v19;
        v21 = (*&v17 + 72 * v20);
        v22 = *v21;
        if (*v21 == a2)
        {
          goto LABEL_10;
        }
      }
    }
  }
}

void std::default_delete<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *(a2 + 4);
    v4 = *a2;
    if (v3)
    {
      v5 = v4 + 24 * v3;
      do
      {
        if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v6 = *(v4 + 8);
          v7 = *(v4 + 16);
          if (v7)
          {
            v8 = v7 << 6;
            v9 = &v6[v8 - 64];
            v10 = -v8;
            do
            {
              if (v9 + 2 != *v9)
              {
                free(*v9);
              }

              v9 -= 8;
              v10 += 64;
            }

            while (v10);
            v6 = *(v4 + 8);
          }

          if (v6 != (v4 + 24))
          {
            free(v6);
          }
        }

        v4 += 24;
      }

      while (v4 != v5);
      v4 = *a2;
      v11 = 24 * *(a2 + 4);
    }

    else
    {
      v11 = 0;
    }

    llvm::deallocate_buffer(v4, v11);
  }
}

void sub_256EFC9A4()
{

  JUMPOUT(0x259C63180);
}

void mlir::AsmParserState::Impl::~Impl(mlir::AsmParserState::Impl *this)
{
  v2 = *(this + 146);
  v3 = *(this + 71);
  if (v2)
  {
    v4 = (v3 + 8);
    v5 = 16 * v2;
    while (1)
    {
      if ((*(v4 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          break;
        }
      }

      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        llvm::deallocate_buffer(*(this + 71), (16 * *(this + 146)));
      }
    }

    llvm::deallocate_buffer(*(v6 + 8), (16 * *(v6 + 24)));
  }

  llvm::deallocate_buffer(v3, 0);
}

char **sub_256EFCD98()
{

  return llvm::SmallVector<std::unique_ptr<mlir::AsmParserState::OperationDefinition>,6u>::~SmallVector(v0);
}

char **llvm::SmallVector<std::unique_ptr<mlir::AsmParserState::BlockDefinition>,6u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[8 * v3];
    do
    {
      v6 = *(v4 - 1);
      v4 -= 8;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        v7 = *(v5 + 88);
        v8 = *(v5 + 96);
        if (v8)
        {
          v9 = &v7[80 * v8 - 64];
          v10 = -80 * v8;
          do
          {
            if (v9 + 2 != *v9)
            {
              free(*v9);
            }

            v9 -= 10;
            v10 += 80;
          }

          while (v10);
          v7 = *(v5 + 88);
        }

        if (v7 != (v5 + 104))
        {
          free(v7);
        }

        v11 = *(v5 + 24);
        if (v11 != (v5 + 40))
        {
          free(v11);
        }

        MEMORY[0x259C63180](v5, 0x10F0C400A026A70);
      }
    }

    while (v4 != v2);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char **llvm::SmallVector<std::unique_ptr<mlir::AsmParserState::OperationDefinition>,6u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[8 * v3];
    do
    {
      v6 = *(v4 - 1);
      v4 -= 8;
      v5 = v6;
      *v4 = 0;
      if (v6)
      {
        v7 = *(v5 + 144);
        if (v7 != (v5 + 160))
        {
          free(v7);
        }

        v8 = *(v5 + 40);
        v9 = *(v5 + 48);
        if (v9)
        {
          v10 = &v8[88 * v9 - 64];
          v11 = -88 * v9;
          do
          {
            if (v10 + 2 != *v10)
            {
              free(*v10);
            }

            v10 -= 11;
            v11 += 88;
          }

          while (v11);
          v8 = *(v5 + 40);
        }

        if (v8 != (v5 + 56))
        {
          free(v8);
        }

        MEMORY[0x259C63180](v5, 0x10F0C401650C48ELL);
      }
    }

    while (v4 != v2);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

mlir::AsmParserState::Impl::PartialOpDef *mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef(mlir::AsmParserState::Impl::PartialOpDef *this, const mlir::OperationName *a2)
{
  *this = 0;
  {
    v4 = a2;
    a2 = v4;
  }

  if ((*(**a2 + 32))(*a2, mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    operator new();
  }

  return this;
}

uint64_t llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::OperationDefinition>,false>::moveElementsForGrow(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *result;
  v4 = (*result + 8 * v2);
  v5 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 < 0xB || ((v6 = v2, v3 < a2 + v6 * 8) ? (v7 = &v3[v6] > a2) : (v7 = 0), v7))
  {
    v10 = a2;
    v11 = *result;
    do
    {
LABEL_12:
      v17 = *v11;
      *v11++ = 0;
      *v10++ = v17;
    }

    while (v11 != v4);
    goto LABEL_16;
  }

  v8 = v5 + 1;
  v9 = (v5 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = (a2 + 8 * v9);
  v11 = &v3[v9];
  v12 = (v3 + 2);
  v13 = (a2 + 16);
  v14 = v9;
  do
  {
    v15 = *(v12 - 1);
    v16 = *v12;
    *(v12 - 1) = 0uLL;
    *v12 = 0uLL;
    *(v13 - 1) = v15;
    *v13 = v16;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    v19 = *--v4;
    v18 = v19;
    *v4 = 0;
    if (v19)
    {
      v20 = *(v18 + 144);
      if (v20 != (v18 + 160))
      {
        free(v20);
      }

      v21 = *(v18 + 40);
      v22 = *(v18 + 48);
      if (v22)
      {
        v23 = &v21[88 * v22 - 64];
        v24 = -88 * v22;
        do
        {
          if (v23 + 2 != *v23)
          {
            free(*v23);
          }

          v23 -= 11;
          v24 += 88;
        }

        while (v24);
        v21 = *(v18 + 40);
      }

      if (v21 != (v18 + 56))
      {
        free(v21);
      }

      result = MEMORY[0x259C63180](v18, 0x10F0C401650C48ELL);
    }
  }

  while (v4 != v3);
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::BlockDefinition>,false>::moveElementsForGrow(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *result;
  v4 = (*result + 8 * v2);
  v5 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 < 0xB || ((v6 = v2, v3 < a2 + v6 * 8) ? (v7 = &v3[v6] > a2) : (v7 = 0), v7))
  {
    v10 = a2;
    v11 = *result;
    do
    {
LABEL_12:
      v17 = *v11;
      *v11++ = 0;
      *v10++ = v17;
    }

    while (v11 != v4);
    goto LABEL_16;
  }

  v8 = v5 + 1;
  v9 = (v5 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = (a2 + 8 * v9);
  v11 = &v3[v9];
  v12 = (v3 + 2);
  v13 = (a2 + 16);
  v14 = v9;
  do
  {
    v15 = *(v12 - 1);
    v16 = *v12;
    *(v12 - 1) = 0uLL;
    *v12 = 0uLL;
    *(v13 - 1) = v15;
    *v13 = v16;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    v19 = *--v4;
    v18 = v19;
    *v4 = 0;
    if (v19)
    {
      v20 = *(v18 + 88);
      v21 = *(v18 + 96);
      if (v21)
      {
        v22 = &v20[80 * v21 - 64];
        v23 = -80 * v21;
        do
        {
          if (v22 + 2 != *v22)
          {
            free(*v22);
          }

          v22 -= 10;
          v23 += 80;
        }

        while (v23);
        v20 = *(v18 + 88);
      }

      if (v20 != (v18 + 104))
      {
        free(v20);
      }

      v24 = *(v18 + 24);
      if (v24 != (v18 + 40))
      {
        free(v24);
      }

      result = MEMORY[0x259C63180](v18, 0x10F0C400A026A70);
    }
  }

  while (v4 != v3);
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 9 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 72 * v11 - 72;
    if (v12 < 0x48)
    {
      v13 = result;
LABEL_14:
      v17 = &result[9 * v11];
      do
      {
        *v13 = -4096;
        v13 += 9;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x48 + 1;
    v13 = &result[9 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[9] = -4096;
      v15 += 18;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -4096;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[9] = -4096;
      v11 += 18;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ HIDWORD(*v4));
        v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15);
        LODWORD(v15) = -348639895 * ((v16 >> 47) ^ v16);
        v17 = *(a1 + 16) - 1;
        v18 = v17 & v15;
        v19 = (*a1 + 72 * v18);
        v20 = *v19;
        if (v14 != *v19)
        {
          v22 = 0;
          v23 = 1;
          while (v20 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v20 == -8192;
            }

            if (v24)
            {
              v22 = v19;
            }

            v25 = v18 + v23++;
            v18 = v25 & v17;
            v19 = (*a1 + 72 * (v25 & v17));
            v20 = *v19;
            if (v14 == *v19)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v19 = v22;
          }
        }

LABEL_14:
        *v19 = v14;
        v19[1] = (v19 + 3);
        v19[2] = 0x600000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=((v19 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v21 = v4[1];
        if (v21 != v4 + 3)
        {
          free(v21);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 3 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    if (v12 < 0x18)
    {
      v13 = result;
LABEL_14:
      v17 = &result[3 * v11];
      do
      {
        *v13 = -4096;
        v13 += 3;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x18 + 1;
    v13 = &result[3 * (v14 & 0x1FFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[3] = -4096;
      v15 += 6;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 24 * v6 - 24;
    if (v8 < 0x18)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[3 * v6];
      do
      {
        *v9 = -4096;
        v9 += 3;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x18 + 1;
    v9 = &v7[3 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[3] = -4096;
      v11 += 6;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    while (1)
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        break;
      }

LABEL_11:
      v4 += 3;
      if (v4 == a3)
      {
        return;
      }
    }

    v15 = *(a1 + 16) - 1;
    v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
    v17 = *a1 + 24 * v16;
    v18 = *v17;
    if (v14 != *v17)
    {
      v24 = 0;
      v25 = 1;
      while (v18 != -4096)
      {
        if (v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = v18 == -8192;
        }

        if (v26)
        {
          v24 = v17;
        }

        v27 = v16 + v25++;
        v16 = v27 & v15;
        v17 = *a1 + 24 * (v27 & v15);
        v18 = *v17;
        if (v14 == *v17)
        {
          goto LABEL_14;
        }
      }

      if (v24)
      {
        v17 = v24;
      }
    }

LABEL_14:
    *v17 = v14;
    *(v17 + 8) = v17 + 24;
    *(v17 + 16) = 0;
    if (*(v4 + 4))
    {
      llvm::SmallVectorImpl<llvm::SmallVector<llvm::SMRange,3u>>::operator=((v17 + 8), v4 + 1);
      v19 = *(v4 + 4);
      ++*(a1 + 8);
      v20 = v4[1];
      if (!v19)
      {
        goto LABEL_22;
      }

      v21 = v19 << 6;
      v22 = &v20[v21 - 64];
      v23 = -v21;
      do
      {
        if (v22 + 2 != *v22)
        {
          free(*v22);
        }

        v22 -= 8;
        v23 += 64;
      }

      while (v23);
    }

    else
    {
      ++*(a1 + 8);
    }

    v20 = v4[1];
LABEL_22:
    if (v20 != (v4 + 3))
    {
      free(v20);
    }

    goto LABEL_11;
  }
}

char **llvm::SmallVectorImpl<llvm::SmallVector<llvm::SMRange,3u>>::operator=(char **a1, char **a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 2;
    v5 = *a2;
    if (*a2 != (a2 + 2))
    {
      v6 = *a1;
      v7 = *(a1 + 2);
      if (v7)
      {
        v8 = v7 << 6;
        v9 = &v6[v8 - 64];
        v10 = -v8;
        do
        {
          if (v9 + 2 != *v9)
          {
            free(*v9);
          }

          v9 -= 8;
          v10 += 64;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != (a1 + 2))
      {
        free(v6);
      }

      *a1 = *a2;
      v11 = a2 + 1;
      a1[1] = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v11 = 0;
      return a1;
    }

    v11 = a2 + 1;
    v13 = *(a2 + 2);
    v14 = *(a1 + 2);
    if (v14 >= v13)
    {
      v17 = *a1;
      if (v13)
      {
        v18 = v13 << 6;
        do
        {
          llvm::SmallVectorImpl<llvm::StringRef>::operator=(v17, v5);
          v5 += 8;
          v17 += 64;
          v18 -= 64;
        }

        while (v18);
        v19 = *a1;
        v14 = *(a1 + 2);
      }

      else
      {
        v19 = *a1;
      }

      v32 = v19 + (v14 << 6);
      while (v32 != v17)
      {
        v34 = *(v32 - 64);
        v32 -= 64;
        v33 = v34;
        if ((v32 + 16) != v34)
        {
          free(v33);
        }
      }

      *(a1 + 2) = v13;
      v35 = *(a2 + 2);
      if (v35)
      {
        v36 = v35 << 6;
        v37 = &(*a2)[v36 - 64];
        v38 = -v36;
        do
        {
          if (v37 + 2 != *v37)
          {
            free(*v37);
          }

          v37 -= 8;
          v38 += 64;
        }

        while (v38);
      }

      goto LABEL_12;
    }

    if (*(a1 + 3) < v13)
    {
      if (v14)
      {
        v15 = &(*a1)[64 * v14 - 64];
        v16 = -64 * v14;
        do
        {
          if (v15 + 2 != *v15)
          {
            free(*v15);
          }

          v15 -= 8;
          v16 += 64;
        }

        while (v16);
      }

      *(a1 + 2) = 0;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::grow();
    }

    if (v14)
    {
      v20 = *a1;
      v21 = v14 << 6;
      do
      {
        llvm::SmallVectorImpl<llvm::StringRef>::operator=(v20, v5);
        v5 += 8;
        v20 += 64;
        v21 -= 64;
      }

      while (v21);
      v22 = *a2;
      v23 = *(a2 + 2);
      if (v14 != v23)
      {
LABEL_31:
        v24 = *a1;
        v25 = v14 << 6;
        v26 = v23 << 6;
        do
        {
          v27 = (v24 + v25);
          *v27 = v24 + v25 + 16;
          v27[1] = 0x300000000;
          if (*(v22 + v25 + 8))
          {
            llvm::SmallVectorImpl<llvm::StringRef>::operator=(v27, (v22 + v25));
          }

          v24 += 64;
          v26 -= 64;
          v22 += 8;
        }

        while (v25 != v26);
        v22 = *a2;
      }
    }

    else
    {
      v14 = 0;
      v22 = *a2;
      v23 = *(a2 + 2);
      if (*(a2 + 2))
      {
        goto LABEL_31;
      }
    }

    *(a1 + 2) = v13;
    v28 = *v11;
    if (v28)
    {
      v29 = v28 << 6;
      v30 = (v22 + v29 - 64);
      v31 = -v29;
      do
      {
        if (v30 + 2 != *v30)
        {
          free(*v30);
        }

        v30 -= 8;
        v31 += 64;
      }

      while (v31);
    }

    goto LABEL_12;
  }

  return a1;
}

void OUTLINED_FUNCTION_1_10()
{

  JUMPOUT(0x259C63180);
}

mlir::detail::Parser *mlir::detail::Parser::parseAttribute(mlir::StringAttr ****a1, void *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = (v3 + 7);
  switch(*(v3 + 14))
  {
    case 2:
      if (mlir::Token::isCodeCompletionFor(v4, 5))
      {
        return mlir::detail::Parser::parseExtendedAttr(a1, a2);
      }

      else
      {
        return mlir::detail::Parser::codeCompleteAttribute(a1);
      }

    case 4:
      *&v79 = v80;
      *(&v79 + 1) = 0x300000000;
      if (v3[19])
      {
        LocRange = mlir::Token::getLocRange(v4);
        v16 = (v79 + 16 * DWORD2(v79));
        *v16 = LocRange;
        v16[1] = v17;
        ++DWORD2(v79);
        v3 = a1[1];
      }

      mlir::Token::getSymbolReference((v3 + 7), &v66);
      v18 = a1[1];
      *(v18 + 5) = *(v18 + 7);
      v18[12] = v18[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v83);
      v19 = a1[1];
      *(v19 + 7) = v83;
      v19[9] = v84;
      v20 = a1[1];
      if (*(v20 + 14) != 15)
      {
        goto LABEL_81;
      }

      Loc = mlir::Token::getLoc((v20 + 7));
      v22 = a1[1];
      v22[12] = v22[9];
      *(v22 + 5) = *(v22 + 7);
      mlir::Lexer::lexToken((a1[1] + 1), &v83);
      v23 = a1[1];
      *(v23 + 7) = v83;
      v23[9] = v84;
      v20 = a1[1];
      v24 = v20 + 7;
      v25 = *(v20 + 14);
      if (v25 == 15)
      {
        *(v20 + 5) = *v24;
        v20[12] = v20[9];
        mlir::Lexer::lexToken((a1[1] + 1), &v83);
        v26 = a1[1];
        *(v26 + 7) = v83;
        v26[9] = v84;
        v27 = mlir::Token::getLoc((a1[1] + 7));
        v28 = a1[1];
        if (*(v28 + 14) == 4)
        {
          if (v28[19])
          {
            v29 = mlir::Token::getLocRange((v28 + 7));
            if (DWORD2(v79) >= HIDWORD(v79))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v31 = (v79 + 16 * DWORD2(v79));
            *v31 = v29;
            v31[1] = v30;
            ++DWORD2(v79);
            v28 = a1[1];
          }

          mlir::Token::getSymbolReference((v28 + 7), __p);
          v32 = a1[1];
          *(v32 + 5) = *(v32 + 7);
          v32[12] = v32[9];
          mlir::Lexer::lexToken((a1[1] + 1), &v83);
          v33 = a1[1];
          *(v33 + 7) = v83;
          v33[9] = v84;
          if (v65 >= 0)
          {
            v34 = __p;
          }

          else
          {
            v34 = __p[0];
          }

          if (v65 >= 0)
          {
            v35 = v65;
          }

          else
          {
            v35 = __p[1];
          }

          mlir::SymbolRefAttr::get(**a1[1], v34, v35);
          operator new();
        }

        *&v83 = "expected nested symbol reference identifier";
        LOWORD(v86) = 259;
        mlir::detail::Parser::emitError(a1, v27, &v83, v69);
        if (v69[0])
        {
          mlir::InFlightDiagnostic::report(v69);
        }

        if (v77 == 1)
        {
          if (v76 != &v77)
          {
            free(v76);
          }

          v56 = v74;
          if (v74)
          {
            v57 = v75;
            v58 = v74;
            if (v75 != v74)
            {
              do
              {
                v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
              }

              while (v57 != v56);
              v58 = v74;
            }

            v75 = v56;
            operator delete(v58);
          }

          v59 = v72;
          if (v72)
          {
            v60 = v73;
            v61 = v72;
            if (v73 != v72)
            {
              do
              {
                v63 = *--v60;
                v62 = v63;
                *v60 = 0;
                if (v63)
                {
                  MEMORY[0x259C63150](v62, 0x1000C8077774924);
                }
              }

              while (v60 != v59);
              v61 = v72;
            }

            v73 = v59;
            operator delete(v61);
          }

          if (v70 != &v71)
          {
            free(v70);
          }
        }

        result = 0;
      }

      else
      {
        if (v25 >= 2)
        {
          v20[5] = Loc;
          *(v20 + 5) = *v24;
          v20[12] = v20[9];
          mlir::Lexer::lexToken((a1[1] + 1), &v83);
          v51 = a1[1];
          *(v51 + 7) = v83;
          v51[9] = v84;
          v20 = a1[1];
        }

LABEL_81:
        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = &v66;
        }

        else
        {
          v52 = v66.__r_.__value_.__r.__words[0];
        }

        if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v66.__r_.__value_.__l.__size_;
        }

        result = mlir::SymbolRefAttr::get(**v20, v52, size, 0, 0);
        v54 = a1[1][19];
        if (v54)
        {
          v55 = result;
          mlir::AsmParserState::addUses(v54, result, v79, DWORD2(v79));
          result = v55;
        }
      }

      v47 = result;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
        result = v47;
      }

      v46 = v79;
      if (v79 != v80)
      {
        goto LABEL_113;
      }

      return result;
    case 5:
      return mlir::detail::Parser::parseExtendedAttr(a1, a2);
    case 9:
      return mlir::detail::Parser::parseFloatAttr(a1, a2, 0);
    case 0xA:
      return mlir::detail::Parser::parseDecOrHexAttr(a1, a2, 0);
    case 0xB:
      mlir::Token::getStringValue(v4, &v66);
      v11 = a1[1];
      *(v11 + 5) = *(v11 + 7);
      v11[12] = v11[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v79);
      v13 = a2;
      v14 = a1[1];
      *(v14 + 7) = v79;
      v14[9] = v80[0];
      if (a2)
      {
        goto LABEL_19;
      }

      v48 = a1[1];
      if (*(v48 + 14) == 15)
      {
        *(v48 + 5) = *(v48 + 7);
        v48[12] = v48[9];
        mlir::Lexer::lexToken((a1[1] + 1), &v79);
        v49 = a1[1];
        *(v49 + 7) = v79;
        v49[9] = v80[0];
        result = mlir::detail::Parser::parseType(a1);
        v13 = result;
        if (result)
        {
LABEL_19:
          v81 = 260;
          *&v79 = &v66;
          result = mlir::StringAttr::get(&v79, v13);
        }
      }

      else
      {
        v50 = **v48;
        LOWORD(v86) = 260;
        *&v83 = &v66;
        result = mlir::StringAttr::get(v50, &v83, v12);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        v47 = result;
        operator delete(v66.__r_.__value_.__l.__data_);
        return v47;
      }

      return result;
    case 0x14:
      *&v79 = v80;
      *(&v79 + 1) = 0x400000000;
      v82 = 4;
      *&v83 = 1;
      *(&v83 + 1) = -4096;
      v84 = -4096;
      v85 = -4096;
      v86 = -4096;
      v66.__r_.__value_.__r.__words[0] = a1;
      v66.__r_.__value_.__l.__size_ = &v83;
      v66.__r_.__value_.__r.__words[2] = &v79;
      v36 = mlir::detail::Parser::parseCommaSeparatedList(a1, 4, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttributeDict(mlir::NamedAttrList &)::$_0>, &v66, " in attribute dictionary", 24);
      if ((v83 & 1) == 0)
      {
        llvm::deallocate_buffer(*(&v83 + 1), (8 * v84));
      }

      if (v36)
      {
        result = mlir::NamedAttrList::getDictionary(&v79, **a1[1]);
      }

      else
      {
        result = 0;
      }

      v46 = v79;
      if (v79 != v80)
      {
        goto LABEL_69;
      }

      return result;
    case 0x16:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v79);
      v37 = a1[1];
      *(v37 + 7) = v79;
      v37[9] = v80[0];
      *&v79 = v80;
      *(&v79 + 1) = 0x400000000;
      *&v83 = &v79;
      *(&v83 + 1) = a1;
      if (mlir::detail::Parser::parseCommaSeparatedListUntil(a1, 29, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttribute(mlir::Type)::$_0>, &v83, 1))
      {
        result = mlir::Builder::getArrayAttr(a1, v79, DWORD2(v79));
      }

      else
      {
        result = 0;
      }

      v46 = v79;
      if (v79 != v80)
      {
LABEL_69:
        v47 = result;
LABEL_113:
        free(v46);
        return v47;
      }

      return result;
    case 0x18:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v79);
      v41 = a1[1];
      *(v41 + 7) = v79;
      v41[9] = v80[0];
      v42 = *(a1[1] + 14);
      if (v42 == 9)
      {
        return mlir::detail::Parser::parseFloatAttr(a1, a2, 1);
      }

      if (v42 != 10)
      {
        *&v79 = "expected constant integer or floating point value";
        v81 = 259;
        mlir::detail::Parser::emitWrongTokenError(a1, &v79, v78);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v78);
        return 0;
      }

      return mlir::detail::Parser::parseDecOrHexAttr(a1, a2, 1);
    case 0x22:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v79);
      v39 = a1[1];
      *(v39 + 7) = v79;
      v39[9] = v80[0];
      v66.__r_.__value_.__r.__words[0] = 0;
      *&v79 = "expected '<' in affine map";
      v81 = 259;
      if ((mlir::detail::Parser::parseToken(a1, 23, &v79) & 1) == 0)
      {
        return 0;
      }

      if (!mlir::detail::Parser::parseAffineMapReference(a1, &v66))
      {
        return 0;
      }

      *&v83 = "expected '>' in affine map";
      LOWORD(v86) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 19, &v83) & 1) == 0)
      {
        return 0;
      }

      return mlir::AffineMapAttr::get(v66.__r_.__value_.__r.__words[0]);
    case 0x23:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v79);
      v8 = a1[1];
      *(v8 + 7) = v79;
      v8[9] = v80[0];
      v66.__r_.__value_.__r.__words[0] = 0;
      *&v79 = "expected '<' in integer set";
      v81 = 259;
      if ((mlir::detail::Parser::parseToken(a1, 23, &v79) & 1) == 0)
      {
        return 0;
      }

      if (!mlir::detail::Parser::parseIntegerSetReference(a1, &v66))
      {
        return 0;
      }

      *&v83 = "expected '>' in integer set";
      LOWORD(v86) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 19, &v83) & 1) == 0)
      {
        return 0;
      }

      return mlir::IntegerSetAttr::get(v66.__r_.__value_.__r.__words[0]);
    case 0x24:
      return mlir::detail::Parser::parseDenseArrayAttr(a1);
    case 0x29:
      return mlir::detail::Parser::parseDenseElementsAttr(a1, a2);
    case 0x2A:
      return mlir::detail::Parser::parseDenseResourceElementsAttr(a1, a2);
    case 0x2B:
      return mlir::detail::Parser::parseDistinctAttr(a1, a2);
    case 0x3B:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v79);
      v38 = a1[1];
      *(v38 + 7) = v79;
      v38[9] = v80[0];
      return mlir::Builder::getBoolAttr(a1, 0);
    case 0x40:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v79);
      v43 = a1[1];
      *(v43 + 7) = v79;
      v43[9] = v80[0];
      v66.__r_.__value_.__r.__words[0] = 0;
      *&v79 = "expected '(' in inline location";
      v81 = 259;
      if ((mlir::detail::Parser::parseToken(a1, 21, &v79) & 1) == 0)
      {
        return 0;
      }

      if ((mlir::detail::Parser::parseLocationInstance(a1, &v66) & 1) == 0)
      {
        return 0;
      }

      *&v83 = "expected ')' in inline location";
      LOWORD(v86) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 28, &v83) & 1) == 0)
      {
        return 0;
      }

      return v66.__r_.__value_.__r.__words[0];
    case 0x48:
      return mlir::detail::Parser::parseSparseElementsAttr(a1, a2);
    case 0x4A:
      return mlir::detail::Parser::parseStridedLayoutAttr(a1);
    case 0x4F:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v79);
      v9 = a1[1];
      *(v9 + 7) = v79;
      v9[9] = v80[0];
      return mlir::Builder::getBoolAttr(a1, 1);
    case 0x52:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v79);
      v44 = a1[1];
      *(v44 + 7) = v79;
      v44[9] = v80[0];
      return mlir::Builder::getUnitAttr(a1, v45);
    default:
      *&v83 = 0;
      v7 = mlir::detail::Parser::parseOptionalType(a1, &v83);
      if ((v7 & 0x100) != 0)
      {
        if (v7)
        {
          return mlir::TypeAttr::get(v83);
        }
      }

      else
      {
        *&v79 = "expected attribute value";
        v81 = 259;
        mlir::detail::Parser::emitWrongTokenError(a1, &v79, &v67);
        if (v67)
        {
          mlir::InFlightDiagnostic::report(&v67);
        }

        if (v68[192] == 1)
        {
          mlir::Diagnostic::~Diagnostic(v68);
        }
      }

      return 0;
  }
}

uint64_t mlir::detail::Parser::parseDenseElementsAttr(mlir::detail::Parser *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v5 = *(a1 + 1);
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), v21);
  v6 = *(a1 + 1);
  *(v6 + 56) = *v21;
  *(v6 + 72) = v22;
  v21[0] = "expected '<' after 'dense'";
  v23[4] = 259;
  if ((mlir::detail::Parser::parseToken(a1, 23, v21) & 1) == 0)
  {
    return 0;
  }

  v21[0] = a1;
  v21[1] = v23;
  v22 = 0x400000000;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  __p = 0;
  LOBYTE(v27) = 0;
  v7 = *(a1 + 1);
  v8 = (v7 + 56);
  v9 = *(v7 + 56);
  switch(v9)
  {
    case 11:
      v12 = *v8;
      v28 = *(v7 + 72);
      v27 = v12;
      v29 = 1;
      *(v7 + 80) = *v8;
      *(v7 + 96) = *(v7 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v18);
      v13 = *(a1 + 1);
      *(v13 + 56) = v18;
      *(v13 + 72) = v19;
      break;
    case 22:
      {
        goto LABEL_17;
      }

      break;
    case 19:
      *(v7 + 80) = *v8;
      *(v7 + 96) = *(v7 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v18);
      v10 = *(a1 + 1);
      *(v10 + 56) = v18;
      *(v10 + 72) = v19;
      goto LABEL_12;
    default:
      {
        goto LABEL_17;
      }

      break;
  }

  *&v18 = "expected '>'";
  v20 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 19, &v18) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a2)
  {
    v14 = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_17:
    Attr = 0;
    v16 = __p;
    if (!__p)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v14 = mlir::detail::Parser::parseElementsLiteralType(a1, 0);
  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_14:
  v16 = __p;
  if (__p)
  {
LABEL_18:
    v25 = v16;
    operator delete(v16);
  }

LABEL_19:
  if (v21[1] != v23)
  {
    free(v21[1]);
  }

  return Attr;
}

void *mlir::detail::Parser::parseDenseResourceElementsAttr(uint64_t ****a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((a1[1] + 7));
  v5 = a1[1];
  v5[12] = v5[9];
  *(v5 + 5) = *(v5 + 7);
  mlir::Lexer::lexToken((a1[1] + 1), &v24);
  v6 = a1[1];
  *(v6 + 7) = v24;
  v6[9] = v25;
  *&v24 = "expected '<' after 'dense_resource'";
  v26 = 259;
  if (mlir::detail::Parser::parseToken(a1, 23, &v24))
  {
    LoadedDialect = mlir::MLIRContext::getLoadedDialect(**a1[1], "builtin", 7);
    mlir::detail::Parser::parseResourceHandle(a1, LoadedDialect, &v21);
    if (v23 == 1)
    {
      *&v24 = "expected '>'";
      v26 = 259;
      if (mlir::detail::Parser::parseToken(a1, 19, &v24))
      {
        v8 = *(&v21 + 1);
        {
          if (v8 != mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
          {
LABEL_6:
            v26 = 259;
            mlir::detail::Parser::emitError(a1, Loc, &v24, v29);
            if (v29[0])
            {
              mlir::InFlightDiagnostic::report(v29);
            }

            if (v37 == 1)
            {
              if (v36 != &v37)
              {
                free(v36);
              }

              v9 = v34;
              if (v34)
              {
                v10 = v35;
                v11 = v34;
                if (v35 != v34)
                {
                  do
                  {
                    v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
                  }

                  while (v10 != v9);
                  v11 = v34;
                }

                v35 = v9;
                operator delete(v11);
              }

              v12 = v32;
              if (v32)
              {
                v13 = v33;
                v14 = v32;
                if (v33 != v32)
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
                  v14 = v32;
                }

                v33 = v12;
                operator delete(v14);
              }

              if (v30 != &v31)
              {
                free(v30);
              }
            }

            return 0;
          }
        }

        else
        {
          v20 = v8;
          mlir::detail::Parser::parseDenseResourceElementsAttr();
          if (v20 != mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
          {
            goto LABEL_6;
          }
        }

        if (a2)
        {
          v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a2);
          if (v17)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }

        Loc = mlir::Token::getLoc((a1[1] + 7));
        *&v24 = "expected ':'";
        v26 = 259;
        if (mlir::detail::Parser::parseToken(a1, 15, &v24))
        {
          result = mlir::detail::Parser::parseType(a1);
          if (!result)
          {
            return result;
          }

          v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(result);
          if (v17)
          {
LABEL_29:
            v24 = v21;
            v25 = v22;
            return mlir::DenseResourceElementsAttr::get(v17, v18, &v24);
          }

LABEL_33:
          v26 = 259;
          mlir::detail::Parser::emitError(a1, Loc, &v24, &v27);
          if (v27)
          {
            mlir::InFlightDiagnostic::report(&v27);
          }

          if (v28[192] == 1)
          {
            mlir::Diagnostic::~Diagnostic(v28);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::parseDenseArrayAttr(mlir::detail::Parser *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), v36);
  v3 = *(a1 + 1);
  *(v3 + 56) = *v36;
  *(v3 + 72) = *&v36[16];
  *v36 = "expected '<' after 'array'";
  WORD4(v37) = 259;
  if ((mlir::detail::Parser::parseToken(a1, 23, v36) & 1) == 0)
  {
    return 0;
  }

  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v31 = mlir::detail::Parser::parseType(a1);
  if (!v31)
  {
    *v36 = "expected an integer or floating point type";
    WORD4(v37) = 259;
    mlir::detail::Parser::emitError(a1, Loc, v36, v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return 0;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v5 = v50;
    if (v50)
    {
      v6 = v51;
      v7 = v50;
      if (v51 != v50)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = v50;
      }

      v51 = v5;
      operator delete(v7);
    }

    v8 = v48;
    if (v48)
    {
      v9 = v49;
      v10 = v48;
      if (v49 != v48)
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
        v10 = v48;
      }

      v49 = v8;
      operator delete(v10);
    }

    v27 = v46;
    if (v46 == &v47)
    {
      return 0;
    }

LABEL_52:
    free(v27);
    return 0;
  }

  if (!mlir::Type::isIntOrIndexOrFloat(&v31))
  {
    v29[0] = "expected integer or float type, got: ";
    v30 = 259;
    mlir::detail::Parser::emitError(a1, Loc, v29, v36);
    if (*v36)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
      if (DWORD2(v37) >= HIDWORD(v37))
      {
        if (v37 > &v32 || v37 + 24 * DWORD2(v37) <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v37 + 24 * DWORD2(v37);
      v14 = v32;
      *(v13 + 16) = v33;
      *v13 = v14;
      ++DWORD2(v37);
      if (*v36)
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v42;
      v17 = __p;
      if (v42 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v42 = v15;
      operator delete(v17);
    }

    v18 = v39;
    if (v39)
    {
      v19 = v40;
      v20 = v39;
      if (v40 != v39)
      {
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
        v20 = v39;
      }

      v40 = v18;
      operator delete(v20);
    }

    v27 = v37;
    if (v37 == &v38)
    {
      return 0;
    }

    goto LABEL_52;
  }

  if (!mlir::Type::isInteger(&v31, 1) && (mlir::Type::getIntOrFloatBitWidth(&v31) & 7) != 0)
  {
    *v36 = "element type bitwidth must be a multiple of 8";
    WORD4(v37) = 259;
    mlir::detail::Parser::emitError(a1, Loc, v36, &v34);
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
    }

    if (v35[192] == 1)
    {
      mlir::Diagnostic::~Diagnostic(v35);
    }

    return 0;
  }

  v23 = *(a1 + 1);
  if (*(v23 + 56) == 19)
  {
    *(v23 + 80) = *(v23 + 56);
    *(v23 + 96) = *(v23 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), v36);
    v24 = *(a1 + 1);
    *(v24 + 56) = *v36;
    *(v24 + 72) = *&v36[16];
    return mlir::DenseArrayAttr::get(v31, 0, 0, 0);
  }

  *v36 = "expected ':' after dense array type";
  WORD4(v37) = 259;
  if ((mlir::detail::Parser::parseToken(a1, 15, v36) & 1) == 0)
  {
    return 0;
  }

  *v36 = v31;
  *&v36[8] = 0u;
  v37 = 0u;
  v29[0] = v36;
  v29[1] = a1;
  if (mlir::Type::isIntOrIndex(&v31))
  {
    v26 = llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_0>;
  }

  else
  {
    v26 = llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_1>;
  }

  if (mlir::detail::Parser::parseCommaSeparatedList(a1, 0, v26, v29, 0, 0) & 1) != 0 && (v29[0] = "expected '>' to close an array attribute", v30 = 259, (mlir::detail::Parser::parseToken(a1, 19, v29)))
  {
    result = mlir::DenseArrayAttr::get(*v36, DWORD2(v37), *&v36[8], *&v36[16] - *&v36[8]);
  }

  else
  {
    result = 0;
  }

  if (*&v36[8])
  {
    *&v36[16] = *&v36[8];
    v28 = result;
    operator delete(*&v36[8]);
    return v28;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseAttributeDict(mlir::detail::Parser *this, mlir::NamedAttrList *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = 1;
  v5 = -4096;
  v6 = -4096;
  v7 = -4096;
  v8 = -4096;
  v3[0] = this;
  v3[1] = &v4;
  v3[2] = a2;
  result = mlir::detail::Parser::parseCommaSeparatedList(this, 4, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttributeDict(mlir::NamedAttrList &)::$_0>, v3, " in attribute dictionary", 24);
  if ((v4 & 1) == 0)
  {
    llvm::deallocate_buffer(v5, (8 * v6));
  }

  return result;
}

llvm::APFloatBase *mlir::detail::Parser::parseFloatAttr(mlir::detail::Parser *a1, uint64_t F64Type, int a3)
{
  v71 = *MEMORY[0x277D85DE8];
  FloatingPointValue = mlir::Token::getFloatingPointValue((*(a1 + 1) + 56));
  if ((v7 & 1) == 0)
  {
    *&v50 = "floating point value too large for attribute";
    v52 = 259;
    mlir::detail::Parser::emitError(a1, &v50, v62);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if (v70 != 1)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v68;
      v17 = __p;
      if (v68 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v68 = v15;
      operator delete(v17);
    }

    v18 = v65;
    if (v65)
    {
      v19 = v66;
      v20 = v65;
      if (v66 != v65)
      {
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
        v20 = v65;
      }

      v66 = v18;
      operator delete(v20);
    }

    v23 = v63;
    if (v63 == &v64)
    {
      return 0;
    }

LABEL_25:
    free(v23);
    return 0;
  }

  v8 = *&FloatingPointValue;
  v9 = *(a1 + 1);
  *(v9 + 80) = *(v9 + 56);
  *(v9 + 96) = *(v9 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v50);
  v11 = *(a1 + 1);
  *(v11 + 56) = v50;
  *(v11 + 72) = v51;
  if (!F64Type)
  {
    v12 = *(a1 + 1);
    if (*(v12 + 56) == 15)
    {
      *(v12 + 80) = *(v12 + 56);
      *(v12 + 96) = *(v12 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v50);
      v13 = *(a1 + 1);
      *(v13 + 56) = v50;
      *(v13 + 72) = v51;
      result = mlir::detail::Parser::parseType(a1);
      F64Type = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      F64Type = mlir::Builder::getF64Type(a1, v10);
    }
  }

  v24 = *(*F64Type + 136);
  if (v24 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    *&v50 = "floating point value not valid for specified type";
    v52 = 259;
    mlir::detail::Parser::emitError(a1, &v50, v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return 0;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v42 = v58;
    if (v58)
    {
      v43 = v59;
      v44 = v58;
      if (v59 != v58)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = v58;
      }

      v59 = v42;
      operator delete(v44);
    }

    v45 = v56;
    if (v56)
    {
      v46 = v57;
      v47 = v56;
      if (v57 != v56)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            MEMORY[0x259C63150](v48, 0x1000C8077774924);
          }
        }

        while (v46 != v45);
        v47 = v56;
      }

      v57 = v45;
      operator delete(v47);
    }

    v23 = v54;
    if (v54 == &v55)
    {
      return 0;
    }

    goto LABEL_25;
  }

  v41 = v8;
  if (a3)
  {
    v41 = -v8;
  }

  return mlir::FloatAttr::get(F64Type, v41);
}

llvm::APFloatBase *mlir::detail::Parser::parseDecOrHexAttr(uint64_t a1, uint64_t a2, int a3)
{
  IntegerType = a2;
  v81 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v48 = *(v6 + 56);
  v7 = *(v6 + 72);
  v49 = v7;
  v50 = a2;
  v8 = *(&v48 + 1);
  Loc = mlir::Token::getLoc(&v48);
  v10 = *(a1 + 8);
  *(v10 + 96) = *(v10 + 72);
  *(v10 + 80) = *(v10 + 56);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v78);
  v11 = *(a1 + 8);
  *(v11 + 56) = v78;
  *(v11 + 72) = v79;
  if (!IntegerType)
  {
    v19 = *(a1 + 8);
    if (*(v19 + 56) != 15)
    {
      IntegerType = mlir::Builder::getIntegerType(a1, 64);
      v50 = IntegerType;
      v12 = *(*IntegerType + 136);
      if (v12 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
      {
        goto LABEL_3;
      }

LABEL_38:
      v45 = IntegerType;
      LOBYTE(v78) = 0;
      LOBYTE(v80) = 0;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v45);
      Width = mlir::FloatType::getWidth(&v45);
      if (mlir::detail::Parser::parseFloatFromIntegerLiteral(a1, &v78, &v48, a3, FloatSemantics, Width))
      {
        result = mlir::FloatAttr::get(v45, &v78);
        if (v80 != 1)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v80 != 1)
        {
          return result;
        }
      }

      v24 = result;
      v25 = *(&v78 + 1);
      if (llvm::APFloatBase::PPCDoubleDouble(result) == v25)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v78 + 8));
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((&v78 + 8));
      }

      return v24;
    }

    *(v19 + 80) = *(v19 + 56);
    *(v19 + 96) = *(v19 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v78);
    v20 = *(a1 + 8);
    *(v20 + 56) = v78;
    *(v20 + 72) = v79;
    result = mlir::detail::Parser::parseType(a1);
    IntegerType = result;
    v50 = result;
    if (!result)
    {
      return result;
    }
  }

  v12 = *(*IntegerType + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    goto LABEL_38;
  }

LABEL_3:
  if (v12 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    goto LABEL_38;
  }

  if (v12 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    *&v78 = "integer literal not valid for specified type";
    v80 = 259;
    mlir::detail::Parser::emitError(a1, Loc, &v78, v69);
    if (v69[0])
    {
      mlir::InFlightDiagnostic::report(v69);
    }

    if (v77 != 1)
    {
      return 0;
    }

    if (v76 != &v77)
    {
      free(v76);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v75;
      v15 = __p;
      if (v75 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v75 = v13;
      operator delete(v15);
    }

    v16 = v72;
    if (v72)
    {
      v17 = v73;
      v18 = v72;
      if (v73 != v72)
      {
        do
        {
          v27 = *--v17;
          v26 = v27;
          *v17 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v72;
      }

      v73 = v16;
      operator delete(v18);
    }

    v44 = v70;
    if (v70 == &v71)
    {
      return 0;
    }

    goto LABEL_90;
  }

  if (a3)
  {
    if (mlir::Type::isUnsignedInteger(&v50))
    {
      *&v78 = "negative integer literal not valid for unsigned integer type";
      v80 = 259;
      mlir::detail::Parser::emitError(a1, Loc, &v78, v60);
      if (v60[0])
      {
        mlir::InFlightDiagnostic::report(v60);
      }

      if (v68 != 1)
      {
        return 0;
      }

      if (v67 != &v68)
      {
        free(v67);
      }

      v28 = v65;
      if (v65)
      {
        v29 = v66;
        v30 = v65;
        if (v66 != v65)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = v65;
        }

        v66 = v28;
        operator delete(v30);
      }

      v31 = v63;
      if (v63)
      {
        v32 = v64;
        v33 = v63;
        if (v64 != v63)
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
          v33 = v63;
        }

        v64 = v31;
        operator delete(v33);
      }

      v44 = v61;
      if (v61 == &v62)
      {
        return 0;
      }

LABEL_90:
      free(v44);
      return 0;
    }

    IntegerType = v50;
  }

  buildAttributeAPInt(&v45, IntegerType, a3, v8, v7);
  if (v47)
  {
    result = mlir::Builder::getIntegerAttr(a1, v50, &v45);
  }

  else
  {
    *&v78 = "integer constant out of range for attribute";
    v80 = 259;
    mlir::detail::Parser::emitError(a1, Loc, &v78, v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v36 = v56;
      if (v56)
      {
        v37 = v57;
        v38 = v56;
        if (v57 != v56)
        {
          do
          {
            v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
          }

          while (v37 != v36);
          v38 = v56;
        }

        v57 = v36;
        operator delete(v38);
      }

      v39 = v54;
      if (v54)
      {
        v40 = v55;
        v41 = v54;
        if (v55 != v54)
        {
          do
          {
            v43 = *--v40;
            v42 = v43;
            *v40 = 0;
            if (v43)
            {
              MEMORY[0x259C63150](v42, 0x1000C8077774924);
            }
          }

          while (v40 != v39);
          v41 = v54;
        }

        v55 = v39;
        operator delete(v41);
      }

      if (v52 != &v53)
      {
        free(v52);
      }
    }

    result = 0;
  }

  if (v47 == 1 && v46 >= 0x41 && v45)
  {
    v24 = result;
    MEMORY[0x259C63150](v45, 0x1000C8000313F17);
    return v24;
  }

  return result;
}

mlir::detail::Parser *mlir::detail::Parser::parseSparseElementsAttr(mlir::detail::Parser *a1, void *a2)
{
  v70[1] = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v5 = *(a1 + 1);
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v62);
  v6 = *(a1 + 1);
  *(v6 + 56) = v62;
  *(v6 + 72) = v63;
  *&v62 = "Expected '<' after 'sparse'";
  v64[4] = 259;
  if ((mlir::detail::Parser::parseToken(a1, 23, &v62) & 1) == 0)
  {
    return 0;
  }

  IntegerType = mlir::Builder::getIntegerType(a1, 64);
  v8 = *(a1 + 1);
  v9 = (v8 + 56);
  if (*(v8 + 56) == 19)
  {
    *(v8 + 80) = *v9;
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v62);
    v10 = *(a1 + 1);
    *(v10 + 56) = v62;
    *(v10 + 72) = v63;
    result = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
    v52 = result;
    v53 = v12;
    if (result)
    {
      *&v62 = 0;
      mlir::ShapedType::getShape(&v52);
      *(&v62 + 1) = v13;
      *&v49 = mlir::RankedTensorType::get(&v62, 2, IntegerType, 0);
      v14 = mlir::TensorType::operator mlir::ShapedType(&v49);
      v16 = v15;
      *&v49 = 0;
      ElementType = mlir::ShapedType::getElementType(&v52);
      *&v62 = mlir::RankedTensorType::get(&v49, 1, ElementType, 0);
      v18 = mlir::TensorType::operator mlir::ShapedType(&v62);
      v20 = v19;
      v21 = mlir::DenseElementsAttr::get(v14, v16, 0, 0);
      v22 = mlir::DenseElementsAttr::get(v18, v20, 0, 0);
      *&v49 = Loc;
      *&v62 = a1;
      *(&v62 + 1) = &v49;
      return mlir::SparseElementsAttr::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr &&)::{lambda(void)#1}>, &v62, v52, v53, v21, v22);
    }

    return result;
  }

  v23 = mlir::Token::getLoc(v9);
  *&v62 = a1;
  *(&v62 + 1) = v64;
  v63 = 0x400000000;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v68 = 0;
  if (*(*(a1 + 1) + 56) == 22)
  {
    {
      goto LABEL_14;
    }
  }

  {
    goto LABEL_14;
  }

  v52 = "expected ','";
  v55[4] = 259;
  if (mlir::detail::Parser::parseToken(a1, 16, &v52))
  {
    v24 = mlir::Token::getLoc((*(a1 + 1) + 56));
    v52 = a1;
    v53 = v55;
    v54 = 0x400000000;
    v61 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    LOBYTE(v59) = 0;
    v25 = *(a1 + 1);
    v26 = (v25 + 56);
    v27 = *(v25 + 56);
    if (v27 == 22)
    {
      {
        goto LABEL_27;
      }
    }

    else if (v27 == 11)
    {
      v28 = *v26;
      v60 = *(v25 + 72);
      v59 = v28;
      v61 = 1;
      *(v25 + 80) = *v26;
      *(v25 + 96) = *(v25 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v49);
      v29 = *(a1 + 1);
      *(v29 + 56) = v49;
      *(v29 + 72) = v50;
    }

    {
      goto LABEL_27;
    }

    *&v49 = "expected '>'";
    v51 = 259;
    if (mlir::detail::Parser::parseToken(a1, 19, &v49))
    {
      result = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
      v47 = result;
      v48 = v32;
      if (result)
      {
        if (v63)
        {
          *&v49 = mlir::RankedTensorType::get(*(&v62 + 1), v63, IntegerType, 0);
          v33 = &v49;
        }

        else
        {
          *&v49 = 1;
          mlir::ShapedType::getShape(&v47);
          *(&v49 + 1) = v37;
          v46[0] = mlir::RankedTensorType::get(&v49, 2, IntegerType, 0);
          v33 = v46;
        }

        v46[0] = mlir::TensorType::operator mlir::ShapedType(v33);
        v46[1] = v38;
        v40 = mlir::ShapedType::getElementType(&v47);
        v41 = v54;
        if (v54)
        {
          v42 = v53;
        }

        else
        {
          v70[0] = *mlir::ShapedType::getShape(v46);
          v42 = v70;
          v41 = 1;
        }

        *&v49 = mlir::RankedTensorType::get(v42, v41, v40, 0);
        v43 = mlir::TensorType::operator mlir::ShapedType(&v49);
        v70[0] = Loc;
        *&v49 = a1;
        *(&v49 + 1) = v70;
        result = mlir::SparseElementsAttr::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &)::{lambda(void)#1}>, &v49, v47, v48, Attr, v45);
        v34 = v56;
        if (!v56)
        {
LABEL_30:
          if (v53 != v55)
          {
            v36 = result;
            free(v53);
            result = v36;
          }

          goto LABEL_15;
        }

LABEL_29:
        v57 = v34;
        v35 = result;
        operator delete(v34);
        result = v35;
        goto LABEL_30;
      }

LABEL_28:
      v34 = v56;
      if (!v56)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_27:
    result = 0;
    goto LABEL_28;
  }

LABEL_14:
  result = 0;
LABEL_15:
  if (__p)
  {
    v66 = __p;
    v30 = result;
    operator delete(__p);
    result = v30;
  }

  if (*(&v62 + 1) != v64)
  {
    v31 = result;
    free(*(&v62 + 1));
    return v31;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseStridedLayoutAttr(mlir::detail::Parser *this)
{
  v32 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v27[0] = this;
  v27[1] = &Loc;
  v2 = *(this + 1);
  *(v2 + 96) = *(v2 + 72);
  *(v2 + 80) = *(v2 + 56);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v29);
  v3 = *(this + 1);
  *(v3 + 56) = v29;
  *(v3 + 72) = v30[0];
  *&v29 = "expected '<' after 'strided'";
  v31 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, &v29) & 1) == 0)
  {
    return 0;
  }

  *&v24 = "expected '['";
  v26 = 259;
  if ((mlir::detail::Parser::parseToken(this, 22, &v24) & 1) == 0)
  {
    return 0;
  }

  *&v29 = v30;
  *(&v29 + 1) = 0x600000000;
  if (*(*(this + 1) + 56) != 29)
  {
    v11 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(this);
    if ((v12 & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
      if (DWORD2(v29) >= HIDWORD(v29))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v29 + 8 * DWORD2(v29)) = v11;
      ++DWORD2(v29);
      v13 = *(this + 1);
      if (*(v13 + 56) != 16)
      {
        break;
      }

      *(v13 + 80) = *(v13 + 56);
      *(v13 + 96) = *(v13 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v24);
      v14 = *(this + 1);
      *(v14 + 56) = v24;
      *(v14 + 72) = v25;
      v11 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(this);
      if ((v15 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  *&v24 = "expected ']'";
  v26 = 259;
  if (mlir::detail::Parser::parseToken(this, 29, &v24))
  {
    v4 = *(this + 1);
    if (*(v4 + 56) == 19)
    {
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v24);
      v5 = *(this + 1);
      *(v5 + 56) = v24;
      *(v5 + 72) = v25;
      if (mlir::StridedLayoutAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseStridedLayoutAttr(void)::$_0>, v27, 0, v29, DWORD2(v29)))
      {
        v6 = ***(this + 1);
        v7 = v29;
        v8 = DWORD2(v29);
        v9 = 0;
LABEL_8:
        result = mlir::StridedLayoutAttr::get(v6, v9, v7, v8);
        goto LABEL_25;
      }
    }

    else
    {
      *&v24 = "expected ','";
      v26 = 259;
      if (mlir::detail::Parser::parseToken(this, 16, &v24))
      {
        v22 = "expected 'offset' after comma";
        v23 = 259;
        if (mlir::detail::Parser::parseToken(this, 70, &v22))
        {
          v20 = "expected ':' after 'offset'";
          v21 = 259;
          if (mlir::detail::Parser::parseToken(this, 15, &v20))
          {
            v16 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(this);
            if (v17)
            {
              v18 = v16;
              *&v24 = "expected '>'";
              v26 = 259;
              if (mlir::detail::Parser::parseToken(this, 19, &v24) & 1) != 0 && (mlir::StridedLayoutAttr::verify(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseStridedLayoutAttr(void)::$_0>, v27, v18, v29, DWORD2(v29)))
              {
                v6 = ***(this + 1);
                v7 = v29;
                v8 = DWORD2(v29);
                v9 = v18;
                goto LABEL_8;
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  result = 0;
LABEL_25:
  if (v29 != v30)
  {
    v19 = result;
    free(v29);
    return v19;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseDistinctAttr(mlir::detail::Parser *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v5 = *(a1 + 1);
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v33);
  v6 = *(a1 + 1);
  *(v6 + 56) = v33;
  *(v6 + 72) = v34;
  *&v33 = "expected '[' after 'distinct'";
  v35 = 259;
  if (mlir::detail::Parser::parseToken(a1, 22, &v33))
  {
    v7 = *(a1 + 1);
    v8 = *(v7 + 64);
    v9 = *(v7 + 72);
    *&v33 = "expected distinct ID";
    v35 = 259;
    if (mlir::detail::Parser::parseToken(a1, 10, &v33))
    {
      UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v8, v9);
      v32 = v10;
      if ((v10 & 1) == 0)
      {
        *&v33 = "expected an unsigned 64-bit integer";
        v35 = 259;
        mlir::detail::Parser::emitError(a1, &v33, v37);
        if (v37[0])
        {
          mlir::InFlightDiagnostic::report(v37);
        }

        if (v45 == 1)
        {
          if (v44 != &v45)
          {
            free(v44);
          }

          v15 = __p;
          if (__p)
          {
            v16 = v43;
            v17 = __p;
            if (v43 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v43 = v15;
            operator delete(v17);
          }

          v18 = v40;
          if (v40)
          {
            v19 = v41;
            v20 = v40;
            if (v41 != v40)
            {
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
              v20 = v40;
            }

            v41 = v18;
            operator delete(v20);
          }

          if (v38 != &v39)
          {
            free(v38);
          }
        }

        return 0;
      }

      *&v33 = "expected ']' to close distinct ID";
      v35 = 259;
      if (mlir::detail::Parser::parseToken(a1, 29, &v33))
      {
        v29[0] = "expected '<' after distinct ID";
        v30 = 259;
        if (mlir::detail::Parser::parseToken(a1, 23, v29))
        {
          v11 = *(a1 + 1);
          if (*(v11 + 56) == 19)
          {
            *(v11 + 80) = *(v11 + 56);
            *(v11 + 96) = *(v11 + 72);
            mlir::Lexer::lexToken((*(a1 + 1) + 8), &v33);
            v12 = *(a1 + 1);
            *(v12 + 56) = v33;
            *(v12 + 72) = v34;
            UnitAttr = mlir::Builder::getUnitAttr(a1, v13);
            goto LABEL_32;
          }

          v24 = mlir::detail::Parser::parseAttribute(a1, a2);
          if (!v24)
          {
            *&v33 = "expected attribute";
            v35 = 259;
            mlir::detail::Parser::emitError(a1, &v33, v36);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
            return 0;
          }

          UnitAttr = v24;
          *&v33 = "expected '>' to close distinct attribute";
          v35 = 259;
          if (mlir::detail::Parser::parseToken(a1, 19, &v33))
          {
LABEL_32:
            v25 = *(*(a1 + 1) + 104);
            v26 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::find((v25 + 72), &UInt64IntegerValue);
            if (*(v25 + 72) + 16 * *(v25 + 88) == v26)
            {
              v29[0] = mlir::DistinctAttr::create(UnitAttr);
              llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::try_emplace<mlir::DistinctAttr&>(v25 + 72, &UInt64IntegerValue, v29, &v33);
              v27 = v33;
            }

            else
            {
              v27 = v26;
              if (mlir::DistinctAttr::getReferencedAttr((v26 + 8)) != UnitAttr)
              {
                v29[0] = "referenced attribute does not match previous definition: ";
                v30 = 259;
                mlir::detail::Parser::emitError(a1, Loc, v29, &v33);
                ReferencedAttr = mlir::DistinctAttr::getReferencedAttr((v27 + 8));
                mlir::InFlightDiagnostic::operator<<<mlir::Attribute &>(&v33, &ReferencedAttr);
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
                return 0;
              }
            }

            return *(v27 + 8);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::parseOptionalAttribute(mlir::detail::Parser *a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 1) + 56);
  v5 = (v4 - 4) > 0x3C || ((1 << (v4 - 4)) & 0x10800060C01500E3) == 0;
  if (v5 && ((v8 = v4 - 72, v9 = v8 > 0xA, v10 = (1 << v8) & 0x481, !v9) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    v15 = 0;
    v12 = mlir::detail::Parser::parseOptionalType(a1, &v15);
    if (v12 & 0x100) != 0 && (v12)
    {
      v13 = v12;
      v14 = mlir::TypeAttr::get(v15);
      v12 = v13;
      *a2 = v14;
    }

    return v12 | (HIBYTE(v12) << 8);
  }

  else
  {
    v6 = mlir::detail::Parser::parseAttribute(a1, a3);
    *a2 = v6;
    return (v6 != 0) | 0x100u;
  }
}

uint64_t mlir::detail::Parser::parseOptionalAttribute(uint64_t a1, mlir::detail::Parser **a2, void *a3)
{
  if (*(*(a1 + 8) + 56) != 22)
  {
    return 0;
  }

  v4 = mlir::detail::Parser::parseAttribute(a1, a3);
  if (!v4)
  {
    return 256;
  }

  *a2 = v4;
  return 257;
}

{
  if (*(*(a1 + 8) + 56) != 11)
  {
    return 0;
  }

  v4 = mlir::detail::Parser::parseAttribute(a1, a3);
  if (!v4)
  {
    return 256;
  }

  *a2 = v4;
  return 257;
}

{
  if (*(*(a1 + 8) + 56) != 4)
  {
    return 0;
  }

  v4 = mlir::detail::Parser::parseAttribute(a1, a3);
  if (!v4)
  {
    return 256;
  }

  *a2 = v4;
  return 257;
}

uint64_t buildAttributeAPInt(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v20[1] = a5;
  v21 = a2;
  v20[0] = a4;
  v19 = 1;
  v7 = 10;
  v18 = 0;
  if (a5 >= 2)
  {
    if (*(a4 + 1) == 120)
    {
      v7 = 0;
    }

    else
    {
      v7 = 10;
    }
  }

  result = llvm::StringRef::getAsInteger(v20, v7, &v18);
  if (!result)
  {
    result = mlir::Type::isIndex(&v21);
    if (result)
    {
      v9 = 64;
      v10 = v19;
      v12 = v19 - 64;
      v11 = v19 > 0x40;
      if (v19 >= 0x40)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = mlir::Type::getIntOrFloatBitWidth(&v21);
      v9 = result;
      v10 = v19;
      v12 = v19 - result;
      v11 = v19 > result;
      if (v19 >= result)
      {
LABEL_10:
        if (v11)
        {
          if (v10 > 0x40)
          {
            result = llvm::APInt::countLeadingZerosSlowCase(&v18);
            if (result < v12)
            {
              goto LABEL_43;
            }
          }

          else
          {
            result = v10 + __clz(v18) - 64;
            if (result < v12)
            {
              goto LABEL_43;
            }
          }

          result = llvm::APInt::trunc(&v18, v9, &v16);
          if (v19 >= 0x41)
          {
            result = v18;
            if (v18)
            {
              result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
            }
          }

          v18 = v16;
          v10 = v17;
          v19 = v17;
        }

        if (!v9)
        {
          if (a3)
          {
            goto LABEL_43;
          }

          goto LABEL_47;
        }

LABEL_26:
        if (a3)
        {
          if (v10 > 0x40)
          {
            llvm::APInt::flipAllBitsSlowCase(&v18);
          }

          else
          {
            v13 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
            if (!v10)
            {
              v13 = 0;
            }

            v18 = v13 & ~v18;
          }

          result = llvm::APInt::operator++(&v18);
          v10 = v19;
          v15 = (v18 + 8 * ((v19 - 1) >> 6));
          if (v19 < 0x41)
          {
            v15 = &v18;
          }

          if (((*v15 >> (v19 - 1)) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          result = mlir::Type::isSignedInteger(&v21);
          if (result & 1) != 0 || (result = mlir::Type::isIndex(&v21), (result))
          {
            v10 = v19;
            v14 = (v18 + 8 * ((v19 - 1) >> 6));
            if (v19 < 0x41)
            {
              v14 = &v18;
            }

            if ((*v14 >> (v19 - 1)))
            {
LABEL_43:
              *a1 = 0;
              *(a1 + 16) = 0;
              if (v10 < 0x41)
              {
                return result;
              }

              goto LABEL_44;
            }
          }

          else
          {
            v10 = v19;
          }
        }

LABEL_47:
        *(a1 + 8) = v10;
        *a1 = v18;
        *(a1 + 16) = 1;
        return result;
      }
    }

    llvm::APInt::zext(&v18, v9, &v16);
    if (v19 >= 0x41 && v18)
    {
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }

    v18 = v16;
    v10 = v17;
    v19 = v17;
    goto LABEL_26;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v19 < 0x41)
  {
    return result;
  }

LABEL_44:
  result = v18;
  if (v18)
  {
    return MEMORY[0x259C63150](v18, 0x1000C8000313F17);
  }

  return result;
}

uint64_t mlir::detail::Parser::parseElementsLiteralType(mlir::detail::Parser *a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    goto LABEL_2;
  }

  v26[0] = "expected ':'";
  v27 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 15, v26) & 1) == 0)
  {
    return 0;
  }

  result = mlir::detail::Parser::parseType(a1);
  a2 = result;
  if (result)
  {
LABEL_2:
    v25[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a2);
    v25[1] = v3;
    if (v25[0])
    {
      if (mlir::ShapedType::hasRank(v25))
      {
        Shape = mlir::ShapedType::getShape(v25);
        if (!v5)
        {
          return v25[0];
        }

        v6 = 8 * v5;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v6 -= 8;
          if (!v6)
          {
            return v25[0];
          }
        }
      }

      v26[0] = "elements literal type must have static shape";
      v27 = 259;
      mlir::detail::Parser::emitError(a1, v26, v28);
      if (v28[0])
      {
        mlir::InFlightDiagnostic::report(v28);
      }

      if (v36 != 1)
      {
        return 0;
      }

      if (v35 != &v36)
      {
        free(v35);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v34;
        v10 = __p;
        if (v34 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v34 = v8;
        operator delete(v10);
      }

      v11 = v31;
      if (v31)
      {
        v12 = v32;
        v13 = v31;
        if (v32 != v31)
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
          v13 = v31;
        }

        v32 = v11;
        operator delete(v13);
      }

      v24 = v29;
      if (v29 == &v30)
      {
        return 0;
      }
    }

    else
    {
      v26[0] = "elements literal must be a shaped type";
      v27 = 259;
      mlir::detail::Parser::emitError(a1, v26, v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 != 1)
      {
        return 0;
      }

      if (v44 != &v45)
      {
        free(v44);
      }

      v16 = v42;
      if (v42)
      {
        v17 = v43;
        v18 = v42;
        if (v43 != v42)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = v42;
        }

        v43 = v16;
        operator delete(v18);
      }

      v19 = v40;
      if (v40)
      {
        v20 = v41;
        v21 = v40;
        if (v41 != v40)
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
          v21 = v40;
        }

        v41 = v19;
        operator delete(v21);
      }

      v24 = v38;
      if (v38 == &v39)
      {
        return 0;
      }
    }

    free(v24);
    return 0;
  }

  return result;
}

uint64_t anonymous namespace::TensorLiteralParser::getAttr(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v246 = *MEMORY[0x277D85DE8];
  *&v226 = a3;
  *(&v226 + 1) = a4;
  ElementType = mlir::ShapedType::getElementType(&v226);
  if (*(a1 + 104) == 1 && (mlir::Type::isIntOrIndexOrFloat(&ElementType) || *(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
  {
    v230 = v226;
    v229 = mlir::ShapedType::getElementType(&v230);
    if (!mlir::Type::isIntOrIndexOrFloat(&v229) && *(*v229 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v30 = *a1;
      v234 = 257;
      mlir::detail::Parser::emitError(v30, a2, v233, &v235);
      if (v235.__r_.__value_.__r.__words[0])
      {
        LODWORD(v231) = 3;
        *(&v231 + 1) = "expected floating-point, integer, or complex element type, got ";
        v232 = 63;
        if (v237 >= v238)
        {
          if (v236 > &v231 || v236 + 24 * v237 <= &v231)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v236 + 24 * v237;
        v32 = v231;
        *(v31 + 2) = v232;
        *v31 = v32;
        ++v237;
        if (v235.__r_.__value_.__r.__words[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v231, v229);
          if (v237 >= v238)
          {
            if (v236 > &v231 || v236 + 24 * v237 <= &v231)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v33 = v236 + 24 * v237;
          v34 = v231;
          *(v33 + 2) = v232;
          *v33 = v34;
          ++v237;
          if (v235.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&v235);
          }
        }
      }

      if (v245[0] != 1)
      {
        return 0;
      }

      if (v244 != v245)
      {
        free(v244);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v243;
        v37 = __p;
        if (v243 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v243 = v35;
        operator delete(v37);
      }

      v25 = v240;
      if (!v240)
      {
        goto LABEL_236;
      }

      v38 = v241;
      v27 = v240;
      if (v241 == v240)
      {
        goto LABEL_235;
      }

      do
      {
        v40 = *--v38;
        v39 = v40;
        *v38 = 0;
        if (v40)
        {
          MEMORY[0x259C63150](v39, 0x1000C8077774924);
        }
      }

      while (v38 != v25);
      goto LABEL_234;
    }

    memset(&v228, 0, sizeof(v228));
    v66 = *a1;
    v231 = *(a1 + 80);
    v232 = *(a1 + 96);
    mlir::Token::getHexStringValue(&v231, &v235);
    if (v236 == 1)
    {
      if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v228.__r_.__value_.__l.__data_);
      }

      v228 = v235;
    }

    else
    {
      Loc = mlir::Token::getLoc(&v231);
      v234 = 259;
      mlir::detail::Parser::emitError(v66, Loc, v233, &v235);
      v68 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
      if (v235.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v235);
      }

      if (v245[0] == 1)
      {
        if (v244 != v245)
        {
          free(v244);
        }

        v69 = __p;
        if (__p)
        {
          v70 = v243;
          v71 = __p;
          if (v243 != __p)
          {
            do
            {
              v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
            }

            while (v70 != v69);
            v71 = __p;
          }

          v243 = v69;
          operator delete(v71);
        }

        v72 = v240;
        if (v240)
        {
          v73 = v241;
          v74 = v240;
          if (v241 != v240)
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
            v74 = v240;
          }

          v241 = v72;
          operator delete(v74);
        }

        if (v236 != v239)
        {
          free(v236);
        }
      }

      if (!v68)
      {
        goto LABEL_334;
      }
    }

    if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v160 = &v228;
    }

    else
    {
      v160 = v228.__r_.__value_.__r.__words[0];
    }

    if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v228.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v228.__r_.__value_.__l.__size_;
    }

    v227 = 0;
    if (mlir::DenseElementsAttr::isValidRawBuffer(v230, *(&v230 + 1), v160, size, &v227))
    {
      result = mlir::DenseElementsAttr::getFromRawBuffer(v230, *(&v230 + 1), v160, size);
      if ((SHIBYTE(v228.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_335:
      v184 = v228.__r_.__value_.__r.__words[0];
      goto LABEL_336;
    }

    v162 = *a1;
    v234 = 257;
    mlir::detail::Parser::emitError(v162, a2, v233, &v235);
    if (v235.__r_.__value_.__r.__words[0])
    {
      LODWORD(v231) = 3;
      *(&v231 + 1) = "elements hex data size is invalid for provided type: ";
      v232 = 53;
      if (v237 >= v238)
      {
        if (v236 > &v231 || v236 + 24 * v237 <= &v231)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v163 = v236 + 24 * v237;
      v164 = v231;
      *(v163 + 2) = v232;
      *v163 = v164;
      ++v237;
      if (v235.__r_.__value_.__r.__words[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v231, v230);
        if (v237 >= v238)
        {
          if (v236 > &v231 || v236 + 24 * v237 <= &v231)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v165 = v236 + 24 * v237;
        v166 = v231;
        *(v165 + 2) = v232;
        *v165 = v166;
        ++v237;
        if (v235.__r_.__value_.__r.__words[0])
        {
          mlir::InFlightDiagnostic::report(&v235);
        }
      }
    }

    if (v245[0] == 1)
    {
      if (v244 != v245)
      {
        free(v244);
      }

      v167 = __p;
      if (__p)
      {
        v168 = v243;
        v169 = __p;
        if (v243 != __p)
        {
          do
          {
            v168 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v168 - 1);
          }

          while (v168 != v167);
          v169 = __p;
        }

        v243 = v167;
        operator delete(v169);
      }

      v170 = v240;
      if (v240)
      {
        v171 = v241;
        v172 = v240;
        if (v241 != v240)
        {
          do
          {
            v174 = *--v171;
            v173 = v174;
            *v171 = 0;
            if (v174)
            {
              MEMORY[0x259C63150](v173, 0x1000C8077774924);
            }
          }

          while (v171 != v170);
          v172 = v240;
        }

        v241 = v170;
        operator delete(v172);
      }

      if (v236 != v239)
      {
        free(v236);
      }
    }

LABEL_334:
    result = 0;
    if ((SHIBYTE(v228.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_335;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 8);
    Shape = mlir::ShapedType::getShape(&v226);
    if (v10 != v7 || memcmp(v8, Shape, 8 * v7))
    {
      v11 = *a1;
      v234 = 257;
      mlir::detail::Parser::emitError(v11, a2, v233, &v235);
      if (v235.__r_.__value_.__r.__words[0])
      {
        LODWORD(v231) = 3;
        *(&v231 + 1) = "inferred shape of elements literal ([";
        v232 = 37;
        if (v237 >= v238)
        {
          if (v236 > &v231 || v236 + 24 * v237 <= &v231)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v236 + 24 * v237;
        v13 = v231;
        *(v12 + 2) = v232;
        *v12 = v13;
        ++v237;
        if (v235.__r_.__value_.__r.__words[0])
        {
          v14 = *(a1 + 16);
          v15 = *(a1 + 8);
          *&v231 = ", ";
          llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(llvm::SmallVector<long long,6u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(void)#1},void>(v15, &v15[v14], &v235.__r_.__value_.__l.__size_, &v235.__r_.__value_.__l.__size_, &v231);
          if (v235.__r_.__value_.__r.__words[0])
          {
            LODWORD(v231) = 3;
            *(&v231 + 1) = "]) does not match type ([";
            v232 = 25;
            if (v237 >= v238)
            {
              if (v236 > &v231 || v236 + 24 * v237 <= &v231)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v16 = v236 + 24 * v237;
            v17 = v231;
            *(v16 + 2) = v232;
            *v16 = v17;
            ++v237;
          }
        }
      }

      v18 = mlir::ShapedType::getShape(&v226);
      if (v235.__r_.__value_.__r.__words[0])
      {
        *&v231 = ", ";
        llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(llvm::SmallVector<long long,6u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(void)#1},void>(v18, &v18[v19], &v235.__r_.__value_.__l.__size_, &v235.__r_.__value_.__l.__size_, &v231);
        if (v235.__r_.__value_.__r.__words[0])
        {
          LODWORD(v231) = 3;
          *(&v231 + 1) = "])";
          v232 = 2;
          if (v237 >= v238)
          {
            if (v236 > &v231 || v236 + 24 * v237 <= &v231)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v20 = v236 + 24 * v237;
          v21 = v231;
          *(v20 + 2) = v232;
          *v20 = v21;
          ++v237;
          if (v235.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&v235);
          }
        }
      }

      if (v245[0] != 1)
      {
        return 0;
      }

      if (v244 != v245)
      {
        free(v244);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v243;
        v24 = __p;
        if (v243 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v243 = v22;
        operator delete(v24);
      }

      v25 = v240;
      if (!v240)
      {
LABEL_236:
        if (v236 != v239)
        {
          free(v236);
        }

        return 0;
      }

      v26 = v241;
      v27 = v240;
      if (v241 == v240)
      {
LABEL_235:
        v241 = v25;
        operator delete(v27);
        goto LABEL_236;
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
LABEL_234:
      v27 = v240;
      goto LABEL_235;
    }
  }

  if ((*(a1 + 104) & 1) == 0 && *(a1 + 56) == *(a1 + 64))
  {
    v119 = mlir::ShapedType::getShape(&v226);
    if (mlir::ShapedType::getNumElements(v119, v120))
    {
      v121 = *a1;
      v234 = 257;
      mlir::detail::Parser::emitError(v121, a2, v233, &v235);
      if (v235.__r_.__value_.__r.__words[0])
      {
        LODWORD(v231) = 3;
        *(&v231 + 1) = "parsed zero elements, but type (";
        v232 = 32;
        if (v237 >= v238)
        {
          if (v236 > &v231 || v236 + 24 * v237 <= &v231)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v122 = v236 + 24 * v237;
        v123 = v231;
        *(v122 + 2) = v232;
        *v122 = v123;
        ++v237;
        if (v235.__r_.__value_.__r.__words[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v231, v226);
          if (v237 >= v238)
          {
            if (v236 > &v231 || v236 + 24 * v237 <= &v231)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v124 = v236 + 24 * v237;
          v125 = v231;
          *(v124 + 2) = v232;
          *v124 = v125;
          v126 = ++v237;
          if (v235.__r_.__value_.__r.__words[0])
          {
            LODWORD(v231) = 3;
            *(&v231 + 1) = ") expected at least 1";
            v232 = 21;
            if (v126 >= v238)
            {
              if (v236 > &v231 || v236 + 24 * v126 <= &v231)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v127 = v236 + 24 * v237;
            v128 = v231;
            *(v127 + 2) = v232;
            *v127 = v128;
            ++v237;
            if (v235.__r_.__value_.__r.__words[0])
            {
              mlir::InFlightDiagnostic::report(&v235);
            }
          }
        }
      }

      if (v245[0] != 1)
      {
        return 0;
      }

      if (v244 != v245)
      {
        free(v244);
      }

      v129 = __p;
      if (__p)
      {
        v130 = v243;
        v131 = __p;
        if (v243 != __p)
        {
          do
          {
            v130 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v130 - 1);
          }

          while (v130 != v129);
          v131 = __p;
        }

        v243 = v129;
        operator delete(v131);
      }

      v25 = v240;
      if (!v240)
      {
        goto LABEL_236;
      }

      v132 = v241;
      v27 = v240;
      if (v241 == v240)
      {
        goto LABEL_235;
      }

      do
      {
        v134 = *--v132;
        v133 = v134;
        *v132 = 0;
        if (v134)
        {
          MEMORY[0x259C63150](v133, 0x1000C8077774924);
        }
      }

      while (v132 != v25);
      goto LABEL_234;
    }
  }

  v41 = ElementType;
  v42 = *(*ElementType + 136);
  if (v42 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v41 = 0;
  }

  v235.__r_.__value_.__r.__words[0] = v41;
  if (v42 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    ElementType = mlir::ComplexType::getElementType(&v235);
    if (mlir::Type::isIntOrIndex(&ElementType))
    {
      goto LABEL_60;
    }

    goto LABEL_127;
  }

  if (!mlir::Type::isIntOrIndex(&ElementType))
  {
LABEL_127:
    v77 = *(*ElementType + 136);
    if (v77 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v219 = v226;
      mlir::ShapedType::getElementType(&v226);
      if (*(a1 + 104) != 1)
      {
        v222 = *(a1 + 56);
        v223 = *(a1 + 64);
        if (v223 != v222)
        {
          if (((v223 - v222) >> 5) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        return mlir::DenseStringElementsAttr::get(v219, *(&v219 + 1), 0, 0);
      }

      mlir::Token::getStringValue((a1 + 80), &v235);
      v220 = SHIBYTE(v235.__r_.__value_.__r.__words[2]);
      v221 = v235.__r_.__value_.__r.__words[0];
      if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v221 = &v235;
      }

      if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v220 = v235.__r_.__value_.__l.__size_;
      }

      v233[0] = v221;
      v233[1] = v220;
      result = mlir::DenseStringElementsAttr::get(v219, *(&v219 + 1), v233, 1);
      if ((SHIBYTE(v235.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

      v184 = v235.__r_.__value_.__r.__words[0];
LABEL_336:
      v185 = result;
      v186 = v184;
      goto LABEL_392;
    }

    v94 = v42;
    memset(&v228, 0, sizeof(v228));
    *&v230 = ElementType;
    std::vector<llvm::APFloat>::reserve(&v228, (*(a1 + 64) - *(a1 + 56)) >> 5);
    v95 = *(a1 + 56);
    v96 = *(a1 + 64);
    if (v95 == v96)
    {
LABEL_398:
      if (v94 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        result = mlir::DenseElementsAttr::get(v226, *(&v226 + 1), v228.__r_.__value_.__l.__data_, ((v228.__r_.__value_.__l.__size_ - v228.__r_.__value_.__r.__words[0]) >> 5) >> 1);
        v209 = v228.__r_.__value_.__r.__words[0];
        if (!v228.__r_.__value_.__r.__words[0])
        {
          return result;
        }
      }

      else
      {
        result = mlir::DenseElementsAttr::get(v226, *(&v226 + 1), v228.__r_.__value_.__l.__data_, (v228.__r_.__value_.__l.__size_ - v228.__r_.__value_.__r.__words[0]) >> 5);
        v209 = v228.__r_.__value_.__r.__words[0];
        if (!v228.__r_.__value_.__r.__words[0])
        {
          return result;
        }
      }

      goto LABEL_409;
    }

    while (1)
    {
      v97 = *v95;
      v98 = *(v95 + 2);
      if (v98 != 9)
      {
        if (v98 != 10 || *(v95 + 3) < 2uLL || **(v95 + 2) != 30768)
        {
          v136 = *a1;
          v234 = 257;
          mlir::detail::Parser::emitError(v136, v233, &v235);
          if (v235.__r_.__value_.__r.__words[0])
          {
            LODWORD(v231) = 3;
            *(&v231 + 1) = "expected floating-point elements, but parsed integer";
            v232 = 52;
            if (v237 >= v238)
            {
              if (v236 > &v231 || v236 + 24 * v237 <= &v231)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v137 = v236 + 24 * v237;
            v138 = v231;
            *(v137 + 2) = v232;
            *v137 = v138;
            ++v237;
          }

          v139 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
          if (v235.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&v235);
          }

          if (v245[0] == 1)
          {
            if (v244 != v245)
            {
              free(v244);
            }

            v140 = __p;
            if (__p)
            {
              v141 = v243;
              v142 = __p;
              if (v243 != __p)
              {
                do
                {
                  v141 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v141 - 1);
                }

                while (v141 != v140);
                v142 = __p;
              }

              v243 = v140;
              operator delete(v142);
            }

            v143 = v240;
            if (v240)
            {
              v144 = v241;
              v145 = v240;
              if (v241 != v240)
              {
                do
                {
                  v147 = *--v144;
                  v146 = v147;
                  *v144 = 0;
                  if (v147)
                  {
                    MEMORY[0x259C63150](v146, 0x1000C8077774924);
                  }
                }

                while (v144 != v143);
                v145 = v240;
              }

              v241 = v143;
              operator delete(v145);
            }

            if (v236 != v239)
            {
              free(v236);
            }
          }

          if (v139)
          {
            goto LABEL_398;
          }

LABEL_408:
          result = 0;
          v209 = v228.__r_.__value_.__r.__words[0];
          if (!v228.__r_.__value_.__r.__words[0])
          {
            return result;
          }

LABEL_409:
          v210 = result;
          v211 = v228.__r_.__value_.__l.__size_;
          v212 = v209;
          if (v228.__r_.__value_.__l.__size_ != v209)
          {
            v213 = llvm::APFloatBase::PPCDoubleDouble(v209);
            v214 = (v211 - 24);
            do
            {
              while (v213 == *v214)
              {
                llvm::detail::DoubleAPFloat::~DoubleAPFloat(v214);
                v216 = (v215 - 8);
                v214 = (v215 - 32);
                if (v216 == v209)
                {
                  goto LABEL_414;
                }
              }

              llvm::detail::IEEEFloat::~IEEEFloat(v214);
              v218 = (v217 - 8);
              v214 = (v217 - 32);
            }

            while (v218 != v209);
LABEL_414:
            v212 = v228.__r_.__value_.__r.__words[0];
          }

          v228.__r_.__value_.__l.__size_ = v209;
          operator delete(v212);
          return v210;
        }

        v235.__r_.__value_.__s.__data_[0] = 0;
        LOBYTE(v237) = 0;
        v99 = *a1;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v230);
        Width = mlir::FloatType::getWidth(&v230);
        v102 = mlir::detail::Parser::parseFloatFromIntegerLiteral(v99, &v235, (v95 + 8), v97, FloatSemantics, Width);
        v103 = v102;
        if (v102)
        {
          v104 = v228.__r_.__value_.__l.__size_;
          if (v228.__r_.__value_.__l.__size_ >= v228.__r_.__value_.__r.__words[2])
          {
            v102 = std::vector<llvm::APFloat>::__emplace_back_slow_path<llvm::APFloat const&>(&v228, &v235);
            v228.__r_.__value_.__l.__size_ = v102;
            if (v237 == 1)
            {
              goto LABEL_201;
            }
          }

          else
          {
            v105 = v235.__r_.__value_.__l.__size_;
            if (llvm::APFloatBase::PPCDoubleDouble(v102) == v105)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat((v104 + 8), &v235.__r_.__value_.__r.__words[1]);
              v102 = v104 + 32;
              v228.__r_.__value_.__l.__size_ = v104 + 32;
              if (v237 == 1)
              {
                goto LABEL_201;
              }
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat((v104 + 8), &v235.__r_.__value_.__r.__words[1]);
              v102 = v104 + 32;
              v228.__r_.__value_.__l.__size_ = v104 + 32;
              if (v237 == 1)
              {
                goto LABEL_201;
              }
            }
          }
        }

        else if (v237 == 1)
        {
LABEL_201:
          v116 = v235.__r_.__value_.__l.__size_;
          if (llvm::APFloatBase::PPCDoubleDouble(v102) == v116)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v235.__r_.__value_.__r.__words[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v235.__r_.__value_.__r.__words[1]);
          }
        }

        if ((v103 & 1) == 0)
        {
          goto LABEL_408;
        }

        goto LABEL_181;
      }

      v106 = COERCE_DOUBLE(mlir::Token::getFloatingPointValue((v95 + 8)));
      if ((v107 & 1) == 0)
      {
        v187 = *a1;
        v233[0] = "floating point value too large for attribute";
        v234 = 259;
        mlir::detail::Parser::emitError(v187, v233, &v235);
        v188 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
        if (v235.__r_.__value_.__r.__words[0])
        {
          mlir::InFlightDiagnostic::report(&v235);
        }

        if (v245[0] == 1)
        {
          if (v244 != v245)
          {
            free(v244);
          }

          v189 = __p;
          if (__p)
          {
            v190 = v243;
            v191 = __p;
            if (v243 != __p)
            {
              do
              {
                v190 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v190 - 1);
              }

              while (v190 != v189);
              v191 = __p;
            }

            v243 = v189;
            operator delete(v191);
          }

          v192 = v240;
          if (v240)
          {
            v193 = v241;
            v194 = v240;
            if (v241 != v240)
            {
              do
              {
                v196 = *--v193;
                v195 = v196;
                *v193 = 0;
                if (v196)
                {
                  MEMORY[0x259C63150](v195, 0x1000C8077774924);
                }
              }

              while (v193 != v192);
              v194 = v240;
            }

            v241 = v192;
            operator delete(v194);
          }

          if (v236 != v239)
          {
            free(v236);
          }
        }

        if (v188)
        {
          goto LABEL_398;
        }

        goto LABEL_408;
      }

      v108 = v106;
      if (v97)
      {
        v108 = -v106;
      }

      v109 = llvm::detail::IEEEFloat::IEEEFloat(v233, v108);
      v110 = llvm::APFloatBase::IEEEdouble(v109);
      llvm::APFloat::Storage::Storage(&v235.__r_.__value_.__r.__words[1], v233, v110);
      llvm::detail::IEEEFloat::~IEEEFloat(v233);
      isF64 = mlir::Type::isF64(&v230);
      if ((isF64 & 1) == 0)
      {
        LOBYTE(v233[0]) = 0;
        v112 = mlir::FloatType::getFloatSemantics(&v230);
        isF64 = llvm::APFloat::convert(&v235, v112, 1, v233);
      }

      v113 = v228.__r_.__value_.__l.__size_;
      if (v228.__r_.__value_.__l.__size_ >= v228.__r_.__value_.__r.__words[2])
      {
        v117 = std::vector<llvm::APFloat>::__emplace_back_slow_path<llvm::APFloat const&>(&v228, &v235);
        v118 = llvm::APFloatBase::PPCDoubleDouble(v117);
        v228.__r_.__value_.__l.__size_ = v117;
        if (v118 != v235.__r_.__value_.__l.__size_)
        {
          goto LABEL_204;
        }
      }

      else
      {
        v114 = v235.__r_.__value_.__l.__size_;
        v115 = llvm::APFloatBase::PPCDoubleDouble(isF64);
        if (v115 == v114)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat((v113 + 8), &v235.__r_.__value_.__r.__words[1]);
          v228.__r_.__value_.__l.__size_ = v113 + 32;
          if (v115 != v235.__r_.__value_.__l.__size_)
          {
LABEL_204:
            llvm::detail::IEEEFloat::~IEEEFloat(&v235.__r_.__value_.__r.__words[1]);
            goto LABEL_181;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat((v113 + 8), &v235.__r_.__value_.__r.__words[1]);
          v228.__r_.__value_.__l.__size_ = v113 + 32;
          if (v115 != v235.__r_.__value_.__l.__size_)
          {
            goto LABEL_204;
          }
        }
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v235.__r_.__value_.__r.__words[1]);
LABEL_181:
      v95 += 32;
      if (v95 == v96)
      {
        goto LABEL_398;
      }
    }
  }

LABEL_60:
  v224 = v42;
  memset(&v228, 0, sizeof(v228));
  *&v230 = ElementType;
  std::vector<llvm::APInt>::reserve(&v228, (*(a1 + 64) - *(a1 + 56)) >> 5);
  isUnsignedInteger = mlir::Type::isUnsignedInteger(&v230);
  v45 = *(a1 + 56);
  v44 = *(a1 + 64);
  if (v45 == v44)
  {
LABEL_377:
    if (v224 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      result = mlir::DenseElementsAttr::get(v226, *(&v226 + 1), v228.__r_.__value_.__l.__data_, ((v228.__r_.__value_.__l.__size_ - v228.__r_.__value_.__r.__words[0]) >> 4) >> 1);
      v206 = v228.__r_.__value_.__r.__words[0];
      if (v228.__r_.__value_.__r.__words[0])
      {
        goto LABEL_384;
      }
    }

    else
    {
      result = mlir::DenseElementsAttr::get(v226, *(&v226 + 1), v228.__r_.__value_.__l.__data_, (v228.__r_.__value_.__l.__size_ - v228.__r_.__value_.__r.__words[0]) >> 4);
      v206 = v228.__r_.__value_.__r.__words[0];
      if (v228.__r_.__value_.__r.__words[0])
      {
        goto LABEL_384;
      }
    }

    return result;
  }

  v46 = isUnsignedInteger;
  while (1)
  {
    v47 = (v45 + 8);
    v48 = *v45;
    v49 = mlir::Token::getLoc((v45 + 8));
    if ((v48 & v46) == 1)
    {
      v148 = *a1;
      v234 = 257;
      mlir::detail::Parser::emitError(v148, v49, v233, &v235);
      if (v235.__r_.__value_.__r.__words[0])
      {
        LODWORD(v231) = 3;
        *(&v231 + 1) = "expected unsigned integer elements, but parsed negative value";
        v232 = 61;
        if (v237 >= v238)
        {
          if (v236 > &v231 || v236 + 24 * v237 <= &v231)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v149 = v236 + 24 * v237;
        v150 = v231;
        *(v149 + 2) = v232;
        *v149 = v150;
        ++v237;
      }

      v151 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
      if (v235.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v235);
      }

      if (v245[0] == 1)
      {
        if (v244 != v245)
        {
          free(v244);
        }

        v152 = __p;
        if (__p)
        {
          v153 = v243;
          v154 = __p;
          if (v243 != __p)
          {
            do
            {
              v153 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v153 - 1);
            }

            while (v153 != v152);
            v154 = __p;
          }

          v243 = v152;
          operator delete(v154);
        }

        v155 = v240;
        if (!v240)
        {
          goto LABEL_374;
        }

        v156 = v241;
        v157 = v240;
        if (v241 == v240)
        {
          goto LABEL_373;
        }

        do
        {
          v159 = *--v156;
          v158 = v159;
          *v156 = 0;
          if (v159)
          {
            MEMORY[0x259C63150](v158, 0x1000C8077774924);
          }
        }

        while (v156 != v155);
        goto LABEL_372;
      }

      goto LABEL_376;
    }

    v50 = *v47;
    if (*v47 != 59 && v50 != 79)
    {
      break;
    }

    if (!mlir::Type::isInteger(&v230, 1))
    {
      v175 = *a1;
      v234 = 257;
      mlir::detail::Parser::emitError(v175, v49, v233, &v235);
      if (v235.__r_.__value_.__r.__words[0])
      {
        LODWORD(v231) = 3;
        *(&v231 + 1) = "expected i1 type for 'true' or 'false' values";
        v232 = 45;
        if (v237 >= v238)
        {
          if (v236 > &v231 || v236 + 24 * v237 <= &v231)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v176 = v236 + 24 * v237;
        v177 = v231;
        *(v176 + 2) = v232;
        *v176 = v177;
        ++v237;
      }

      v151 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
      if (v235.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v235);
      }

      if (v245[0] == 1)
      {
        if (v244 != v245)
        {
          free(v244);
        }

        v178 = __p;
        if (__p)
        {
          v179 = v243;
          v180 = __p;
          if (v243 != __p)
          {
            do
            {
              v179 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v179 - 1);
            }

            while (v179 != v178);
            v180 = __p;
          }

          v243 = v178;
          operator delete(v180);
        }

        v155 = v240;
        if (!v240)
        {
          goto LABEL_374;
        }

        v181 = v241;
        v157 = v240;
        if (v241 == v240)
        {
          goto LABEL_373;
        }

        do
        {
          v183 = *--v181;
          v182 = v183;
          *v181 = 0;
          if (v183)
          {
            MEMORY[0x259C63150](v182, 0x1000C8077774924);
          }
        }

        while (v181 != v155);
        goto LABEL_372;
      }

LABEL_376:
      if (v151)
      {
        goto LABEL_377;
      }

      goto LABEL_383;
    }

    v54 = *v47 == 79;
    LODWORD(v235.__r_.__value_.__r.__words[1]) = 1;
    v235.__r_.__value_.__r.__words[0] = v54;
    v55 = v228.__r_.__value_.__l.__size_;
    if (v228.__r_.__value_.__l.__size_ >= v228.__r_.__value_.__r.__words[2])
    {
      v228.__r_.__value_.__l.__size_ = std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(&v228, &v235);
      if (LODWORD(v235.__r_.__value_.__r.__words[1]) >= 0x41)
      {
LABEL_77:
        if (v235.__r_.__value_.__r.__words[0])
        {
          MEMORY[0x259C63150](v235.__r_.__value_.__r.__words[0], 0x1000C8000313F17);
        }
      }
    }

    else
    {
      *(v228.__r_.__value_.__l.__size_ + 8) = 1;
      *v55 = v54;
      v228.__r_.__value_.__l.__size_ = (v55 + 2);
      if (LODWORD(v235.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        goto LABEL_77;
      }
    }

LABEL_63:
    v45 += 32;
    if (v45 == v44)
    {
      goto LABEL_377;
    }
  }

  if (v50 == 9)
  {
    v197 = *a1;
    v234 = 257;
    mlir::detail::Parser::emitError(v197, v49, v233, &v235);
    if (v235.__r_.__value_.__r.__words[0])
    {
      LODWORD(v231) = 3;
      *(&v231 + 1) = "expected integer elements, but parsed floating-point";
      v232 = 52;
      if (v237 >= v238)
      {
        if (v236 > &v231 || v236 + 24 * v237 <= &v231)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v198 = v236 + 24 * v237;
      v199 = v231;
      *(v198 + 2) = v232;
      *v198 = v199;
      ++v237;
    }

    v151 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
    if (v235.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v235);
    }

    if (v245[0] == 1)
    {
      if (v244 != v245)
      {
        free(v244);
      }

      v200 = __p;
      if (__p)
      {
        v201 = v243;
        v202 = __p;
        if (v243 != __p)
        {
          do
          {
            v201 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v201 - 1);
          }

          while (v201 != v200);
          v202 = __p;
        }

        v243 = v200;
        operator delete(v202);
      }

      v155 = v240;
      if (!v240)
      {
        goto LABEL_374;
      }

      v203 = v241;
      v157 = v240;
      if (v241 == v240)
      {
LABEL_373:
        v241 = v155;
        operator delete(v157);
LABEL_374:
        if (v236 != v239)
        {
          free(v236);
        }

        goto LABEL_376;
      }

      do
      {
        v205 = *--v203;
        v204 = v205;
        *v203 = 0;
        if (v205)
        {
          MEMORY[0x259C63150](v204, 0x1000C8077774924);
        }
      }

      while (v203 != v155);
LABEL_372:
      v157 = v240;
      goto LABEL_373;
    }

    goto LABEL_376;
  }

  buildAttributeAPInt(&v231, v230, v48 & 1, *(v45 + 2), *(v45 + 3));
  v51 = v232;
  if (v232)
  {
    v52 = v228.__r_.__value_.__l.__size_;
    if (v228.__r_.__value_.__l.__size_ >= v228.__r_.__value_.__r.__words[2])
    {
      v65 = std::vector<llvm::APInt>::__emplace_back_slow_path<llvm::APInt const&>(&v228, &v231);
    }

    else
    {
      v53 = DWORD2(v231);
      *(v228.__r_.__value_.__l.__size_ + 8) = DWORD2(v231);
      if (v53 > 0x40)
      {
        llvm::APInt::initSlowCase(v52, &v231);
      }

      *v52 = v231;
      v65 = v52 + 16;
    }

    v228.__r_.__value_.__l.__size_ = v65;
  }

  else
  {
    v56 = *a1;
    v233[0] = "integer constant out of range for type";
    v234 = 259;
    mlir::detail::Parser::emitError(v56, v49, v233, &v235);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v235);
    if (v235.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v235);
    }

    if (v245[0] == 1)
    {
      if (v244 != v245)
      {
        free(v244);
      }

      v57 = __p;
      if (__p)
      {
        v58 = v243;
        v59 = __p;
        if (v243 != __p)
        {
          do
          {
            v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
          }

          while (v58 != v57);
          v59 = __p;
        }

        v243 = v57;
        operator delete(v59);
      }

      v60 = v240;
      if (v240)
      {
        v61 = v241;
        v62 = v240;
        if (v241 != v240)
        {
          do
          {
            v64 = *--v61;
            v63 = v64;
            *v61 = 0;
            if (v64)
            {
              MEMORY[0x259C63150](v63, 0x1000C8077774924);
            }
          }

          while (v61 != v60);
          v62 = v240;
        }

        v241 = v60;
        operator delete(v62);
      }

      if (v236 != v239)
      {
        free(v236);
      }
    }
  }

  if (v232 == 1 && DWORD2(v231) >= 0x41 && v231)
  {
    MEMORY[0x259C63150](v231, 0x1000C8000313F17);
  }

  if (v51)
  {
    goto LABEL_63;
  }

  if (v4)
  {
    goto LABEL_377;
  }

LABEL_383:
  result = 0;
  v206 = v228.__r_.__value_.__r.__words[0];
  if (v228.__r_.__value_.__r.__words[0])
  {
LABEL_384:
    v185 = result;
    v207 = v228.__r_.__value_.__l.__size_;
    v186 = v206;
    if (v228.__r_.__value_.__l.__size_ != v206)
    {
      do
      {
        v208 = *(v207 - 2);
        v207 -= 2;
        if (v208 >= 0x41 && *v207)
        {
          MEMORY[0x259C63150](*v207, 0x1000C8000313F17);
        }
      }

      while (v207 != v206);
      v186 = v228.__r_.__value_.__r.__words[0];
    }

    v228.__r_.__value_.__l.__size_ = v206;
LABEL_392:
    operator delete(v186);
    return v185;
  }

  return result;
}