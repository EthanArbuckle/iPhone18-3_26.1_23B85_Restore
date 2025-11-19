void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::func::ConstantOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::func::ConstantOp::verifyInvariantsImpl(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  Value = mlir::StringAttr::getValue(&v9);
  return mlir::func::FuncOp::setInherentAttr(v5 + 64, Value, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::func::FuncOp::populateInherentAttrs(Context, v6, a3);
}

double mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::func::FuncOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::compareProperties(uint64_t a1, void *a2, void *a3)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::func::FuncOp>,mlir::OpTrait::ZeroResults<mlir::func::FuncOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::FuncOp>,mlir::OpTrait::ZeroOperands<mlir::func::FuncOp>,mlir::OpTrait::OpInvariants<mlir::func::FuncOp>,mlir::BytecodeOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::AffineScope<mlir::func::FuncOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::func::FuncOp>,mlir::SymbolOpInterface::Trait<mlir::func::FuncOp>,mlir::CallableOpInterface::Trait<mlir::func::FuncOp>,mlir::FunctionOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::func::FuncOp>,mlir::OpAsmOpInterface::Trait<mlir::func::FuncOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::writeProperties;
  {
    v7 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v5 = v4;
  *v4 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmResultNames;
  v4[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmBlockArgumentNames;
  v4[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmBlockNames;
  v4[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getDefaultDialect;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mpsx::ListPopBackOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  (*(*a3 + 16))(a3, v4[11]);
  v5 = v4[12];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isDeclaration;
  {
    v5 = v2;
    mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v9 = 261;
  v8[0] = "sym_name";
  v8[1] = 8;
  v7 = mlir::StringAttr::get(Context, v8, v6);
  mlir::Operation::setAttr(a2, v7, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x800404C0E4D0CuLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

unint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getCallableRegion(uint64_t a1, uint64_t a2)
{
  v2 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v2 == v2)
  {
    return 0;
  }

  else
  {
    return ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgumentTypes(uint64_t a1, uint64_t a2)
{
  Value = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  Value = mlir::TypeAttr::getValue(&Value);
  return mlir::FunctionType::getInputs(&Value);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResultTypes(uint64_t a1, uint64_t a2)
{
  Value = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  Value = mlir::TypeAttr::getValue(&Value);
  return mlir::FunctionType::getResults(&Value);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xE004091171B8EuLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::verifyBody;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::verifyType;
  mlir::detail::FunctionOpInterfaceInterfaceTraits::Concept::initializeInterfaceConcept(v2, a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::cloneTypeWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Value = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  Value = mlir::TypeAttr::getValue(&Value);
  return mlir::FunctionType::clone(&Value, a3, a4, a5, a6);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>();
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
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v5 = v54;
  v4 = v63;
  v3 = v73;
  v2 = v84;
  v1 = v96;
  a1 = v109;
  v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::CallableOpInterface::Trait,mlir::SymbolOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::CallableOpInterface::Trait,mlir::SymbolOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  v10 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
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
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 8);
  Value = mlir::StringAttr::getValue(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, Value, v9, **(*(a2 + 48) + 96), *(*(*(a2 + 48) + 96) + 16));
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::func::FuncOp>,mlir::OpTrait::ZeroResults<mlir::func::FuncOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::FuncOp>,mlir::OpTrait::ZeroOperands<mlir::func::FuncOp>,mlir::OpTrait::OpInvariants<mlir::func::FuncOp>,mlir::BytecodeOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::AffineScope<mlir::func::FuncOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::func::FuncOp>,mlir::SymbolOpInterface::Trait<mlir::func::FuncOp>,mlir::CallableOpInterface::Trait<mlir::func::FuncOp>,mlir::FunctionOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::func::FuncOp>,mlir::OpAsmOpInterface::Trait<mlir::func::FuncOp>>(unsigned int *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && (v8 = a1, mlir::func::FuncOp::verifyInvariantsImpl(&v8)) && mlir::detail::SymbolOpInterfaceTrait<mlir::mps::serialization::FuncOp>::verifyTrait(a1, v6))
  {
    return mlir::function_interface_impl::verifyTrait<mlir::pdl_interp::FuncOp>(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v6, a2);
  v3 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      v4 = v6[0];
      if ((v7 & 2) != 0)
      {
        v4 = v6;
      }

      v5 = result;
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))(v4);
      result = v5;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v6[0], v6[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v6, a2, a3, a4, a5);
  v5 = v7;
  if (v7 >= 8)
  {
    if ((v7 & 4) != 0)
    {
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 16))();
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v6[0], v6[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ReturnOp>,mlir::OpTrait::ZeroResults<mlir::func::ReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ReturnOp>,mlir::OpTrait::VariadicOperands<mlir::func::ReturnOp>,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>,mlir::OpTrait::OpInvariants<mlir::func::ReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::ReturnOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::ReturnLike<mlir::func::ReturnOp>,mlir::OpTrait::IsTerminator<mlir::func::ReturnOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ReturnOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::RangeOp>,mlir::OpTrait::OneResult<mlir::pdl::RangeOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::RangeOp>,mlir::OpTrait::VariadicOperands<mlir::pdl::RangeOp>,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl<mlir::pdl::RangeOp>,mlir::OpTrait::OpInvariants<mlir::pdl::RangeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::RangeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::RangeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::RangeOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getEffects;
  {
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getMutableSuccessorOperands;
  v5[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getSuccessorRegions;
  {
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
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
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  v92 = v1;
  v105 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>();
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mps::serialization::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
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
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
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
  v11 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<Empty>]";
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

BOOL mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>::verifyTrait(a1) & 1) == 0 || !mlir::OpTrait::impl::verifyIsTerminator(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::func::ReturnOp::verify(&v7);
}

uint64_t mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>::verifyTrait(mlir::Block **a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1[2])
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(a1[2]);
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
        return 1;
      }
    }
  }

  v21 = 257;
  mlir::Operation::emitOpError(&v26, a1, &v20);
  if (!v26)
  {
    goto LABEL_12;
  }

  LODWORD(v22) = 3;
  *(&v22 + 1) = "expects parent op ";
  v23 = 18;
  if (v29 >= v30)
  {
    if (v28 > &v22 || v28 + 24 * v29 <= &v22)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = v28 + 24 * v29;
  v4 = v22;
  *(v3 + 2) = v23;
  *v3 = v4;
  v5 = ++v29;
  if (v26)
  {
    LODWORD(v22) = 3;
    *(&v22 + 1) = "'";
    v23 = 1;
    if (v5 >= v30)
    {
      if (v28 > &v22 || v28 + 24 * v5 <= &v22)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v28 + 24 * v29;
    v7 = v22;
    *(v6 + 2) = v23;
    *v6 = v7;
    ++v29;
    v24 = "func.func";
    v25 = 9;
    if (v26)
    {
      *&v22 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v24, &v26, v27, v27, &v22);
      if (v26)
      {
        LODWORD(v22) = 3;
        *(&v22 + 1) = "'";
        v23 = 1;
        if (v29 >= v30)
        {
          if (v28 > &v22 || v28 + 24 * v29 <= &v22)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = v28 + 24 * v29;
        v9 = v22;
        *(v8 + 2) = v23;
        *v8 = v9;
        ++v29;
      }
    }
  }

  else
  {
LABEL_12:
    v24 = "func.func";
    v25 = 9;
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v11 = __p;
    if (__p)
    {
      v12 = v35;
      v13 = __p;
      if (v35 != __p)
      {
        do
        {
          v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v35 = v11;
      operator delete(v13);
    }

    v14 = v32;
    if (v32)
    {
      v15 = v33;
      v16 = v32;
      if (v33 != v32)
      {
        do
        {
          v18 = *--v15;
          v17 = v18;
          *v15 = 0;
          if (v18)
          {
            MEMORY[0x259C63150](v17, 0x1000C8077774924);
          }
        }

        while (v15 != v14);
        v16 = v32;
      }

      v33 = v14;
      operator delete(v16);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }

  return v10;
}

__n128 llvm::interleave<mlir::Type const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<mlir::Type>>(llvm::ArrayRef<mlir::Type> const&,char const*)::{lambda(llvm::ArrayRef<mlir::Type> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<mlir::Type>>(llvm::ArrayRef<mlir::Type> const&,char const*)::{lambda(void)#1},void>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (a1 != a2)
  {
    v28 = v5;
    v29 = v6;
    mlir::DiagnosticArgument::DiagnosticArgument(&v26, *a1);
    v12 = *(a3 + 16);
    v13 = *(a3 + 24);
    if (v13 >= *(a3 + 28))
    {
      if (v12 > &v26 || v12 + 24 * v13 <= &v26)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v14 = (v12 + 24 * *(a3 + 24));
    result = v26;
    v14[1].n128_u64[0] = v27;
    *v14 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v17 = *a5;
      if (*a5)
      {
        v18 = strlen(*a5);
        v26.n128_u32[0] = 3;
        v26.n128_u64[1] = v17;
        v27 = v18;
        v19 = *(a4 + 24);
        v20 = *(a4 + 16);
        if (v19 >= *(a4 + 28))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v26.n128_u32[0] = 3;
        v26.n128_u64[1] = 0;
        v27 = 0;
        v19 = *(a4 + 24);
        v20 = *(a4 + 16);
        if (v19 >= *(a4 + 28))
        {
LABEL_11:
          if (v20 <= &v26 && v20 + 24 * v19 > &v26)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      v21 = (v20 + 24 * *(a4 + 24));
      v22 = v26;
      v21[1].n128_u64[0] = v27;
      *v21 = v22;
      ++*(a4 + 24);
      mlir::DiagnosticArgument::DiagnosticArgument(&v26, *i);
      v23 = *(a3 + 24);
      v24 = *(a3 + 16);
      if (v23 >= *(a3 + 28))
      {
        if (v24 > &v26 || v24 + 24 * v23 <= &v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25 = (v24 + 24 * *(a3 + 24));
      result = v26;
      v25[1].n128_u64[0] = v27;
      *v25 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::SymbolRefAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  {
    AncestorKey::AncestorKey();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v8[0];
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::func::CallOp,mlir::SymbolRefAttr &,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::CallOp,mlir::SymbolRefAttr &,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>(v22, &v24, v23);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  NextResultAtOffset = *a4;
  v15 = a4[1];
  v16 = a4[3];
  if (v15)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v15);
  }

  mlir::ValueRange::ValueRange(&v24, NextResultAtOffset, v16 - v15);
  mlir::TypeRange::TypeRange(v23, v24, v25);
  v17 = mlir::ValueRange::ValueRange(&v24, *a5, *(a5 + 8));
  mlir::func::CallOp::build(v17, v22, v13, v23[0], v23[1], v24, v25);
  v18 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v19;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::func::FuncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

void *mlir::RewritePatternSet::add<mlir::func::CallIndirectOp>(llvm::LogicalResult (*)(mlir::func::CallIndirectOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::func::CallIndirectOp>(llvm::LogicalResult (*)(mlir::func::CallIndirectOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::func::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::func::detail::CallOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::func::detail::ConstantOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::func::detail::FuncOpGenericAdaptorBase::Properties]";
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

void OUTLINED_FUNCTION_42_8()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t mlir::function_interface_impl::getArgAttrDict(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 24))();
  v5 = result;
  if (result)
  {
    return *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
  }

  return result;
}

uint64_t mlir::function_interface_impl::getResultAttrDict(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 32))();
  v5 = result;
  if (result)
  {
    return *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
  }

  return result;
}

uint64_t mlir::function_interface_impl::getArgAttrs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 24))();
  v5 = result;
  if (result)
  {
    v5 = *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
    if (v5)
    {
      return mlir::DictionaryAttr::getValue(&v5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::function_interface_impl::getResultAttrs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 32))();
  v5 = result;
  if (result)
  {
    v5 = *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
    if (v5)
    {
      return mlir::DictionaryAttr::getValue(&v5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::function_interface_impl::setAllArgAttrDicts(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x800000000;
  if (((8 * a4) >> 3) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v21;
  v8 = 8 * a4;
  if (!a4)
  {
    LODWORD(v20) = 0;
    goto LABEL_13;
  }

  v9 = 8 * a4;
  do
  {
    v10 = *a3;
    if (!*a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      v10 = mlir::DictionaryAttr::get(Context, 0, 0);
    }

    *v7++ = v10;
    ++a3;
    v9 -= 8;
  }

  while (v9);
  v12 = v19;
  v13 = v20 + (v8 >> 3);
  LODWORD(v20) = v20 + (v8 >> 3);
  if (!v20)
  {
LABEL_13:
    (*(*(a2 + 48) + 56))();
    v16 = v19;
    if (v19 == v21)
    {
      return;
    }

    goto LABEL_14;
  }

  v14 = 8 * v13;
  v15 = v19;
  while (1)
  {
    v18 = *v15;
    if (mlir::DictionaryAttr::size(&v18))
    {
      break;
    }

    ++v15;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  v17 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v17, v12, v13);
  (*(*(a2 + 48) + 40))();
  v16 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v16);
  }
}

void mlir::function_interface_impl::setAllResultAttrDicts(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = 0x800000000;
  if (((8 * a4) >> 3) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v21;
  v8 = 8 * a4;
  if (!a4)
  {
    LODWORD(v20) = 0;
    goto LABEL_13;
  }

  v9 = 8 * a4;
  do
  {
    v10 = *a3;
    if (!*a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      v10 = mlir::DictionaryAttr::get(Context, 0, 0);
    }

    *v7++ = v10;
    ++a3;
    v9 -= 8;
  }

  while (v9);
  v12 = v19;
  v13 = v20 + (v8 >> 3);
  LODWORD(v20) = v20 + (v8 >> 3);
  if (!v20)
  {
LABEL_13:
    (*(*(a2 + 48) + 64))();
    v16 = v19;
    if (v19 == v21)
    {
      return;
    }

    goto LABEL_14;
  }

  v14 = 8 * v13;
  v15 = v19;
  while (1)
  {
    v18 = *v15;
    if (mlir::DictionaryAttr::size(&v18))
    {
      break;
    }

    ++v15;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  v17 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v17, v12, v13);
  (*(*(a2 + 48) + 48))();
  v16 = v19;
  if (v19 != v21)
  {
LABEL_14:
    free(v16);
  }
}

void mlir::function_interface_impl::setArgAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  (*(*(a2 + 48) + 8))();
  v11 = v10;
  Context = mlir::Attribute::getContext((a1 + 24));
  v13 = mlir::DictionaryAttr::get(Context, a4, a5);

  setArgResAttrDict<true>(a1, a2, v11, a3, v13);
}

void setArgResAttrDict<true>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v36 = a5;
  v35 = (*(*(a2 + 48) + 24))();
  if (!v35)
  {
    if (!mlir::DictionaryAttr::size(&v36))
    {
      return;
    }

    Context = mlir::Attribute::getContext((a1 + 24));
    v15 = mlir::DictionaryAttr::get(Context, 0, 0);
    v37 = v39;
    HIDWORD(v38) = 8;
    if (a3 >= 9)
    {
      LODWORD(v38) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (!a3)
    {
LABEL_48:
      LODWORD(v38) = a3;
      v39[a4] = v36;
      v34 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v34, v37, v38);
      (*(*(a2 + 48) + 40))();
      v19 = v37;
      if (v37 == v39)
      {
        return;
      }

      goto LABEL_49;
    }

    v27 = vdupq_n_s64(a3 - 1);
    v28 = a3 + 1;
    v29 = vmovn_s64(vcgeq_u64(v27, xmmword_2573686A0));
    if (v29.i8[0])
    {
      v39[0] = v15;
      v30 = v28 & 0x1E;
      if ((v29.i8[4] & 1) == 0)
      {
LABEL_28:
        if (v30 == 2)
        {
          goto LABEL_48;
        }

LABEL_32:
        v31 = vmovn_s64(vcgtq_u64(v27, xmmword_2573686B0));
        if (v31.i8[0])
        {
          v39[2] = v15;
          if ((v31.i8[4] & 1) == 0)
          {
LABEL_34:
            if (v30 == 4)
            {
              goto LABEL_48;
            }

LABEL_38:
            v32 = vmovn_s64(vcgtq_u64(v27, xmmword_2573686C0));
            if (v32.i8[0])
            {
              v39[4] = v15;
              if ((v32.i8[4] & 1) == 0)
              {
LABEL_40:
                if (v30 == 6)
                {
                  goto LABEL_48;
                }

                goto LABEL_44;
              }
            }

            else if ((v32.i8[4] & 1) == 0)
            {
              goto LABEL_40;
            }

            v39[5] = v15;
            if (v30 == 6)
            {
              goto LABEL_48;
            }

LABEL_44:
            v33 = vmovn_s64(vcgtq_u64(v27, xmmword_2573695F0));
            if (v33.i8[0])
            {
              v39[6] = v15;
            }

            if (v33.i8[4])
            {
              v39[7] = v15;
            }

            goto LABEL_48;
          }
        }

        else if ((v31.i8[4] & 1) == 0)
        {
          goto LABEL_34;
        }

        v39[3] = v15;
        if (v30 == 4)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v30 = v28 & 0x1E;
      if ((v29.i8[4] & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v39[1] = v15;
    if (v30 == 2)
    {
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  Value = mlir::ArrayAttr::getValue(&v35);
  if (*(Value + 8 * a4) == v36)
  {
    return;
  }

  v10 = a4;
  v11 = mlir::ArrayAttr::getValue(&v35);
  v13 = v12;
  if (!mlir::DictionaryAttr::size(&v36))
  {
    if (v13 >= a4)
    {
      v20 = a4;
    }

    else
    {
      v20 = v13;
    }

    if (v20)
    {
      v21 = 8 * v20;
      v22 = v11;
      while (1)
      {
        v37 = *v22;
        if (mlir::DictionaryAttr::size(&v37))
        {
          break;
        }

        ++v22;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      v23 = a4 + 1;
      if (v13 == v23)
      {
LABEL_24:
        (*(*(a2 + 48) + 56))();
        return;
      }

      v24 = v23;
      v25 = &v11[v24];
      v26 = 8 * v13 - v24 * 8;
      while (1)
      {
        v37 = *v25;
        if (mlir::DictionaryAttr::size(&v37))
        {
          break;
        }

        ++v25;
        v26 -= 8;
        if (!v26)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v37 = v39;
  v38 = 0x800000000;
  if (((8 * v13) >> 3) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v16 = 0;
  v17 = v39;
  if (v13)
  {
    memcpy(v39, v11, 8 * v13);
    v16 = v38;
    v17 = v37;
  }

  LODWORD(v38) = v16 + v13;
  v17[v10] = v36;
  v18 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v18, v37, v38);
  (*(*(a2 + 48) + 40))();
  v19 = v37;
  if (v37 != v39)
  {
LABEL_49:
    free(v19);
  }
}

void mlir::function_interface_impl::setArgAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  (*(*(a2 + 48) + 8))();
  v9 = v8;
  if (!a4)
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    a4 = mlir::DictionaryAttr::get(Context, 0, 0);
  }

  setArgResAttrDict<true>(a1, a2, v9, a3, a4);
}

void mlir::function_interface_impl::setResultAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  (*(*(a2 + 48) + 16))();
  v11 = v10;
  Context = mlir::Attribute::getContext((a1 + 24));
  v13 = mlir::DictionaryAttr::get(Context, a4, a5);

  setArgResAttrDict<false>(a1, a2, v11, a3, v13);
}

void setArgResAttrDict<false>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v36 = a5;
  v35 = (*(*(a2 + 48) + 32))();
  if (!v35)
  {
    if (!mlir::DictionaryAttr::size(&v36))
    {
      return;
    }

    Context = mlir::Attribute::getContext((a1 + 24));
    v15 = mlir::DictionaryAttr::get(Context, 0, 0);
    v37 = v39;
    HIDWORD(v38) = 8;
    if (a3 >= 9)
    {
      LODWORD(v38) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (!a3)
    {
LABEL_48:
      LODWORD(v38) = a3;
      v39[a4] = v36;
      v34 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v34, v37, v38);
      (*(*(a2 + 48) + 48))();
      v19 = v37;
      if (v37 == v39)
      {
        return;
      }

      goto LABEL_49;
    }

    v27 = vdupq_n_s64(a3 - 1);
    v28 = a3 + 1;
    v29 = vmovn_s64(vcgeq_u64(v27, xmmword_2573686A0));
    if (v29.i8[0])
    {
      v39[0] = v15;
      v30 = v28 & 0x1E;
      if ((v29.i8[4] & 1) == 0)
      {
LABEL_28:
        if (v30 == 2)
        {
          goto LABEL_48;
        }

LABEL_32:
        v31 = vmovn_s64(vcgtq_u64(v27, xmmword_2573686B0));
        if (v31.i8[0])
        {
          v39[2] = v15;
          if ((v31.i8[4] & 1) == 0)
          {
LABEL_34:
            if (v30 == 4)
            {
              goto LABEL_48;
            }

LABEL_38:
            v32 = vmovn_s64(vcgtq_u64(v27, xmmword_2573686C0));
            if (v32.i8[0])
            {
              v39[4] = v15;
              if ((v32.i8[4] & 1) == 0)
              {
LABEL_40:
                if (v30 == 6)
                {
                  goto LABEL_48;
                }

                goto LABEL_44;
              }
            }

            else if ((v32.i8[4] & 1) == 0)
            {
              goto LABEL_40;
            }

            v39[5] = v15;
            if (v30 == 6)
            {
              goto LABEL_48;
            }

LABEL_44:
            v33 = vmovn_s64(vcgtq_u64(v27, xmmword_2573695F0));
            if (v33.i8[0])
            {
              v39[6] = v15;
            }

            if (v33.i8[4])
            {
              v39[7] = v15;
            }

            goto LABEL_48;
          }
        }

        else if ((v31.i8[4] & 1) == 0)
        {
          goto LABEL_34;
        }

        v39[3] = v15;
        if (v30 == 4)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v30 = v28 & 0x1E;
      if ((v29.i8[4] & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v39[1] = v15;
    if (v30 == 2)
    {
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  Value = mlir::ArrayAttr::getValue(&v35);
  if (*(Value + 8 * a4) == v36)
  {
    return;
  }

  v10 = a4;
  v11 = mlir::ArrayAttr::getValue(&v35);
  v13 = v12;
  if (!mlir::DictionaryAttr::size(&v36))
  {
    if (v13 >= a4)
    {
      v20 = a4;
    }

    else
    {
      v20 = v13;
    }

    if (v20)
    {
      v21 = 8 * v20;
      v22 = v11;
      while (1)
      {
        v37 = *v22;
        if (mlir::DictionaryAttr::size(&v37))
        {
          break;
        }

        ++v22;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      v23 = a4 + 1;
      if (v13 == v23)
      {
LABEL_24:
        (*(*(a2 + 48) + 64))();
        return;
      }

      v24 = v23;
      v25 = &v11[v24];
      v26 = 8 * v13 - v24 * 8;
      while (1)
      {
        v37 = *v25;
        if (mlir::DictionaryAttr::size(&v37))
        {
          break;
        }

        ++v25;
        v26 -= 8;
        if (!v26)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v37 = v39;
  v38 = 0x800000000;
  if (((8 * v13) >> 3) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v16 = 0;
  v17 = v39;
  if (v13)
  {
    memcpy(v39, v11, 8 * v13);
    v16 = v38;
    v17 = v37;
  }

  LODWORD(v38) = v16 + v13;
  v17[v10] = v36;
  v18 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v18, v37, v38);
  (*(*(a2 + 48) + 48))();
  v19 = v37;
  if (v37 != v39)
  {
LABEL_49:
    free(v19);
  }
}

void mlir::function_interface_impl::setResultAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  (*(*(a2 + 48) + 16))();
  v9 = v8;
  if (!a4)
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    a4 = mlir::DictionaryAttr::get(Context, 0, 0);
  }

  setArgResAttrDict<false>(a1, a2, v9, a3, a4);
}

uint64_t mlir::function_interface_impl::insertFunctionArguments(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12)
{
  v33[4] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v18 = result;
    v19 = a12;
    v30 = (*(*(a2 + 48) + 24))();
    if (v30 | a8)
    {
      v31 = v33;
      v32 = 0x400000000;
      if (a4 + a11 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v29 = 0;
      v28[0] = &v30;
      v28[1] = &v31;
      v28[2] = &v29;
      if (a4)
      {
        v20 = a4;
        if (a8)
        {
          v21 = a3;
          do
          {
            v22 = *v21++;
            mlir::function_interface_impl::insertFunctionArguments(mlir::FunctionOpInterface,llvm::ArrayRef<unsigned int>,mlir::TypeRange,llvm::ArrayRef<mlir::DictionaryAttr>,llvm::ArrayRef<mlir::Location>,unsigned int,mlir::Type)::$_0::operator()(v28, v22);
            v24 = *a7++;
            v23 = v24;
            if (v32 >= HIDWORD(v32))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v31 + v32) = v23;
            LODWORD(v32) = v32 + 1;
            --v20;
          }

          while (v20);
        }

        else
        {
          v25 = a3;
          do
          {
            v26 = *v25++;
            mlir::function_interface_impl::insertFunctionArguments(mlir::FunctionOpInterface,llvm::ArrayRef<unsigned int>,mlir::TypeRange,llvm::ArrayRef<mlir::DictionaryAttr>,llvm::ArrayRef<mlir::Location>,unsigned int,mlir::Type)::$_0::operator()(v28, v26);
            if (v32 >= HIDWORD(v32))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v31 + v32) = 0;
            LODWORD(v32) = v32 + 1;
            --v20;
          }

          while (v20);
        }
      }

      mlir::function_interface_impl::insertFunctionArguments(mlir::FunctionOpInterface,llvm::ArrayRef<unsigned int>,mlir::TypeRange,llvm::ArrayRef<mlir::DictionaryAttr>,llvm::ArrayRef<mlir::Location>,unsigned int,mlir::Type)::$_0::operator()(v28, a11);
      mlir::function_interface_impl::setAllArgAttrDicts(v18, a2, v31, v32);
      if (v31 != v33)
      {
        free(v31);
      }

      v19 = a12;
    }

    v27 = mlir::TypeAttr::get(v19);
    result = (*(a2 + 8))(a2, v18, v27);
    if (a4)
    {
      mlir::TypeRange::dereference_iterator(a5, 0);
      mlir::Block::insertArgument();
    }
  }

  return result;
}

void mlir::function_interface_impl::insertFunctionArguments(mlir::FunctionOpInterface,llvm::ArrayRef<unsigned int>,mlir::TypeRange,llvm::ArrayRef<mlir::DictionaryAttr>,llvm::ArrayRef<mlir::Location>,unsigned int,mlir::Type)::$_0::operator()(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (**a1)
  {
    Value = mlir::ArrayAttr::getValue(*a1);
    mlir::ArrayAttr::getValue(v4);
    v6 = *(a1 + 8);
    v7 = 8 * **(a1 + 16);
    v8 = 8 * a2;
    v9 = *(v6 + 8);
    if (v9 + ((v8 - v7) >> 3) > *(v6 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v8 != v7)
    {
      v10 = (Value + v7);
      v11 = (*v6 + 8 * v9);
      v12 = v8 - v7 - 8;
      if (v12 < 0x48)
      {
        goto LABEL_23;
      }

      v13 = 8 * v9 + *v6;
      if ((v13 - (Value + v7)) < 0x20)
      {
        goto LABEL_23;
      }

      v14 = (v12 >> 3) + 1;
      v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
      v11 = (v11 + v15);
      v10 = (v10 + v15);
      v16 = (v7 + Value + 16);
      v17 = (v13 + 16);
      v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_23:
        do
        {
          v20 = *v10++;
          *v11++ = v20;
        }

        while (v10 != (Value + v8));
      }

      LODWORD(v9) = *(v6 + 8);
    }

    *(v6 + 8) = v9 + ((v8 - v7) >> 3);
  }

  else
  {
    v21 = *(a1 + 8);
    v22 = *(v21 + 8);
    v23 = v22 + a2 - **(a1 + 16);
    if (v23 != v22)
    {
      if (v23 >= v22)
      {
        if (v23 > *(v21 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v23 != v22)
        {
          bzero((*v21 + 8 * v22), 8 * (a2 - **(a1 + 16)));
        }
      }

      *(v21 + 8) = v23;
    }
  }

  **(a1 + 16) = a2;
}

uint64_t mlir::function_interface_impl::insertFunctionResults(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, unsigned int a9, uint64_t a10)
{
  v26[4] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v12 = a4;
    v15 = result;
    v23 = (*(*(a2 + 48) + 32))();
    if (v23 | a8)
    {
      v24 = v26;
      v25 = 0x400000000;
      if (v12 + a9 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = 0;
      v21[0] = &v23;
      v21[1] = &v24;
      v21[2] = &v22;
      v12 = v12;
      if (v12)
      {
        if (a8)
        {
          do
          {
            v16 = *a3++;
            mlir::function_interface_impl::insertFunctionArguments(mlir::FunctionOpInterface,llvm::ArrayRef<unsigned int>,mlir::TypeRange,llvm::ArrayRef<mlir::DictionaryAttr>,llvm::ArrayRef<mlir::Location>,unsigned int,mlir::Type)::$_0::operator()(v21, v16);
            v18 = *a7++;
            v17 = v18;
            if (v25 >= HIDWORD(v25))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v24 + v25) = v17;
            LODWORD(v25) = v25 + 1;
            --v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v19 = *a3++;
            mlir::function_interface_impl::insertFunctionArguments(mlir::FunctionOpInterface,llvm::ArrayRef<unsigned int>,mlir::TypeRange,llvm::ArrayRef<mlir::DictionaryAttr>,llvm::ArrayRef<mlir::Location>,unsigned int,mlir::Type)::$_0::operator()(v21, v19);
            if (v25 >= HIDWORD(v25))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v24 + v25) = 0;
            LODWORD(v25) = v25 + 1;
            --v12;
          }

          while (v12);
        }
      }

      mlir::function_interface_impl::insertFunctionArguments(mlir::FunctionOpInterface,llvm::ArrayRef<unsigned int>,mlir::TypeRange,llvm::ArrayRef<mlir::DictionaryAttr>,llvm::ArrayRef<mlir::Location>,unsigned int,mlir::Type)::$_0::operator()(v21, a9);
      mlir::function_interface_impl::setAllResultAttrDicts(v15, a2, v24, v25);
      if (v24 != v26)
      {
        free(v24);
      }
    }

    v20 = mlir::TypeAttr::get(a10);
    return (*(a2 + 8))(a2, v15, v20);
  }

  return result;
}

uint64_t mlir::function_interface_impl::eraseFunctionArguments(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v8 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  v17 = (*(*(a2 + 48) + 24))();
  if (v17)
  {
    v18 = v20;
    v19 = 0x400000000;
    mlir::ArrayAttr::getValue(&v17);
    if (v9 > HIDWORD(v19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = a3[16];
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        if (((*(*a3 + 8 * (i >> 6)) >> i) & 1) == 0)
        {
          v12 = *(mlir::ArrayAttr::getValue(&v17) + 8 * i);
          v16 = v12;
          if (v19 < HIDWORD(v19))
          {
            *(v18 + v19) = v12;
            LODWORD(v19) = v19 + 1;
          }

          else
          {
            llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v18, &v16);
          }
        }
      }
    }

    mlir::function_interface_impl::setAllArgAttrDicts(a1, a2, v18, v19);
    if (v18 != v20)
    {
      free(v18);
    }
  }

  if (v8)
  {
    v13 = (v8 - 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = mlir::TypeAttr::get(a4);
  (*(a2 + 8))(a2, a1, v14);
  return mlir::Block::eraseArguments(v13, a3);
}

uint64_t mlir::function_interface_impl::eraseFunctionResults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v15 = (*(*(a2 + 48) + 32))();
  if (v15)
  {
    v16 = v18;
    v17 = 0x400000000;
    mlir::ArrayAttr::getValue(&v15);
    if (v8 > HIDWORD(v17))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = *(a3 + 64);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (((*(*a3 + 8 * (i >> 6)) >> i) & 1) == 0)
        {
          v11 = *(mlir::ArrayAttr::getValue(&v15) + 8 * i);
          v14 = v11;
          if (v17 < HIDWORD(v17))
          {
            *(v16 + v17) = v11;
            LODWORD(v17) = v17 + 1;
          }

          else
          {
            llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(&v16, &v14);
          }
        }
      }
    }

    mlir::function_interface_impl::setAllResultAttrDicts(a1, a2, v16, v17);
    if (v16 != v18)
    {
      free(v16);
    }
  }

  v12 = mlir::TypeAttr::get(a4);
  return (*(a2 + 8))(a2, a1, v12);
}

void mlir::function_interface_impl::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71[6] = *MEMORY[0x277D85DE8];
  (*(*(a2 + 48) + 8))();
  v7 = v6;
  (*(*(a2 + 48) + 16))();
  v9 = v8;
  v10 = mlir::TypeAttr::get(a3);
  (*(a2 + 8))(a2, a1, v10);
  (*(*(a2 + 48) + 8))();
  LODWORD(v12) = v11;
  (*(*(a2 + 48) + 16))();
  LODWORD(v14) = v13;
  Context = mlir::Attribute::getContext((a1 + 24));
  v16 = mlir::DictionaryAttr::get(Context, 0, 0);
  if (v7 == v12)
  {
    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v67 = (*(*(a2 + 48) + 24))();
  if (!v67)
  {
    goto LABEL_13;
  }

  if (v12 < v7)
  {
    Value = mlir::ArrayAttr::getValue(&v67);
    if (v18 >= v12)
    {
      v12 = v12;
    }

    else
    {
      v12 = v18;
    }

    if (v18)
    {
      v19 = Value;
      v20 = 8 * v12;
      v21 = Value;
      while (1)
      {
        v69 = *v21;
        if (mlir::DictionaryAttr::size(&v69))
        {
          break;
        }

        ++v21;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_12;
        }
      }

      v51 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v51, v19, v12);
      (*(*(a2 + 48) + 40))();
      goto LABEL_13;
    }

LABEL_12:
    (*(*(a2 + 48) + 56))();
    goto LABEL_13;
  }

  v27 = mlir::ArrayAttr::getValue(&v67);
  v28 = mlir::ArrayAttr::getValue(&v67);
  v30 = (v28 + 8 * v29);
  v69 = v71;
  v70 = 0x600000000;
  if (((v30 - v27) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v35 = 0;
  if (v30 != v27)
  {
    memcpy(v69, v27, v30 - v27);
    v35 = v70;
  }

  v36 = v35 + ((v30 - v27) >> 3);
  LODWORD(v70) = v36;
  v37 = v12;
  if (v36 == v12)
  {
LABEL_35:
    v38 = v69;
    v39 = v69 + 8 * v37;
    v40 = v69;
    goto LABEL_36;
  }

  if (v36 > v12)
  {
    LODWORD(v70) = v12;
    goto LABEL_35;
  }

  v53 = v12 - v36;
  if (HIDWORD(v70) < v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v38 = v69;
  if (v53)
  {
    v54 = (v69 + 8 * v36);
    v55 = v54;
    v56 = v53;
    if (v53 < 4)
    {
      goto LABEL_78;
    }

    v55 = v54 + (v53 & 0xFFFFFFFFFFFFFFFCLL);
    v56 = v53 & 3;
    v57 = vdupq_n_s64(v16);
    v58 = v54 + 1;
    v59 = v53 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v58[-1] = v57;
      *v58 = v57;
      v58 += 2;
      v59 -= 4;
    }

    while (v59);
    if (v53 != (v53 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_78:
      do
      {
        *v55++ = v16;
        --v56;
      }

      while (v56);
    }
  }

  v37 = (v36 + v53);
  LODWORD(v70) = v36 + v53;
  if (!(v36 + v53))
  {
LABEL_38:
    (*(*(a2 + 48) + 56))();
    v41 = v69;
    if (v69 == v71)
    {
      goto LABEL_13;
    }

LABEL_51:
    free(v41);
    goto LABEL_13;
  }

  v39 = &v38[v37];
  v40 = v38;
LABEL_36:
  while (1)
  {
    v68 = *v40;
    if (mlir::DictionaryAttr::size(&v68))
    {
      break;
    }

    if (++v40 == v39)
    {
      goto LABEL_38;
    }
  }

  v49 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v49, v38, v37);
  (*(*(a2 + 48) + 40))();
  v41 = v69;
  if (v69 != v71)
  {
    goto LABEL_51;
  }

LABEL_13:
  if (v9 == v14)
  {
    return;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v67 = (*(*(a2 + 48) + 32))();
  if (!v67)
  {
    return;
  }

  if (v14 < v9)
  {
    v22 = mlir::ArrayAttr::getValue(&v67);
    if (v23 >= v14)
    {
      v14 = v14;
    }

    else
    {
      v14 = v23;
    }

    if (v23)
    {
      v24 = v22;
      v25 = 8 * v14;
      v26 = v22;
      while (1)
      {
        v69 = *v26;
        if (mlir::DictionaryAttr::size(&v69))
        {
          break;
        }

        ++v26;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      v52 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v52, v24, v14);
      (*(*(a2 + 48) + 48))();
      return;
    }

LABEL_24:
    (*(*(a2 + 48) + 64))();
    return;
  }

  v31 = mlir::ArrayAttr::getValue(&v67);
  v32 = mlir::ArrayAttr::getValue(&v67);
  v34 = (v32 + 8 * v33);
  v69 = v71;
  v70 = 0x600000000;
  if (((v34 - v31) >> 3) >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v42 = 0;
  if (v34 != v31)
  {
    memcpy(v69, v31, v34 - v31);
    v42 = v70;
  }

  v43 = v42 + ((v34 - v31) >> 3);
  LODWORD(v70) = v43;
  v44 = v14;
  if (v43 == v14)
  {
LABEL_45:
    v45 = v69;
    v46 = v69 + 8 * v44;
    v47 = v69;
    goto LABEL_46;
  }

  if (v43 > v14)
  {
    LODWORD(v70) = v14;
    goto LABEL_45;
  }

  v60 = v14 - v43;
  if (HIDWORD(v70) < v14)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v45 = v69;
  if (v60)
  {
    v61 = (v69 + 8 * v43);
    v62 = v61;
    v63 = v60;
    if (v60 < 4)
    {
      goto LABEL_79;
    }

    v62 = v61 + (v60 & 0xFFFFFFFFFFFFFFFCLL);
    v63 = v60 & 3;
    v64 = vdupq_n_s64(v16);
    v65 = v61 + 1;
    v66 = v60 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v65[-1] = v64;
      *v65 = v64;
      v65 += 2;
      v66 -= 4;
    }

    while (v66);
    if (v60 != (v60 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_79:
      do
      {
        *v62++ = v16;
        --v63;
      }

      while (v63);
    }
  }

  v44 = (v43 + v60);
  LODWORD(v70) = v43 + v60;
  if (!(v43 + v60))
  {
LABEL_48:
    (*(*(a2 + 48) + 64))();
    v48 = v69;
    if (v69 == v71)
    {
      return;
    }

LABEL_53:
    free(v48);
    return;
  }

  v46 = &v45[v44];
  v47 = v45;
LABEL_46:
  while (1)
  {
    v68 = *v47;
    if (mlir::DictionaryAttr::size(&v68))
    {
      break;
    }

    if (++v47 == v46)
    {
      goto LABEL_48;
    }
  }

  v50 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v50, v45, v44);
  (*(*(a2 + 48) + 48))();
  v48 = v69;
  if (v69 != v71)
  {
    goto LABEL_53;
  }
}

uint64_t mlir::function_interface_impl::parseFunctionSignature(char *a1, char a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v16 = a2;
  *a4 = 0;
  v12 = a4;
  v13 = a1;
  v14 = &v16;
  v15 = a3;
  if (((*(*a1 + 392))(a1, 1, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionArgumentList(mlir::OpAsmParser &,BOOL,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,BOOL &)::$_0>, &v12, 0, 0) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 64))(a1) & 1) == 0)
  {
    return 1;
  }

  if ((*(*a1 + 288))(a1))
  {
    if ((*(*a1 + 304))(a1))
    {
      return 1;
    }

    v12 = a5;
    v13 = a6;
    v14 = a1;
    if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionResultList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::DictionaryAttr> &)::$_0>, &v12, 0, 0))
    {
      return (*(*a1 + 296))(a1);
    }

    return 0;
  }

  v12 = 0;
  if (((*(*a1 + 536))(a1, &v12) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a5 + 8);
  if (v10 >= *(a5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a5 + 8 * v10) = v12;
  ++*(a5 + 8);
  v11 = *(a6 + 8);
  if (v11 >= *(a6 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(a6);
  }

  else
  {
    *(*a6 + 8 * v11) = 0;
    *(a6 + 8) = v11 + 1;
  }

  return 1;
}

uint64_t mlir::function_interface_impl::addArgAndResultAttrs(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  v29[6] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v14 = a3;
    v15 = 8 * a4;
    v16 = 8 * a4;
    v17 = a3;
    while (1)
    {
      v27 = *v17;
      if (v27)
      {
        result = mlir::DictionaryAttr::size(&v27);
        if (result)
        {
          break;
        }
      }

      ++v17;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v18) = 0;
    v27 = v29;
    v28 = 0x600000000;
    do
    {
      DictionaryAttr = *v14;
      if (!*v14)
      {
        DictionaryAttr = mlir::Builder::getDictionaryAttr(v12, 0, 0);
        LODWORD(v18) = v28;
      }

      if (v18 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v18) = DictionaryAttr;
      v18 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      ++v14;
      v15 -= 8;
    }

    while (v15);
    ArrayAttr = mlir::Builder::getArrayAttr(v12, v27, v18);
    if (v27 != v29)
    {
      free(v27);
    }

    mlir::NamedAttribute::NamedAttribute(&v27, a7, ArrayAttr);
    result = mlir::NamedAttrList::push_back(a2 + 112, v27, v28);
  }

LABEL_16:
  if (a6)
  {
    v21 = 8 * a6;
    v22 = 8 * a6;
    for (i = a5; ; ++i)
    {
      v27 = *i;
      if (v27)
      {
        result = mlir::DictionaryAttr::size(&v27);
        if (result)
        {
          break;
        }
      }

      v22 -= 8;
      if (!v22)
      {
        return result;
      }
    }

    LODWORD(v24) = 0;
    v27 = v29;
    v28 = 0x600000000;
    do
    {
      v25 = *a5;
      if (!*a5)
      {
        v25 = mlir::Builder::getDictionaryAttr(v12, 0, 0);
        LODWORD(v24) = v28;
      }

      if (v24 >= HIDWORD(v28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v27 + v24) = v25;
      v24 = (v28 + 1);
      LODWORD(v28) = v28 + 1;
      ++a5;
      v21 -= 8;
    }

    while (v21);
    v26 = mlir::Builder::getArrayAttr(v12, v27, v24);
    if (v27 != v29)
    {
      free(v27);
    }

    mlir::NamedAttribute::NamedAttribute(&v27, a8, v26);
    return mlir::NamedAttrList::push_back(a2 + 112, v27, v28);
  }

  return result;
}

void mlir::function_interface_impl::addArgAndResultAttrs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11 = 0;
  if (a4)
  {
    v8 = a4;
    LODWORD(a4) = 0;
    v9 = (a3 + 40);
    v10 = v8 << 6;
    do
    {
      if (a4 >= 6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12[a4] = *v9;
      a4 = ++v11;
      v9 += 8;
      v10 -= 64;
    }

    while (v10);
    mlir::function_interface_impl::addArgAndResultAttrs(a1, a2, v12, a4, a5, a6, a7, a8);
  }

  else
  {
    mlir::function_interface_impl::addArgAndResultAttrs(a1, a2, v12, 0, a5, a6, a7, a8);
  }
}

BOOL mlir::function_interface_impl::parseFunctionOp(mlir::impl *a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *, void, void *, void, void, void **), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101[8] = *MEMORY[0x277D85DE8];
  v69 = a4;
  v99 = v101;
  v100 = 0x100000000;
  v96 = v98;
  v97 = 0x600000000;
  v93 = v95;
  v94 = 0x600000000;
  v14 = (*(*a1 + 32))(a1);
  mlir::impl::parseOptionalVisibilityKeyword(a1, (a2 + 112), v15);
  v68 = 0;
  if (mlir::AsmParser::parseSymbolName(a1, &v68))
  {
    v60 = a8;
    mlir::NamedAttrList::append(a2 + 112, "sym_name", 8uLL, v68);
    v16 = (*(*a1 + 40))(a1);
    v67 = 0;
    v17 = 0;
    if ((mlir::function_interface_impl::parseFunctionSignature(a1, a3, &v99, &v67, &v93, &v96) & 1) == 0)
    {
      goto LABEL_60;
    }

    v64 = 0;
    v65 = 0;
    v66 = 0;
    v90 = v92;
    v91 = 0x600000000;
    if (v100 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v19 = 0;
    if (v100)
    {
      v20 = v99 + 32;
      v21 = v100 << 6;
      do
      {
        if (v19 >= HIDWORD(v91))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v90 + v19) = *v20;
        v19 = v91 + 1;
        LODWORD(v91) = v91 + 1;
        v20 += 8;
        v21 -= 64;
      }

      while (v21);
    }

    v22 = a5(a6, v14, v90, v19, v93, v94, v67, &v64);
    if (v22)
    {
      v23 = v69;
      v24 = mlir::TypeAttr::get(v22);
      mlir::NamedAttribute::NamedAttribute(&v77, v23, v24);
      mlir::NamedAttrList::push_back(a2 + 112, v77, v78);
      *&__src = v74;
      *(&__src + 1) = 0x400000000;
      v76 = 4;
      v25 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 496))(a1, &__src))
      {
        Value = mlir::StringAttr::getValue(&v69);
        v28 = v27;
        v29 = "sym_visibility";
        v30 = 14;
        if (!mlir::NamedAttrList::get(&__src, "sym_visibility", 0xEuLL))
        {
          v29 = "sym_name";
          v30 = 8;
          if (!mlir::NamedAttrList::get(&__src, "sym_name", 8uLL))
          {
            if (!mlir::NamedAttrList::get(&__src, Value, v28))
            {
              v51 = __src;
              v52 = DWORD2(__src);
              *(a2 + 192) = 0;
              v53 = *(a2 + 120);
              if (v53 + v52 > *(a2 + 124))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              if (v52)
              {
                memcpy((*(a2 + 112) + 16 * v53), v51, 16 * v52);
                LODWORD(v53) = *(a2 + 120);
              }

              *(a2 + 120) = v53 + v52;
              v54 = v96;
              v55 = v97;
              v77 = &v79;
              v78 = 0x600000000;
              if (v100)
              {
                LODWORD(v56) = 0;
                v57 = v100 << 6;
                v58 = v99 + 40;
                do
                {
                  if (v56 >= HIDWORD(v78))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  *(v77 + v56) = *v58;
                  v56 = (v78 + 1);
                  LODWORD(v78) = v78 + 1;
                  v58 += 8;
                  v57 -= 64;
                }

                while (v57);
                v59 = v77;
              }

              else
              {
                v56 = 0;
                v59 = &v79;
              }

              mlir::function_interface_impl::addArgAndResultAttrs(v14, a2, v59, v56, v54, v55, a7, v60);
              if (v77 != &v79)
              {
                free(v77);
              }

              mlir::OperationState::addRegion(a2);
            }

            v29 = Value;
            v30 = v28;
          }
        }

        v62 = "'";
        v63 = 259;
        (*(*a1 + 24))(&v77, a1, v25, &v62);
        if (v77)
        {
          v72 = 261;
          *&v70 = v29;
          *(&v70 + 1) = v30;
          mlir::Diagnostic::operator<<(&v78, &v70);
          if (v77)
          {
            LODWORD(v70) = 3;
            *(&v70 + 1) = "' is an inferred attribute and should not be specified in the explicit attribute dictionary";
            v71 = 91;
            if (v81 >= v82)
            {
              if (v80 > &v70 || v80 + 24 * v81 <= &v70)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v31 = v80 + 24 * v81;
            v32 = v70;
            *(v31 + 2) = v71;
            *v31 = v32;
            ++v81;
          }
        }

        v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
        if (v77)
        {
          mlir::InFlightDiagnostic::report(&v77);
        }

        if (v89 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v78);
        }
      }

      else
      {
        v17 = 0;
      }

      if (__src != v74)
      {
        free(__src);
      }

      v49 = v90;
      if (v90 == v92)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v72 = 257;
      (*(*a1 + 24))(&v77, a1, v16, &v70);
      if (v77)
      {
        LODWORD(__src) = 3;
        *(&__src + 1) = "failed to construct function type";
        v74[0] = 33;
        if (v81 >= v82)
        {
          if (v80 > &__src || v80 + 24 * v81 <= &__src)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v33 = v80 + 24 * v81;
        v34 = __src;
        *(v33 + 2) = v74[0];
        *v33 = v34;
        ++v81;
        if (v77)
        {
          v35 = HIBYTE(v66);
          if (v66 < 0)
          {
            v35 = v65;
          }

          v36 = v35 == 0;
          v37 = 2 * (v35 != 0);
          v38 = ": ";
          if (v36)
          {
            v38 = "";
          }

          LODWORD(__src) = 3;
          *(&__src + 1) = v38;
          v74[0] = v37;
          if (v81 >= v82)
          {
            if (v80 > &__src || v80 + 24 * v81 <= &__src)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v39 = v80 + 24 * v81;
          v40 = __src;
          *(v39 + 2) = v74[0];
          *v39 = v40;
          ++v81;
          if (v77)
          {
            v75 = 260;
            *&__src = &v64;
            mlir::Diagnostic::operator<<(&v78, &__src);
          }
        }
      }

      v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v77);
      if (v77)
      {
        mlir::InFlightDiagnostic::report(&v77);
      }

      if (v89 == 1)
      {
        if (v88 != &v89)
        {
          free(v88);
        }

        v41 = __p;
        if (__p)
        {
          v42 = v87;
          v43 = __p;
          if (v87 != __p)
          {
            do
            {
              v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
            }

            while (v42 != v41);
            v43 = __p;
          }

          v87 = v41;
          operator delete(v43);
        }

        v44 = v84;
        if (v84)
        {
          v45 = v85;
          v46 = v84;
          if (v85 != v84)
          {
            do
            {
              v48 = *--v45;
              v47 = v48;
              *v45 = 0;
              if (v48)
              {
                MEMORY[0x259C63150](v47, 0x1000C8077774924);
              }
            }

            while (v45 != v44);
            v46 = v84;
          }

          v85 = v44;
          operator delete(v46);
        }

        if (v80 != &v83)
        {
          free(v80);
        }
      }

      v49 = v90;
      if (v90 == v92)
      {
        goto LABEL_58;
      }
    }

    free(v49);
LABEL_58:
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v64);
    }

LABEL_60:
    v18 = v93;
    if (v93 == v95)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v17 = 0;
  v18 = v93;
  if (v93 != v95)
  {
LABEL_61:
    free(v18);
  }

LABEL_62:
  if (v96 != v98)
  {
    free(v96);
  }

  if (v99 != v101)
  {
    free(v99);
  }

  return v17;
}

llvm::raw_ostream *mlir::function_interface_impl::printFunctionSignature(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, void *a7, uint64_t a8)
{
  v60[0] = a2;
  v60[1] = a3;
  v14 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  v15 = *v14;
  v16 = (*(*a1 + 16))(a1);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 40);
    ArgAttrsAttr = mlir::FunctionOpInterface::getArgAttrsAttr(v60);
    v59 = ArgAttrsAttr;
    v19 = a5;
    if (!a5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 40;
    ArgAttrsAttr = mlir::FunctionOpInterface::getArgAttrsAttr(v60);
    v59 = ArgAttrsAttr;
    v19 = a5;
    if (!a5)
    {
      goto LABEL_23;
    }
  }

  if (v15 != v14)
  {
    if (ArgAttrsAttr)
    {
      v62 = *mlir::ArrayAttr::getValue(&v59);
      Value = mlir::DictionaryAttr::getValue(&v62);
      v22 = v21;
    }

    else
    {
      v22 = 0;
      Value = 0;
    }

    v30 = v14[1];
    if (v30)
    {
      v31 = v30 - 8;
    }

    else
    {
      v31 = 0;
    }

    (*(*a1 + 152))(a1, **(v31 + 48), Value, v22, 0);
    if (v19 == 1)
    {
      goto LABEL_23;
    }

    v34 = 1;
    while (1)
    {
      v40 = (*(*a1 + 16))(a1);
      v41 = v40[4];
      if (v40[3] - v41 > 1uLL)
      {
        *v41 = 8236;
        v40[4] += 2;
        if (!v59)
        {
          goto LABEL_36;
        }
      }

      else
      {
        llvm::raw_ostream::write(v40, ", ", 2uLL);
        if (!v59)
        {
LABEL_36:
          v37 = 0;
          v35 = 0;
          goto LABEL_30;
        }
      }

      v62 = *(mlir::ArrayAttr::getValue(&v59) + 8 * v34);
      v35 = mlir::DictionaryAttr::getValue(&v62);
      v37 = v36;
LABEL_30:
      v38 = v14[1];
      if (v38)
      {
        v39 = v38 - 8;
      }

      else
      {
        v39 = 0;
      }

      (*(*a1 + 152))(a1, *(*(v39 + 48) + 8 * v34++), v35, v37, 0);
      if (v19 == v34)
      {
        goto LABEL_23;
      }
    }
  }

  (*(*a1 + 32))(a1, *a4);
  if (v59)
  {
    v62 = *mlir::ArrayAttr::getValue(&v59);
    v23 = mlir::DictionaryAttr::getValue(&v62);
    (*(*a1 + 192))(a1, v23, v24, 0, 0);
  }

  if (v19 != 1)
  {
    for (i = 1; i != v19; ++i)
    {
      v26 = (*(*a1 + 16))(a1);
      v27 = v26[4];
      if (v26[3] - v27 >= 2uLL)
      {
        *v27 = 8236;
        v26[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v26, ", ", 2uLL);
      }

      (*(*a1 + 32))(a1, a4[i]);
      if (v59)
      {
        v62 = *(mlir::ArrayAttr::getValue(&v59) + 8 * i);
        v28 = mlir::DictionaryAttr::getValue(&v62);
        (*(*a1 + 192))(a1, v28, v29, 0, 0);
      }
    }
  }

LABEL_23:
  if (a6)
  {
    if (a5)
    {
      v32 = (*(*a1 + 16))(a1);
      v33 = v32[4];
      if (v32[3] - v33 > 1uLL)
      {
        *v33 = 8236;
        v32[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v32, ", ", 2uLL);
      }
    }

    v42 = (*(*a1 + 16))(a1);
    v43 = v42[4];
    if ((v42[3] - v43) > 2)
    {
      *(v43 + 2) = 46;
      *v43 = 11822;
      v42[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v42, "...", 3uLL);
    }
  }

  result = (*(*a1 + 16))(a1);
  v45 = *(result + 4);
  if (v45 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
    if (!a8)
    {
      return result;
    }
  }

  else
  {
    *(result + 4) = v45 + 1;
    *v45 = 41;
    if (!a8)
    {
      return result;
    }
  }

  v46 = (*(*a1 + 16))(a1);
  v47 = v46[4];
  if (v46[3] - v47 > 3uLL)
  {
    *v47 = 540945696;
    v46[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v46, " -> ", 4uLL);
  }

  ResAttrsAttr = mlir::FunctionOpInterface::getResAttrsAttr(v60);
  v61 = ResAttrsAttr;
  v49 = (*(*a1 + 16))(a1);
  if (a8 != 1 || *(**a7 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id || ResAttrsAttr && (v62 = *mlir::ArrayAttr::getValue(&v61), mlir::DictionaryAttr::size(&v62)))
  {
    v50 = *(v49 + 4);
    if (v50 >= *(v49 + 3))
    {
      llvm::raw_ostream::write(v49, 40);
    }

    else
    {
      *(v49 + 4) = v50 + 1;
      *v50 = 40;
    }

    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  result = (*(*a1 + 32))(a1, *a7);
  if (v61)
  {
    v62 = *mlir::ArrayAttr::getValue(&v61);
    v52 = mlir::DictionaryAttr::getValue(&v62);
    result = (*(*a1 + 192))(a1, v52, v53, 0, 0);
  }

  if (a8 != 1)
  {
    v55 = 1;
    do
    {
      v56 = *(v49 + 4);
      if (*(v49 + 3) - v56 > 1uLL)
      {
        *v56 = 8236;
        *(v49 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v49, ", ", 2uLL);
      }

      result = (*(*a1 + 32))(a1, a7[v55]);
      if (v61)
      {
        v62 = *(mlir::ArrayAttr::getValue(&v61) + 8 * v55);
        v57 = mlir::DictionaryAttr::getValue(&v62);
        result = (*(*a1 + 192))(a1, v57, v58, 0, 0);
      }

      ++v55;
    }

    while (a8 != v55);
  }

  if (v51)
  {
    v54 = *(v49 + 4);
    if (v54 >= *(v49 + 3))
    {
      return llvm::raw_ostream::write(v49, 41);
    }

    else
    {
      *(v49 + 4) = v54 + 1;
      *v54 = 41;
    }
  }

  return result;
}

void mlir::function_interface_impl::printFunctionAttributes(uint64_t a1, mlir::Operation *a2, const void *a3, uint64_t a4)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v13[0] = "sym_name";
  v13[1] = 8;
  v12 = 0x800000001;
  if ((((16 * a4) >> 4) + 1) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = 1;
  v7 = 16 * a4;
  if (a4)
  {
    memcpy(v11 + 16, a3, v7);
    v6 = v12;
  }

  LODWORD(v12) = v6 + (v7 >> 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a1 + 200))(a1, Value, v9, v11, v12);
  if (v11 != v13)
  {
    free(v11);
  }
}

void mlir::function_interface_impl::printFunctionOp(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48[8] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v47 = a3;
  v44 = a8;
  v45 = a7;
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v14 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "sym_name", 8uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v15 = InherentAttr;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v48[0] = v15;
  Value = mlir::StringAttr::getValue(v48);
  v18 = v17;
  v19 = (*(*a1 + 16))(a1);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
    if (!*(a2 + 47))
    {
LABEL_14:
      v21 = mlir::DictionaryAttr::get(a2 + 56, "sym_visibility", 0xEuLL);
      goto LABEL_15;
    }
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
    if (!*(a2 + 47))
    {
      goto LABEL_14;
    }
  }

  v21 = mlir::Operation::getInherentAttr(a2, "sym_visibility", 14);
  if ((v22 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v21)
  {
    v23 = *(*v21 + 136);
    v24 = v23 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
    v25 = v23 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? v21 : 0;
    v48[0] = v25;
    if (v24)
    {
      v26 = mlir::StringAttr::getValue(v48);
      v28 = v27;
      v29 = (*(*a1 + 16))(a1);
      if (v28 <= *(v29 + 24) - *(v29 + 32))
      {
        if (v28)
        {
          v30 = v29;
          memcpy(*(v29 + 32), v26, v28);
          *(v30 + 32) += v28;
        }
      }

      else
      {
        llvm::raw_ostream::write(v29, v26, v28);
      }

      v31 = (*(*a1 + 16))(a1);
      v32 = *(v31 + 4);
      if (v32 >= *(v31 + 3))
      {
        llvm::raw_ostream::write(v31, 32);
      }

      else
      {
        *(v31 + 4) = v32 + 1;
        *v32 = 32;
      }
    }
  }

  (*(*a1 + 88))(a1, Value, v18);
  ArgumentTypes = mlir::FunctionOpInterface::getArgumentTypes(&v46);
  v35 = v34;
  ResultTypes = mlir::FunctionOpInterface::getResultTypes(&v46);
  mlir::function_interface_impl::printFunctionSignature(a1, v46, v47, ArgumentTypes, v35, a4, ResultTypes, v37);
  v38 = v46;
  v48[0] = "sym_visibility";
  v48[1] = 14;
  v48[2] = a5;
  v48[3] = a6;
  v48[4] = mlir::StringAttr::getValue(&v45);
  v48[5] = v39;
  v48[6] = mlir::StringAttr::getValue(&v44);
  v48[7] = v40;
  mlir::function_interface_impl::printFunctionAttributes(a1, v38, v48, 4);
  v41 = (((&v46[4 * ((v46[11] >> 23) & 1) + 17] + ((v46[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v46[10]);
  if (*v41 != v41)
  {
    v42 = (*(*a1 + 16))(a1);
    v43 = *(v42 + 4);
    if (v43 >= *(v42 + 3))
    {
      llvm::raw_ostream::write(v42, 32);
    }

    else
    {
      *(v42 + 4) = v43 + 1;
      *v43 = 32;
    }

    (*(*a1 + 224))(a1, v41, 0, 1, 0);
  }
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionArgumentList(mlir::OpAsmParser &,BOOL,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,BOOL &)::$_0>(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (**a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = (*(*v2 + 40))(v2);
    *&v33 = "variadic arguments must be in the end of the argument list";
    LOWORD(v35) = 259;
    (*(*v2 + 24))(&v37, v2, v3, &v33);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
    if (v37)
    {
      mlir::InFlightDiagnostic::report(&v37);
    }

    if (v47 == 1)
    {
      if (v46 != &v47)
      {
        free(v46);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v45;
        v7 = __p;
        if (v45 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v45 = v5;
        operator delete(v7);
      }

      v8 = v42;
      if (!v42)
      {
        goto LABEL_57;
      }

      v9 = v43;
      v10 = v42;
      if (v43 == v42)
      {
LABEL_56:
        v43 = v8;
        operator delete(v10);
LABEL_57:
        if (v40 != v41)
        {
          free(v40);
        }

        return v4;
      }

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
LABEL_55:
      v10 = v42;
      goto LABEL_56;
    }

    return v4;
  }

  if (**(a1 + 16) == 1 && ((*(**(a1 + 8) + 352))(*(a1 + 8)) & 1) != 0)
  {
    v13 = *a1;
    v4 = 1;
    *v13 = 1;
    return v4;
  }

  v33 = 0uLL;
  BYTE8(v36) = 0;
  v35 = 0uLL;
  *&v34 = 0;
  LOBYTE(v36) = 0;
  v14 = (*(**(a1 + 8) + 760))();
  if ((v14 & 0x100) != 0)
  {
    if (v14)
    {
      v23 = *(a1 + 24);
      v24 = *(v23 + 8);
      if (v24 && !*(*v23 + (v24 << 6) - 48))
      {
        (*(**(a1 + 8) + 24))(&v37);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
        if (v37)
        {
          mlir::InFlightDiagnostic::report(&v37);
        }

        if (v47 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v38);
        }

        return v4;
      }

LABEL_53:
      v26 = *v23;
      if (v24 >= *(v23 + 12))
      {
        v32 = v26 + (v24 << 6) > &v33;
        if (v26 > &v33 || !v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = (v26 + (*(v23 + 8) << 6));
      v28 = v33;
      v29 = v34;
      v30 = v36;
      v27[2] = v35;
      v27[3] = v30;
      *v27 = v28;
      v27[1] = v29;
      ++*(v23 + 8);
      return 1;
    }

    return 0;
  }

  *&v33 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v15 = *(a1 + 24);
  v16 = *(v15 + 8);
  if (!v16 || !*(*v15 + (v16 << 6) - 48))
  {
    v37 = &v39;
    v38 = 0x400000000;
    v41[5] = 4;
    if ((*(**(a1 + 8) + 536))(*(a1 + 8), &v35) & 1) != 0 && ((*(**(a1 + 8) + 488))(*(a1 + 8), &v37) & 1) != 0 && ((*(**(a1 + 8) + 656))(*(a1 + 8), &v36))
    {
      Context = mlir::AsmParser::getContext(*(a1 + 8));
      *(&v35 + 1) = mlir::NamedAttrList::getDictionary(&v37, Context);
      if (v37 != &v39)
      {
        free(v37);
      }

      v23 = *(a1 + 24);
      LODWORD(v24) = *(v23 + 8);
      goto LABEL_53;
    }

    if (v37 != &v39)
    {
      free(v37);
    }

    return 0;
  }

  (*(**(a1 + 8) + 24))(&v37);
  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
  if (v37)
  {
    mlir::InFlightDiagnostic::report(&v37);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v45;
      v19 = __p;
      if (v45 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v45 = v17;
      operator delete(v19);
    }

    v8 = v42;
    if (!v42)
    {
      goto LABEL_57;
    }

    v20 = v43;
    v10 = v42;
    if (v43 == v42)
    {
      goto LABEL_56;
    }

    do
    {
      v22 = *--v20;
      v21 = v22;
      *v20 = 0;
      if (v22)
      {
        MEMORY[0x259C63150](v21, 0x1000C8077774924);
      }
    }

    while (v20 != v8);
    goto LABEL_55;
  }

  return v4;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionResultList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::DictionaryAttr> &)::$_0>(uint64_t a1)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(v2 + 2);
  if (v3 >= *(v2 + 3))
  {
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(v2);
    v4 = *(a1 + 8);
    v5 = *(v4 + 8);
    if (v5 < *(v4 + 12))
    {
      goto LABEL_3;
    }

LABEL_12:
    llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::growAndEmplaceBack<>(v4);
    goto LABEL_4;
  }

  *(*v2 + 8 * v3) = 0;
  *(v2 + 2) = v3 + 1;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    goto LABEL_12;
  }

LABEL_3:
  *(*v4 + 8 * v5) = 0;
  *(v4 + 8) = v5 + 1;
LABEL_4:
  v10[0] = v11;
  v10[1] = 0x400000000;
  v11[8] = 4;
  if ((*(**(a1 + 16) + 536))(*(a1 + 16), **a1 + 8 * *(*a1 + 8) - 8) & 1) != 0 && ((*(**(a1 + 16) + 488))(*(a1 + 16), v10))
  {
    Context = mlir::AsmParser::getContext(*(a1 + 16));
    *(**(a1 + 8) + 8 * *(*(a1 + 8) + 8) - 8) = mlir::NamedAttrList::getDictionary(v10, Context);
    v7 = 1;
    v8 = v10[0];
    if (v10[0] == v11)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = v10[0];
  if (v10[0] != v11)
  {
LABEL_9:
    free(v8);
  }

  return v7;
}

BOOL llvm::isa<mlir::MemoryEffects::Allocate,mlir::MemoryEffects::Free,mlir::MemoryEffects::Read,mlir::MemoryEffects::Write,mlir::SideEffects::Effect const*>(uint64_t **a1)
{
  v1 = **a1;
  {
    if (v1 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
    {
      return 1;
    }
  }

  else
  {
    v4 = v1;
    v6 = a1;
    llvm::isa<mlir::MemoryEffects::Allocate,mlir::MemoryEffects::Free,mlir::MemoryEffects::Read,mlir::MemoryEffects::Write,mlir::SideEffects::Effect const*>();
    a1 = v6;
    if (v4 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
    {
      return 1;
    }
  }

  v2 = **a1;
  {
    v5 = v2;
    v7 = a1;
    llvm::isa<mlir::MemoryEffects::Allocate,mlir::MemoryEffects::Free,mlir::MemoryEffects::Read,mlir::MemoryEffects::Write,mlir::SideEffects::Effect const*>();
    a1 = v7;
    if (v5 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
    {
      goto LABEL_5;
    }

    return 1;
  }

  if (v2 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
  {
    return 1;
  }

LABEL_5:

  return _ZN4llvm3isaIN4mlir13MemoryEffects4ReadENS2_5WriteEJEPKNS1_11SideEffects6EffectEEEbRKT2_(a1);
}

uint64_t mlir::isOpTriviallyDead(mlir *this, mlir::Operation *a2)
{
  v3 = *(this + 9);
  if (v3)
  {
    v4 = this - 16;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 0;
    while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v5))
    {
      if (v3 == ++v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:

    return mlir::wouldOpBeTriviallyDead(this, a2);
  }
}

uint64_t mlir::wouldOpBeTriviallyDead(mlir *this, mlir::Operation *a2)
{
  v70[1] = *MEMORY[0x277D85DE8];
  {
    v3 = *(this + 6);
    if (v3[2] == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(this + 6);
    if (v3[2] == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      return 0;
    }
  }

  if ((*(*v3 + 4))(v3, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  if (mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(this))
  {
    if (*(this + 47) && (InherentAttr = mlir::Operation::getInherentAttr(this, "sym_name", 8), (v6 & 1) != 0))
    {
      if (InherentAttr)
      {
        return 0;
      }
    }

    else if (mlir::DictionaryAttr::contains(this + 56, "sym_name", 8uLL))
    {
      return 0;
    }
  }

  v67 = v70;
  v7 = 1;
  v69 = 1;
  v70[0] = this;
  while (1)
  {
    v8 = v67[v7 - 1];
    v68 = v7 - 1;
    {
      mlir::wouldOpBeTriviallyDead();
    }

    v9 = (*(**(v8 + 48) + 32))(*(v8 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id);
    v10 = v9;
    if (v9)
    {
      v11 = *(v8 + 44);
      if ((v11 & 0x7FFFFF) != 0)
      {
        v12 = ((v8 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40);
        v13 = v12 + 24 * (v11 & 0x7FFFFF);
        for (i = *(v12 + 8); i != v12; i = *(i + 8))
        {
LABEL_22:
          v15 = i - 8;
          if (!i)
          {
            v15 = 0;
          }

          v16 = v15 + 32;
          v17 = *(v15 + 40);
          if (v17 != v15 + 32)
          {
            do
            {
              ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v17);
              if (v68 >= v69)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v67[v68++] = ValuePtr;
              v17 = *(v17 + 8);
            }

            while (v17 != v16);
          }
        }

        while (1)
        {
          v12 += 24;
          if (v12 == v13)
          {
            break;
          }

          i = *(v12 + 8);
          if (i != v12)
          {
            goto LABEL_22;
          }
        }
      }
    }

    if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v8) && v8)
    {
      break;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_128;
    }

LABEL_14:
    v7 = v68;
    if (!v68)
    {
      result = 1;
      v56 = v67;
      if (v67 == v70)
      {
        return result;
      }

LABEL_131:
      v57 = result;
      free(v56);
      return v57;
    }
  }

  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v8);
  v64 = v66;
  v65 = 0x100000000;
  (*InterfaceFor)(InterfaceFor, v8, &v64);
  v59 = v63;
  v60 = v63;
  v61 = 4;
  v62 = 0;
  if (!v65)
  {
LABEL_123:
    v54 = 1;
    v55 = v60;
    if (v60 == v59)
    {
      goto LABEL_125;
    }

LABEL_124:
    free(v55);
    goto LABEL_125;
  }

  v20 = v64;
  v21 = v64 + 40 * v65;
  do
  {
    v24 = **v20;
    {
      if (v24 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
      {
        goto LABEL_40;
      }
    }

    else
    {
      mlir::wouldOpBeTriviallyDead();
      if (v24 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
      {
        goto LABEL_40;
      }
    }

    v25 = *(v20 + 2);
    v26 = v25 & 6;
    if (v25 >= 8 && v26 != 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFFFF8;
      if (v26 != 2 || v28 == 0)
      {
        if (v26 == 4)
        {
          v30 = v28;
        }

        else
        {
          v30 = 0;
        }

        if (v30)
        {
          v28 = v30;
        }

        if (!v28)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v28 = *(v28 + 24);
        if (!v28)
        {
          goto LABEL_40;
        }
      }

      v58 = v28;
      if (mlir::Value::getDefiningOp(&v58) == v8)
      {
        v31 = *(v20 + 2);
        if (v31 >= 8 && (v32 = *(v20 + 2) & 6, (v31 & 6) != 0))
        {
          v33 = v31 & 0xFFFFFFFFFFFFFFF8;
          if (v32 == 2 && v33)
          {
            v22 = *(v33 + 24);
            v23 = v59;
            if (v60 != v59)
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v32 == 4)
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            if (v34)
            {
              v22 = v34;
            }

            else
            {
              v22 = v33;
            }

            v23 = v59;
            if (v60 != v59)
            {
LABEL_39:
              llvm::SmallPtrSetImplBase::insert_imp_big(&v59, v22);
              goto LABEL_40;
            }
          }
        }

        else
        {
          v22 = 0;
          v23 = v59;
          if (v60 != v59)
          {
            goto LABEL_39;
          }
        }

        v35 = HIDWORD(v61);
        if (HIDWORD(v61))
        {
          v36 = 8 * HIDWORD(v61);
          v37 = v23;
          while (*v37 != v22)
          {
            ++v37;
            v36 -= 8;
            if (!v36)
            {
              goto LABEL_78;
            }
          }
        }

        else
        {
LABEL_78:
          if (HIDWORD(v61) >= v61)
          {
            goto LABEL_39;
          }

          ++HIDWORD(v61);
          v23[v35] = v22;
        }
      }
    }

LABEL_40:
    v20 += 40;
  }

  while (v20 != v21);
  if (!v65)
  {
    goto LABEL_123;
  }

  v38 = v64;
  v39 = v64 + 40 * v65;
  while (2)
  {
    v43 = *(v38 + 2);
    if (v43 < 8 || (v44 = *(v38 + 2) & 6, (v43 & 6) == 0))
    {
      v48 = 0;
      v40 = v59;
      v49 = v60;
      if (v60 == v59)
      {
        goto LABEL_115;
      }

      goto LABEL_107;
    }

    v45 = v43 & 0xFFFFFFFFFFFFFFF8;
    if (v44 != 2 || v45 == 0)
    {
      if (v44 == 4)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0;
      }

      if (v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = v45;
      }

      v40 = v59;
      v49 = v60;
      if (v60 != v59)
      {
        goto LABEL_107;
      }

LABEL_115:
      v50 = HIDWORD(v61);
      if (HIDWORD(v61))
      {
        v53 = 8 * HIDWORD(v61);
        while (*v40 != v48)
        {
          ++v40;
          v53 -= 8;
          if (!v53)
          {
            goto LABEL_84;
          }
        }
      }

      else
      {
LABEL_84:
        v40 = &v49[HIDWORD(v61)];
      }

      v41 = v49;
    }

    else
    {
      v48 = *(v45 + 24);
      v40 = v59;
      v49 = v60;
      if (v60 == v59)
      {
        goto LABEL_115;
      }

LABEL_107:
      v40 = llvm::SmallPtrSetImplBase::doFind(&v59, v48);
      v49 = v59;
      v41 = v60;
      v50 = HIDWORD(v61);
      if (!v40)
      {
        v51 = v61;
        if (v60 == v59)
        {
          v51 = HIDWORD(v61);
        }

        v40 = &v60[v51];
      }
    }

    if (v41 == v49)
    {
      v42 = v50;
    }

    else
    {
      v42 = v61;
    }

    if (v40 != &v41[v42])
    {
      goto LABEL_90;
    }

    v52 = **v38;
    {
      if (v52 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_90;
    }

    mlir::wouldOpBeTriviallyDead();
    if (v52 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
    {
LABEL_90:
      v38 += 40;
      if (v38 == v39)
      {
        goto LABEL_123;
      }

      continue;
    }

    break;
  }

  v54 = 0;
  v55 = v60;
  if (v60 != v59)
  {
    goto LABEL_124;
  }

LABEL_125:
  if (v64 != v66)
  {
    free(v64);
  }

  if (v54)
  {
    goto LABEL_14;
  }

LABEL_128:
  result = 0;
  v56 = v67;
  if (v67 != v70)
  {
    goto LABEL_131;
  }

  return result;
}

uint64_t mlir::hasSingleEffect<mlir::MemoryEffects::Allocate>(uint64_t a1)
{
  v1 = a1;
  v13[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (!v1)
  {
    return v1;
  }

  v11 = v13;
  v12 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  (*InterfaceFor)(InterfaceFor, v1, &v11);
  v3 = v11;
  if (!v12)
  {
    v1 = 0;
    if (v11 == v13)
    {
      return v1;
    }

    goto LABEL_16;
  }

  v4 = 40 * v12 - 40;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  do
  {
    v6 = **v3;
    {
      v9 = v4;
      v10 = v3;
      mlir::wouldOpBeTriviallyDead();
      p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
      v4 = v9;
      v3 = v10;
    }

    v7 = v6 == p_opt_class_meths[22];
    v1 = v7;
    v7 = !v7 || v4 == 0;
    v4 -= 40;
    v3 += 5;
  }

  while (!v7);
  v3 = v11;
  if (v11 != v13)
  {
LABEL_16:
    free(v3);
  }

  return v1;
}

uint64_t mlir::hasSingleEffect<mlir::MemoryEffects::Free>(uint64_t a1)
{
  v1 = a1;
  v13[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (!v1)
  {
    return v1;
  }

  v11 = v13;
  v12 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  (*InterfaceFor)(InterfaceFor, v1, &v11);
  v3 = v11;
  if (!v12)
  {
    v1 = 0;
    if (v11 == v13)
    {
      return v1;
    }

    goto LABEL_16;
  }

  v4 = 40 * v12 - 40;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  do
  {
    v6 = **v3;
    {
      v9 = v4;
      v10 = v3;
      mlir::hasSingleEffect<mlir::MemoryEffects::Free>();
      p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
      v4 = v9;
      v3 = v10;
    }

    v7 = v6 == p_opt_class_meths[24];
    v1 = v7;
    v7 = !v7 || v4 == 0;
    v4 -= 40;
    v3 += 5;
  }

  while (!v7);
  v3 = v11;
  if (v11 != v13)
  {
LABEL_16:
    free(v3);
  }

  return v1;
}

uint64_t mlir::hasSingleEffect<mlir::MemoryEffects::Read>(uint64_t a1)
{
  v1 = a1;
  v13[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (!v1)
  {
    return v1;
  }

  v11 = v13;
  v12 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  (*InterfaceFor)(InterfaceFor, v1, &v11);
  v3 = v11;
  if (!v12)
  {
    v1 = 0;
    if (v11 == v13)
    {
      return v1;
    }

    goto LABEL_16;
  }

  v4 = 40 * v12 - 40;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  do
  {
    v6 = **v3;
    {
      v9 = v4;
      v10 = v3;
      mlir::wouldOpBeTriviallyDead();
      p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
      v4 = v9;
      v3 = v10;
    }

    v7 = v6 == p_opt_class_meths[36];
    v1 = v7;
    v7 = !v7 || v4 == 0;
    v4 -= 40;
    v3 += 5;
  }

  while (!v7);
  v3 = v11;
  if (v11 != v13)
  {
LABEL_16:
    free(v3);
  }

  return v1;
}

uint64_t mlir::hasSingleEffect<mlir::MemoryEffects::Write>(uint64_t a1)
{
  v1 = a1;
  v13[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (!v1)
  {
    return v1;
  }

  v11 = v13;
  v12 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  (*InterfaceFor)(InterfaceFor, v1, &v11);
  v3 = v11;
  if (!v12)
  {
    v1 = 0;
    if (v11 == v13)
    {
      return v1;
    }

    goto LABEL_16;
  }

  v4 = 40 * v12 - 40;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  do
  {
    v6 = **v3;
    {
      v9 = v4;
      v10 = v3;
      mlir::hasSingleEffect<mlir::MemoryEffects::Write>();
      p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
      v4 = v9;
      v3 = v10;
    }

    v7 = v6 == p_opt_class_meths[40];
    v1 = v7;
    v7 = !v7 || v4 == 0;
    v4 -= 40;
    v3 += 5;
  }

  while (!v7);
  v3 = v11;
  if (v11 != v13)
  {
LABEL_16:
    free(v3);
  }

  return v1;
}

uint64_t mlir::hasSingleEffect<mlir::MemoryEffects::Allocate>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v21[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v19 = v21;
  v20 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v19);
  v5 = v19;
  if (!v20)
  {
    LOBYTE(v3) = 0;
    if (v19 != v21)
    {
      goto LABEL_32;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v20;
  v7 = (v19 + 16);
  v8 = (v19 + 16);
  while (1)
  {
    while (1)
    {
      v10 = *v8;
      v8 += 5;
      v9 = v10;
      if (v10 < 8 || (v11 = v9 & 6, (v9 & 6) == 0))
      {
        if (!a2)
        {
          goto LABEL_25;
        }

        goto LABEL_9;
      }

      v12 = v9 & 0xFFFFFFFFFFFFFFF8;
      if (v11 != 2 || v12 == 0)
      {
        break;
      }

      if (*(v12 + 24) == a2)
      {
        goto LABEL_25;
      }

LABEL_9:
      v7 = v8;
      v6 -= 40;
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    if (v11 == 4)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v12 = v14;
    }

    if (v12 != a2)
    {
      goto LABEL_9;
    }

LABEL_25:
    v15 = **(v7 - 2);
    {
      break;
    }

    if (v15 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
    {
      goto LABEL_30;
    }

LABEL_27:
    LOBYTE(v3) = 1;
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_31;
    }
  }

  v17 = v8;
  v18 = v6;
  mlir::wouldOpBeTriviallyDead();
  v8 = v17;
  v6 = v18;
  if (v15 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
  {
    goto LABEL_27;
  }

LABEL_30:
  LOBYTE(v3) = 0;
LABEL_31:
  v5 = v19;
  if (v19 != v21)
  {
LABEL_32:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v21[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v19 = v21;
  v20 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v19);
  v5 = v19;
  if (!v20)
  {
    LOBYTE(v3) = 0;
    if (v19 != v21)
    {
      goto LABEL_32;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v20;
  v7 = (v19 + 16);
  v8 = (v19 + 16);
  while (1)
  {
    while (1)
    {
      v10 = *v8;
      v8 += 5;
      v9 = v10;
      if (v10 < 8 || (v11 = v9 & 6, (v9 & 6) == 0))
      {
        if (!a2)
        {
          goto LABEL_25;
        }

        goto LABEL_9;
      }

      v12 = v9 & 0xFFFFFFFFFFFFFFF8;
      if (v11 != 2 || v12 == 0)
      {
        break;
      }

      if (*(v12 + 24) == a2)
      {
        goto LABEL_25;
      }

LABEL_9:
      v7 = v8;
      v6 -= 40;
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    if (v11 == 4)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v12 = v14;
    }

    if (v12 != a2)
    {
      goto LABEL_9;
    }

LABEL_25:
    v15 = **(v7 - 2);
    {
      break;
    }

    if (v15 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
    {
      goto LABEL_30;
    }

LABEL_27:
    LOBYTE(v3) = 1;
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_31;
    }
  }

  v17 = v8;
  v18 = v6;
  mlir::hasSingleEffect<mlir::MemoryEffects::Free>();
  v8 = v17;
  v6 = v18;
  if (v15 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
  {
    goto LABEL_27;
  }

LABEL_30:
  LOBYTE(v3) = 0;
LABEL_31:
  v5 = v19;
  if (v19 != v21)
  {
LABEL_32:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::MemoryEffects::Read>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v21[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v19 = v21;
  v20 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v19);
  v5 = v19;
  if (!v20)
  {
    LOBYTE(v3) = 0;
    if (v19 != v21)
    {
      goto LABEL_32;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v20;
  v7 = (v19 + 16);
  v8 = (v19 + 16);
  while (1)
  {
    while (1)
    {
      v10 = *v8;
      v8 += 5;
      v9 = v10;
      if (v10 < 8 || (v11 = v9 & 6, (v9 & 6) == 0))
      {
        if (!a2)
        {
          goto LABEL_25;
        }

        goto LABEL_9;
      }

      v12 = v9 & 0xFFFFFFFFFFFFFFF8;
      if (v11 != 2 || v12 == 0)
      {
        break;
      }

      if (*(v12 + 24) == a2)
      {
        goto LABEL_25;
      }

LABEL_9:
      v7 = v8;
      v6 -= 40;
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    if (v11 == 4)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v12 = v14;
    }

    if (v12 != a2)
    {
      goto LABEL_9;
    }

LABEL_25:
    v15 = **(v7 - 2);
    {
      break;
    }

    if (v15 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
    {
      goto LABEL_30;
    }

LABEL_27:
    LOBYTE(v3) = 1;
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_31;
    }
  }

  v17 = v8;
  v18 = v6;
  mlir::wouldOpBeTriviallyDead();
  v8 = v17;
  v6 = v18;
  if (v15 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
  {
    goto LABEL_27;
  }

LABEL_30:
  LOBYTE(v3) = 0;
LABEL_31:
  v5 = v19;
  if (v19 != v21)
  {
LABEL_32:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::MemoryEffects::Write>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v21[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v19 = v21;
  v20 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v19);
  v5 = v19;
  if (!v20)
  {
    LOBYTE(v3) = 0;
    if (v19 != v21)
    {
      goto LABEL_32;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v20;
  v7 = (v19 + 16);
  v8 = (v19 + 16);
  while (1)
  {
    while (1)
    {
      v10 = *v8;
      v8 += 5;
      v9 = v10;
      if (v10 < 8 || (v11 = v9 & 6, (v9 & 6) == 0))
      {
        if (!a2)
        {
          goto LABEL_25;
        }

        goto LABEL_9;
      }

      v12 = v9 & 0xFFFFFFFFFFFFFFF8;
      if (v11 != 2 || v12 == 0)
      {
        break;
      }

      if (*(v12 + 24) == a2)
      {
        goto LABEL_25;
      }

LABEL_9:
      v7 = v8;
      v6 -= 40;
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    if (v11 == 4)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v12 = v14;
    }

    if (v12 != a2)
    {
      goto LABEL_9;
    }

LABEL_25:
    v15 = **(v7 - 2);
    {
      break;
    }

    if (v15 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
    {
      goto LABEL_30;
    }

LABEL_27:
    LOBYTE(v3) = 1;
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_31;
    }
  }

  v17 = v8;
  v18 = v6;
  mlir::hasSingleEffect<mlir::MemoryEffects::Write>();
  v8 = v17;
  v6 = v18;
  if (v15 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
  {
    goto LABEL_27;
  }

LABEL_30:
  LOBYTE(v3) = 0;
LABEL_31:
  v5 = v19;
  if (v19 != v21)
  {
LABEL_32:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::OpOperand *,mlir::MemoryEffects::Allocate>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (v10 & 6) == 2 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::wouldOpBeTriviallyDead();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::OpOperand *,mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (v10 & 6) == 2 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::hasSingleEffect<mlir::MemoryEffects::Free>();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::OpOperand *,mlir::MemoryEffects::Read>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (v10 & 6) == 2 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::wouldOpBeTriviallyDead();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::OpOperand *,mlir::MemoryEffects::Write>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (v10 & 6) == 2 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::hasSingleEffect<mlir::MemoryEffects::Write>();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::OpResult,mlir::MemoryEffects::Allocate>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (v10 & 6) == 4 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::wouldOpBeTriviallyDead();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::OpResult,mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (v10 & 6) == 4 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::hasSingleEffect<mlir::MemoryEffects::Free>();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::OpResult,mlir::MemoryEffects::Read>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (v10 & 6) == 4 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::wouldOpBeTriviallyDead();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::OpResult,mlir::MemoryEffects::Write>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (v10 & 6) == 4 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::hasSingleEffect<mlir::MemoryEffects::Write>();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::BlockArgument,mlir::MemoryEffects::Allocate>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (~v10 & 6) == 0 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::wouldOpBeTriviallyDead();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::BlockArgument,mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (~v10 & 6) == 0 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::hasSingleEffect<mlir::MemoryEffects::Free>();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::BlockArgument,mlir::MemoryEffects::Read>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (~v10 & 6) == 0 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::wouldOpBeTriviallyDead();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasSingleEffect<mlir::BlockArgument,mlir::MemoryEffects::Write>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v19[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!v3)
  {
    return v3 & 1;
  }

  v17 = v19;
  v18 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
  (*InterfaceFor)(InterfaceFor, v3, &v17);
  v5 = v17;
  if (!v18)
  {
    LOBYTE(v3) = 0;
    if (v17 != v19)
    {
      goto LABEL_21;
    }

    return v3 & 1;
  }

  LOBYTE(v3) = 0;
  v6 = 40 * v18;
  v7 = (v17 + 16);
  v8 = (v17 + 16);
  while (1)
  {
    v10 = *v8;
    v8 += 5;
    v9 = v10;
    v11 = (~v10 & 6) == 0 && v9 > 7;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    if (!v11)
    {
      v12 = 0;
    }

    if (v12 != a2)
    {
      goto LABEL_8;
    }

    v13 = **(v7 - 2);
    {
      if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_17;
    }

    v15 = v8;
    v16 = v6;
    mlir::hasSingleEffect<mlir::MemoryEffects::Write>();
    v8 = v15;
    v6 = v16;
    if (v13 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
    {
      break;
    }

LABEL_17:
    LOBYTE(v3) = 1;
LABEL_8:
    v7 = v8;
    v6 -= 40;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  LOBYTE(v3) = 0;
LABEL_20:
  v5 = v17;
  if (v17 != v19)
  {
LABEL_21:
    free(v5);
  }

  return v3 & 1;
}

uint64_t mlir::hasEffect<mlir::MemoryEffects::Allocate>(uint64_t a1)
{
  v1 = a1;
  v13[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (!v1)
  {
    return v1;
  }

  v11 = v13;
  v12 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  (*InterfaceFor)(InterfaceFor, v1, &v11);
  v3 = v11;
  if (!v12)
  {
    v1 = 0;
    if (v11 == v13)
    {
      return v1;
    }

    goto LABEL_16;
  }

  v4 = 40 * v12 - 40;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  do
  {
    v6 = **v3;
    {
      v9 = v4;
      v10 = v3;
      mlir::wouldOpBeTriviallyDead();
      p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
      v4 = v9;
      v3 = v10;
    }

    v7 = v6 == p_opt_class_meths[22];
    v1 = v7;
    v7 = v7 || v4 == 0;
    v4 -= 40;
    v3 += 5;
  }

  while (!v7);
  v3 = v11;
  if (v11 != v13)
  {
LABEL_16:
    free(v3);
  }

  return v1;
}

uint64_t mlir::hasEffect<mlir::MemoryEffects::Free>(uint64_t a1)
{
  v1 = a1;
  v13[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (!v1)
  {
    return v1;
  }

  v11 = v13;
  v12 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  (*InterfaceFor)(InterfaceFor, v1, &v11);
  v3 = v11;
  if (!v12)
  {
    v1 = 0;
    if (v11 == v13)
    {
      return v1;
    }

    goto LABEL_16;
  }

  v4 = 40 * v12 - 40;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  do
  {
    v6 = **v3;
    {
      v9 = v4;
      v10 = v3;
      mlir::hasSingleEffect<mlir::MemoryEffects::Free>();
      p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
      v4 = v9;
      v3 = v10;
    }

    v7 = v6 == p_opt_class_meths[24];
    v1 = v7;
    v7 = v7 || v4 == 0;
    v4 -= 40;
    v3 += 5;
  }

  while (!v7);
  v3 = v11;
  if (v11 != v13)
  {
LABEL_16:
    free(v3);
  }

  return v1;
}

uint64_t mlir::hasEffect<mlir::MemoryEffects::Read>(uint64_t a1)
{
  v1 = a1;
  v13[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (!v1)
  {
    return v1;
  }

  v11 = v13;
  v12 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  (*InterfaceFor)(InterfaceFor, v1, &v11);
  v3 = v11;
  if (!v12)
  {
    v1 = 0;
    if (v11 == v13)
    {
      return v1;
    }

    goto LABEL_16;
  }

  v4 = 40 * v12 - 40;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  do
  {
    v6 = **v3;
    {
      v9 = v4;
      v10 = v3;
      mlir::wouldOpBeTriviallyDead();
      p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
      v4 = v9;
      v3 = v10;
    }

    v7 = v6 == p_opt_class_meths[36];
    v1 = v7;
    v7 = v7 || v4 == 0;
    v4 -= 40;
    v3 += 5;
  }

  while (!v7);
  v3 = v11;
  if (v11 != v13)
  {
LABEL_16:
    free(v3);
  }

  return v1;
}

uint64_t mlir::hasEffect<mlir::MemoryEffects::Write>(uint64_t a1)
{
  v1 = a1;
  v13[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (!v1)
  {
    return v1;
  }

  v11 = v13;
  v12 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  (*InterfaceFor)(InterfaceFor, v1, &v11);
  v3 = v11;
  if (!v12)
  {
    v1 = 0;
    if (v11 == v13)
    {
      return v1;
    }

    goto LABEL_16;
  }

  v4 = 40 * v12 - 40;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  do
  {
    v6 = **v3;
    {
      v9 = v4;
      v10 = v3;
      mlir::hasSingleEffect<mlir::MemoryEffects::Write>();
      p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
      v4 = v9;
      v3 = v10;
    }

    v7 = v6 == p_opt_class_meths[40];
    v1 = v7;
    v7 = v7 || v4 == 0;
    v4 -= 40;
    v3 += 5;
  }

  while (!v7);
  v3 = v11;
  if (v11 != v13)
  {
LABEL_16:
    free(v3);
  }

  return v1;
}

BOOL mlir::hasEffect<mlir::MemoryEffects::Write,mlir::MemoryEffects::Free>(uint64_t a1)
{
  v12[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v10 = v12;
  v11 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v10);
  v3 = v10;
  if (!v11)
  {
    result = 0;
    if (v10 == v12)
    {
      return result;
    }

    goto LABEL_13;
  }

  v4 = 40 * v11 - 40;
  do
  {
    v5 = *v3;
    v3 += 5;
    v9 = v5;
    result = _ZN4llvm3isaIN4mlir13MemoryEffects5WriteENS2_4FreeEJEPNS2_6EffectEEEbRKT2_(&v9);
    if (result)
    {
      break;
    }

    v7 = v4;
    v4 -= 40;
  }

  while (v7);
  v3 = v10;
  if (v10 != v12)
  {
LABEL_13:
    v8 = result;
    free(v3);
    return v8;
  }

  return result;
}

uint64_t mlir::hasEffect<mlir::MemoryEffects::Allocate>(uint64_t a1, uint64_t a2)
{
  v10[20] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v8 = v10;
  v9 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v8);
  v7 = &v6;
  result = std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Allocate>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(v8, v8 + 5 * v9, &v7);
  if (v8 != v10)
  {
    v5 = result;
    free(v8);
    return v5;
  }

  return result;
}

uint64_t mlir::hasEffect<mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v10[20] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v8 = v10;
  v9 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v8);
  v7 = &v6;
  result = std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Free>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(v8, v8 + 5 * v9, &v7);
  if (v8 != v10)
  {
    v5 = result;
    free(v8);
    return v5;
  }

  return result;
}

uint64_t mlir::hasEffect<mlir::MemoryEffects::Read>(uint64_t a1, uint64_t a2)
{
  v10[20] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v8 = v10;
  v9 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v8);
  v7 = &v6;
  result = std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Read>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(v8, v8 + 5 * v9, &v7);
  if (v8 != v10)
  {
    v5 = result;
    free(v8);
    return v5;
  }

  return result;
}

uint64_t mlir::hasEffect<mlir::MemoryEffects::Write>(uint64_t a1, uint64_t a2)
{
  v10[20] = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v8 = v10;
  v9 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v8);
  v7 = &v6;
  result = std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Write>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(v8, v8 + 5 * v9, &v7);
  if (v8 != v10)
  {
    v5 = result;
    free(v8);
    return v5;
  }

  return result;
}

uint64_t mlir::hasEffect<mlir::MemoryEffects::Write,mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (!v17)
  {
    v13 = 0;
    if (v16 != v18)
    {
      goto LABEL_27;
    }

    return v13;
  }

  v6 = (v16 + 16);
  v7 = 40 * v17;
  do
  {
    v8 = *v6;
    if (*v6 >= 8 && (v9 = *v6 & 6, (v8 & 6) != 0))
    {
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (v9 != 2 || v10 == 0)
      {
        if (v9 == 4)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          v10 = v12;
        }

        if (v10 != a2)
        {
          goto LABEL_6;
        }
      }

      else if (*(v10 + 24) != a2)
      {
        goto LABEL_6;
      }
    }

    else if (a2)
    {
      goto LABEL_6;
    }

    v15 = *(v6 - 2);
    if (_ZN4llvm3isaIN4mlir13MemoryEffects5WriteENS2_4FreeEJEPNS2_6EffectEEEbRKT2_(&v15))
    {
      v13 = 1;
      v5 = v16;
      if (v16 != v18)
      {
        goto LABEL_27;
      }

      return v13;
    }

LABEL_6:
    v6 += 5;
    v7 -= 40;
  }

  while (v7);
  v13 = 0;
  v5 = v16;
  if (v16 == v18)
  {
    return v13;
  }

LABEL_27:
  free(v5);
  return v13;
}

uint64_t mlir::hasEffect<mlir::OpOperand *,mlir::MemoryEffects::Allocate>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (*v6 & 6) == 2 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::wouldOpBeTriviallyDead();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::OpOperand *,mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (*v6 & 6) == 2 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::hasSingleEffect<mlir::MemoryEffects::Free>();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::OpOperand *,mlir::MemoryEffects::Read>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (*v6 & 6) == 2 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::wouldOpBeTriviallyDead();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::OpOperand *,mlir::MemoryEffects::Write>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (*v6 & 6) == 2 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::hasSingleEffect<mlir::MemoryEffects::Write>();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::OpOperand *,mlir::MemoryEffects::Write,mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v17[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v15 = v17;
  v16 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v15);
  v5 = v15;
  if (v16)
  {
    v6 = (v15 + 16);
    v7 = 40 * v16;
    do
    {
      v8 = *v6;
      if ((*v6 & 6) == 2)
      {
        v9 = v8 >= 7;
        v10 = v8 == 7;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v11 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (v10 || !v9)
      {
        v11 = 0;
      }

      if (v11 == a2)
      {
        v14 = *(v6 - 2);
        if (_ZN4llvm3isaIN4mlir13MemoryEffects5WriteENS2_4FreeEJEPNS2_6EffectEEEbRKT2_(&v14))
        {
          v12 = 1;
          v5 = v15;
          if (v15 != v17)
          {
            goto LABEL_21;
          }

          return v12;
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v15;
    if (v15 != v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    if (v15 != v17)
    {
LABEL_21:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::OpResult,mlir::MemoryEffects::Allocate>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (*v6 & 6) == 4 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::wouldOpBeTriviallyDead();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::OpResult,mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (*v6 & 6) == 4 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::hasSingleEffect<mlir::MemoryEffects::Free>();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::OpResult,mlir::MemoryEffects::Read>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (*v6 & 6) == 4 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::wouldOpBeTriviallyDead();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::OpResult,mlir::MemoryEffects::Write>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (*v6 & 6) == 4 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::hasSingleEffect<mlir::MemoryEffects::Write>();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::OpResult,mlir::MemoryEffects::Write,mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v17[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v15 = v17;
  v16 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v15);
  v5 = v15;
  if (v16)
  {
    v6 = (v15 + 16);
    v7 = 40 * v16;
    do
    {
      v8 = *v6;
      if ((*v6 & 6) == 4)
      {
        v9 = v8 >= 7;
        v10 = v8 == 7;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v11 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (v10 || !v9)
      {
        v11 = 0;
      }

      if (v11 == a2)
      {
        v14 = *(v6 - 2);
        if (_ZN4llvm3isaIN4mlir13MemoryEffects5WriteENS2_4FreeEJEPNS2_6EffectEEEbRKT2_(&v14))
        {
          v12 = 1;
          v5 = v15;
          if (v15 != v17)
          {
            goto LABEL_21;
          }

          return v12;
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v15;
    if (v15 != v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    if (v15 != v17)
    {
LABEL_21:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::BlockArgument,mlir::MemoryEffects::Allocate>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (~*v6 & 6) == 0 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::wouldOpBeTriviallyDead();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::BlockArgument,mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (~*v6 & 6) == 0 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::hasSingleEffect<mlir::MemoryEffects::Free>();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::BlockArgument,mlir::MemoryEffects::Read>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (~*v6 & 6) == 0 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::wouldOpBeTriviallyDead();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::BlockArgument,mlir::MemoryEffects::Write>(uint64_t a1, uint64_t a2)
{
  v18[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v16 = v18;
  v17 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v16);
  v5 = v16;
  if (v17)
  {
    v6 = (v16 + 16);
    v7 = 40 * v17;
    do
    {
      v8 = *v6;
      v9 = (~*v6 & 6) == 0 && v8 > 7;
      v10 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (!v9)
      {
        v10 = 0;
      }

      if (v10 == a2)
      {
        v11 = **(v6 - 2);
        {
          if (v11 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = v11;
          v15 = v7;
          mlir::hasSingleEffect<mlir::MemoryEffects::Write>();
          v7 = v15;
          if (v14 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id)
          {
LABEL_18:
            v12 = 1;
            v5 = v16;
            if (v16 != v18)
            {
              goto LABEL_24;
            }

            return v12;
          }
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v16;
    if (v16 != v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
    if (v16 != v18)
    {
LABEL_24:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::hasEffect<mlir::BlockArgument,mlir::MemoryEffects::Write,mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v17[20] = *MEMORY[0x277D85DE8];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v15 = v17;
  v16 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v15);
  v5 = v15;
  if (v16)
  {
    v6 = (v15 + 16);
    v7 = 40 * v16;
    do
    {
      v8 = *v6;
      if ((~*v6 & 6) != 0)
      {
        v9 = 0;
        v10 = 0;
      }

      else
      {
        v9 = v8 >= 7;
        v10 = v8 == 7;
      }

      v11 = v8 & 0xFFFFFFFFFFFFFFF8;
      if (v10 || !v9)
      {
        v11 = 0;
      }

      if (v11 == a2)
      {
        v14 = *(v6 - 2);
        if (_ZN4llvm3isaIN4mlir13MemoryEffects5WriteENS2_4FreeEJEPNS2_6EffectEEEbRKT2_(&v14))
        {
          v12 = 1;
          v5 = v15;
          if (v15 != v17)
          {
            goto LABEL_21;
          }

          return v12;
        }
      }

      v6 += 5;
      v7 -= 40;
    }

    while (v7);
    v12 = 0;
    v5 = v15;
    if (v15 != v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
    if (v15 != v17)
    {
LABEL_21:
      free(v5);
    }
  }

  return v12;
}

uint64_t mlir::isMemoryEffectFree(mlir *this, mlir::Operation *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(this) && this)
  {
    v15[0] = &v16;
    v15[1] = 0x400000000;
    InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(this);
    (*InterfaceFor)(InterfaceFor, this, v15);
    v4 = v15[1];
    if (v15[0] != &v16)
    {
      free(v15[0]);
    }

    if (v4)
    {
      return 0;
    }

    {
      mlir::wouldOpBeTriviallyDead();
    }

    if (((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      return 1;
    }

    goto LABEL_15;
  }

  {
    mlir::isMemoryEffectFree();
  }

  result = (*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
LABEL_15:
    v6 = *(this + 11);
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = (((this + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
      v8 = (v7 + 24 * (v6 & 0x7FFFFF));
      while (1)
      {
        mlir::Region::OpIterator::OpIterator(&v13, v7, 0);
        mlir::Region::OpIterator::OpIterator(&v17, v7, 1);
        v9 = v14;
        v16 = v14;
        *v15 = v13;
        v10 = v18;
        if (v14 != v18)
        {
          break;
        }

LABEL_20:
        v7 = (v7 + 24);
        result = 1;
        if (v7 == v8)
        {
          return result;
        }
      }

      while (1)
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v9);
        if ((mlir::isMemoryEffectFree(ValuePtr, v12) & 1) == 0)
        {
          return 0;
        }

        mlir::Region::OpIterator::operator++(&v13);
        v9 = v14;
        if (v14 == v10)
        {
          goto LABEL_20;
        }
      }
    }

    return 1;
  }

  return result;
}

void mlir::getEffectsRecursively(mlir *this@<X0>, uint64_t a2@<X8>)
{
  v26[5] = *MEMORY[0x277D85DE8];
  __src = v26;
  v25 = 0x100000000;
  v22 = 6;
  v23[0] = this;
  v3 = 1;
  do
  {
    v4 = v23[v3 - 1];
    v21 = v3 - 1;
    {
      mlir::wouldOpBeTriviallyDead();
    }

    v5 = (*(**(v4 + 48) + 32))(*(v4 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id);
    v6 = v5;
    if (v5)
    {
      v7 = *(v4 + 44);
      if ((v7 & 0x7FFFFF) != 0)
      {
        v8 = ((v4 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 40);
        v9 = v8 + 24 * (v7 & 0x7FFFFF);
        do
        {
          for (i = *(v8 + 8); i != v8; i = *(i + 8))
          {
            v11 = i - 8;
            if (!i)
            {
              v11 = 0;
            }

            v12 = v11 + 32;
            v13 = *(v11 + 40);
            if (v13 != v11 + 32)
            {
              do
              {
                ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v13);
                if (v21 >= v22)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v23[v21++] = ValuePtr;
                v13 = *(v13 + 8);
              }

              while (v13 != v12);
            }
          }

          v8 += 24;
        }

        while (v8 != v9);
      }
    }

    if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v4) && v4)
    {
      InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v4);
      (*InterfaceFor)(InterfaceFor, v4, &__src);
    }

    else if ((v6 & 1) == 0)
    {
      v18 = 0;
      v19 = a2;
      *a2 = 0;
      goto LABEL_33;
    }

    v3 = v21;
  }

  while (v21);
  v19 = a2;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x100000000;
  v16 = v25;
  v18 = 1;
  if (v25 && &__src != a2)
  {
    if (__src == v26)
    {
      if (v25 >= 2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a2, __src, 0x28uLL);
      *(a2 + 8) = v16;
    }

    else
    {
      *a2 = __src;
      v17 = HIDWORD(v25);
      *(a2 + 8) = v16;
      *(a2 + 12) = v17;
      __src = v26;
      HIDWORD(v25) = 0;
    }

    LODWORD(v25) = 0;
    v18 = 1;
  }

LABEL_33:
  *(v19 + 56) = v18;
  if (__src != v26)
  {
    free(__src);
  }
}

uint64_t mlir::isSpeculatable(mlir *this, mlir::Operation *a2)
{
  if (!mlir::OpInterface<mlir::ConditionallySpeculatable,mlir::detail::ConditionallySpeculatableInterfaceTraits>::getInterfaceFor(this))
  {
    return 0;
  }

  v3 = this ? mlir::OpInterface<mlir::ConditionallySpeculatable,mlir::detail::ConditionallySpeculatableInterfaceTraits>::getInterfaceFor(this) : 0;
  if (!this)
  {
    return 0;
  }

  result = (*v3)();
  if (result >= 2)
  {
    v5 = *(this + 11);
    if ((v5 & 0x7FFFFF) != 0)
    {
      v6 = (((this + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
      v7 = (v6 + 24 * (v5 & 0x7FFFFF));
      while (1)
      {
        mlir::Region::OpIterator::OpIterator(&v14, v6, 0);
        mlir::Region::OpIterator::OpIterator(&v12, v6, 1);
        v8 = v15;
        v9 = v13;
        if (v15 != v13)
        {
          break;
        }

LABEL_11:
        v6 = (v6 + 24);
        result = 1;
        if (v6 == v7)
        {
          return result;
        }
      }

      while (1)
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v8);
        result = mlir::isSpeculatable(ValuePtr, v11);
        if (!result)
        {
          break;
        }

        mlir::Region::OpIterator::operator++(&v14);
        v8 = v15;
        if (v15 == v9)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}