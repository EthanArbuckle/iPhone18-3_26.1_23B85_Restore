const char *llvm::getTypeName<mlir::SelectLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SelectLikeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SelectLikeOpInterface::Trait<Empty>]";
  v6 = 91;
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

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2;
  return mlir::arith::SelectOp::print(&v8, a3);
}

BOOL mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
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

  if (!mlir::OpTrait::impl::verifyNOperands(a1, 3))
  {
    return 0;
  }

  v7 = a1;
  if (!mlir::arith::SelectOp::verifyInvariantsImpl(&v7) || (mlir::OpTrait::impl::verifyElementwise(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::arith::SelectOp::verify(&v7);
}

void mlir::Dialect::addAttribute<mlir::arith::FastMathFlagsAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::arith::FastMathFlagsAttr,mlir::Attribute,mlir::arith::detail::FastMathFlagsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith17FastMathFlagsAttrES2_NSD_6detail24FastMathFlagsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith17FastMathFlagsAttrES2_NSC_6detail24FastMathFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id;
  v21 = "arith.fastmath";
  v22 = 14;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, &v10);
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

void mlir::Dialect::addAttribute<mlir::arith::IntegerOverflowFlagsAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::arith::IntegerOverflowFlagsAttr,mlir::Attribute,mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith24IntegerOverflowFlagsAttrES2_NSD_6detail31IntegerOverflowFlagsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith24IntegerOverflowFlagsAttrES2_NSC_6detail31IntegerOverflowFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id;
  v21 = "arith.overflow";
  v22 = 14;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, &v10);
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith17FastMathFlagsAttrES2_NSC_6detail24FastMathFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail24FastMathFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17FastMathFlagsAttrEJNS2_13FastMathFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::FastMathFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::FastMathFlagsAttrStorage,mlir::arith::FastMathFlags>(llvm::function_ref<void ()(mlir::arith::detail::FastMathFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::FastMathFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_5arith24IntegerOverflowFlagsAttrES2_NSC_6detail31IntegerOverflowFlagsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir5arith6detail31IntegerOverflowFlagsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24IntegerOverflowFlagsAttrEJNS2_20IntegerOverflowFlagsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::arith::detail::IntegerOverflowFlagsAttrStorage * mlir::StorageUniquer::get<mlir::arith::detail::IntegerOverflowFlagsAttrStorage,mlir::arith::IntegerOverflowFlags>(llvm::function_ref<void ()(mlir::arith::detail::IntegerOverflowFlagsAttrStorage *)>,mlir::TypeID,mlir::arith::IntegerOverflowFlags &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void anonymous namespace::ArithInlinerInterface::~ArithInlinerInterface(_anonymous_namespace_::ArithInlinerInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::arith::ConstantOp::inferResultRanges(mlir::arith::ConstantOp *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  result = mlir::arith::ConstantOp::getValue(a1);
  if (result)
  {
    v9 = *(*result + 136);
    v10 = v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    v11 = v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? result : 0;
    v24 = v11;
    if (v10)
    {
      mlir::IntegerAttr::getValue(&v24, &v22);
      if (*(*a1 + 36))
      {
        v12 = *a1 - 16;
      }

      else
      {
        v12 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
      mlir::ConstantIntRanges::constant(&v22, &v14);
      result = a4(a5, NextResultAtOffset, &v14);
      if (v21 >= 0x41)
      {
        result = v20;
        if (v20)
        {
          result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
        }
      }

      if (v19 >= 0x41)
      {
        result = v18;
        if (v18)
        {
          result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
        }
      }

      if (v17 >= 0x41)
      {
        result = v16;
        if (v16)
        {
          result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
        }
      }

      if (v15 >= 0x41)
      {
        result = v14;
        if (v14)
        {
          result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
        }
      }

      if (v23 >= 0x41)
      {
        result = v22;
        if (v22)
        {
          return MEMORY[0x259C63150](v22, 0x1000C8000313F17);
        }
      }
    }
  }

  return result;
}

uint64_t mlir::arith::AddIOp::inferResultRanges(mlir::arith::AddIOp *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  OverflowFlags = mlir::arith::AddIOp::getOverflowFlags(a1);
  mlir::intrange::inferAdd(a2, OverflowFlags & 3, &v13);
  result = a4(a5, NextResultAtOffset, &v13);
  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::SubIOp::inferResultRanges(mlir::arith::SubIOp *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  OverflowFlags = mlir::arith::SubIOp::getOverflowFlags(a1);
  mlir::intrange::inferSub(a2, OverflowFlags & 3, &v13);
  result = a4(a5, NextResultAtOffset, &v13);
  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::MulIOp::inferResultRanges(mlir::arith::MulIOp *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  OverflowFlags = mlir::arith::MulIOp::getOverflowFlags(a1);
  mlir::intrange::inferMul(a2, OverflowFlags & 3, &v13);
  result = a4(a5, NextResultAtOffset, &v13);
  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::DivUIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferDivU(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::DivSIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferDivS(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::CeilDivUIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferCeilDivU(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::CeilDivSIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferCeilDivS(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::FloorDivSIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferFloorDivS(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::RemUIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferRemU(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::RemSIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferRemS(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::AndIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferAnd(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::OrIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferOr(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::XOrIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferXor(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::MaxSIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferMaxS(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::MaxUIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferMaxU(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::MinSIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferMinS(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::MinUIOp::inferResultRanges(uint64_t a1, mlir::ConstantIntRanges *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferMinU(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::ExtUIOp::inferResultRanges(void *a1, mlir::intrange *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a1 - 16;
  mlir::intrange::extUIRange(a2, StorageBitwidth, &v12);
  result = a4(a5, v10, &v12);
  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::ExtSIOp::inferResultRanges(void *a1, mlir::intrange *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a1 - 16;
  mlir::intrange::extSIRange(a2, StorageBitwidth, &v12);
  result = a4(a5, v10, &v12);
  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::TruncIOp::inferResultRanges(void *a1, mlir::intrange *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a1 - 16;
  mlir::intrange::truncRange(a2, StorageBitwidth, &v12);
  result = a4(a5, v10, &v12);
  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::IndexCastOp::inferResultRanges(uint64_t a1, mlir::intrange *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  v8 = *(*a1 - 8);
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth(*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = mlir::ConstantIntRanges::getStorageBitwidth(v8 & 0xFFFFFFFFFFFFFFF8);
  if (StorageBitwidth < v10)
  {
    v11 = *a1 - 16;
    mlir::intrange::extSIRange(a2, v10, &v14);
    goto LABEL_5;
  }

  v11 = *a1 - 16;
  if (StorageBitwidth > v10)
  {
    mlir::intrange::truncRange(a2, v10, &v14);
LABEL_5:
    result = a4(a5, v11, &v14);
    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
      }
    }

    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      }
    }

    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      }
    }

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

  return a4(a5, v11, a2);
}

uint64_t mlir::arith::IndexCastUIOp::inferResultRanges(uint64_t a1, mlir::intrange *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  v8 = *(*a1 - 8);
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth(*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = mlir::ConstantIntRanges::getStorageBitwidth(v8 & 0xFFFFFFFFFFFFFFF8);
  if (StorageBitwidth < v10)
  {
    v11 = *a1 - 16;
    mlir::intrange::extUIRange(a2, v10, &v14);
    goto LABEL_5;
  }

  v11 = *a1 - 16;
  if (StorageBitwidth > v10)
  {
    mlir::intrange::truncRange(a2, v10, &v14);
LABEL_5:
    result = a4(a5, v11, &v14);
    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
      }
    }

    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      }
    }

    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      }
    }

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

  return a4(a5, v11, a2);
}

uint64_t mlir::arith::CmpIOp::inferResultRanges(mlir::arith::CmpIOp *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  Predicate = mlir::arith::CmpIOp::getPredicate(a1);
  v26 = 1;
  v25 = 0;
  v24 = 1;
  v23 = 1;
  v10 = mlir::intrange::evaluatePred(Predicate, a2, (a2 + 64));
  if ((v10 & 0x100) != 0)
  {
    if (v10)
    {
      v11 = &v26;
      v25 = 1;
    }

    else
    {
      v11 = &v24;
      v23 = 0;
    }

    *v11 = 1;
  }

  if (*(*a1 + 36))
  {
    v12 = *a1 - 16;
  }

  else
  {
    v12 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
  mlir::ConstantIntRanges::fromUnsigned(&v25, &v23, &v15);
  result = a4(a5, NextResultAtOffset, &v15);
  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      result = MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v24 >= 0x41)
  {
    result = v23;
    if (v23)
    {
      result = MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    }
  }

  if (v26 >= 0x41)
  {
    result = v25;
    if (v25)
    {
      return MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::SelectOp::inferResultRangesFromOptional(uint64_t a1, mlir::ConstantIntRanges *this, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if ((*(this + 64) & 1) == 0)
  {
    LOBYTE(v29) = 0;
    v31 = 0;
    v9 = (this + 72);
    v10 = (this + 144);
LABEL_11:
    if (*(*a1 + 36))
    {
      v15 = *a1 - 16;
    }

    else
    {
      v15 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
    if (*(this + 136))
    {
      if (*(this + 208))
      {
        mlir::ConstantIntRanges::rangeUnion(v9, v10, &v32);
        v21 = v33;
        v20 = v32;
        v23 = v35;
        v22 = v34;
        v25 = v37;
        v24 = v36;
        v27 = v39;
        v26 = v38;
        v28 = 1;
        goto LABEL_20;
      }

      LOBYTE(v20) = 0;
      v28 = 0;
      v17 = v9;
    }

    else
    {
      LOBYTE(v20) = 0;
      v28 = 0;
      v17 = v10;
    }

    std::__optional_storage_base<mlir::ConstantIntRanges,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<mlir::ConstantIntRanges,false> const&>(&v20, v17);
LABEL_20:
    result = a4(a5, NextResultAtOffset, &v20);
    if (v28 == 1)
    {
      if (v27 >= 0x41)
      {
        result = v26;
        if (v26)
        {
          result = MEMORY[0x259C63150](v26, 0x1000C8000313F17);
        }
      }

      if (v25 >= 0x41)
      {
        result = v24;
        if (v24)
        {
          result = MEMORY[0x259C63150](v24, 0x1000C8000313F17);
        }
      }

      if (v23 >= 0x41)
      {
        result = v22;
        if (v22)
        {
          result = MEMORY[0x259C63150](v22, 0x1000C8000313F17);
        }
      }

      if (v21 >= 0x41)
      {
        result = v20;
        if (v20)
        {
          result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
        }
      }
    }

    if (v31 == 1)
    {
      goto LABEL_34;
    }

    return result;
  }

  mlir::ConstantIntRanges::getConstantValue(this, &v29);
  v9 = (this + 72);
  v10 = (this + 144);
  if ((v31 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = v30;
  if (v30 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v29) != v11)
    {
LABEL_5:
      if (*(*a1 + 36))
      {
        v12 = *a1 - 16;
      }

      else
      {
        v12 = 0;
      }

      v13 = mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
      result = a4(a5, v13, v9);
      if (v31 != 1)
      {
        return result;
      }

LABEL_34:
      if (v30 >= 0x41)
      {
        result = v29;
        if (v29)
        {
          return MEMORY[0x259C63150](v29, 0x1000C8000313F17);
        }
      }

      return result;
    }
  }

  else if (v29)
  {
    goto LABEL_5;
  }

  if (*(*a1 + 36))
  {
    v18 = *a1 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  result = a4(a5, v19, v10);
  if (v31 == 1)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t mlir::arith::ShLIOp::inferResultRanges(mlir::arith::ShLIOp *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  OverflowFlags = mlir::arith::ShLIOp::getOverflowFlags(a1);
  mlir::intrange::inferShl(a2, OverflowFlags & 3, &v13);
  result = a4(a5, NextResultAtOffset, &v13);
  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::ShRUIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferShrU(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::arith::ShRSIOp::inferResultRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  if (*(*a1 + 36))
  {
    v8 = *a1 - 16;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  mlir::intrange::inferShrS(a2, &v11);
  result = a4(a5, NextResultAtOffset, &v11);
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::OpTrait::util::staticallyKnownBroadcastable(const void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v42[14] = *MEMORY[0x277D85DE8];
  v38 = &v40;
  v39 = 0x200000000;
  v40 = v42;
  v41 = 0x600000000;
  if (((8 * a2) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = 0;
  v8 = 8 * a2;
  if (a2)
  {
    memcpy(v40, a1, v8);
    v7 = v41;
  }

  v9 = (v39 + 1);
  LODWORD(v41) = v7 + (v8 >> 3);
  LODWORD(v39) = v9;
  v36 = &a3[8 * a4];
  v37 = a3;
  if (v9 >= HIDWORD(v39))
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::growAndEmplaceBack<long long *,long long *>();
  }

  v10 = v38 + 64 * v9;
  *v10 = v10 + 16;
  *(v10 + 1) = 0x600000000;
  if (((8 * a4) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = 0;
  if (a4)
  {
    memcpy(*v10, a3, 8 * a4);
    v11 = *(v10 + 2);
  }

  *(v10 + 2) = v11 + a4;
  LODWORD(v39) = v39 + 1;
  v12 = v38;
  v13 = *(v38 + 2);
  if (v39 != 1)
  {
    v15 = v39 - 1;
    if (v15 > 1)
    {
      v16 = v15 | 1;
      v4 = v38 + 136;
      v17 = v15 & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v38 + 2);
      do
      {
        v19 = *(v4 - 64);
        v21 = *v4;
        v4 += 128;
        v20 = v21;
        if (v13 <= v19)
        {
          v13 = v19;
        }

        if (v18 <= v20)
        {
          v18 = v20;
        }

        v17 -= 2;
      }

      while (v17);
      if (v13 <= v18)
      {
        v13 = v18;
      }

      if (v15 == (v15 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = 1;
    }

    v22 = v39 - v16;
    v23 = (v38 + 64 * v16 + 8);
    do
    {
      v25 = *v23;
      v23 += 16;
      v24 = v25;
      if (v13 <= v25)
      {
        v13 = v24;
      }

      --v22;
    }

    while (v22);
LABEL_29:
    if (!v13)
    {
LABEL_43:
      v14 = 1;
      if (v39)
      {
        goto LABEL_44;
      }

      goto LABEL_49;
    }

    if (!v39)
    {
      v14 = 1;
      if (v38 == &v40)
      {
        return v14;
      }

      goto LABEL_50;
    }

LABEL_31:
    v26 = 0;
LABEL_33:
    v27 = 0;
    v28 = 0;
    v4 &= 0xFFFFFFFFFFFFFF00;
    v29 = v39 << 6;
    v30 = (v38 + 8);
    while (1)
    {
      v31 = *v30;
      if (v26 < v31)
      {
        v32 = *(*(v30 - 1) + 8 * v31 + 8 * ~v26);
        if (v32 != 1)
        {
          if (v32 == 0x8000000000000000)
          {
            if ((v27 | v28))
            {
LABEL_42:
              v14 = 0;
              goto LABEL_44;
            }

            v27 = 1;
          }

          if ((v28 & (v32 != v4)) != 0)
          {
            goto LABEL_42;
          }

          v28 = 1;
          v4 = v32;
        }
      }

      v30 += 16;
      v29 -= 64;
      if (!v29)
      {
        if (++v26 == v13)
        {
          goto LABEL_43;
        }

        goto LABEL_33;
      }
    }
  }

  if (v13)
  {
    goto LABEL_31;
  }

  v14 = 1;
LABEL_44:
  v33 = (v38 + 64 * v39 - 64);
  v34 = -64 * v39;
  do
  {
    if (v33 + 2 != *v33)
    {
      free(*v33);
    }

    v33 -= 8;
    v34 += 64;
  }

  while (v34);
  v12 = v38;
LABEL_49:
  if (v12 != &v40)
  {
LABEL_50:
    free(v12);
  }

  return v14;
}

uint64_t mlir::OpTrait::util::staticallyKnownBroadcastable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = a2 - 1;
  if (a2 == 1)
  {
    if (!v3)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (v4 <= 1)
  {
    v5 = 1;
LABEL_15:
    v11 = a2 - v5;
    v12 = (a1 + (v5 << 6) + 8);
    do
    {
      v14 = *v12;
      v12 += 16;
      v13 = v14;
      if (v3 <= v14)
      {
        v3 = v13;
      }

      --v11;
    }

    while (v11);
    goto LABEL_19;
  }

  v5 = v4 | 1;
  v6 = (a1 + 136);
  v7 = v4 & 0xFFFFFFFFFFFFFFFELL;
  v2 = *(a1 + 8);
  do
  {
    v8 = *(v6 - 16);
    v10 = *v6;
    v6 += 32;
    v9 = v10;
    if (v3 <= v8)
    {
      v3 = v8;
    }

    if (v2 <= v9)
    {
      v2 = v9;
    }

    v7 -= 2;
  }

  while (v7);
  if (v3 <= v2)
  {
    v3 = v2;
  }

  if (v4 != (v4 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_15;
  }

LABEL_19:
  if (v3)
  {
    v15 = a2 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    return 1;
  }

LABEL_25:
  v17 = 0;
  v18 = a2 << 6;
  v19 = (a1 + 8);
LABEL_27:
  v20 = 0;
  v21 = 0;
  v2 &= 0xFFFFFFFFFFFFFF00;
  v22 = v19;
  v23 = v18;
  while (1)
  {
    v24 = *v22;
    if (v17 < v24)
    {
      v25 = *(*(v22 - 1) + 8 * v24 + 8 * ~v17);
      if (v25 != 1)
      {
        break;
      }
    }

LABEL_31:
    v22 += 16;
    v23 -= 64;
    if (!v23)
    {
      if (++v17 == v3)
      {
        return 1;
      }

      goto LABEL_27;
    }
  }

  if (v25 != 0x8000000000000000)
  {
LABEL_29:
    if ((v21 & (v25 != v2)) != 0)
    {
      return 0;
    }

    v21 = 1;
    v2 = v25;
    goto LABEL_31;
  }

  if (((v20 | v21) & 1) == 0)
  {
    v20 = 1;
    goto LABEL_29;
  }

  return 0;
}

uint64_t mlir::OpTrait::util::getBroadcastedShape(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 8) = 0;
  if (a2 <= a4)
  {
    if (!a4)
    {
      return 1;
    }

    v5 = 0;
    v8 = 8 * a4;
    v9 = a3;
    do
    {
      if (v5 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a5 + 8 * v5) = *v9;
      v5 = *(a5 + 8) + 1;
      *(a5 + 8) = v5;
      ++v9;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
    v6 = 8 * a2;
    v7 = a1;
    do
    {
      if (v5 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a5 + 8 * v5) = *v7;
      v5 = *(a5 + 8) + 1;
      *(a5 + 8) = v5;
      ++v7;
      v6 -= 8;
    }

    while (v6);
  }

  v10 = 1;
  if (a2 && a4)
  {
    v11 = 8 * a2 - 8;
    v12 = (*a5 + 8 * v5 - 8);
    v13 = 8 * a4 - 8;
    while (1)
    {
      v14 = *(a1 + v11);
      v15 = *(a3 + v13);
      if (v14 == 0x8000000000000000)
      {
        break;
      }

      if (v15 == 0x8000000000000000)
      {
        v16 = *(a1 + v11);
        if (v14 > 1)
        {
          goto LABEL_28;
        }

        goto LABEL_22;
      }

      v17 = v14 == v15 || v15 == 1;
      v16 = *(a1 + v11);
      if (!v17)
      {
        v16 = *(a3 + v13);
        if (v14 != 1)
        {
          v10 = 0;
          *(a5 + 8) = 0;
          return v10;
        }
      }

LABEL_28:
      *v12-- = v16;
      v10 = 1;
      if (v11)
      {
        v11 -= 8;
        v18 = v13;
        v13 -= 8;
        if (v18)
        {
          continue;
        }
      }

      return v10;
    }

    v16 = *(a3 + v13);
    if (v15 > 1)
    {
      goto LABEL_28;
    }

    v16 = *(a1 + v11);
    if (v15 == 1)
    {
      goto LABEL_28;
    }

LABEL_22:
    v16 = 0x8000000000000000;
    goto LABEL_28;
  }

  return v10;
}

uint64_t mlir::OpTrait::util::getBroadcastedType(void *a1, void *a2, uint64_t a3)
{
  ElementTypeOrSelf = a3;
  v28[4] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v5 = a1;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
    v6 = mlir::getElementTypeOrSelf(a2);
    a1 = v5;
    if (ElementTypeOrSelf != v6)
    {
      return 0;
    }
  }

  v7 = *(*a1 + 136);
  v8 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      return 0;
    }
  }

  else
  {
    if (v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v9 = v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
      v10 = v9;
      if (v9)
      {
        v11 = *(*a2 + 136);
      }

      else
      {
        v11 = 0;
      }

      v12 = (v7 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) | v10;
      if (v7 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v13 = v11;
      }

      else
      {
        v13 = *(*a1 + 136);
      }

      if (v7 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || !v10)
      {
LABEL_21:
        v26 = v28;
        v27 = 0x400000000;
        v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a1);
        v25 = v14;
        if (v24)
        {
          Shape = mlir::ShapedType::getShape(&v24);
          v17 = v16;
          v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a2);
          v25 = v18;
          if (v24)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v17 = 0;
          Shape = 0;
          v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(a2);
          v25 = v23;
          if (v24)
          {
LABEL_23:
            v19 = mlir::ShapedType::getShape(&v24);
            if (mlir::OpTrait::util::getBroadcastedShape(Shape, v17, v19, v20, &v26))
            {
              goto LABEL_24;
            }

            goto LABEL_34;
          }
        }

        if (mlir::OpTrait::util::getBroadcastedShape(Shape, v17, 0, 0, &v26))
        {
LABEL_24:
          if (v13 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || (v12 & 1) == 0)
          {
            if (v13 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (v12 & 1) == 0)
            {
              goto LABEL_38;
            }

            v21 = mlir::RankedTensorType::get(v26, v27, ElementTypeOrSelf, 0);
          }

          else
          {
            v21 = mlir::VectorType::get(v26, v27, ElementTypeOrSelf, 0, 0);
          }

          ElementTypeOrSelf = v21;
LABEL_38:
          if (v26 != v28)
          {
            free(v26);
          }

          return ElementTypeOrSelf;
        }

LABEL_34:
        ElementTypeOrSelf = 0;
        goto LABEL_38;
      }

      if (v7 == v8)
      {
        v12 = 1;
        v13 = *(*a1 + 136);
        goto LABEL_21;
      }

      return 0;
    }

    if (v7 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      return 0;
    }
  }

  return mlir::UnrankedTensorType::get(ElementTypeOrSelf);
}

void getShapeString(void *a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v14 = 0;
  v18 = 0;
  v19 = 1;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v13 = &unk_2868A3EF8;
  v20 = a1;
  llvm::raw_ostream::SetBufferAndMode(&v13, 0, 0, 0);
  v5 = v17;
  if (v17 >= v16)
  {
    llvm::raw_ostream::write(&v13, 39);
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  ++v17;
  *v5 = 39;
  if (a3)
  {
LABEL_5:
    if (*a2 == 0x8000000000000000)
    {
      v6 = v17;
      if (v17 >= v16)
      {
        llvm::raw_ostream::write(&v13, 63);
        if (a3 == 1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        ++v17;
        *v6 = 63;
        if (a3 == 1)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      llvm::raw_ostream::operator<<(&v13, *a2);
      if (a3 == 1)
      {
        goto LABEL_12;
      }
    }

    v8 = 8 * a3;
    v9 = a2 + 1;
    for (i = v8 - 8; i; i -= 8)
    {
      if (v16 == v17)
      {
        llvm::raw_ostream::write(&v13, "x", 1uLL);
        v11 = *v9;
        if (*v9 == 0x8000000000000000)
        {
LABEL_23:
          v12 = v17;
          if (v17 >= v16)
          {
            llvm::raw_ostream::write(&v13, 63);
          }

          else
          {
            ++v17;
            *v12 = 63;
          }

          goto LABEL_18;
        }
      }

      else
      {
        *v17++ = 120;
        v11 = *v9;
        if (*v9 == 0x8000000000000000)
        {
          goto LABEL_23;
        }
      }

      llvm::raw_ostream::operator<<(&v13, v11);
LABEL_18:
      ++v9;
    }
  }

LABEL_12:
  v7 = v17;
  if (v17 >= v16)
  {
    llvm::raw_ostream::write(&v13, 39);
  }

  else
  {
    ++v17;
    *v7 = 39;
  }

  llvm::raw_ostream::~raw_ostream(&v13);
}

__n128 OUTLINED_FUNCTION_1_11@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34)
{
  v35 = (a1 + 24 * a34);
  result = *v34;
  v35[1].n128_u64[0] = v34[1].n128_u64[0];
  *v35 = result;
  return result;
}

BOOL mlir::impl::verifyCastInterfaceOp(mlir::impl *this, mlir::Operation *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = this - 16;
  if (!v3)
  {
    v4 = 0;
  }

  v56 = v4;
  v57[0] = v3;
  mlir::ResultRange::getTypes(&v56, &v48);
  if (v49 == v51)
  {
    v55 = 257;
    mlir::Operation::emitOpError(&v56, this, &v53);
    if (v56)
    {
      LODWORD(v45) = 3;
      *(&v45 + 1) = "expected at least one result for cast operation";
      v46 = 47;
      if (v59 >= v60)
      {
        if (v58 > &v45 || v58 + 24 * v59 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v58 + 24 * v59;
      v6 = v45;
      *(v5 + 2) = v46;
      *v5 = v6;
      ++v59;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
    if (v56)
    {
      mlir::InFlightDiagnostic::report(&v56);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v65;
        v10 = __p;
        if (v65 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v65 = v8;
        operator delete(v10);
      }

      v11 = v62;
      if (!v62)
      {
        goto LABEL_72;
      }

      v12 = v63;
      v13 = v62;
      if (v63 == v62)
      {
LABEL_71:
        v63 = v11;
        operator delete(v13);
LABEL_72:
        if (v58 != &v61)
        {
          free(v58);
        }

        return v7;
      }

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
LABEL_70:
      v13 = v62;
      goto LABEL_71;
    }

    return v7;
  }

  if ((*(this + 46) & 0x80) != 0)
  {
    v16 = *(this + 9);
    v17 = *(this + 17);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v56 = v16;
  v57[0] = v17;
  mlir::OperandRange::getTypes(&v56, &v45);
  InterfaceFor = mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  mlir::ValueRange::ValueRange(&v56, v45 + 32 * *(&v45 + 1), v47 - *(&v45 + 1));
  mlir::TypeRange::TypeRange(&v53, v56, v57[0]);
  NextResultAtOffset = v48;
  v20 = v49;
  v21 = v51;
  if (v49)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v48, v49);
  }

  mlir::ValueRange::ValueRange(&v56, NextResultAtOffset, v21 - v20);
  mlir::TypeRange::TypeRange(v52, v56, v57[0]);
  if ((*InterfaceFor)(v53, *(&v53 + 1), v52[0], v52[1]))
  {
    return 1;
  }

  *&v53 = "operand type";
  v55 = 259;
  mlir::Operation::emitOpError(&v56, this, &v53);
  if (v47 == *(&v45 + 1))
  {
    if (!v56)
    {
      goto LABEL_54;
    }

    LODWORD(v53) = 3;
    *(&v53 + 1) = "s []";
    v54 = 4;
    if (v59 >= v60)
    {
      if (v58 > &v53 || v58 + 24 * v59 <= &v53)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = v58 + 24 * v59;
    v23 = v53;
    v24 = v54;
LABEL_39:
    *(v22 + 2) = v24;
    *v22 = v23;
    ++v59;
    if (!v56)
    {
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  if (v47 - *(&v45 + 1) == 1)
  {
    if (v56)
    {
      LODWORD(v53) = 3;
      *(&v53 + 1) = " ";
      v54 = 1;
      if (v59 >= v60)
      {
        if (v58 > &v53 || v58 + 24 * v59 <= &v53)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25 = v58 + 24 * v59;
      v26 = v53;
      *(v25 + 2) = v54;
      *v25 = v26;
      ++v59;
      if (v56)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v53, *(*(v45 + 32 * *(&v45 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v59 >= v60)
        {
          if (v58 > &v53 || v58 + 24 * v59 <= &v53)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v22 = v58 + 24 * v59;
        v23 = v53;
        v24 = v54;
        goto LABEL_39;
      }
    }
  }

  else if (v56)
  {
    LODWORD(v53) = 3;
    *(&v53 + 1) = "s ";
    v54 = 2;
    if (v59 >= v60)
    {
      if (v58 > &v53 || v58 + 24 * v59 <= &v53)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v36 = v58 + 24 * v59;
    v37 = v53;
    *(v36 + 2) = v54;
    *v36 = v37;
    ++v59;
    if (v56)
    {
      *&v53 = ", ";
      llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::OperandRange>>(mlir::ValueTypeRange<mlir::OperandRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::OperandRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::OperandRange>>(mlir::ValueTypeRange<mlir::OperandRange> const&,char const*)::{lambda(void)#1},void>(v45, *(&v45 + 1), v46, v47, v57, v57, &v53);
      if (v56)
      {
LABEL_40:
        LODWORD(v53) = 3;
        *(&v53 + 1) = " and result type";
        v54 = 16;
        if (v59 >= v60)
        {
          if (v58 > &v53 || v58 + 24 * v59 <= &v53)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v58 + 24 * v59;
        v28 = v53;
        *(v27 + 2) = v54;
        *v27 = v28;
        v29 = ++v59;
        if (v56)
        {
          v30 = 1;
          v31 = "s ";
          if (v51 - v49 == 1)
          {
            v31 = " ";
          }

          else
          {
            v30 = 2;
          }

          LODWORD(v53) = 3;
          *(&v53 + 1) = v31;
          v54 = v30;
          if (v29 >= v60)
          {
            if (v58 > &v53 || v58 + 24 * v29 <= &v53)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v32 = v58 + 24 * v59;
          v33 = v53;
          *(v32 + 2) = v54;
          *v32 = v33;
          ++v59;
          if (v56)
          {
            *&v53 = ", ";
            llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(v48, v49, v50, v51, v57, v57, &v53);
            if (v56)
            {
              LODWORD(v53) = 3;
              *(&v53 + 1) = " are cast incompatible";
              v54 = 22;
              if (v59 >= v60)
              {
                if (v58 > &v53 || v58 + 24 * v59 <= &v53)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v34 = v58 + 24 * v59;
              v35 = v53;
              *(v34 + 2) = v54;
              *v34 = v35;
              ++v59;
            }
          }
        }
      }
    }
  }

LABEL_54:
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
  if (v56)
  {
    mlir::InFlightDiagnostic::report(&v56);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v65;
      v40 = __p;
      if (v65 != __p)
      {
        do
        {
          v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v65 = v38;
      operator delete(v40);
    }

    v11 = v62;
    if (!v62)
    {
      goto LABEL_72;
    }

    v41 = v63;
    v13 = v62;
    if (v63 == v62)
    {
      goto LABEL_71;
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

    while (v41 != v11);
    goto LABEL_70;
  }

  return v7;
}

uint64_t mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
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
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::arith::BitcastOp>,mlir::OpTrait::OneResult<mlir::arith::BitcastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::arith::BitcastOp>,mlir::OpTrait::ZeroSuccessors<mlir::arith::BitcastOp>,mlir::OpTrait::OneOperand<mlir::arith::BitcastOp>,mlir::OpTrait::OpInvariants<mlir::arith::BitcastOp>,mlir::ConditionallySpeculatable::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::arith::BitcastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::arith::BitcastOp>,mlir::CastOpInterface::Trait<mlir::arith::BitcastOp>,mlir::VectorUnrollOpInterface::Trait<mlir::arith::BitcastOp>,mlir::OpTrait::Elementwise<mlir::arith::BitcastOp>,mlir::OpTrait::Scalarizable<mlir::arith::BitcastOp>,mlir::OpTrait::Vectorizable<mlir::arith::BitcastOp>,mlir::OpTrait::Tensorizable<mlir::arith::BitcastOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::mps::detail::GRUGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[200];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void mlir::builtin::registerCastOpInterfaceExternalModels(mlir::DialectRegistry &)::$_0::__invoke(uint64_t a1)
{
  v1 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v13 = 1283;
    v12[0] = "Attempting to attach an interface to an unregistered operation ";
    v12[2] = "builtin.unrealized_conversion_cast";
    v12[3] = 34;
    v10 = ".";
    v11 = 259;
    llvm::operator+(v12, &v10, v14);
    llvm::report_fatal_error(v14, 1);
  }

  v3 = v1;
  v4 = *(v1 + 16);
  if (v4 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v14[0] = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v14);
    v4 = *(v3 + 16);
    {
      goto LABEL_4;
    }
  }

  else
  {
    ReferencedDialect = *(v1 + 24);
    {
      goto LABEL_4;
    }
  }

  v9 = v4;
  v7 = ReferencedDialect;
  mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
  ReferencedDialect = v7;
  v4 = v9;
LABEL_4:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(ReferencedDialect, v4, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  {
    v8 = v6;
    mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor();
    v6 = v8;
  }

  mlir::detail::InterfaceMap::insert(v3 + 32, mlir::detail::TypeIDResolver<mlir::CastOpInterface,void>::resolveTypeID(void)::id, v6);
}

__n128 llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char **a7)
{
  if (a2 != a4)
  {
    v33 = v7;
    v34 = v8;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(a1, a2);
    mlir::DiagnosticArgument::DiagnosticArgument(&v31, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);
    if (v17 >= *(a5 + 28))
    {
      if (v16 > &v31 || v16 + 24 * v17 <= &v31)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v18 = (v16 + 24 * *(a5 + 24));
    result = v31;
    v18[1].n128_u64[0] = v32;
    *v18 = result;
    ++*(a5 + 24);
    for (i = a2 + 1; a4 != i; ++i)
    {
      v21 = *a7;
      if (*a7)
      {
        v22 = strlen(*a7);
        v31.n128_u32[0] = 3;
        v31.n128_u64[1] = v21;
        v32 = v22;
        v23 = *(a6 + 24);
        v24 = *(a6 + 16);
        if (v23 >= *(a6 + 28))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v31.n128_u32[0] = 3;
        v31.n128_u64[1] = 0;
        v32 = 0;
        v23 = *(a6 + 24);
        v24 = *(a6 + 16);
        if (v23 >= *(a6 + 28))
        {
LABEL_12:
          if (v24 <= &v31 && v24 + 24 * v23 > &v31)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      v25 = (v24 + 24 * *(a6 + 24));
      v26 = v31;
      v25[1].n128_u64[0] = v32;
      *v25 = v26;
      ++*(a6 + 24);
      v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(a1, i);
      mlir::DiagnosticArgument::DiagnosticArgument(&v31, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
      v28 = *(a5 + 24);
      v29 = *(a5 + 16);
      if (v28 >= *(a5 + 28))
      {
        if (v29 > &v31 || v29 + 24 * v28 <= &v31)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v30 = (v29 + 24 * *(a5 + 24));
      result = v31;
      v30[1].n128_u64[0] = v32;
      *v30 = result;
      ++*(a5 + 24);
    }
  }

  return result;
}

void mlir::intrange::inferIndexOp(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v56[16] = *MEMORY[0x277D85DE8];
  v54 = a2;
  v55 = a3;
  v9 = *(a1 + 24);
  if (!v9)
  {
    goto LABEL_26;
  }

  v12 = a2;
  v5 = 0x1000C8000313F17;
  (*(*v9 + 48))(&v38);
  v6 = v56;
  v54 = v56;
  v55 = 0x200000000;
  if (!a3)
  {
    v30 = v56;
    v31 = 0;
    v15 = *(a1 + 24);
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_26:
    std::__throw_bad_function_call[abi:nn200100]();
    goto LABEL_27;
  }

  v13 = a3 << 6;
  do
  {
    mlir::intrange::truncRange(v12, 0x20, &v46);
    if (v55 >= HIDWORD(v55))
    {
      if (v54 > &v46 || &v54[8 * v55] <= &v46)
      {
        llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow();
      }

      llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow();
    }

    v14 = &v54[8 * v55];
    *(v14 + 2) = v47;
    *v14 = v46;
    v47 = 0;
    *(v14 + 6) = v49;
    *(v14 + 2) = v48;
    v49 = 0;
    *(v14 + 10) = v51;
    *(v14 + 4) = v50;
    v51 = 0;
    *(v14 + 14) = v53;
    *(v14 + 6) = v52;
    v53 = 0;
    LODWORD(v55) = v55 + 1;
    if (v51 >= 0x41 && v50)
    {
      MEMORY[0x259C63150](v50, 0x1000C8000313F17);
    }

    if (v49 >= 0x41 && v48)
    {
      MEMORY[0x259C63150](v48, 0x1000C8000313F17);
    }

    if (v47 >= 0x41 && v46)
    {
      MEMORY[0x259C63150](v46, 0x1000C8000313F17);
    }

    v12 = (v12 + 64);
    v13 -= 64;
  }

  while (v13);
  v30 = v54;
  v31 = v55;
  v15 = *(a1 + 24);
  if (!v15)
  {
    goto LABEL_26;
  }

LABEL_20:
  (*(*v15 + 48))(&v46);
  mlir::intrange::extRange(&v46, 0x40, &v30);
  mlir::intrange::truncRange(&v38, 0x20, &v22);
  if (a4 == 2)
  {
    v18 = mlir::ConstantIntRanges::umin(&v46);
    v19 = mlir::ConstantIntRanges::umin(&v22);
    if (*(v18 + 8) > 0x40u)
    {
      if (!llvm::APInt::equalSlowCase(v18, v19))
      {
        goto LABEL_43;
      }
    }

    else if (*v18 != *v19)
    {
      goto LABEL_43;
    }

    v20 = mlir::ConstantIntRanges::umax(&v46);
    v21 = mlir::ConstantIntRanges::umax(&v22);
    if (*(v20 + 8) > 0x40u)
    {
      if (!llvm::APInt::equalSlowCase(v20, v21))
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (a4 == 1)
  {
LABEL_27:
    v16 = mlir::ConstantIntRanges::smin(&v46);
    v17 = mlir::ConstantIntRanges::smin(&v22);
    if (*(v16 + 8) > 0x40u)
    {
      if (!llvm::APInt::equalSlowCase(v16, v17))
      {
        goto LABEL_43;
      }
    }

    else if (*v16 != *v17)
    {
      goto LABEL_43;
    }

    v20 = mlir::ConstantIntRanges::smax(&v46);
    v21 = mlir::ConstantIntRanges::smax(&v22);
    if (*(v20 + 8) > 0x40u)
    {
      if (!llvm::APInt::equalSlowCase(v20, v21))
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

LABEL_39:
    if (*v20 != *v21)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (a4 || !mlir::ConstantIntRanges::operator==(&v46, &v22))
  {
LABEL_43:
    mlir::ConstantIntRanges::rangeUnion(&v38, &v30, a5);
    if (v29 < 0x41)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

LABEL_40:
  *(a5 + 8) = v39;
  *a5 = v38;
  *(a5 + 24) = v41;
  *(a5 + 16) = v40;
  v39 = 0;
  v41 = 0;
  *(a5 + 40) = v43;
  *(a5 + 32) = v42;
  *(a5 + 56) = v45;
  *(a5 + 48) = v44;
  v43 = 0;
  v45 = 0;
  if (v29 < 0x41)
  {
    goto LABEL_46;
  }

LABEL_44:
  if (v28)
  {
    MEMORY[0x259C63150](v28, v5);
  }

LABEL_46:
  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x259C63150](v26, v5);
  }

  if (v25 >= 0x41 && v24)
  {
    MEMORY[0x259C63150](v24, v5);
  }

  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x259C63150](v22, v5);
  }

  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x259C63150](v36, v5);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, v5);
  }

  if (v33 >= 0x41 && v32)
  {
    MEMORY[0x259C63150](v32, v5);
  }

  if (v31 >= 0x41 && v30)
  {
    MEMORY[0x259C63150](v30, v5);
  }

  if (v53 >= 0x41 && v52)
  {
    MEMORY[0x259C63150](v52, v5);
  }

  if (v51 >= 0x41 && v50)
  {
    MEMORY[0x259C63150](v50, v5);
  }

  if (v49 >= 0x41 && v48)
  {
    MEMORY[0x259C63150](v48, v5);
  }

  if (v47 >= 0x41 && v46)
  {
    MEMORY[0x259C63150](v46, v5);
  }

  llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::destroy_range(v54, &v54[8 * v55]);
  if (v54 != v6)
  {
    free(v54);
  }

  if (v45 >= 0x41 && v44)
  {
    MEMORY[0x259C63150](v44, v5);
  }

  if (v43 >= 0x41 && v42)
  {
    MEMORY[0x259C63150](v42, v5);
  }

  if (v41 >= 0x41 && v40)
  {
    MEMORY[0x259C63150](v40, v5);
  }

  if (v39 >= 0x41)
  {
    if (v38)
    {
      MEMORY[0x259C63150](v38, v5);
    }
  }
}

uint64_t mlir::intrange::extRange@<X0>(mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2;
  v6 = mlir::ConstantIntRanges::umin(this);
  llvm::APInt::zext(v6, v3, &v21);
  v7 = mlir::ConstantIntRanges::umax(this);
  llvm::APInt::zext(v7, v3, &v19);
  v8 = mlir::ConstantIntRanges::smin(this);
  llvm::APInt::sext(v8, v3, &v17);
  v9 = mlir::ConstantIntRanges::smax(this);
  result = llvm::APInt::sext(v9, v3, &v15);
  v11 = v22;
  a3[2] = v22;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, &v21);
  }

  *a3 = v21;
  v12 = v20;
  a3[6] = v20;
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 4), &v19);
  }

  *(a3 + 2) = v19;
  v13 = v18;
  a3[10] = v18;
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 8), &v17);
  }

  *(a3 + 4) = v17;
  v14 = v16;
  a3[14] = v16;
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 12), &v15);
  }

  *(a3 + 6) = v15;
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      return MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  return result;
}

const llvm::APInt *mlir::intrange::truncRange@<X0>(mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2;
  v6 = mlir::ConstantIntRanges::umin(this);
  v7 = *(v6 + 2);
  v54 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v53, v6);
  }

  v53 = *v6;
  if (v7 == v3)
  {
    v53 = 0;
  }

  else
  {
    v53 >>= v3;
  }

  v8 = mlir::ConstantIntRanges::umax(this);
  v9 = *(v8 + 2);
  v52 = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v51, v8);
  }

  v51 = *v8;
  if (v9 == v3)
  {
    v51 = 0;
    v10 = v54;
    if (v54 > 0x40)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v51 >>= v3;
    v10 = v54;
    if (v54 > 0x40)
    {
LABEL_15:
      v11 = llvm::APInt::equalSlowCase(&v53, &v51);
      goto LABEL_16;
    }
  }

  v11 = v53 == v51;
LABEL_16:
  if (v52 >= 0x41 && v51)
  {
    MEMORY[0x259C63150](v51, 0x1000C8000313F17);
    v10 = v54;
  }

  if (v10 >= 0x41 && v53)
  {
    MEMORY[0x259C63150](v53, 0x1000C8000313F17);
  }

  if (v11)
  {
    v12 = mlir::ConstantIntRanges::umin(this);
    llvm::APInt::trunc(v12, v3, &v53);
    v13 = mlir::ConstantIntRanges::umax(this);
    llvm::APInt::trunc(v13, v3, &v51);
  }

  else
  {
    v54 = v3;
    if (v3 > 0x40)
    {
      llvm::APInt::initSlowCase(&v53);
    }

    v53 = 0;
    v52 = v3;
    v14 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v3)
    {
      v14 = 0;
    }

    v51 = v14;
  }

  v15 = mlir::ConstantIntRanges::smin(this);
  v16 = v3 - 1;
  v17 = *(v15 + 2);
  v50 = v17;
  if (v17 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v49, v15);
  }

  if (v17 == v16)
  {
    v18 = 63;
  }

  else
  {
    v18 = v3 - 1;
  }

  v19 = -v17;
  v20 = v17 == 0;
  if (v17)
  {
    v21 = (*v15 << -v17) >> -v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 >> v18;
  v23 = 0xFFFFFFFFFFFFFFFFLL >> v19;
  if (v20)
  {
    v23 = 0;
  }

  v49 = (v22 & v23);
  result = mlir::ConstantIntRanges::smax(this);
  v25 = *(result + 2);
  v48 = v25;
  if (v25 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v47, result);
  }

  if (v25 == v16)
  {
    v26 = 63;
  }

  else
  {
    v26 = v3 - 1;
  }

  v27 = -v25;
  v28 = v25 == 0;
  if (v25)
  {
    v29 = (*result << -v25) >> -v25;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29 >> v26;
  v31 = 0xFFFFFFFFFFFFFFFFLL >> v27;
  if (v28)
  {
    v31 = 0;
  }

  v47 = (v30 & v31);
  v32 = v50;
  if (v50 > 0x40)
  {
    if (llvm::APInt::equalSlowCase(&v49, &v47))
    {
      goto LABEL_76;
    }

    result = llvm::APInt::countTrailingOnesSlowCase(&v49);
    if (result != v32)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v49 == v47)
    {
      goto LABEL_76;
    }

    if (v50 && v49 != (0xFFFFFFFFFFFFFFFFLL >> -v50))
    {
      if (v49)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }
  }

  v33 = v48;
  if (!v48)
  {
    goto LABEL_76;
  }

  if (v48 > 0x40)
  {
    if (llvm::APInt::countTrailingOnesSlowCase(&v47) == v33)
    {
      goto LABEL_76;
    }

    result = llvm::APInt::countLeadingZerosSlowCase(&v47);
    if (result == v33)
    {
      goto LABEL_76;
    }
  }

  else if (v47 == (0xFFFFFFFFFFFFFFFFLL >> -v48) || !v47)
  {
    goto LABEL_76;
  }

  if (v32 <= 0x40)
  {
    if (v49)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = llvm::APInt::countLeadingZerosSlowCase(&v49);
  if (result != v32)
  {
    goto LABEL_70;
  }

LABEL_68:
  v34 = v48;
  if (v48 <= 0x40)
  {
    if (v47)
    {
      goto LABEL_70;
    }

LABEL_76:
    v36 = mlir::ConstantIntRanges::smin(this);
    llvm::APInt::trunc(v36, v3, &v45);
    v37 = mlir::ConstantIntRanges::smax(this);
    result = llvm::APInt::trunc(v37, v3, &v43);
    v38 = v54;
    a3[2] = v54;
    if (v38 > 0x40)
    {
      goto LABEL_82;
    }

    goto LABEL_77;
  }

  result = llvm::APInt::countLeadingZerosSlowCase(&v47);
  if (result == v34)
  {
    goto LABEL_76;
  }

LABEL_70:
  v46 = v3;
  if (v3 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v45);
  }

  v45 = (1 << v16);
  v44 = v3;
  v35 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  if (!v3)
  {
    v35 = 0;
  }

  v43 = v35;
  v43 &= ~(1 << v16);
  v40 = v54;
  a3[2] = v54;
  if (v40 > 0x40)
  {
LABEL_82:
    llvm::APInt::initSlowCase(a3, &v53);
  }

LABEL_77:
  *a3 = v53;
  v39 = v52;
  a3[6] = v52;
  if (v39 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 4), &v51);
  }

  *(a3 + 2) = v51;
  v41 = v46;
  a3[10] = v46;
  if (v41 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 8), &v45);
  }

  *(a3 + 4) = v45;
  v42 = v44;
  a3[14] = v44;
  if (v42 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 12), &v43);
  }

  *(a3 + 6) = v43;
  if (v46 >= 0x41)
  {
    result = v45;
    if (v45)
    {
      result = MEMORY[0x259C63150](v45, 0x1000C8000313F17);
    }
  }

  if (v48 >= 0x41)
  {
    result = v47;
    if (v47)
    {
      result = MEMORY[0x259C63150](v47, 0x1000C8000313F17);
    }
  }

  if (v50 >= 0x41)
  {
    result = v49;
    if (v49)
    {
      result = MEMORY[0x259C63150](v49, 0x1000C8000313F17);
    }
  }

  if (v52 >= 0x41)
  {
    result = v51;
    if (v51)
    {
      result = MEMORY[0x259C63150](v51, 0x1000C8000313F17);
    }
  }

  if (v54 >= 0x41)
  {
    result = v53;
    if (v53)
    {
      return MEMORY[0x259C63150](v53, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::intrange::extUIRange@<X0>(mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2;
  v6 = mlir::ConstantIntRanges::umin(this);
  llvm::APInt::zext(v6, v3, &v11);
  v7 = mlir::ConstantIntRanges::umax(this);
  llvm::APInt::zext(v7, v3, &v9);
  result = mlir::ConstantIntRanges::fromUnsigned(&v11, &v9, a3);
  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::intrange::extSIRange@<X0>(mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2;
  v6 = mlir::ConstantIntRanges::smin(this);
  llvm::APInt::sext(v6, v3, &v12);
  v7 = mlir::ConstantIntRanges::smax(this);
  llvm::APInt::sext(v7, v3, &v10);
  result = mlir::ConstantIntRanges::fromSigned(&v12, &v10, v8, a3);
  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      result = MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::intrange::inferAdd@<X0>(uint64_t a1@<X0>, int a2@<W2>, _DWORD *a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = &unk_286898A38;
  v34 = a2;
  v35 = &v33;
  v30 = &unk_286898AC8;
  v31 = a2;
  v32 = &v30;
  v5 = mlir::ConstantIntRanges::umin(a1);
  v6 = mlir::ConstantIntRanges::umin((a1 + 64));
  v7 = mlir::ConstantIntRanges::umax(a1);
  v8 = mlir::ConstantIntRanges::umax((a1 + 64));
  computeBoundsBy(&v22, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v33, v5, v6, v7, v8, 0);
  v9 = mlir::ConstantIntRanges::smin(a1);
  v10 = mlir::ConstantIntRanges::smin((a1 + 64));
  v11 = mlir::ConstantIntRanges::smax(a1);
  v12 = mlir::ConstantIntRanges::smax((a1 + 64));
  computeBoundsBy(&v14, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v30, v9, v10, v11, v12, 1);
  mlir::ConstantIntRanges::intersection(&v22, &v14, a3);
  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x259C63150](v20, 0x1000C8000313F17);
  }

  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x259C63150](v18, 0x1000C8000313F17);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x259C63150](v16, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x259C63150](v26, 0x1000C8000313F17);
  }

  if (v25 >= 0x41 && v24)
  {
    MEMORY[0x259C63150](v24, 0x1000C8000313F17);
  }

  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x259C63150](v22, 0x1000C8000313F17);
  }

  if (v32 != &v30)
  {
    if (v32)
    {
      (*(*v32 + 5))();
    }

    result = v35;
    if (v35 != &v33)
    {
      goto LABEL_29;
    }

    return (*(*result + 32))(result);
  }

  (*(*v32 + 4))(v32);
  result = v35;
  if (v35 == &v33)
  {
    return (*(*result + 32))(result);
  }

LABEL_29:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

unsigned int *computeBoundsBy(_DWORD *a1, void (*a2)(unsigned int **__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const llvm::APInt *a8)
{
  a2(&v19, a3, a4, a5);
  a2(&v16, a3, a6, a7);
  if (v21 == 1 && v18 == 1)
  {
    result = mlir::ConstantIntRanges::range(&v19, &v16, a8, a1);
    if (v18 != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = mlir::ConstantIntRanges::maxRange(*(a4 + 8), a1);
    if (v18 != 1)
    {
      goto LABEL_9;
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

LABEL_9:
  if (v21 == 1 && v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      return MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::intrange::inferSub@<X0>(uint64_t a1@<X0>, int a2@<W2>, _DWORD *a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = &unk_286898B48;
  v34 = a2;
  v35 = &v33;
  v30 = &unk_286898BC8;
  v31 = a2;
  v32 = &v30;
  v5 = mlir::ConstantIntRanges::umin(a1);
  v6 = mlir::ConstantIntRanges::umax((a1 + 64));
  v7 = mlir::ConstantIntRanges::umax(a1);
  v8 = mlir::ConstantIntRanges::umin((a1 + 64));
  computeBoundsBy(&v22, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v33, v5, v6, v7, v8, 0);
  v9 = mlir::ConstantIntRanges::smin(a1);
  v10 = mlir::ConstantIntRanges::smax((a1 + 64));
  v11 = mlir::ConstantIntRanges::smax(a1);
  v12 = mlir::ConstantIntRanges::smin((a1 + 64));
  computeBoundsBy(&v14, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v30, v9, v10, v11, v12, 1);
  mlir::ConstantIntRanges::intersection(&v22, &v14, a3);
  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x259C63150](v20, 0x1000C8000313F17);
  }

  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x259C63150](v18, 0x1000C8000313F17);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x259C63150](v16, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x259C63150](v26, 0x1000C8000313F17);
  }

  if (v25 >= 0x41 && v24)
  {
    MEMORY[0x259C63150](v24, 0x1000C8000313F17);
  }

  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x259C63150](v22, 0x1000C8000313F17);
  }

  if (v32 != &v30)
  {
    if (v32)
    {
      (*(*v32 + 5))();
    }

    result = v35;
    if (v35 != &v33)
    {
      goto LABEL_29;
    }

    return (*(*result + 32))(result);
  }

  (*(*v32 + 4))(v32);
  result = v35;
  if (v35 == &v33)
  {
    return (*(*result + 32))(result);
  }

LABEL_29:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t mlir::intrange::inferMul@<X0>(uint64_t a1@<X0>, int a2@<W2>, _DWORD *a3@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  v41 = &unk_286898C48;
  v42 = a2;
  v43 = &v41;
  v38 = &unk_286898CC8;
  v39 = a2;
  v40 = &v38;
  v5 = mlir::ConstantIntRanges::umin(a1);
  v27 = *(v5 + 2);
  if (v27 > 0x40)
  {
    llvm::APInt::initSlowCase(&v26, v5);
  }

  v26 = *v5;
  v6 = mlir::ConstantIntRanges::umax(a1);
  v29 = *(v6 + 2);
  if (v29 > 0x40)
  {
    llvm::APInt::initSlowCase(&v28, v6);
  }

  v28 = *v6;
  v7 = mlir::ConstantIntRanges::umin((a1 + 64));
  v35 = *(v7 + 2);
  if (v35 > 0x40)
  {
    llvm::APInt::initSlowCase(&v34, v7);
  }

  v34 = *v7;
  v8 = mlir::ConstantIntRanges::umax((a1 + 64));
  v37 = *(v8 + 2);
  if (v37 > 0x40)
  {
    llvm::APInt::initSlowCase(&v36, v8);
  }

  v36 = *v8;
  minMaxBy(&v14, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v41, &v26, 2, &v34, 2, 0);
  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x259C63150](v36, 0x1000C8000313F17);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x259C63150](v26, 0x1000C8000313F17);
  }

  v9 = mlir::ConstantIntRanges::smin(a1);
  v35 = *(v9 + 2);
  if (v35 > 0x40)
  {
    llvm::APInt::initSlowCase(&v34, v9);
  }

  v34 = *v9;
  v10 = mlir::ConstantIntRanges::smax(a1);
  v37 = *(v10 + 2);
  if (v37 > 0x40)
  {
    llvm::APInt::initSlowCase(&v36, v10);
  }

  v36 = *v10;
  v11 = mlir::ConstantIntRanges::smin((a1 + 64));
  v23 = *(v11 + 2);
  if (v23 > 0x40)
  {
    llvm::APInt::initSlowCase(&v22, v11);
  }

  v22 = *v11;
  v12 = mlir::ConstantIntRanges::smax((a1 + 64));
  v25 = *(v12 + 2);
  if (v25 > 0x40)
  {
    llvm::APInt::initSlowCase(&v24, v12);
  }

  v24 = *v12;
  minMaxBy(&v26, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v38, &v34, 2, &v22, 2, 1);
  if (v25 >= 0x41 && v24)
  {
    MEMORY[0x259C63150](v24, 0x1000C8000313F17);
  }

  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x259C63150](v22, 0x1000C8000313F17);
  }

  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x259C63150](v36, 0x1000C8000313F17);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  mlir::ConstantIntRanges::intersection(&v14, &v26, a3);
  if (v33 >= 0x41 && v32)
  {
    MEMORY[0x259C63150](v32, 0x1000C8000313F17);
  }

  if (v31 >= 0x41 && v30)
  {
    MEMORY[0x259C63150](v30, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x259C63150](v26, 0x1000C8000313F17);
  }

  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x259C63150](v20, 0x1000C8000313F17);
  }

  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x259C63150](v18, 0x1000C8000313F17);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x259C63150](v16, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
  }

  if (v40 != &v38)
  {
    if (v40)
    {
      (*(*v40 + 5))(v40);
    }

    result = v43;
    if (v43 != &v41)
    {
      goto LABEL_77;
    }

    return (*(*result + 32))(result);
  }

  (*(*v40 + 4))(v40);
  result = v43;
  if (v43 == &v41)
  {
    return (*(*result + 32))(result);
  }

LABEL_77:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

unsigned int *minMaxBy(_DWORD *a1, void (*a2)(unsigned int **__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, llvm::APInt *a8)
{
  v9 = a6;
  v10 = a4;
  v14 = *(a4 + 8);
  v36 = *(a4 + 8);
  if (a8)
  {
    if (v14 > 0x40)
    {
      llvm::APInt::initSlowCase(&v35);
    }

    v15 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
    if (!v14)
    {
      v15 = 0;
    }

    v35 = (v15 & ~(1 << (v14 - 1)));
    v34 = v14;
    v33 = 0;
    v33 |= 1 << (v14 - 1);
    if (!a5)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v14 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v35);
    }

    v16 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
    if (!v14)
    {
      v16 = 0;
    }

    v35 = v16;
    v34 = v14;
    v33 = 0;
    if (!a5)
    {
      goto LABEL_47;
    }
  }

  if (a7)
  {
    v17 = 16 * a7;
    v25 = a4 + 16 * a5;
    v26 = 16 * a7;
    do
    {
      v18 = v9;
      do
      {
        a2(&v30, a3, v10, v18);
        v19 = v32;
        if ((v32 & 1) == 0)
        {
          result = mlir::ConstantIntRanges::maxRange(v14, a1);
          goto LABEL_40;
        }

        v29 = v31;
        v28 = v30;
        v31 = 0;
        v20 = &v28;
        if (a8)
        {
          if ((llvm::APInt::compareSigned(&v28, &v35) & 0x80000000) != 0)
          {
            goto LABEL_24;
          }

LABEL_23:
          v20 = &v35;
          goto LABEL_24;
        }

        if ((llvm::APInt::compare(&v28, &v35) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_24:
        if (v36 > 0x40 || (v22 = *(v20 + 2), v22 > 0x40))
        {
          llvm::APInt::assignSlowCase(&v35, v20);
          v23 = &v28;
          if (!a8)
          {
LABEL_27:
            result = llvm::APInt::compare(&v28, &v33);
            if (result > 0)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          }
        }

        else
        {
          v35 = *v20;
          v36 = v22;
          v23 = &v28;
          if (!a8)
          {
            goto LABEL_27;
          }
        }

        result = llvm::APInt::compareSigned(&v28, &v33);
        if (result > 0)
        {
LABEL_31:
          if (v34 > 0x40)
          {
            goto LABEL_37;
          }

          goto LABEL_34;
        }

LABEL_33:
        v23 = &v33;
        if (v34 > 0x40)
        {
          goto LABEL_37;
        }

LABEL_34:
        v24 = *(v23 + 2);
        if (v24 > 0x40)
        {
LABEL_37:
          result = llvm::APInt::assignSlowCase(&v33, v23);
          if (v29 < 0x41)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        v33 = *v23;
        v34 = v24;
        if (v29 < 0x41)
        {
          goto LABEL_40;
        }

LABEL_38:
        result = v28;
        if (v28)
        {
          result = MEMORY[0x259C63150](v28, 0x1000C8000313F17);
        }

LABEL_40:
        if (v32 == 1 && v31 >= 0x41)
        {
          result = v30;
          if (v30)
          {
            result = MEMORY[0x259C63150](v30, 0x1000C8000313F17);
          }
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_48;
        }

        v18 += 16;
        v17 -= 16;
      }

      while (v17);
      v10 += 16;
      v17 = v26;
      v9 = a6;
    }

    while (v10 != v25);
  }

LABEL_47:
  result = mlir::ConstantIntRanges::range(&v35, &v33, a8, a1);
LABEL_48:
  if (v34 >= 0x41)
  {
    result = v33;
    if (v33)
    {
      result = MEMORY[0x259C63150](v33, 0x1000C8000313F17);
    }
  }

  if (v36 >= 0x41)
  {
    result = v35;
    if (v35)
    {
      return MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *inferDivURange(_DWORD *a1, mlir::ConstantIntRanges *this, mlir::ConstantIntRanges *a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v15[0] = a4;
  v15[1] = a5;
  v8 = mlir::ConstantIntRanges::umin(this);
  v9 = mlir::ConstantIntRanges::umax(this);
  v10 = mlir::ConstantIntRanges::umin(a3);
  v11 = mlir::ConstantIntRanges::umax(a3);
  v12 = v10[2];
  if (v12 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(v10) != v12)
    {
      goto LABEL_3;
    }
  }

  else if (*v10)
  {
LABEL_3:
    v14 = v15;
    v21 = *(v8 + 2);
    if (v21 > 0x40)
    {
      llvm::APInt::initSlowCase(&v20, v8);
    }

    v20 = *v8;
    v23 = *(v9 + 2);
    if (v23 > 0x40)
    {
      llvm::APInt::initSlowCase(&v22, v9);
    }

    v22 = *v9;
    v17 = v10[2];
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase(&v16, v10);
    }

    v16 = *v10;
    v19 = *(v11 + 2);
    if (v19 > 0x40)
    {
      llvm::APInt::initSlowCase(&v18, v11);
    }

    v18 = *v11;
    result = minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivURange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>, &v14, &v20, 2, &v16, 2, 0);
    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      }
    }

    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      }
    }

    if (v23 >= 0x41)
    {
      result = v22;
      if (v22)
      {
        result = MEMORY[0x259C63150](v22, 0x1000C8000313F17);
      }
    }

    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        return MEMORY[0x259C63150](v20, 0x1000C8000313F17);
      }
    }

    return result;
  }

  return mlir::ConstantIntRanges::maxRange(v12, a1);
}

unsigned int *inferDivSRange(_DWORD *a1, mlir::ConstantIntRanges *this, mlir::ConstantIntRanges *a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v19[0] = a4;
  v19[1] = a5;
  v8 = mlir::ConstantIntRanges::smin(this);
  v9 = mlir::ConstantIntRanges::smax(this);
  v10 = mlir::ConstantIntRanges::smin(a3);
  v11 = mlir::ConstantIntRanges::smax(a3);
  v12 = v10[2];
  v13 = v12 - 1;
  if (v12 > 0x40)
  {
    if (((*(*v10 + 8 * (v13 >> 6)) >> v13) & 1) != 0 || llvm::APInt::countLeadingZerosSlowCase(v10) == v12)
    {
      goto LABEL_7;
    }

LABEL_11:
    v18 = v19;
    v25 = *(v8 + 2);
    if (v25 > 0x40)
    {
      llvm::APInt::initSlowCase(&v24, v8);
    }

    v24 = *v8;
    v27 = *(v9 + 2);
    if (v27 > 0x40)
    {
      llvm::APInt::initSlowCase(&v26, v9);
    }

    v26 = *v9;
    v21 = v10[2];
    if (v21 > 0x40)
    {
      llvm::APInt::initSlowCase(&v20, v10);
    }

    v20 = *v10;
    v23 = *(v11 + 2);
    if (v23 > 0x40)
    {
      llvm::APInt::initSlowCase(&v22, v11);
    }

    v22 = *v11;
    result = minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivSRange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>, &v18, &v24, 2, &v20, 2, 1);
    if (v23 >= 0x41)
    {
      result = v22;
      if (v22)
      {
        result = MEMORY[0x259C63150](v22, 0x1000C8000313F17);
      }
    }

    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
      }
    }

    if (v27 >= 0x41)
    {
      result = v26;
      if (v26)
      {
        result = MEMORY[0x259C63150](v26, 0x1000C8000313F17);
      }
    }

    if (v25 >= 0x41)
    {
      result = v24;
      if (v24)
      {
        return MEMORY[0x259C63150](v24, 0x1000C8000313F17);
      }
    }

    return result;
  }

  if (((*v10 >> v13) & 1) == 0 && *v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = *(v11 + 2);
  v15 = v14 - 1;
  if (v14 >= 0x41)
  {
    v16 = (*v11 + 8 * ((v14 - 1) >> 6));
  }

  else
  {
    v16 = v11;
  }

  if ((*v16 >> v15))
  {
    goto LABEL_11;
  }

  return mlir::ConstantIntRanges::maxRange(v12, a1);
}

unsigned int *mlir::intrange::inferRemS@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = mlir::ConstantIntRanges::smin(a1);
  v5 = mlir::ConstantIntRanges::smax(a1);
  v6 = mlir::ConstantIntRanges::smin((a1 + 64));
  v8 = mlir::ConstantIntRanges::smax((a1 + 64));
  v9 = v8[2];
  v63 = v9;
  if (v9 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v62);
  }

  v62 = 1 << (v9 - 1);
  v61 = v9;
  v10 = 0xFFFFFFFFFFFFFFFFLL >> ((v9 - 1) & 0x3F ^ 0x3F);
  if (!v9)
  {
    v10 = 0;
  }

  v60 = v10;
  v60 &= ~(1 << (v9 - 1));
  v11 = *(v6 + 2);
  v12 = v11 - 1;
  if (v11 > 0x40)
  {
    v14 = *v6;
    if (((*(*v6 + 8 * (v12 >> 6)) >> v12) & 1) == 0 && llvm::APInt::countLeadingZerosSlowCase(v6) != v11)
    {
      goto LABEL_17;
    }

    v13 = v14;
  }

  else
  {
    v13 = *v6;
    if (((*v6 >> v12) & 1) == 0 && v13)
    {
      goto LABEL_21;
    }

    v14 = *v6;
  }

  v15 = v8[2];
  v16 = v15 - 1;
  if (v15 >= 0x41)
  {
    v17 = (*v8 + 8 * ((v15 - 1) >> 6));
  }

  else
  {
    v17 = v8;
  }

  if (((*v17 >> v16) & 1) == 0)
  {
    goto LABEL_104;
  }

  if (v11 <= 0x40)
  {
LABEL_21:
    if (((v13 >> v12) & 1) == 0 && v13)
    {
      goto LABEL_23;
    }

LABEL_25:
    llvm::APInt::abs(v6, &v58);
    goto LABEL_27;
  }

LABEL_17:
  if (((*(v14 + 8 * (v12 >> 6)) >> v12) & 1) != 0 || llvm::APInt::countLeadingZerosSlowCase(v6) == v11)
  {
    goto LABEL_25;
  }

LABEL_23:
  v59 = v8[2];
  if (v59 > 0x40)
  {
    llvm::APInt::initSlowCase(&v58, v8);
  }

  v58 = *v8;
LABEL_27:
  v18 = *(v4 + 8);
  v19 = v18 - 1;
  if (v18 >= 0x41)
  {
    v20 = (*v4 + 8 * ((v18 - 1) >> 6));
  }

  else
  {
    v20 = v4;
  }

  v21 = *v20;
  v22 = *(v5 + 2);
  v23 = v22 - 1;
  if (v22 <= 0x40)
  {
    if (((*v5 >> v23) & 1) == 0)
    {
      v24 = *v5 == 0;
      goto LABEL_37;
    }

LABEL_34:
    v25 = 0;
    v26 = 1 << v19;
    v27 = v59;
    v57 = v59;
    if (v59 > 0x40)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if ((*(*v5 + 8 * (v23 >> 6)) >> v23))
  {
    goto LABEL_34;
  }

  v24 = llvm::APInt::countLeadingZerosSlowCase(v5) == v22;
LABEL_37:
  v28 = v24;
  v25 = v28 ^ 1;
  v26 = 1 << v19;
  v27 = v59;
  v57 = v59;
  if (v59 > 0x40)
  {
LABEL_41:
    llvm::APInt::initSlowCase(&v56);
  }

LABEL_35:
  v56 = 0;
  v53 = v27;
  v52 = v58;
  v29 = v26 & v21;
  llvm::APInt::operator-=(&v52, 1uLL);
  v30 = v53;
  v55 = v53;
  v54 = v52;
  v53 = 0;
  v49 = v55;
  if (v55 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v48, &v54);
  }

  if (v30)
  {
    v31 = 0xFFFFFFFFFFFFFFFFLL >> -v30;
  }

  else
  {
    v31 = 0;
  }

  v48 = (v31 & ~v52);
  llvm::APInt::operator++(&v48);
  v32 = v49;
  v51 = v49;
  v50 = v48;
  v49 = 0;
  if (v29)
  {
    v33 = &v50;
  }

  else
  {
    v33 = &v56;
  }

  if (v63 > 0x40)
  {
    goto LABEL_55;
  }

  if (!v29)
  {
    v32 = v57;
  }

  if (v32 > 0x40)
  {
LABEL_55:
    llvm::APInt::assignSlowCase(&v62, v33);
  }

  else
  {
    v62 = *v33;
    v63 = v32;
  }

  v34 = &v56;
  if (v25)
  {
    v35 = &v54;
  }

  else
  {
    v35 = &v56;
  }

  if (v61 <= 0x40)
  {
    if (v25)
    {
      v34 = &v54;
    }

    v36 = *(v34 + 2);
    if (v36 <= 0x40)
    {
      v60 = *v35;
      v61 = v36;
      if (*(v6 + 2) > 0x40u)
      {
        goto LABEL_64;
      }

LABEL_67:
      if (*v6 != *v8)
      {
        goto LABEL_92;
      }

LABEL_68:
      v45 = *(v5 + 2);
      if (v45 > 0x40)
      {
        llvm::APInt::initSlowCase(&v44, v5);
      }

      v44 = *v5;
      llvm::APInt::operator-=(&v44, v4);
      v37 = v45;
      v47 = v45;
      v38 = v44;
      v46 = v44;
      v45 = 0;
      v39 = llvm::APInt::compare(&v46, &v58);
      v40 = v39;
      if (v37 >= 0x41)
      {
        if (v38)
        {
          MEMORY[0x259C63150](v38, 0x1000C8000313F17);
          if (v45 >= 0x41)
          {
            if (v44)
            {
              MEMORY[0x259C63150](v44, 0x1000C8000313F17);
            }
          }
        }
      }

      if (v40 < 0)
      {
        llvm::APInt::srem(v4, &v58, &v46);
        llvm::APInt::srem(v5, &v58, &v42);
        if (llvm::APInt::compareSigned(&v46, &v42) <= 0)
        {
          if (v63 > 0x40 || v47 > 0x40)
          {
            llvm::APInt::assignSlowCase(&v62, &v46);
          }

          else
          {
            v62 = v46;
            v63 = v47;
          }

          if (v61 > 0x40 || v43 > 0x40)
          {
            llvm::APInt::assignSlowCase(&v60, &v42);
          }

          else
          {
            v60 = v42;
            v61 = v43;
          }
        }

        if (v43 >= 0x41 && v42)
        {
          MEMORY[0x259C63150](v42, 0x1000C8000313F17);
        }

        if (v47 >= 0x41 && v46)
        {
          MEMORY[0x259C63150](v46, 0x1000C8000313F17);
        }
      }

      goto LABEL_92;
    }
  }

  llvm::APInt::assignSlowCase(&v60, v35);
  if (*(v6 + 2) <= 0x40u)
  {
    goto LABEL_67;
  }

LABEL_64:
  if (llvm::APInt::equalSlowCase(v6, v8))
  {
    goto LABEL_68;
  }

LABEL_92:
  if (v51 >= 0x41 && v50)
  {
    MEMORY[0x259C63150](v50, 0x1000C8000313F17);
  }

  if (v55 >= 0x41 && v54)
  {
    MEMORY[0x259C63150](v54, 0x1000C8000313F17);
  }

  if (v57 >= 0x41 && v56)
  {
    MEMORY[0x259C63150](v56, 0x1000C8000313F17);
  }

  if (v59 >= 0x41 && v58)
  {
    MEMORY[0x259C63150](v58, 0x1000C8000313F17);
  }

LABEL_104:
  result = mlir::ConstantIntRanges::fromSigned(&v62, &v60, v7, a2);
  if (v61 >= 0x41)
  {
    result = v60;
    if (v60)
    {
      result = MEMORY[0x259C63150](v60, 0x1000C8000313F17);
    }
  }

  if (v63 >= 0x41)
  {
    result = v62;
    if (v62)
    {
      return MEMORY[0x259C63150](v62, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t **llvm::APInt::abs@<X0>(uint64_t **this@<X0>, llvm::APInt *a2@<X8>)
{
  v3 = *(this + 2);
  v4 = v3 - 1;
  if (v3 > 0x40)
  {
    if (((*this)[v4 >> 6] >> v4))
    {
      v8 = *(this + 2);
      llvm::APInt::initSlowCase(&v7, this);
    }

    *(a2 + 2) = v3;

    llvm::APInt::initSlowCase(a2, this);
  }

  v5 = *this;
  if ((*this >> v4))
  {
    v8 = *(this + 2);
    v7 = v5;
    if (v3)
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 & ~v7;
    this = llvm::APInt::operator++(&v7);
    *(a2 + 2) = v8;
    *a2 = v7;
    v8 = 0;
  }

  else
  {
    *(a2 + 2) = v3;
    *a2 = v5;
  }

  return this;
}

unsigned int *mlir::intrange::inferRemU@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = mlir::ConstantIntRanges::umin((a1 + 64));
  v5 = mlir::ConstantIntRanges::umax((a1 + 64));
  v6 = *(v4 + 8);
  v29 = v6;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v28);
  }

  v28 = 0;
  v27 = v6;
  v7 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
  if (!v6)
  {
    v7 = 0;
  }

  v26 = v7;
  if (*v4)
  {
    v25 = *(v5 + 2);
    if (v25 > 0x40)
    {
      llvm::APInt::initSlowCase(&v24, v5);
    }

    v24 = *v5;
    llvm::APInt::operator-=(&v24, 1uLL);
    v8 = v25;
    v9 = v24;
    v25 = 0;
    if (v27 > 0x40 && v26)
    {
      MEMORY[0x259C63150](v26, 0x1000C8000313F17);
      v26 = v9;
      v27 = v8;
      if (v25 >= 0x41 && v24)
      {
        MEMORY[0x259C63150](v24, 0x1000C8000313F17);
      }

      if (*(v4 + 8) <= 0x40u)
      {
LABEL_16:
        if (*v4 != *v5)
        {
          goto LABEL_44;
        }

LABEL_20:
        v10 = mlir::ConstantIntRanges::umin(a1);
        v11 = mlir::ConstantIntRanges::umax(a1);
        v12 = v11;
        v21 = *(v11 + 2);
        if (v21 > 0x40)
        {
          llvm::APInt::initSlowCase(&v20, v11);
        }

        v20 = *v11;
        llvm::APInt::operator-=(&v20, v10);
        v13 = v21;
        v23 = v21;
        v14 = v20;
        v22 = v20;
        v21 = 0;
        v15 = llvm::APInt::compare(&v22, v5);
        v16 = v15;
        if (v13 >= 0x41)
        {
          if (v14)
          {
            MEMORY[0x259C63150](v14, 0x1000C8000313F17);
            if (v21 >= 0x41)
            {
              if (v20)
              {
                MEMORY[0x259C63150](v20, 0x1000C8000313F17);
              }
            }
          }
        }

        if (v16 < 0)
        {
          llvm::APInt::urem(v10, v5, &v22);
          llvm::APInt::urem(v12, v5, &v18);
          if (llvm::APInt::compare(&v22, &v18) <= 0)
          {
            if (v29 > 0x40 || v23 > 0x40)
            {
              llvm::APInt::assignSlowCase(&v28, &v22);
            }

            else
            {
              v28 = v22;
              v29 = v23;
            }

            if (v27 > 0x40 || v19 > 0x40)
            {
              llvm::APInt::assignSlowCase(&v26, &v18);
            }

            else
            {
              v26 = v18;
              v27 = v19;
            }
          }

          if (v19 >= 0x41 && v18)
          {
            MEMORY[0x259C63150](v18, 0x1000C8000313F17);
          }

          if (v23 >= 0x41 && v22)
          {
            MEMORY[0x259C63150](v22, 0x1000C8000313F17);
          }
        }

        goto LABEL_44;
      }
    }

    else
    {
      v26 = v24;
      v27 = v8;
      if (*(v4 + 8) <= 0x40u)
      {
        goto LABEL_16;
      }
    }

    if (!llvm::APInt::equalSlowCase(v4, v5))
    {
      goto LABEL_44;
    }

    goto LABEL_20;
  }

LABEL_44:
  result = mlir::ConstantIntRanges::fromUnsigned(&v28, &v26, a2);
  if (v27 >= 0x41)
  {
    result = v26;
    if (v26)
    {
      result = MEMORY[0x259C63150](v26, 0x1000C8000313F17);
    }
  }

  if (v29 >= 0x41)
  {
    result = v28;
    if (v28)
    {
      return MEMORY[0x259C63150](v28, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::intrange::inferMaxS@<X0>(mlir::ConstantIntRanges *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = (a1 + 64);
  v5 = mlir::ConstantIntRanges::smin(a1);
  v6 = mlir::ConstantIntRanges::smin(v4);
  if (llvm::APInt::compareSigned(v5, v6) <= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = mlir::ConstantIntRanges::smin(v7);
  v9 = mlir::ConstantIntRanges::smax(a1);
  v10 = mlir::ConstantIntRanges::smax(v4);
  if (llvm::APInt::compareSigned(v9, v10) <= 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = a1;
  }

  v12 = mlir::ConstantIntRanges::smax(v11);

  return mlir::ConstantIntRanges::fromSigned(v8, v12, v13, a2);
}

unsigned int *mlir::intrange::inferMaxU@<X0>(mlir::ConstantIntRanges *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = (a1 + 64);
  v5 = mlir::ConstantIntRanges::umin(a1);
  v6 = mlir::ConstantIntRanges::umin(v4);
  if (llvm::APInt::compare(v5, v6) <= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = mlir::ConstantIntRanges::umin(v7);
  v9 = mlir::ConstantIntRanges::umax(a1);
  v10 = mlir::ConstantIntRanges::umax(v4);
  if (llvm::APInt::compare(v9, v10) <= 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = a1;
  }

  v12 = mlir::ConstantIntRanges::umax(v11);

  return mlir::ConstantIntRanges::fromUnsigned(v8, v12, a2);
}

unsigned int *mlir::intrange::inferMinS@<X0>(mlir::ConstantIntRanges *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = (a1 + 64);
  v5 = mlir::ConstantIntRanges::smin(a1);
  v6 = mlir::ConstantIntRanges::smin(v4);
  if (llvm::APInt::compareSigned(v5, v6) >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = mlir::ConstantIntRanges::smin(v7);
  v9 = mlir::ConstantIntRanges::smax(a1);
  v10 = mlir::ConstantIntRanges::smax(v4);
  if (llvm::APInt::compareSigned(v9, v10) >= 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = a1;
  }

  v12 = mlir::ConstantIntRanges::smax(v11);

  return mlir::ConstantIntRanges::fromSigned(v8, v12, v13, a2);
}

unsigned int *mlir::intrange::inferMinU@<X0>(mlir::ConstantIntRanges *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = (a1 + 64);
  v5 = mlir::ConstantIntRanges::umin(a1);
  v6 = mlir::ConstantIntRanges::umin(v4);
  if (llvm::APInt::compare(v5, v6) >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = mlir::ConstantIntRanges::umin(v7);
  v9 = mlir::ConstantIntRanges::umax(a1);
  v10 = mlir::ConstantIntRanges::umax(v4);
  if (llvm::APInt::compare(v9, v10) >= 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = a1;
  }

  v12 = mlir::ConstantIntRanges::umax(v11);

  return mlir::ConstantIntRanges::fromUnsigned(v8, v12, a2);
}

unsigned int *mlir::intrange::inferAnd@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  widenBitwiseBounds(&v10, a1);
  widenBitwiseBounds(&v6, (a1 + 64));
  v19 = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, &v10);
  }

  v18 = v10;
  v21 = v13;
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, &v12);
  }

  v20 = v12;
  v15 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, &v6);
  }

  v14 = v6;
  v17 = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, &v8);
  }

  v16 = v8;
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferAnd(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v5, &v18, 2, &v14, 2, 0);
  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v9 >= 0x41)
  {
    result = v8;
    if (v8)
    {
      result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      result = MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      result = MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      return MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t widenBitwiseBounds(const mlir::ConstantIntRanges *a1, mlir::ConstantIntRanges *a2)
{
  v4 = mlir::ConstantIntRanges::umin(a2);
  v15 = *(v4 + 2);
  if (v15 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, v4);
  }

  v14 = *v4;
  v5 = mlir::ConstantIntRanges::umax(a2);
  v13 = *(v5 + 2);
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&v12, v5);
  }

  v12 = *v5;
  v6 = v15;
  v11 = v15;
  v10 = v14 ^ v12;
  v11 = 0;
  v7 = v15 + __clz(v14 ^ v12) - 64;
  result = llvm::APInt::clearLowBits(&v14, v15 - v7);
  v9 = v6 - v7;
  if (v6 != v7)
  {
    if (v9 > 0x40)
    {
      result = llvm::APInt::setBitsSlowCase(&v12, 0, v9);
    }

    else
    {
      v12 |= 0xFFFFFFFFFFFFFFFFLL >> (v7 - v6);
    }
  }

  *(a1 + 2) = v15;
  *a1 = v14;
  *(a1 + 6) = v13;
  *(a1 + 2) = v12;
  return result;
}

unsigned int *mlir::intrange::inferOr@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  widenBitwiseBounds(&v10, a1);
  widenBitwiseBounds(&v6, (a1 + 64));
  v19 = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, &v10);
  }

  v18 = v10;
  v21 = v13;
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, &v12);
  }

  v20 = v12;
  v15 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, &v6);
  }

  v14 = v6;
  v17 = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, &v8);
  }

  v16 = v8;
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferOr(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v5, &v18, 2, &v14, 2, 0);
  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v9 >= 0x41)
  {
    result = v8;
    if (v8)
    {
      result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      result = MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      result = MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      return MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::intrange::inferXor@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  widenBitwiseBounds(&v10, a1);
  widenBitwiseBounds(&v6, (a1 + 64));
  v19 = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, &v10);
  }

  v18 = v10;
  v21 = v13;
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, &v12);
  }

  v20 = v12;
  v15 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, &v6);
  }

  v14 = v6;
  v17 = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, &v8);
  }

  v16 = v8;
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferXor(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v5, &v18, 2, &v14, 2, 0);
  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }
  }

  if (v9 >= 0x41)
  {
    result = v8;
    if (v8)
    {
      result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      result = MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      result = MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }
  }

  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      return MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::intrange::inferShl@<X0>(uint64_t a1@<X0>, int a2@<W2>, _DWORD *a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = mlir::ConstantIntRanges::umin((a1 + 64));
  v7 = mlir::ConstantIntRanges::umax((a1 + 64));
  v40 = &unk_286898D48;
  v41 = a2;
  v42 = &v40;
  v37 = &unk_286898DC8;
  v38 = a2;
  v39 = &v37;
  v8 = mlir::ConstantIntRanges::umin(a1);
  v26 = *(v8 + 2);
  if (v26 > 0x40)
  {
    llvm::APInt::initSlowCase(&v25, v8);
  }

  v25 = *v8;
  v9 = mlir::ConstantIntRanges::umax(a1);
  v28 = *(v9 + 2);
  if (v28 > 0x40)
  {
    llvm::APInt::initSlowCase(&v27, v9);
  }

  v27 = *v9;
  v34 = *(v6 + 2);
  if (v34 > 0x40)
  {
    llvm::APInt::initSlowCase(&v33, v6);
  }

  v33 = *v6;
  v36 = *(v7 + 2);
  if (v36 > 0x40)
  {
    llvm::APInt::initSlowCase(&v35, v7);
  }

  v35 = *v7;
  minMaxBy(&v13, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v40, &v25, 2, &v33, 2, 0);
  if (v36 >= 0x41 && v35)
  {
    MEMORY[0x259C63150](v35, 0x1000C8000313F17);
  }

  if (v34 >= 0x41 && v33)
  {
    MEMORY[0x259C63150](v33, 0x1000C8000313F17);
  }

  if (v28 >= 0x41 && v27)
  {
    MEMORY[0x259C63150](v27, 0x1000C8000313F17);
  }

  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x259C63150](v25, 0x1000C8000313F17);
  }

  v10 = mlir::ConstantIntRanges::smin(a1);
  v34 = *(v10 + 2);
  if (v34 > 0x40)
  {
    llvm::APInt::initSlowCase(&v33, v10);
  }

  v33 = *v10;
  v11 = mlir::ConstantIntRanges::smax(a1);
  v36 = *(v11 + 2);
  if (v36 > 0x40)
  {
    llvm::APInt::initSlowCase(&v35, v11);
  }

  v35 = *v11;
  v22 = *(v6 + 2);
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase(&v21, v6);
  }

  v21 = *v6;
  v24 = *(v7 + 2);
  if (v24 > 0x40)
  {
    llvm::APInt::initSlowCase(&v23, v7);
  }

  v23 = *v7;
  minMaxBy(&v25, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v37, &v33, 2, &v21, 2, 1);
  if (v24 >= 0x41 && v23)
  {
    MEMORY[0x259C63150](v23, 0x1000C8000313F17);
  }

  if (v22 >= 0x41 && v21)
  {
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
  }

  if (v36 >= 0x41 && v35)
  {
    MEMORY[0x259C63150](v35, 0x1000C8000313F17);
  }

  if (v34 >= 0x41 && v33)
  {
    MEMORY[0x259C63150](v33, 0x1000C8000313F17);
  }

  mlir::ConstantIntRanges::intersection(&v13, &v25, a3);
  if (v32 >= 0x41 && v31)
  {
    MEMORY[0x259C63150](v31, 0x1000C8000313F17);
  }

  if (v30 >= 0x41 && v29)
  {
    MEMORY[0x259C63150](v29, 0x1000C8000313F17);
  }

  if (v28 >= 0x41 && v27)
  {
    MEMORY[0x259C63150](v27, 0x1000C8000313F17);
  }

  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x259C63150](v25, 0x1000C8000313F17);
  }

  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x259C63150](v17, 0x1000C8000313F17);
  }

  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

  if (v14 >= 0x41 && v13)
  {
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
  }

  if (v39 != &v37)
  {
    if (v39)
    {
      (*(*v39 + 5))(v39);
    }

    result = v42;
    if (v42 != &v40)
    {
      goto LABEL_71;
    }

    return (*(*result + 32))(result);
  }

  (*(*v39 + 4))(v39);
  result = v42;
  if (v42 == &v40)
  {
    return (*(*result + 32))(result);
  }

LABEL_71:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

unsigned int *mlir::intrange::inferShrS@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = mlir::ConstantIntRanges::smin(a1);
  v14 = *(v4 + 2);
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, v4);
  }

  v13 = *v4;
  v5 = mlir::ConstantIntRanges::smax(a1);
  v16 = *(v5 + 2);
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, v5);
  }

  v15 = *v5;
  v6 = mlir::ConstantIntRanges::umin((a1 + 64));
  v10 = *(v6 + 2);
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, v6);
  }

  v9 = *v6;
  v7 = mlir::ConstantIntRanges::umax((a1 + 64));
  v12 = *(v7 + 2);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, v7);
  }

  v11 = *v7;
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v13, &v13, 2, &v9, 2, 1);
  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::intrange::inferShrU@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = mlir::ConstantIntRanges::umin(a1);
  v14 = *(v4 + 2);
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, v4);
  }

  v13 = *v4;
  v5 = mlir::ConstantIntRanges::umax(a1);
  v16 = *(v5 + 2);
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, v5);
  }

  v15 = *v5;
  v6 = mlir::ConstantIntRanges::umin((a1 + 64));
  v10 = *(v6 + 2);
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, v6);
  }

  v9 = *v6;
  v7 = mlir::ConstantIntRanges::umax((a1 + 64));
  v12 = *(v7 + 2);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, v7);
  }

  v11 = *v7;
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v13, &v13, 2, &v9, 2, 0);
  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::intrange::evaluatePred(uint64_t a1, mlir::ConstantIntRanges *a2, mlir::ConstantIntRanges *a3)
{
  if (isStaticallyTrue(a1, a2, a3))
  {
    return 257;
  }

  else
  {
    return isStaticallyTrue(qword_257392688[a1], a2, a3) << 8;
  }
}

uint64_t isStaticallyTrue(uint64_t a1, mlir::ConstantIntRanges *this, mlir::ConstantIntRanges *a3)
{
  result = 0;
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v24 = mlir::ConstantIntRanges::smax(this);
        v25 = mlir::ConstantIntRanges::smin(a3);
        return llvm::APInt::compareSigned(v24, v25) >> 31;
      }

      if (a1 != 3)
      {
        v7 = mlir::ConstantIntRanges::smin(this);
        v8 = mlir::ConstantIntRanges::smax(a3);
        v9 = llvm::APInt::compareSigned(v7, v8);
        return v9 > 0;
      }

      v29 = mlir::ConstantIntRanges::smax(this);
      v30 = mlir::ConstantIntRanges::smin(a3);
      v28 = llvm::APInt::compareSigned(v29, v30);
      return v28 < 1;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v13 = mlir::ConstantIntRanges::smax(this);
        v14 = mlir::ConstantIntRanges::smin(a3);
        if ((llvm::APInt::compareSigned(v13, v14) & 0x80000000) != 0)
        {
          v17 = 1;
        }

        else
        {
          v15 = mlir::ConstantIntRanges::smin(this);
          v16 = mlir::ConstantIntRanges::smax(a3);
          v17 = llvm::APInt::compareSigned(v15, v16) > 0;
        }

        v33 = mlir::ConstantIntRanges::umax(this);
        v34 = mlir::ConstantIntRanges::umin(a3);
        if ((llvm::APInt::compare(v33, v34) & 0x80000000) != 0)
        {
          return v17;
        }

        else
        {
          v35 = mlir::ConstantIntRanges::umin(this);
          v36 = mlir::ConstantIntRanges::umax(a3);
          return v17 & (llvm::APInt::compare(v35, v36) > 0);
        }
      }
    }

    else
    {
      mlir::ConstantIntRanges::getConstantValue(this, &v42);
      mlir::ConstantIntRanges::getConstantValue(a3, &v39);
      result = 0;
      v20 = v44;
      v21 = v41;
      if (v44 == 1 && v41 == 1)
      {
        if (v43 > 0x40)
        {
          result = llvm::APInt::equalSlowCase(&v42, &v39);
        }

        else
        {
          result = v42 == v39;
        }

        v21 = 1;
      }

      if ((v21 & 1) != 0 && v40 >= 0x41 && v39)
      {
        v37 = result;
        MEMORY[0x259C63150](v39, 0x1000C8000313F17);
        result = v37;
        v20 = v44;
      }

      if ((v20 & 1) != 0 && v43 >= 0x41 && v42)
      {
        v38 = result;
        MEMORY[0x259C63150](v42, 0x1000C8000313F17);
        return v38;
      }
    }

    return result;
  }

  if (a1 <= 6)
  {
    if (a1 != 5)
    {
      v18 = mlir::ConstantIntRanges::umax(this);
      v19 = mlir::ConstantIntRanges::umin(a3);
      return llvm::APInt::compare(v18, v19) >> 31;
    }

    v22 = mlir::ConstantIntRanges::smin(this);
    v23 = mlir::ConstantIntRanges::smax(a3);
    v12 = llvm::APInt::compareSigned(v22, v23);
    return v12 >= 0;
  }

  switch(a1)
  {
    case 7:
      v26 = mlir::ConstantIntRanges::umax(this);
      v27 = mlir::ConstantIntRanges::umin(a3);
      v28 = llvm::APInt::compare(v26, v27);
      return v28 < 1;
    case 8:
      v31 = mlir::ConstantIntRanges::umin(this);
      v32 = mlir::ConstantIntRanges::umax(a3);
      v9 = llvm::APInt::compare(v31, v32);
      return v9 > 0;
    case 9:
      v10 = mlir::ConstantIntRanges::umin(this);
      v11 = mlir::ConstantIntRanges::umax(a3);
      v12 = llvm::APInt::compare(v10, v11);
      return v12 >= 0;
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivURange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>(uint64_t *a1, const void **this, llvm::APInt *a3)
{
  v5 = *a1;
  llvm::APInt::udiv(this, a3, &v7);
  result = (*v5)(*(v5 + 8), this, a3, &v7);
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      return MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivSRange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, _BYTE *a4@<X8>)
{
  v10 = 0;
  llvm::APInt::sdiv_ov(this, a2, &v10, &v8);
  if (v10)
  {
    *a4 = 0;
    a4[16] = 0;
    if (v9 < 0x41)
    {
      return;
    }
  }

  else
  {
    (**a3)(*(*a3 + 8), this, a2, &v8);
    if (v9 < 0x41)
    {
      return;
    }
  }

  if (v8)
  {
    MEMORY[0x259C63150](v8, 0x1000C8000313F17);
  }
}

uint64_t llvm::APInt::clearLowBits(uint64_t this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 8);
  v6 = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5);
  }

  v5 = 0;
  v4 = v3;
  if (v3 == a2)
  {
LABEL_7:
    if (*(this + 8) <= 0x40u)
    {
      goto LABEL_8;
    }

LABEL_11:
    this = llvm::APInt::andAssignSlowCase(v2, &v5);
    if (v6 < 0x41)
    {
      return this;
    }

    goto LABEL_12;
  }

  if (a2 <= 0x3F)
  {
    v5 |= 0xFFFFFFFFFFFFFFFFLL >> (a2 - v3) << a2;
    goto LABEL_7;
  }

  this = llvm::APInt::setBitsSlowCase(&v5, a2, v3);
  if (*(v2 + 8) > 0x40u)
  {
    goto LABEL_11;
  }

LABEL_8:
  *v2 &= v5;
  if (v6 < 0x41)
  {
    return this;
  }

LABEL_12:
  this = v5;
  if (v5)
  {
    return MEMORY[0x259C63150](v5, 0x1000C8000313F17, v4);
  }

  return this;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::destroy_range(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = v2;
      if (*(v2 - 2) >= 0x41u)
      {
        result = *(v2 - 2);
        if (result)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }

      if (*(v2 - 6) >= 0x41u)
      {
        result = *(v2 - 4);
        if (result)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }

      if (*(v2 - 10) >= 0x41u)
      {
        result = *(v2 - 6);
        if (result)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }

      v2 -= 8;
      if (*(v4 - 14) >= 0x41u)
      {
        result = *v2;
        if (*v2)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286898A38;
  *(a2 + 8) = v2;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v10 = 0;
  if ((v5 & 2) != 0)
  {
    result = llvm::APInt::uadd_sat(this, a2, &v8);
  }

  else
  {
    result = llvm::APInt::uadd_ov(this, a2, &v10, &v8);
    if (v10)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v9 < 0x41)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v8);
  }

  *a4 = v8;
  *(a4 + 16) = 1;
  if (v9 >= 0x41)
  {
LABEL_10:
    result = v8;
    if (v8)
    {
      return MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286898AC8;
  *(a2 + 8) = v2;
  return result;
}

uint64_t *std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v10 = 0;
  if (v5)
  {
    result = llvm::APInt::sadd_sat(this, a2, &v8);
  }

  else
  {
    result = llvm::APInt::sadd_ov(this, a2, &v10, &v8);
    if (v10)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v9 < 0x41)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v8);
  }

  *a4 = v8;
  *(a4 + 16) = 1;
  if (v9 >= 0x41)
  {
LABEL_10:
    result = v8;
    if (v8)
    {
      return MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x25701E7D0);
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286898B48;
  *(a2 + 8) = v2;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v10 = 0;
  if ((v5 & 2) != 0)
  {
    result = llvm::APInt::usub_sat(this, a2, &v8);
  }

  else
  {
    result = llvm::APInt::usub_ov(this, a2, &v10, &v8);
    if (v10)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v9 < 0x41)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v8);
  }

  *a4 = v8;
  *(a4 + 16) = 1;
  if (v9 >= 0x41)
  {
LABEL_10:
    result = v8;
    if (v8)
    {
      return MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286898BC8;
  *(a2 + 8) = v2;
  return result;
}

uint64_t *std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v10 = 0;
  if (v5)
  {
    result = llvm::APInt::ssub_sat(this, a2, &v8);
  }

  else
  {
    result = llvm::APInt::ssub_ov(this, a2, &v10, &v8);
    if (v10)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v9 < 0x41)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v8);
  }

  *a4 = v8;
  *(a4 + 16) = 1;
  if (v9 >= 0x41)
  {
LABEL_10:
    result = v8;
    if (v8)
    {
      return MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286898C48;
  *(a2 + 8) = v2;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v10 = 0;
  if ((v5 & 2) != 0)
  {
    result = llvm::APInt::umul_sat(this, a2, &v8);
  }

  else
  {
    result = llvm::APInt::umul_ov(this, a2, &v10, &v8);
    if (v10)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v9 < 0x41)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v8);
  }

  *a4 = v8;
  *(a4 + 16) = 1;
  if (v9 >= 0x41)
  {
LABEL_10:
    result = v8;
    if (v8)
    {
      return MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286898CC8;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if (v5)
  {
    llvm::APInt::smul_sat(this, a2, &v7);
  }

  else
  {
    llvm::APInt::smul_ov(this, a2, &v9, &v7);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v7);
  }

  *a4 = v7;
  *(a4 + 16) = 1;
  if (v8 >= 0x41)
  {
LABEL_10:
    if (v7)
    {
      MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferDivU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v5[2] = v3;
  if (v3 >= 0x41)
  {
    llvm::APInt::initSlowCase(v5, a1);
  }

  v4 = *a1;
  *(a2 + 8) = v3;
  *a2 = v4;
  *(a2 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, const llvm::APInt *a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::urem(this, a2, &v14);
  v6 = v15;
  if (v15 > 0x40)
  {
    v8 = llvm::APInt::countLeadingZerosSlowCase(&v14);
    if (v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }

    if (v8 != v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = *(a3 + 2);
    *(a4 + 8) = v9;
    if (v9 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, a3);
    }

    *a4 = *a3;
    *(a4 + 16) = 1;
    return;
  }

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
  v7 = *(a3 + 2);
  v12 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11);
  }

  v11 = v7 != 0;
  llvm::APInt::uadd_ov(a3, &v11, &v13, &v14);
  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  if (v13)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    if (v15 < 0x41)
    {
      return;
    }

    goto LABEL_22;
  }

  v10 = v15;
  *(a4 + 8) = v15;
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v14);
  }

  *a4 = v14;
  *(a4 + 16) = 1;
  if (v15 >= 0x41)
  {
LABEL_22:
    if (v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v5[2] = v3;
  if (v3 >= 0x41)
  {
    llvm::APInt::initSlowCase(v5, a1);
  }

  v4 = *a1;
  *(a2 + 8) = v3;
  *a2 = v4;
  *(a2 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, const llvm::APInt *a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::srem(this, a2, &v23);
  v8 = v24;
  if (v24 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v23) == v8)
    {
      if (v23)
      {
        MEMORY[0x259C63150](v23, 0x1000C8000313F17);
      }

      goto LABEL_17;
    }
  }

  else if (!v23)
  {
LABEL_17:
    v17 = *(a3 + 2);
    *(a4 + 8) = v17;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, a3);
    }

    *a4 = *a3;
    *(a4 + 16) = 1;
    return;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*this + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = this;
  }

  v12 = ((*v11 >> v10) & 1) == 0;
  v13 = *(a2 + 2);
  v14 = v13 - 1;
  if (v13 >= 0x41)
  {
    v15 = (*a2 + 8 * ((v13 - 1) >> 6));
  }

  else
  {
    v15 = a2;
  }

  v16 = v12 ^ (((*v15 >> v14) & 1) == 0);
  if (v8 >= 0x41 && v23)
  {
    MEMORY[0x259C63150](v23, 0x1000C8000313F17);
  }

  if (v16)
  {
    goto LABEL_17;
  }

  v22 = 0;
  v18 = *(a3 + 2);
  v21 = v18;
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20);
  }

  v20 = v18 != 0;
  llvm::APInt::sadd_ov(a3, &v20, &v22, &v23);
  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x259C63150](v20, 0x1000C8000313F17);
  }

  if (v22)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    if (v24 < 0x41)
    {
      return;
    }

    goto LABEL_34;
  }

  v19 = v24;
  *(a4 + 8) = v24;
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v23);
  }

  *a4 = v23;
  *(a4 + 16) = 1;
  if (v24 >= 0x41)
  {
LABEL_34:
    if (v23)
    {
      MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferFloorDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, const llvm::APInt *a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::srem(this, a2, &v23);
  v8 = v24;
  if (v24 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v23) == v8)
    {
      if (v23)
      {
        MEMORY[0x259C63150](v23, 0x1000C8000313F17);
      }

      goto LABEL_19;
    }
  }

  else if (!v23)
  {
LABEL_19:
    v18 = *(a3 + 2);
    *(a4 + 8) = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, a3);
    }

    *a4 = *a3;
    *(a4 + 16) = 1;
    return;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*this + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = this;
  }

  v12 = ((*v11 >> v10) & 1) == 0;
  v13 = *(a2 + 2);
  v14 = v13 - 1;
  if (v13 >= 0x41)
  {
    v15 = (*a2 + 8 * ((v13 - 1) >> 6));
  }

  else
  {
    v15 = a2;
  }

  v16 = v12 ^ (((*v15 >> v14) & 1) == 0);
  if (v8 >= 0x41 && v23)
  {
    MEMORY[0x259C63150](v23, 0x1000C8000313F17);
  }

  if (!v16)
  {
    goto LABEL_19;
  }

  v22 = 0;
  v17 = *(a3 + 2);
  v21 = v17;
  if (v17 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20);
  }

  v20 = v17 != 0;
  llvm::APInt::ssub_ov(a3, &v20, &v22, &v23);
  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x259C63150](v20, 0x1000C8000313F17);
  }

  if (v22)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    if (v24 < 0x41)
    {
      return;
    }

    goto LABEL_34;
  }

  v19 = v24;
  *(a4 + 8) = v24;
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v23);
  }

  *a4 = v23;
  *(a4 + 16) = 1;
  if (v24 >= 0x41)
  {
LABEL_34:
    if (v23)
    {
      MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferAnd(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const llvm::APInt *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 2);
  v7 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v6, a1);
  }

  v5 = *a2 & *a1;
  *(a3 + 8) = v4;
  *a3 = v5;
  *(a3 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferOr(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const llvm::APInt *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 2);
  v7 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v6, a1);
  }

  v5 = *a2 | *a1;
  *(a3 + 8) = v4;
  *a3 = v5;
  *(a3 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferXor(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const llvm::APInt *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 2);
  v7 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v6, a1);
  }

  v5 = *a2 ^ *a1;
  *(a3 + 8) = v4;
  *a3 = v5;
  *(a3 + 16) = 1;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286898D48;
  *(a2 + 8) = v2;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v10 = 0;
  if ((v5 & 2) != 0)
  {
    result = llvm::APInt::ushl_sat(this, a2, &v8);
  }

  else
  {
    result = llvm::APInt::ushl_ov(this, a2, &v10, &v8);
    if (v10)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v9 < 0x41)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v8);
  }

  *a4 = v8;
  *(a4 + 16) = 1;
  if (v9 >= 0x41)
  {
LABEL_10:
    result = v8;
    if (v8)
    {
      return MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286898DC8;
  *(a2 + 8) = v2;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v10 = 0;
  if (v5)
  {
    result = llvm::APInt::sshl_sat(this, a2, &v8);
  }

  else
  {
    result = llvm::APInt::sshl_ov(this, a2, &v10, &v8);
    if (v10)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v9 < 0x41)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v8);
  }

  *a4 = v8;
  *(a4 + 16) = 1;
  if (v9 >= 0x41)
  {
LABEL_10:
    result = v8;
    if (v8)
    {
      return MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *a1@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 2);
  v7 = a2;
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase(a2) > 0x40)
    {
LABEL_7:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }

    v7 = *a2;
  }

  if (*v7 >= v6)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 2);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, a1);
  }

  v8 = *a1;
  llvm::APInt::ashrInPlace(&v8, a2);
  *(a3 + 8) = v9;
  *a3 = v8;
  *(a3 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *a1@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 2);
  v7 = a2;
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase(a2) > 0x40)
    {
LABEL_7:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }

    v7 = *a2;
  }

  if (*v7 >= v6)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 2);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, a1);
  }

  v8 = *a1;
  llvm::APInt::lshrInPlace(&v8, a2);
  *(a3 + 8) = v9;
  *a3 = v8;
  *(a3 + 16) = 1;
}

BOOL mlir::ConstantIntRanges::operator==(llvm::APInt *this, llvm::APInt *a2)
{
  v2 = *(this + 2);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  if (v2 > 0x40)
  {
    result = llvm::APInt::equalSlowCase(this, a2);
    if (!result)
    {
      return result;
    }
  }

  else if (*this != *a2)
  {
    return 0;
  }

  if (*(this + 6) > 0x40u)
  {
    result = llvm::APInt::equalSlowCase(this + 2, a2 + 2);
    if (!result)
    {
      return result;
    }
  }

  else if (*(this + 2) != *(a2 + 2))
  {
    return 0;
  }

  if (*(this + 10) > 0x40u)
  {
    result = llvm::APInt::equalSlowCase(this + 4, a2 + 4);
    if (!result)
    {
      return result;
    }
  }

  else if (*(this + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(this + 14) <= 0x40u)
  {
    return *(this + 6) == *(a2 + 6);
  }

  return llvm::APInt::equalSlowCase(this + 6, a2 + 6);
}

uint64_t mlir::ConstantIntRanges::getStorageBitwidth(uint64_t a1)
{
  v5 = a1;
  if (mlir::Type::isIndex(&v5))
  {
    return 64;
  }

  v2 = v5;
  v3 = *(*v5 + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v2 = 0;
  }

  v4 = v2;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return mlir::IntegerType::getWidth(&v4);
  }

  else
  {
    return 0;
  }
}

unsigned int *mlir::ConstantIntRanges::maxRange@<X0>(mlir::ConstantIntRanges *this@<X0>, _DWORD *a2@<X8>)
{
  v7 = this;
  if (this > 0x40)
  {
    llvm::APInt::initSlowCase(&v6);
  }

  v6 = 0;
  v5 = this;
  v2 = 0xFFFFFFFFFFFFFFFFLL >> -this;
  if (!this)
  {
    v2 = 0;
  }

  v4 = v2;
  result = mlir::ConstantIntRanges::fromUnsigned(&v6, &v4, a2);
  if (v5 >= 0x41)
  {
    result = v4;
    if (v4)
    {
      result = MEMORY[0x259C63150](v4, 0x1000C8000313F17);
    }
  }

  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::ConstantIntRanges::fromUnsigned@<X0>(unsigned int *this@<X0>, const llvm::APInt *a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = this;
  v7 = this[2];
  v30 = 1;
  v29 = 0;
  v28 = 1;
  v27 = 0;
  v8 = v7 - 1;
  v9 = (*this + 8 * ((v7 - 1) >> 6));
  if (v7 < 0x41)
  {
    v9 = this;
  }

  v10 = 1 << v8;
  v11 = (*v9 & (1 << v8)) == 0;
  v12 = *(a2 + 2);
  v13 = v12 - 1;
  if (v12 >= 0x41)
  {
    v14 = (*a2 + 8 * ((v12 - 1) >> 6));
  }

  else
  {
    v14 = a2;
  }

  if ((v11 ^ (((*v14 >> v13) & 1) == 0)))
  {
    v26 = v7;
    if (v7 > 0x40)
    {
      llvm::APInt::initSlowCase(&v25);
    }

    v29 = v10;
    v30 = v26;
    v26 = v7;
    v20 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
    if (!v7)
    {
      v20 = 0;
    }

    v25 = v20 & ~v10;
    v27 = v25;
    v18 = v26;
  }

  else
  {
    if (llvm::APInt::compareSigned(this, a2) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = v5;
    }

    v16 = *(v15 + 2);
    if (v16 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v29, v15);
      this = llvm::APInt::compareSigned(v5, a2);
      if (this <= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = v5;
      }
    }

    else
    {
      v29 = *v15;
      v30 = v16;
      this = llvm::APInt::compareSigned(v5, a2);
      if (this <= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = v5;
      }
    }

    v18 = *(v17 + 2);
    if (v18 > 0x40)
    {
      this = llvm::APInt::assignSlowCase(&v27, v17);
      v19 = v5[2];
      a3[2] = v19;
      if (v19 <= 0x40)
      {
        goto LABEL_31;
      }

LABEL_23:
      llvm::APInt::initSlowCase(a3, v5);
    }

    v27 = *v17;
  }

  v28 = v18;
  v21 = v5[2];
  a3[2] = v21;
  if (v21 > 0x40)
  {
    goto LABEL_23;
  }

LABEL_31:
  *a3 = *v5;
  v22 = *(a2 + 2);
  a3[6] = v22;
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 4), a2);
  }

  *(a3 + 2) = *a2;
  v23 = v30;
  a3[10] = v30;
  if (v23 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 8), &v29);
  }

  *(a3 + 4) = v29;
  v24 = v28;
  a3[14] = v28;
  if (v24 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 12), &v27);
  }

  *(a3 + 6) = v27;
  if (v30 >= 0x41)
  {
    this = v29;
    if (v29)
    {
      return MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }
  }

  return this;
}

uint64_t mlir::ConstantIntRanges::constant@<X0>(mlir::ConstantIntRanges *this@<X0>, uint64_t a2@<X8>)
{
  v5 = *(this + 2);
  *(a2 + 8) = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(a2, this);
  }

  *a2 = *this;
  *(a2 + 24) = v5;
  *(a2 + 16) = *this;
  *(a2 + 40) = v5;
  *(a2 + 32) = *this;
  result = a2 + 48;
  *(a2 + 56) = v5;
  *(a2 + 48) = *this;
  return result;
}

unsigned int *mlir::ConstantIntRanges::range@<X0>(unsigned int *this@<X0>, const llvm::APInt *a2@<X1>, const llvm::APInt *a3@<X2>, _DWORD *a4@<X8>)
{
  if (a3)
  {
    return mlir::ConstantIntRanges::fromSigned(this, a2, a3, a4);
  }

  else
  {
    return mlir::ConstantIntRanges::fromUnsigned(this, a2, a4);
  }
}

unsigned int *mlir::ConstantIntRanges::fromSigned@<X0>(unsigned int *this@<X0>, const llvm::APInt *a2@<X1>, const llvm::APInt *a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = this;
  v7 = this[2];
  v29 = 1;
  v28 = 0;
  v27 = 1;
  v26 = 0;
  v8 = (*this + 8 * ((v7 - 1) >> 6));
  if (v7 < 0x41)
  {
    v8 = this;
  }

  v9 = ((*v8 >> (v7 - 1)) & 1) == 0;
  v10 = *(a2 + 2);
  v11 = v10 - 1;
  if (v10 >= 0x41)
  {
    v12 = (*a2 + 8 * ((v10 - 1) >> 6));
  }

  else
  {
    v12 = a2;
  }

  if (((v9 ^ (((*v12 >> v11) & 1) == 0)) & 1) == 0)
  {
    if (llvm::APInt::compare(this, a2) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = v5;
    }

    v15 = *(v14 + 2);
    if (v15 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v28, v14);
      this = llvm::APInt::compare(v5, a2);
      if (this <= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = v5;
      }
    }

    else
    {
      v28 = *v14;
      v29 = v15;
      this = llvm::APInt::compare(v5, a2);
      if (this <= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = v5;
      }
    }

    v18 = *(v16 + 2);
    if (v18 > 0x40)
    {
      this = llvm::APInt::assignSlowCase(&v26, v16);
      v20 = v29;
      a4[2] = v29;
      if (v20 <= 0x40)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v26 = *v16;
      v27 = v18;
      v19 = v29;
      a4[2] = v29;
      if (v19 <= 0x40)
      {
        goto LABEL_31;
      }
    }

LABEL_26:
    llvm::APInt::initSlowCase(a4, &v28);
  }

  v25 = v7;
  if (v7 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v24);
  }

  v28 = 0;
  v29 = v25;
  v25 = v7;
  v13 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
  if (!v7)
  {
    v13 = 0;
  }

  v24 = v13;
  v26 = v24;
  v27 = v25;
  v17 = v29;
  a4[2] = v29;
  if (v17 > 0x40)
  {
    goto LABEL_26;
  }

LABEL_31:
  *a4 = v28;
  v21 = v27;
  a4[6] = v27;
  if (v21 > 0x40)
  {
    llvm::APInt::initSlowCase((a4 + 4), &v26);
  }

  *(a4 + 2) = v26;
  v22 = v5[2];
  a4[10] = v22;
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase((a4 + 8), v5);
  }

  *(a4 + 4) = *v5;
  v23 = *(a2 + 2);
  a4[14] = v23;
  if (v23 > 0x40)
  {
    llvm::APInt::initSlowCase((a4 + 12), a2);
  }

  *(a4 + 6) = *a2;
  if (v27 >= 0x41)
  {
    this = v26;
    if (v26)
    {
      this = MEMORY[0x259C63150](v26, 0x1000C8000313F17, a3);
    }
  }

  if (v29 >= 0x41)
  {
    this = v28;
    if (v28)
    {
      return MEMORY[0x259C63150](v28, 0x1000C8000313F17, a3);
    }
  }

  return this;
}

uint64_t mlir::ConstantIntRanges::rangeUnion@<X0>(uint64_t this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = this;
  if (!*(this + 8))
  {
    a3[2] = 0;
    *a3 = *this;
    v15 = *(this + 24);
    a3[6] = v15;
    if (v15 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 4), (this + 16));
    }

    *(a3 + 2) = *(this + 16);
    v16 = *(this + 40);
    a3[10] = v16;
    if (v16 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 8), (this + 32));
    }

    *(a3 + 4) = *(this + 32);
    v22 = *(this + 56);
    a3[14] = v22;
    if (v22 <= 0x40)
    {
      v21 = *(this + 48);
      goto LABEL_38;
    }

    v13 = (a3 + 12);
    v14 = (v3 + 48);
LABEL_25:

    llvm::APInt::initSlowCase(v13, v14);
  }

  if (!*(a2 + 2))
  {
    a3[2] = 0;
    *a3 = *a2;
    v17 = *(a2 + 6);
    a3[6] = v17;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 4), (a2 + 16));
    }

    *(a3 + 2) = *(a2 + 2);
    v18 = *(a2 + 10);
    a3[10] = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 8), (a2 + 32));
    }

    *(a3 + 4) = *(a2 + 4);
    v23 = *(a2 + 14);
    a3[14] = v23;
    if (v23 <= 0x40)
    {
      v21 = *(a2 + 6);
      goto LABEL_38;
    }

    v13 = (a3 + 12);
    v14 = (a2 + 48);
    goto LABEL_25;
  }

  if (llvm::APInt::compare(this, a2) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v3;
  }

  v7 = (a2 + 16);
  if (llvm::APInt::compare((v3 + 16), (a2 + 16)) > 0)
  {
    v7 = (v3 + 16);
  }

  v8 = (v3 + 32);
  if (llvm::APInt::compareSigned((v3 + 32), (a2 + 32)) >= 0)
  {
    v8 = (a2 + 32);
  }

  v9 = (v3 + 48);
  v10 = (a2 + 48);
  this = llvm::APInt::compareSigned(v9, v10);
  if (this > 0)
  {
    v10 = v9;
  }

  v11 = *(v6 + 2);
  a3[2] = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, v6);
  }

  *a3 = *v6;
  v12 = *(v7 + 2);
  a3[6] = v12;
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 4), v7);
  }

  *(a3 + 2) = *v7;
  v19 = *(v8 + 2);
  a3[10] = v19;
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 8), v8);
  }

  *(a3 + 4) = *v8;
  v20 = *(v10 + 2);
  a3[14] = v20;
  if (v20 > 0x40)
  {
    v13 = (a3 + 12);
    v14 = v10;
    goto LABEL_25;
  }

  v21 = *v10;
LABEL_38:
  *(a3 + 6) = v21;
  return this;
}

uint64_t mlir::ConstantIntRanges::intersection@<X0>(uint64_t this@<X0>, const mlir::ConstantIntRanges *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = this;
  if (!*(this + 8))
  {
    a3[2] = 0;
    *a3 = *this;
    v15 = *(this + 24);
    a3[6] = v15;
    if (v15 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 4), (this + 16));
    }

    *(a3 + 2) = *(this + 16);
    v16 = *(this + 40);
    a3[10] = v16;
    if (v16 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 8), (this + 32));
    }

    *(a3 + 4) = *(this + 32);
    v22 = *(this + 56);
    a3[14] = v22;
    if (v22 <= 0x40)
    {
      v21 = *(this + 48);
      goto LABEL_38;
    }

    v13 = (a3 + 12);
    v14 = (v3 + 48);
LABEL_25:

    llvm::APInt::initSlowCase(v13, v14);
  }

  if (!*(a2 + 2))
  {
    a3[2] = 0;
    *a3 = *a2;
    v17 = *(a2 + 6);
    a3[6] = v17;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 4), (a2 + 16));
    }

    *(a3 + 2) = *(a2 + 2);
    v18 = *(a2 + 10);
    a3[10] = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase((a3 + 8), (a2 + 32));
    }

    *(a3 + 4) = *(a2 + 4);
    v23 = *(a2 + 14);
    a3[14] = v23;
    if (v23 <= 0x40)
    {
      v21 = *(a2 + 6);
      goto LABEL_38;
    }

    v13 = (a3 + 12);
    v14 = (a2 + 48);
    goto LABEL_25;
  }

  if (llvm::APInt::compare(this, a2) <= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v3;
  }

  v7 = (a2 + 16);
  if (llvm::APInt::compare((v3 + 16), (a2 + 16)) < 0)
  {
    v7 = (v3 + 16);
  }

  v8 = (v3 + 32);
  if (llvm::APInt::compareSigned((v3 + 32), (a2 + 32)) <= 0)
  {
    v8 = (a2 + 32);
  }

  v9 = (v3 + 48);
  v10 = (a2 + 48);
  this = llvm::APInt::compareSigned(v9, v10);
  if (this < 0)
  {
    v10 = v9;
  }

  v11 = *(v6 + 2);
  a3[2] = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(a3, v6);
  }

  *a3 = *v6;
  v12 = *(v7 + 2);
  a3[6] = v12;
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 4), v7);
  }

  *(a3 + 2) = *v7;
  v19 = *(v8 + 2);
  a3[10] = v19;
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase((a3 + 8), v8);
  }

  *(a3 + 4) = *v8;
  v20 = *(v10 + 2);
  a3[14] = v20;
  if (v20 > 0x40)
  {
    v13 = (a3 + 12);
    v14 = v10;
    goto LABEL_25;
  }

  v21 = *v10;
LABEL_38:
  *(a3 + 6) = v21;
  return this;
}

uint64_t mlir::ConstantIntRanges::getConstantValue@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = *(this + 8);
  if (v4 > 0x40)
  {
    this = llvm::APInt::equalSlowCase(this, (this + 16));
    if (this)
    {
      *(a2 + 8) = v4;
      v7 = a2;
      v8 = v2;
      goto LABEL_16;
    }
  }

  else
  {
    v5 = *this;
    if (v4)
    {
      v6 = v5 == *(this + 16);
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      goto LABEL_13;
    }
  }

  v4 = *(v2 + 40);
  if (v4 > 0x40)
  {
    this = llvm::APInt::equalSlowCase((v2 + 32), (v2 + 48));
    if ((this & 1) == 0)
    {
      goto LABEL_17;
    }

    *(a2 + 8) = v4;
    v8 = (v2 + 32);
    v7 = a2;
LABEL_16:
    llvm::APInt::initSlowCase(v7, v8);
  }

  if (v4)
  {
    v5 = *(v2 + 32);
    if (v5 == *(v2 + 48))
    {
LABEL_13:
      *(a2 + 8) = v4;
      *a2 = v5;
      *(a2 + 16) = 1;
      return this;
    }
  }

LABEL_17:
  *a2 = 0;
  *(a2 + 16) = 0;
  return this;
}

llvm::raw_ostream *mlir::operator<<(llvm::raw_ostream *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 4);
  if ((*(this + 3) - v4) > 0xB)
  {
    *(v4 + 8) = 1528838688;
    *v4 = *"unsigned : [";
    *(this + 4) += 12;
  }

  else
  {
    v3 = llvm::raw_ostream::write(this, "unsigned : [", 0xCuLL);
  }

  llvm::APInt::print(a2, v3, 1);
  v5 = *(v3 + 4);
  if (*(v3 + 3) - v5 > 1uLL)
  {
    *v5 = 8236;
    *(v3 + 4) += 2;
  }

  else
  {
    v3 = llvm::raw_ostream::write(v3, ", ", 2uLL);
  }

  llvm::APInt::print((a2 + 16), v3, 1);
  v6 = *(v3 + 4);
  if ((*(v3 + 3) - v6) > 0xB)
  {
    *(v6 + 8) = 1528838688;
    *v6 = *"] signed : [";
    *(v3 + 4) += 12;
  }

  else
  {
    v3 = llvm::raw_ostream::write(v3, "] signed : [", 0xCuLL);
  }

  llvm::APInt::print((a2 + 32), v3, 1);
  v7 = *(v3 + 4);
  if (*(v3 + 3) - v7 > 1uLL)
  {
    *v7 = 8236;
    *(v3 + 4) += 2;
  }

  else
  {
    v3 = llvm::raw_ostream::write(v3, ", ", 2uLL);
  }

  llvm::APInt::print((a2 + 48), v3, 1);
  v8 = *(v3 + 4);
  if (*(v3 + 3) == v8)
  {

    return llvm::raw_ostream::write(v3, "]", 1uLL);
  }

  else
  {
    *v8 = 93;
    ++*(v3 + 4);
    return v3;
  }
}

uint64_t mlir::IntegerValueRange::getMaxRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  result = mlir::Type::isIndex(&v23);
  if (result)
  {
    v4 = 64;
    v24 = 64;
  }

  else
  {
    v5 = v23;
    v6 = *(*v23 + 136);
    if (v6 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v5 = 0;
    }

    v21 = v5;
    if (v6 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (result = mlir::IntegerType::getWidth(&v21), !result))
    {
      *a2 = 0;
      *(a2 + 64) = 0;
      return result;
    }

    v4 = result;
    v24 = result;
    if (result >= 0x41)
    {
      llvm::APInt::initSlowCase(&v23);
    }
  }

  v23 = 0;
  v22 = v4;
  v21 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
  v20 = v4;
  v19 = 1 << (v4 - 1);
  v18 = v4;
  v17 = v21 & ~v19;
  v10 = v24;
  if (v24 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, &v23);
  }

  v9 = v23;
  v12 = v22;
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, &v21);
  }

  v11 = v21;
  v14 = v20;
  if (v20 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, &v19);
  }

  v13 = v19;
  v7 = v18;
  v16 = v18;
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, &v17);
  }

  v8 = v17;
  v15 = v17;
  *(a2 + 8) = v10;
  *a2 = v9;
  *(a2 + 24) = v12;
  *(a2 + 16) = v11;
  v10 = 0;
  v12 = 0;
  *(a2 + 40) = v14;
  *(a2 + 32) = v13;
  *(a2 + 56) = v7;
  *(a2 + 48) = v8;
  v14 = 0;
  v16 = 0;
  *(a2 + 64) = 1;
  if (v18 >= 0x41)
  {
    result = v17;
    if (v17)
    {
      result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
    }
  }

  if (v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      result = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  if (v22 >= 0x41)
  {
    result = v21;
    if (v21)
    {
      result = MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  if (v24 >= 0x41)
  {
    result = v23;
    if (v23)
    {
      return MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::intrange::detail::defaultInferResultRanges(uint64_t a1, void (**a2)(void, uint64_t, void *, void, uint64_t (*)(uint64_t *a1, uint64_t a2, llvm::APInt *a3), void **), llvm::APInt *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[8] = *MEMORY[0x277D85DE8];
  v11[0] = a5;
  v11[1] = a6;
  v12 = v14;
  v13 = 0x100000000;
  if (a4 >= 2)
  {
    llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow();
  }

  if (a4)
  {
    v9 = 72 * a4;
    while (*(a3 + 64) == 1)
    {
      llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::push_back(&v12, a3);
      a3 = (a3 + 72);
      v9 -= 72;
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = v11;
    (*a2)(a2, a1, v12, v13, llvm::function_ref<void ()(mlir::Value,mlir::ConstantIntRanges const&)>::callback_fn<mlir::intrange::detail::defaultInferResultRanges(mlir::InferIntRangeInterface,llvm::ArrayRef<mlir::IntegerValueRange>,llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>)::$_0>, &v10);
  }

  llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::destroy_range(v12, v12 + 8 * v13);
  if (v12 != v14)
  {
    free(v12);
  }
}

uint64_t llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::push_back(uint64_t result, llvm::APInt *a2)
{
  v2 = *(result + 8);
  v3 = *result;
  if (v2 >= *(result + 12))
  {
    if (v3 > a2 || v3 + (v2 << 6) <= a2)
    {
      llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::ConstantIntRanges,false>::grow();
  }

  v4 = (v3 + (*(result + 8) << 6));
  v5 = *(a2 + 2);
  v4[2] = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(v4, a2);
  }

  *v4 = *a2;
  v6 = *(a2 + 6);
  v4[6] = v6;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase((v4 + 4), (a2 + 16));
  }

  *(v4 + 2) = *(a2 + 2);
  v7 = *(a2 + 10);
  v4[10] = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase((v4 + 8), (a2 + 32));
  }

  *(v4 + 4) = *(a2 + 4);
  v8 = *(a2 + 14);
  v4[14] = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase((v4 + 12), (a2 + 48));
  }

  *(v4 + 6) = *(a2 + 6);
  ++*(result + 8);
  return result;
}

void mlir::intrange::detail::defaultInferResultRangesFromOptional(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v16[9] = *MEMORY[0x277D85DE8];
  v13[0] = a5;
  v13[1] = a6;
  v14 = v16;
  v15 = 0x100000000;
  if (a4 >= 2)
  {
    llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow();
  }

  std::__uninitialized_copy[abi:nn200100]<mlir::IntegerValueRange,mlir::ConstantIntRanges const*,mlir::ConstantIntRanges const*,mlir::IntegerValueRange*,std::__always_false>(a3, &a3[16 * a4], v16);
  LODWORD(v15) = v15 + v6;
  v12 = v13;
  (*(a2 + 8))(a2, a1, v14);
  v9 = v14;
  if (v15)
  {
    v10 = -72 * v15;
    v11 = v14 + 72 * v15 - 72;
    do
    {
      v11 = (std::__optional_destruct_base<mlir::ConstantIntRanges,false>::~__optional_destruct_base[abi:nn200100](v11) - 72);
      v10 += 72;
    }

    while (v10);
    v9 = v14;
  }

  if (v9 != v16)
  {
    free(v9);
  }
}

uint64_t llvm::function_ref<void ()(mlir::Value,mlir::ConstantIntRanges const&)>::callback_fn<mlir::intrange::detail::defaultInferResultRanges(mlir::InferIntRangeInterface,llvm::ArrayRef<mlir::IntegerValueRange>,llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>)::$_0>(uint64_t *a1, uint64_t a2, llvm::APInt *a3)
{
  v3 = *a1;
  v7 = *(a3 + 2);
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v6, a3);
  }

  v6 = *a3;
  v9 = *(a3 + 6);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, (a3 + 16));
  }

  v8 = *(a3 + 2);
  v11 = *(a3 + 10);
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v10, (a3 + 32));
  }

  v10 = *(a3 + 4);
  v4 = *(a3 + 14);
  v13 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v12, (a3 + 48));
  }

  v12 = *(a3 + 6);
  v15 = v7;
  v14 = v6;
  v17 = v9;
  v16 = v8;
  v7 = 0;
  v9 = 0;
  v19 = v11;
  v18 = v10;
  v21 = v4;
  v20 = v12;
  v11 = 0;
  v13 = 0;
  v22 = 1;
  result = (*v3)(*(v3 + 8), a2, &v14);
  if (v22 == 1)
  {
    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x259C63150](v20, 0x1000C8000313F17);
      }
    }

    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      }
    }

    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      }
    }

    if (v15 >= 0x41)
    {
      result = v14;
      if (v14)
      {
        return MEMORY[0x259C63150](v14, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

_DWORD *std::__uninitialized_copy[abi:nn200100]<mlir::IntegerValueRange,mlir::ConstantIntRanges const*,mlir::ConstantIntRanges const*,mlir::IntegerValueRange*,std::__always_false>(_DWORD *result, _DWORD *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result + 8;
    do
    {
      v8 = (v5 - 8);
      v12 = *(v5 - 6);
      if (v12 > 0x40)
      {
        llvm::APInt::initSlowCase(&v11, v8);
      }

      v11 = *v8;
      v9 = (v5 - 4);
      v14 = *(v5 - 2);
      if (v14 > 0x40)
      {
        llvm::APInt::initSlowCase(&v13, v9);
      }

      v13 = *v9;
      v16 = v5[2];
      if (v16 > 0x40)
      {
        llvm::APInt::initSlowCase(&v15, v5);
      }

      v15 = *v5;
      v10 = v5[6];
      v18 = v10;
      if (v10 > 0x40)
      {
        llvm::APInt::initSlowCase(&v17, (v5 + 4));
      }

      v17 = *(v5 + 2);
      v6 = v17;
      *(a3 + 8) = v12;
      *a3 = v11;
      *(a3 + 24) = v14;
      *(a3 + 16) = v13;
      v12 = 0;
      v14 = 0;
      *(a3 + 40) = v16;
      *(a3 + 32) = v15;
      *(a3 + 56) = v10;
      *(a3 + 48) = v6;
      *(a3 + 64) = 1;
      a3 += 72;
      v7 = v5 + 8;
      v5 += 16;
      v16 = 0;
      v18 = 0;
    }

    while (v7 != a2);
    return a2;
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::intrange::detail::defaultInferResultRangesFromOptional(mlir::InferIntRangeInterface,llvm::ArrayRef<mlir::ConstantIntRanges>,llvm::function_ref<void ()(mlir::Value,mlir::ConstantIntRanges const&)>)::$_0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 64) == 1)
  {
    return (**result)(*(*result + 8));
  }

  return result;
}

void mlir::ub::UBDialect::UBDialect(mlir::ub::UBDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "ub", 2, a2, &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id);
  *v2 = &unk_286898E48;
  mlir::ub::UBDialect::initialize(v2);
}

{
  v2 = mlir::Dialect::Dialect(this, "ub", 2, a2, &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id);
  *v2 = &unk_286898E48;
  mlir::ub::UBDialect::initialize(v2);
}

void sub_257021F9C()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::ub::UBDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::ub::PoisonOp::fold(uint64_t a1)
{
  result = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  if (result)
  {
    return (llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,void>>::doCastIfPossible(result) & 0xFFFFFFFFFFFFFFFBLL);
  }

  return result;
}

void *mlir::ub::PoisonOp::getValue(mlir::ub::PoisonOp *this)
{
  result = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (result)
  {
    return llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,void>>::doCastIfPossible(result);
  }

  return result;
}

uint64_t mlir::ub::UBDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v34 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v38) = 0;
  v36 = 0;
  v37 = 0;
  v35 = v5;
  LOBYTE(v38) = 0;
  if (((*(*a2 + 640))(a2, &v36) & 1) == 0)
  {
    SingletonImpl = 0;
    LOWORD(v38) = 256;
    if ((v38 & 0x10000) != 0)
    {
      *&v31 = "poison";
    }

    else
    {
      BYTE2(v38) = 1;
    }

    goto LABEL_15;
  }

  *&v31 = "poison";
  *(&v31 + 1) = 6;
  if ((v38 & 0x10000) != 0)
  {
    SingletonImpl = 0;
LABEL_15:
    v7 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v7 = v37;
  if (v37)
  {
    if (v37 == 6 && *v36 == 1936289648 && *(v36 + 4) == 28271)
    {
      Context = mlir::AsmParser::getContext(a2);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id);
      LOBYTE(v38) = SingletonImpl != 0;
      *(&v38 + 1) = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v34 + 648))(v34, &v31, 1);
    if ((v38 & 0x10000) != 0)
    {
      v7 = 0;
      v11 = 0;
      SingletonImpl = 0;
      goto LABEL_16;
    }

    v7 = v37;
  }

  SingletonImpl = 0;
  v11 = v36;
  LOWORD(v38) = 0;
  BYTE2(v38) = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v34) & 0x100) == 0)
  {
    v30 = 257;
    (*(*a2 + 24))(&v34, a2, v4, v29);
    if (v34)
    {
      LODWORD(v31) = 3;
      v32 = 19;
      if (v38 >= v39)
      {
        if (v37 > &v31 || v37 + 24 * v38 <= &v31)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v37 + 24 * v38;
      v13 = v31;
      *(v12 + 2) = v32;
      *v12 = v13;
      ++v38;
      if (v34)
      {
        v33 = 261;
        *&v31 = v11;
        *(&v31 + 1) = v7;
        mlir::Diagnostic::operator<<(&v35, &v31);
        if (v34)
        {
          LODWORD(v31) = 3;
          v32 = 14;
          if (v38 >= v39)
          {
            if (v37 > &v31 || v37 + 24 * v38 <= &v31)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v37 + 24 * v38;
          v15 = v31;
          *(v14 + 2) = v32;
          *v14 = v15;
          ++v38;
          if (v34)
          {
            v16 = *(a1 + 8);
            v17 = *(a1 + 16);
            v33 = 261;
            *&v31 = v16;
            *(&v31 + 1) = v17;
            mlir::Diagnostic::operator<<(&v35, &v31);
            if (v34)
            {
              LODWORD(v31) = 3;
              v32 = 1;
              if (v38 >= v39)
              {
                if (v37 > &v31 || v37 + 24 * v38 <= &v31)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v18 = v37 + 24 * v38;
              v19 = v31;
              *(v18 + 2) = v32;
              *v18 = v19;
              ++v38;
              if (v34)
              {
                mlir::InFlightDiagnostic::report(&v34);
              }
            }
          }
        }
      }
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v44;
        v22 = __p;
        if (v44 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v44 = v20;
        operator delete(v22);
      }

      v23 = v41;
      if (v41)
      {
        v24 = v42;
        v25 = v41;
        if (v42 != v41)
        {
          do
          {
            v27 = *--v24;
            v26 = v27;
            *v24 = 0;
            if (v27)
            {
              MEMORY[0x259C63150](v26, 0x1000C8077774924);
            }
          }

          while (v24 != v23);
          v25 = v41;
        }

        v42 = v23;
        operator delete(v25);
      }

      if (v37 != &v40)
      {
        free(v37);
      }
    }

    return 0;
  }

  return SingletonImpl;
}

void mlir::ub::UBDialect::printAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = (*(*a3 + 16))(a3);
    v4 = v3[4];
    if ((v3[3] - v4) > 5)
    {
      *(v4 + 4) = 28271;
      *v4 = 1936289648;
      v3[4] += 6;
    }

    else
    {

      llvm::raw_ostream::write(v3, "poison", 6uLL);
    }
  }
}

uint64_t mlir::ub::detail::PoisonOpGenericAdaptorBase::PoisonOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

void *mlir::ub::detail::PoisonOpGenericAdaptorBase::getValueAttr(mlir::ub::detail::PoisonOpGenericAdaptorBase *this)
{
  result = *(this + 3);
  if (result)
  {
    return llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,void>>::doCastIfPossible(result);
  }

  return result;
}

void *mlir::ub::detail::PoisonOpGenericAdaptorBase::getValue(mlir::ub::detail::PoisonOpGenericAdaptorBase *this)
{
  result = *(this + 3);
  if (result)
  {
    return llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::ub::PoisonAttrInterface const,void>>::doCastIfPossible(result);
  }

  return result;
}

uint64_t mlir::ub::PoisonOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v33 = v6;
  if (!v6)
  {
    a3(v36, a4);
    if (v36[0])
    {
      LODWORD(v34) = 3;
      *(&v34 + 1) = "expected DictionaryAttr to set properties";
      v35 = 41;
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v37 + 24 * v38;
      v14 = v34;
      *(v13 + 2) = v35;
      *v13 = v14;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }

    if (v46 != 1)
    {
      return 0;
    }

    if (v45 != &v46)
    {
      free(v45);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v44;
      v17 = __p;
      if (v44 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v44 = v15;
      operator delete(v17);
    }

    v18 = v41;
    if (!v41)
    {
      goto LABEL_49;
    }

    v19 = v42;
    v20 = v41;
    if (v42 == v41)
    {
      goto LABEL_48;
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
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v33, "value", 5uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v8);
  if (v10)
  {
    *a1 = v10;
    a1[1] = v11;
    return 1;
  }

  a3(v36, a4);
  if (v36[0])
  {
    LODWORD(v34) = 3;
    v35 = 50;
    if (v38 >= v39)
    {
      if (v37 > &v34 || v37 + 24 * v38 <= &v34)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = v37 + 24 * v38;
    v24 = v34;
    *(v23 + 2) = v35;
    *v23 = v24;
    ++v38;
    if (v36[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v34, v9);
      if (v38 >= v39)
      {
        if (v37 > &v34 || v37 + 24 * v38 <= &v34)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25 = v37 + 24 * v38;
      v26 = v34;
      *(v25 + 2) = v35;
      *v25 = v26;
      ++v38;
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }
    }
  }

  if (v46)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v44;
      v29 = __p;
      if (v44 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v44 = v27;
      operator delete(v29);
    }

    v18 = v41;
    if (!v41)
    {
      goto LABEL_49;
    }

    v30 = v42;
    v20 = v41;
    if (v42 == v41)
    {
LABEL_48:
      v42 = v18;
      operator delete(v20);
LABEL_49:
      if (v37 != &v40)
      {
        free(v37);
      }

      return 0;
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

    while (v30 != v18);
LABEL_47:
    v20 = v41;
    goto LABEL_48;
  }

  return 0;
}