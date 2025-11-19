uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::ReOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::ReOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::complex::detail::ReOpGenericAdaptorBase::ReOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::complex::ReOp::fold(&v12, v13);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::ReOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::ReOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::RsqrtOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::complex::RsqrtOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::RsqrtOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::complex::RsqrtOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::complex::RsqrtOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::RsqrtOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::RsqrtOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::complex::RsqrtOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::complex::RsqrtOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::RsqrtOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::complex::RsqrtOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "complex.rsqrt";
      v23 = 13;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::RsqrtOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::RsqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::RsqrtOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SignOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::complex::SignOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SignOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::complex::SignOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::complex::SignOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SignOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SignOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::complex::SignOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::complex::SignOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::SignOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::complex::SignOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "complex.sign";
      v23 = 12;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::SignOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::SignOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::SignOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::complex::SinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SinOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::complex::SinOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::complex::SinOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SinOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SinOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::complex::SinOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::complex::SinOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::SinOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::complex::SinOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "complex.sin";
      v23 = 11;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::SinOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::SinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::SinOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SqrtOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::complex::SqrtOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SqrtOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::complex::SqrtOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::complex::SqrtOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SqrtOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SqrtOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::complex::SqrtOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::complex::SqrtOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::SqrtOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::complex::SqrtOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "complex.sqrt";
      v23 = 12;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::SqrtOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::SqrtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::SqrtOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SubOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::complex::SubOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

BOOL mlir::RegisteredOperationName::Model<mlir::complex::SubOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::complex::SubOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::complex::SubOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SubOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::SubOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::complex::SubOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::complex::SubOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::SubOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::complex::SubOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "complex.sub";
      v23 = 11;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::SubOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::complex::detail::SubOpGenericAdaptorBase::SubOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::complex::SubOp::fold(&v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    result = v9 > 7;
  }

  else
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::SubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::SubOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::TanOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::complex::TanOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::TanOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::complex::TanOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::complex::TanOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::TanOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::TanOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::complex::TanOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::complex::TanOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::TanOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::complex::TanOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "complex.tan";
      v23 = 11;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::TanOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::TanOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::TanOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::TanhOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::complex::TanhOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::TanhOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::complex::TanhOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::complex::TanhOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::TanhOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::complex::TanhOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void mlir::RegisteredOperationName::Model<mlir::complex::TanhOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::complex::TanhOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::TanhOp>::refineReturnTypes(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0x400000000;
  v18 = v20;
  if (mlir::complex::TanhOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
    v23 = v19;
    v21[0] = v14;
    v21[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
    {
      v15 = 1;
    }

    else
    {
      v22 = "complex.tanh";
      v23 = 12;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::complex::TanhOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  result = llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v7, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::complex::TanhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::complex::TanhOp::print(&v7, a3);
}

BOOL mlir::detail::StorageUserBase<mlir::complex::NumberAttr,mlir::Attribute,mlir::complex::detail::NumberAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
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

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7complex10NumberAttrES2_NSD_6detail17NumberAttrStorageENSB_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(v10, (a2 + 1));
  llvm::APFloat::Storage::Storage(v11, (a2 + 4));
  if (a2[7])
  {
    a5(a6);
  }

  llvm::APFloat::Storage::~Storage(v11);
  llvm::APFloat::Storage::~Storage(v10);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7complex10NumberAttrES2_NSC_6detail17NumberAttrStorageENSA_16AttributeUniquerEJNS1_9TypedAttr5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  llvm::APFloat::Storage::Storage(v17, (a2 + 1));
  llvm::APFloat::Storage::Storage(v18, (a2 + 4));
  if (a2[7])
  {
    v7 = *a5;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(**a2 + 32);
  v9 = *v8;
  v14[0] = &mlir::detail::TypeIDResolver<mlir::complex::NumberAttr,void>::id;
  v14[1] = v8;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir7complex6detail17NumberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10NumberAttrEJRKNS_7APFloatESF_RNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v16[1] = v14;
  llvm::APFloat::Storage::Storage(v20, v17);
  llvm::APFloat::Storage::Storage(v21, v18);
  v22 = v7;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APFloat,llvm::APFloat,mlir::Type>(v23, v23, v24, v20, v21, &v22);
  v15 = v20;
  v23[0] = v20;
  v23[1] = v16;
  v11 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v9 + 560), &mlir::detail::TypeIDResolver<mlir::complex::NumberAttr,void>::id, v10, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::complex::detail::NumberAttrStorage * mlir::StorageUniquer::get<mlir::complex::detail::NumberAttrStorage,llvm::APFloat const&,llvm::APFloat const&,mlir::Type &>(llvm::function_ref<void ()(mlir::complex::detail::NumberAttrStorage *)>,mlir::TypeID,llvm::APFloat const&,llvm::APFloat const&,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::complex::detail::NumberAttrStorage * mlir::StorageUniquer::get<mlir::complex::detail::NumberAttrStorage,llvm::APFloat const&,llvm::APFloat const&,mlir::Type &>(llvm::function_ref<void ()(mlir::complex::detail::NumberAttrStorage *)>,mlir::TypeID,llvm::APFloat const&,llvm::APFloat const&,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
  llvm::APFloat::Storage::~Storage(v21);
  llvm::APFloat::Storage::~Storage(v20);
  llvm::APFloat::Storage::~Storage(v18);
  llvm::APFloat::Storage::~Storage(v17);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::APFloat,llvm::APFloat,mlir::Type>(llvm::hashing::detail::hash_combine_recursive_helper *a1, const llvm::detail::IEEEFloat *a2, char *a3, llvm *this, llvm::detail *a5, _DWORD *a6)
{
  v19 = 0;
  v11 = llvm::hash_value(this, a2, a3, this);
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, a2, a3, v11);
  v20 = v19;
  v16 = llvm::hash_value(a5, v13, v14, v15);
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v20, v12, a3, v16);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(a1, v20, v17, a3, a6);
}

uint64_t mlir::complex::detail::NumberAttrStorage::operator==(uint64_t a1, uint64_t a2)
{
  result = llvm::APFloat::bitwiseIsEqual((a1 + 8), a2);
  if (result)
  {
    result = llvm::APFloat::bitwiseIsEqual((a1 + 32), (a2 + 24));
    if (result)
    {
      return *(a1 + 56) == *(a2 + 48);
    }
  }

  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::complex::detail::NumberAttrStorage * mlir::StorageUniquer::get<mlir::complex::detail::NumberAttrStorage,llvm::APFloat const&,llvm::APFloat const&,mlir::Type &>(llvm::function_ref<void ()(mlir::complex::detail::NumberAttrStorage *)>,mlir::TypeID,llvm::APFloat const&,llvm::APFloat const&,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::complex::detail::NumberAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::complex::detail::NumberAttrStorage::construct(unint64_t *a1, void **a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*a2 == &llvm::semPPCDoubleDouble)
  {
    v4 = a2[1];
    v19 = &llvm::semPPCDoubleDouble;
    v20 = v4;
    *a2 = &llvm::semBogus;
    a2[1] = 0;
  }

  else
  {
    v19 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v19, a2);
  }

  if (a2[3] == &llvm::semPPCDoubleDouble)
  {
    v5 = a2[4];
    v17 = &llvm::semPPCDoubleDouble;
    v18 = v5;
    a2[3] = &llvm::semBogus;
    a2[4] = 0;
  }

  else
  {
    v17 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v17, (a2 + 3));
  }

  v6 = a2[6];
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 64, 3);
  if (v19 == &llvm::semPPCDoubleDouble)
  {
    v15 = &llvm::semPPCDoubleDouble;
    v16 = v20;
    v19 = &llvm::semBogus;
    v20 = 0;
  }

  else
  {
    v15 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v15, &v19);
  }

  if (v17 == &llvm::semPPCDoubleDouble)
  {
    v13 = &llvm::semPPCDoubleDouble;
    v14 = v18;
    v17 = &llvm::semBogus;
    v18 = 0;
  }

  else
  {
    v13 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(&v13, &v17);
  }

  *v7 = 0;
  v8 = v7 + 1;
  if (v15 == &llvm::semPPCDoubleDouble)
  {
    v9 = v16;
    v7[1] = &llvm::semPPCDoubleDouble;
    v7[2] = v9;
    v15 = &llvm::semBogus;
    v16 = 0;
  }

  else
  {
    *v8 = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=(v8, &v15);
  }

  if (v13 == &llvm::semPPCDoubleDouble)
  {
    v10 = v14;
    v7[4] = &llvm::semPPCDoubleDouble;
    v7[5] = v10;
    v13 = &llvm::semBogus;
    v14 = 0;
  }

  else
  {
    v7[4] = &llvm::semBogus;
    llvm::detail::IEEEFloat::operator=((v7 + 4), &v13);
  }

  v7[7] = v6;
  llvm::APFloat::Storage::~Storage(&v13);
  llvm::APFloat::Storage::~Storage(&v15);
  llvm::APFloat::Storage::~Storage(&v17);
  llvm::APFloat::Storage::~Storage(&v19);
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir7complex6detail17NumberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10NumberAttrEJRKNS_7APFloatESF_RNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void llvm::function_ref<void ()(mlir::StorageUniquer::BaseStorage *)>::callback_fn<void mlir::StorageUniquer::registerParametricStorageType<mlir::complex::detail::NumberAttrStorage>(mlir::TypeID)::{lambda(mlir::StorageUniquer::BaseStorage *)#1}>(uint64_t a1, uint64_t a2)
{
  llvm::APFloat::Storage::~Storage((a2 + 32));

  llvm::APFloat::Storage::~Storage((a2 + 8));
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::complex::detail::NumberAttrStorage * mlir::StorageUniquer::get<mlir::complex::detail::NumberAttrStorage,llvm::APFloat &,llvm::APFloat &,mlir::ComplexType &>(llvm::function_ref<void ()(mlir::complex::detail::NumberAttrStorage *)>,mlir::TypeID,llvm::APFloat &,llvm::APFloat &,mlir::ComplexType &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::complex::detail::NumberAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir7complex6detail17NumberAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10NumberAttrEJRNS_7APFloatESE_RNS1_11ComplexTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS5_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::detail::verifyParallelCombiningOpInterface(void **this, mlir::Operation *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(this + 11);
  if ((v2 & 0x7FFFFF) == 1)
  {
    v3 = (((&this[2 * ((v2 >> 23) & 1) + 8] + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    if (*v3 != v3 && *(v3[1] + 8) == v3)
    {
      v5 = 1;
      goto LABEL_7;
    }

    v4 = "expected single block op region";
  }

  else
  {
    v4 = "expected single region op";
  }

  v8 = v4;
  v9 = 259;
  mlir::Operation::emitError(v10, this, &v8);
  v5 = v11 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
LABEL_7:
  v6 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

uint64_t mlir::scf::forallToParallelLoop(uint64_t a1, uint64_t a2)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v3 = a1 + 24;
  v4 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 32) = a2;
  v5 = *(a2 + 24);
  if (!*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 108))
  {
    mlir::scf::ForallOp::getLowerBound(&v13, (a1 + 8), &v18);
    v8 = *(v13 + 24);
    mlir::scf::ForallOp::getMixedUpperBound(&v13, &v20);
    mlir::getValueOrCreateConstantIndexOp((a1 + 8), v8, v20, v21, &v16);
    if (v20 != v22)
    {
      free(v20);
    }

    v9 = *(v13 + 24);
    mlir::scf::ForallOp::getMixedStep(&v13, &v20);
    mlir::getValueOrCreateConstantIndexOp((a1 + 8), v9, v20, v21, &v14);
    if (v20 != v22)
    {
      free(v20);
    }

    v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ParallelOp>(a1 + 8, *(**v5 + 32));
    v20 = v5;
    v21 = v10;
    v22[0] = &v23;
    v22[1] = 0x400000000;
    v24 = v26;
    v25 = 0x400000000;
    v26[4] = v27;
    v26[5] = 0x400000000;
    v27[8] = 4;
    v27[9] = v28;
    v27[10] = 0x100000000;
    v28[1] = v29;
    v28[2] = 0x100000000;
    v29[2] = 0;
    v29[1] = 0;
    v29[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v29[4] = 0;
    v29[6] = 0;
    mlir::scf::ParallelOp::build(a1 + 8, &v20, v18 & 0xFFFFFFFFFFFFFFF9, v19, v16 & 0xFFFFFFFFFFFFFFF9, v17, v14 & 0xFFFFFFFFFFFFFFF9, v15);
  }

  v20 = "only fully bufferized scf.forall ops can be lowered to scf.parallel";
  v23 = 259;
  v18 = &v20;
  v6 = *(a1 + 16);
  if (v6 && v6[2] == 1)
  {
    v12 = v4;
    (*(*v6 + 88))(v6, v5, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::ForallOp &>(mlir::scf::ForallOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v18);
    v4 = v12;
  }

  result = 0;
  if (v4)
  {
    *v3 = v4;
  }

  else
  {
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::parseSourceFile(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = **a1;
  if (a4)
  {
    v9 = *a3;
    v10 = (*(*v7 + 16))(**a1);
    *a4 = mlir::FileLineColRange::get(v9, v10, v11, 0, 0);
  }

  v12 = v7[1];
  v13 = v7[2] - v12;
  (*(*v7 + 16))(v7);
  if (v13 < 4 || *v12 != *"ML\xEF\x52duplicate top-level section: ")
  {

    mlir::parseAsmSourceFile(a1, a2, a3, 0, 0);
  }

  v14 = *v7;
  v15 = v7[2] - v7[1];
  *&v18 = v7[1];
  *(&v18 + 1) = v15;
  v19 = (*(v14 + 16))(v7);
  v20 = v16;
  return mlir::readBytecodeFile(&v18, a2, a3);
}

BOOL mlir::parseSourceFile(uint64_t ****a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = ***a1;
  if (a4)
  {
    v9 = *a3;
    v10 = (*(*v7 + 16))(***a1);
    *a4 = mlir::FileLineColRange::get(v9, v10, v11, 0, 0);
  }

  v12 = v7[1];
  v13 = v7[2] - v12;
  (*(*v7 + 16))(v7);
  if (v13 < 4 || *v12 != *"ML\xEF\x52duplicate top-level section: ")
  {
    v14 = *a1;

    mlir::parseAsmSourceFile(v14, a2, a3, 0, 0);
  }

  return mlir::readBytecodeFile(a1, a2, a3);
}

BOOL mlir::parseSourceFile(uint64_t a1, uint64_t a2, uint64_t ****a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!loadSourceFileBuffer(a1, a2, *a3, *a5))
  {
    return 0;
  }

  return mlir::parseSourceFile(a3, a4, a5, a6);
}

BOOL loadSourceFileBuffer(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!(-1431655765 * ((a3[1] - *a3) >> 3)))
  {
    v20 = 261;
    v17 = a1;
    v18 = a2;
    llvm::MemoryBuffer::getFileOrSTDIN(&v17, 0, 1, 0, &v15);
    if (v16)
    {
      v10 = v15;
      if (v15)
      {
        v5 = *(*a4 + 616);
        v14 = 1283;
        v13[0] = "could not open input file ";
        v13[2] = a1;
        v13[3] = a2;
        goto LABEL_3;
      }
    }

    else
    {
      v10 = v15;
    }

    v18 = 0;
    v19 = 0;
    v17 = v10;
    std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](a3, &v17);
    llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v17);
    v6 = 1;
    goto LABEL_9;
  }

  v5 = *(*a4 + 616);
  v13[0] = "only main buffer parsed at the moment";
  v14 = 259;
LABEL_3:
  emitDiag(v5, 2, v13, &v17);
  v6 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::parseSourceString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  LOWORD(v16) = 261;
  *&v15[0] = a5;
  *(&v15[0] + 1) = a6;
  v19[0] = v15;
  v12 = operator new(24, v19);
  *v12 = &unk_286E796E0;
  *(v12 + 1) = a1;
  *(v12 + 2) = a1 + a2;
  v18 = 0;
  v19[0] = v12;
  v16 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  v19[1] = 0;
  v19[2] = 0;
  std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](v15, v19);
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(v19);
  v13 = mlir::parseSourceFile(v15, a3, a4, a7);
  llvm::SourceMgr::~SourceMgr(v15);
  return v13;
}

void std::__shared_ptr_emplace<llvm::SourceMgr>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286EA0268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

BOOL mlir::BytecodeReader::Impl::read(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 1176);
  v6 = *(a1 + 1184);
  v7 = *(a1 + 8);
  v40 = v5;
  v41 = v6;
  v42 = v5;
  v43 = v7;
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  if (v6 >= 4)
  {
    v42 = v5 + 4;
  }

  else
  {
    *&v65 = v6;
    v71 = 257;
    emitDiag(v7, 2, &v69, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<20ul>(&v48 + 8, "attempting to skip ");
      mlir::Diagnostic::append<unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(&v48 + 8, 4, &v65);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v69, &v48);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
    v8 = v72;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v69);
    if (v8)
    {
      goto LABEL_36;
    }
  }

  {
    goto LABEL_36;
  }

  v9 = *(a1 + 248);
  if (v9 <= 6)
  {
    if (v9 <= 1)
    {
      *(a1 + 16) = 0;
    }
  }

  else
  {
    v71 = 257;
    emitDiag(v43, 2, &v69, &v48);
    if (v48)
    {
      mlir::Diagnostic::operator<<<18ul>(&v48 + 8, "bytecode version ");
      v10 = *(a1 + 248);
      LODWORD(v69) = 5;
      *(&v69 + 1) = v10;
      v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v50, &v69, 1);
      v12 = v50 + 24 * v51;
      v13 = *v11;
      *(v12 + 16) = *(v11 + 16);
      *v12 = v13;
      LODWORD(v51) = v51 + 1;
      mlir::Diagnostic::operator<<<36ul>(&v48 + 8, " is newer than the current version ");
      LODWORD(v69) = 5;
      *(&v69 + 1) = 6;
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v50, &v69, 1);
      v15 = v50 + 24 * v51;
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      LODWORD(v51) = v51 + 1;
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v69, &v48);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
    v17 = v72;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v69);
    if (v17)
    {
      goto LABEL_36;
    }
  }

  {
LABEL_36:
    v35 = 0;
    goto LABEL_37;
  }

  v18 = **a1;
  v19 = *v18;
  *&v48 = a1;
  v50 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<mlir::BytecodeReader::Impl::read(mlir::Block *,llvm::function_ref<BOOL ()(mlir::Operation *)>)::$_1,mlir::BytecodeReader::Impl::read(mlir::Block *,llvm::function_ref<BOOL ()(mlir::Operation *)>)::$_1,void>::Callbacks + 2;
  v20 = mlir::DiagnosticEngine::registerHandler((v19 + 32), &v48);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::~UniqueFunctionBase(&v48);
  for (i = 0; i != 216; i += 24)
  {
    v22 = &v48 + i;
    *v22 = 0;
    v22[16] = 0;
  }

  if (v42 == v40 + v41)
  {
LABEL_22:
    v24 = 0;
    v25 = &v49;
    while (1)
    {
      v26 = *v25;
      v25 += 24;
      if ((v26 & 1) == 0 && v24 - 5 >= 3 && (v24 != 8 || *(a1 + 248) >= 5))
      {
        break;
      }

      if (++v24 == 9)
      {
        v27 = *(a1 + 8);
        v28 = v48;
        __p = v48;
        v46 = v48;
        v47 = v27;
        *&v39 = 0;
        {
          llvm::SmallVectorImpl<llvm::StringRef>::resizeImpl<false>(a1 + 536, v39);
          v29 = *(a1 + 544);
          if (v29)
          {
            v30 = (*(a1 + 536) + 16 * v29 - 8);
            v31 = -16 * v29;
            v32 = *(&v28 + 1);
            while (1)
            {
              v44 = 0;
              {
                break;
              }

              v33 = v32 >= v44;
              v32 -= v44;
              if (!v33)
              {
                v67 = 257;
                emitDiag(v47, 2, &v65, &v69);
                if (v69)
                {
                  mlir::Diagnostic::operator<<<44ul>(&v69 + 8, "string size exceeds the available data size");
                }

                goto LABEL_51;
              }

              v34 = v44 - 1;
              *(v30 - 1) = v28 + v32;
              *v30 = v34;
              v30 -= 2;
              v31 += 16;
              if (!v31)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
            v32 = *(&v28 + 1);
LABEL_46:
            if (*(&v28 + 1) - (__p + *(&__p + 1)) + v46 == v32)
            {
              goto LABEL_56;
            }

            v67 = 257;
            emitDiag(v47, 2, &v65, &v69);
            if (v69)
            {
              mlir::Diagnostic::operator<<<72ul>(&v69 + 8, "unexpected trailing data between the offsets for strings and their data");
            }

LABEL_51:
            mlir::InFlightDiagnostic::InFlightDiagnostic(&v65, &v69);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v69);
            v38 = v68;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v65);
            if ((v38 & 1) == 0)
            {
LABEL_56:
              {
                if (mlir::BytecodeReader::Impl::parseDialectSection(a1, v50, v51))
                {
                  v69 = v58;
                  v70 = v59;
                  v65 = v60;
                  v66 = v61;
                  {
                    mlir::BytecodeReader::Impl::parseIRSection(a1, v56, v57);
                  }
                }
              }
            }
          }
        }

        goto LABEL_58;
      }
    }

    toString(&__p, v24);
    v67 = 257;
    emitDiag(v43, 2, &v65, &v69);
    if (!v69)
    {
      goto LABEL_43;
    }

    mlir::Diagnostic::operator<<<37ul>(&v69 + 8, "missing data for top-level section: ");
  }

  else
  {
    while (1)
    {
      LOBYTE(v44) = 0;
      v39 = 0uLL;
      {
LABEL_58:
        v35 = 0;
        goto LABEL_59;
      }

      v23 = &v48 + 24 * v44;
      if (v23[16] == 1)
      {
        break;
      }

      *v23 = v39;
      v23[16] = 1;
      if (v42 == v40 + v41)
      {
        goto LABEL_22;
      }
    }

    toString(&__p, v44);
    v67 = 257;
    emitDiag(v43, 2, &v65, &v69);
    if (!v69)
    {
      goto LABEL_43;
    }

    mlir::Diagnostic::operator<<<30ul>(&v69 + 8, "duplicate top-level section: ");
  }

  v67 = 260;
  *&v65 = &__p;
  mlir::Diagnostic::operator<<(&v69 + 8, &v65);
LABEL_43:
  mlir::InFlightDiagnostic::InFlightDiagnostic(&v65, &v69);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v69);
  v35 = (v68 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v65);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p);
  }

LABEL_59:
  if (v20)
  {
    mlir::DiagnosticEngine::eraseHandler((*v18 + 32), v20);
  }

LABEL_37:
  *(a1 + 72) = 0;
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

BOOL anonymous namespace::EncodingReader::parseNullTerminatedString(_anonymous_namespace_::EncodingReader *this, llvm::StringRef *a2)
{
  v14[25] = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  v5 = memchr(v4, 0, *this + *(this + 1) - v4);
  if (v5)
  {
    *a2 = v4;
    *(a2 + 1) = v5 - v4;
    *(this + 2) = v5 + 1;
    v6 = 1;
  }

  else
  {
    v7 = *(this + 3);
    v11 = 257;
    emitDiag(v7, 2, v10, &v13);
    if (v13)
    {
      mlir::Diagnostic::operator<<<58ul>(v14, "malformed null-terminated string, no null character found");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v10, &v13);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL anonymous namespace::EncodingReader::parseSection(_anonymous_namespace_::EncodingReader *a1, _BYTE *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0;
  {
    goto LABEL_13;
  }

  v17 = 0;
  {
    goto LABEL_13;
  }

  v6 = v18;
  v7 = v18 & 0x7F;
  *a2 = v7;
  if (v7 >= 9)
  {
    v8 = *(a1 + 3);
    v21 = 257;
    emitDiag(v8, 2, &v19, v23);
    if (*v23)
    {
      mlir::Diagnostic::operator<<<21ul>(&v24, "invalid section ID: ");
      v19 = 5;
      v20 = v7;
      v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v25, &v19, 1);
      v10 = v25 + 24 * v26;
      v11 = *v9;
      *(v10 + 16) = *(v9 + 16);
      *v10 = v11;
      ++v26;
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v19, v23);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
    v12 = (v22 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
    goto LABEL_14;
  }

  if (v6 < 0)
  {
    *v23 = 0;
    {
LABEL_13:
      v12 = 0;
LABEL_14:
      v16 = *MEMORY[0x277D85DE8];
      return v12;
    }
  }

  v13 = v17;
  v14 = *MEMORY[0x277D85DE8];
}

void toString(_BYTE *a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        v4 = "String (0)";
        goto LABEL_20;
      }

      if (a2 == 1)
      {
        v4 = "Dialect (1)";
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (a2 == 2)
    {
      v4 = "AttrType (2)";
    }

    else
    {
      v4 = "AttrTypeOffset (3)";
    }
  }

  else
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          v4 = "ResourceOffset (6)";
          goto LABEL_20;
        case 7:
          v4 = "DialectVersions (7)";
          goto LABEL_20;
        case 8:
          v4 = "Properties (8)";
          goto LABEL_20;
      }

LABEL_23:
      v9 = v2;
      v10 = v3;
      v5[0] = "Unknown (";
      v5[2] = a2;
      v6 = 2307;
      v7[0] = v5;
      v7[2] = ")";
      v8 = 770;
      llvm::Twine::str(v7, a1);
      return;
    }

    if (a2 == 4)
    {
      v4 = "IR (4)";
    }

    else
    {
      v4 = "Resource (5)";
    }
  }

LABEL_20:

  std::string::basic_string[abi:nn200100]<0>(a1, v4);
}

BOOL anonymous namespace::PropertiesSectionReader::initialize(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    goto LABEL_17;
  }

  v18 = a3;
  v19 = a4;
  v20 = a3;
  v21 = a2;
  v17 = 0;
  {
LABEL_11:
    v10 = 0;
    goto LABEL_18;
  }

  v6 = *a1;
  v7 = a1[1];
  v13 = v6;
  v14 = v7;
  v15 = v6;
  v16 = a2;
  v8 = v17;
  if (v17 > *(a1 + 7))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 2), a1 + 4, v17, 8);
LABEL_7:
    while (1)
    {
      llvm::SmallVectorTemplateBase<long long,true>::push_back((a1 + 2), a1[1] - (v13 + v14) + v15);
      v22[0] = 0;
      {
        goto LABEL_11;
      }

      if (!--v8)
      {
        v7 = v14;
        v9 = v15;
        v6 = v13;
        goto LABEL_13;
      }
    }
  }

  if (v17)
  {
    goto LABEL_7;
  }

  v9 = v6;
LABEL_13:
  if (v9 == v6 + v7)
  {
LABEL_17:
    v10 = 1;
    goto LABEL_18;
  }

  v23 = 257;
  emitDiag(v16, 2, v22, &v24);
  if (v24)
  {
    mlir::Diagnostic::operator<<<60ul>(v25, "Broken properties section: didn't exhaust the offsets table");
  }

  v10 = (v25[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
LABEL_18:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::BytecodeReader::Impl::parseDialectSection(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v24 = a2;
  v25 = a3;
  v26 = a2;
  v27 = v4;
  v23 = 0;
  {
LABEL_31:
    result = 0;
    goto LABEL_32;
  }

  v5 = v23;
  v6 = *(a1 + 280);
  if (v23 != v6)
  {
    if (v23 >= v6)
    {
      if (v23 <= *(a1 + 284))
      {
        v9 = *(a1 + 272);
      }

      else
      {
        v21[0] = 0;
        v9 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1 + 272, (a1 + 288), v23, 8, v21);
        v10 = *(a1 + 272);
        v11 = *(a1 + 280);
        if (v11)
        {
          v12 = 8 * v11;
          v13 = v9;
          v14 = *(a1 + 272);
          do
          {
            v15 = *v14;
            *v14++ = 0;
            *v13++ = v15;
            v12 -= 8;
          }

          while (v12);
          v16 = -8 * v11;
          v17 = &v10[8 * v11 - 8];
          do
          {
            v16 += 8;
          }

          while (v16);
          v10 = *(a1 + 272);
        }

        v18 = v21[0];
        if (v10 != (a1 + 288))
        {
          free(v10);
        }

        *(a1 + 272) = v9;
        *(a1 + 284) = v18;
        v6 = *(a1 + 280);
      }

      if (v5 != v6)
      {
        bzero(&v9[v6], 8 * (v5 - v6));
      }
    }

    else
    {
      v7 = 8 * v23 - 8 * v6;
      v8 = (*(a1 + 272) + 8 * v6 - 8);
      do
      {
        v7 += 8;
      }

      while (v7);
    }

    *(a1 + 280) = v5;
    v5 = v23;
  }

  if (v5)
  {
    operator new();
  }

  v21[0] = a1;
  v21[1] = &v24;
  if (*(a1 + 248) >= 4uLL)
  {
    v22 = 0;
    {
      if (v22 > *(a1 + 372))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 360, (a1 + 376), v22, 48);
      }

      goto LABEL_27;
    }

    goto LABEL_31;
  }

LABEL_27:
  while (v26 != v24 + v25)
  {
    {
      goto LABEL_31;
    }
  }

  result = 1;
LABEL_32:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::BytecodeReader::Impl::parseResourceSection(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v90 = *MEMORY[0x277D85DE8];
  if (*(a3 + 16) != *(a4 + 16))
  {
    v5 = *(a1 + 8);
    if (*(a4 + 16))
    {
      v6 = "unexpected resource offset section when resource section is not present";
    }

    else
    {
      v6 = "expected resource offset section when resource section is present";
    }

    *&v74 = v6;
    LOWORD(v77) = 259;
    emitDiag(v5, 2, &v74, &v87);
    v23 = v89;
    goto LABEL_39;
  }

  if (!*(a3 + 16))
  {
    goto LABEL_93;
  }

  v63[0] = &unk_286EA02A0;
  v63[1] = a1 + 88;
  v63[2] = a1 + 536;
  v63[3] = a1 + 424;
  v63[4] = a1 + 336;
  v63[5] = a2;
  v63[6] = a1 + 248;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 280);
  v62 = *(a1 + 1208);
  v72[0] = *(a1 + 272);
  v72[1] = v9;
  v69 = *a3;
  v70 = v69;
  v71 = v7;
  v66 = *a4;
  v67 = v66;
  v68 = v7;
  v65 = 0;
  {
    v10 = v65;
    if (v65)
    {
      v11 = 0;
      do
      {
        v64 = 0uLL;
        {
          goto LABEL_36;
        }

        v13 = v64;
        ResourceParser = mlir::ParserConfig::getResourceParser(v8, v64, *(&v64 + 1), v12);
        if (!ResourceParser)
        {
          LOWORD(v77) = 257;
          emitDiag(v7, 1, &v74, &v87);
          if (v87)
          {
            mlir::Diagnostic::operator<<<42ul>(&v87 + 8, "ignoring unknown external resources for '");
            if (v87)
            {
              LOWORD(v77) = 261;
              v74 = v13;
              mlir::Diagnostic::operator<<(&v87 + 8, &v74);
              if (v87)
              {
                mlir::Diagnostic::operator<<<2ul>(&v87 + 8, "'");
              }
            }
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
        }

        v81 = 0;
        {
          goto LABEL_36;
        }

        v15 = v81;
        if (v81)
        {
          while (1)
          {
            v83 = 0uLL;
            v82 = 0;
            v73 = 0;
            v80 = 0uLL;
            {
              goto LABEL_36;
            }

            if (ResourceParser)
            {
              v84 = v80;
              v85 = v80;
              v86 = v7;
              v17 = *(&v83 + 1);
              v16 = v83;
              v18 = llvm::StringMap<std::string,llvm::MallocAllocator>::find(a1 + 488, v83, *(&v83 + 1));
              if (*(a1 + 488) + 8 * *(a1 + 496) != v18)
              {
                v19 = *(*v18 + 31);
                if (v19 >= 0)
                {
                  v16 = *v18 + 8;
                }

                else
                {
                  v16 = *(*v18 + 8);
                }

                if (v19 >= 0)
                {
                  v17 = *(*v18 + 31);
                }

                else
                {
                  v17 = *(*v18 + 16);
                }
              }

              *&v83 = v16;
              *(&v83 + 1) = v17;
              *&v74 = &unk_286EA0338;
              *(&v74 + 1) = v16;
              v75 = v17;
              v76 = v82;
              v77 = &v84;
              v78 = a1 + 536;
              v79 = v62;
              if (((*(*ResourceParser + 16))(ResourceParser, &v74) & 1) == 0)
              {
                goto LABEL_36;
              }

              if (v85 != v84 + *(&v84 + 1))
              {
                break;
              }
            }

            if (!--v15)
            {
              goto LABEL_32;
            }
          }

          v20 = v7;
          v21 = v89;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
          if (v21)
          {
            goto LABEL_36;
          }
        }

        else
        {
LABEL_32:
          v20 = v7;
        }

        ++v11;
        v7 = v20;
      }

      while (v11 != v10);
    }

    if (v67 != v66 + *(&v66 + 1))
    {
      v24 = *(**v7 + 32);
      v60 = v7;
      v58 = v24;
      while (1)
      {
        v73 = 0;
        {
          goto LABEL_36;
        }

        v26 = v73;
        {
          goto LABEL_36;
        }

        v27 = **v26;
        if (!v27)
        {
          break;
        }

        if (!mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(**v26))
        {
          LOWORD(v77) = 257;
          emitDiag(v71, 2, &v74, &v87);
          if (v87)
          {
            mlir::Diagnostic::operator<<<35ul>(&v87 + 8, "unexpected resources for dialect '");
          }

          v57 = mlir::InFlightDiagnostic::append<llvm::StringRef &>(&v87, *v26 + 3);
          v56 = v57;
          if (*v57)
          {
            mlir::Diagnostic::operator<<<2ul>((v57 + 1), "'");
          }

LABEL_103:
          v23 = *(v56 + 200);
LABEL_39:
          v22 = (v23 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
          goto LABEL_94;
        }

        v28 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v27);
        *&v64 = 0;
        {
          goto LABEL_36;
        }

        v61 = v64;
        if (v64)
        {
          v29 = 0;
          v59 = v26;
          while (1)
          {
            v83 = 0uLL;
            v82 = 0;
            v81 = 0;
            v80 = 0uLL;
            {
              goto LABEL_36;
            }

            v30 = *(&v83 + 1);
            v31 = v83;
            (*(*v28 + 32))(&v84, v28, v83, *(&v83 + 1));
            if (v86)
            {
              break;
            }

            LOWORD(v77) = 257;
            emitDiag(v71, 2, &v74, &v87);
            if (v87)
            {
              mlir::Diagnostic::operator<<<25ul>(&v87 + 8, "unknown 'resource' key '");
              if (v87)
              {
                LOWORD(v77) = 261;
                *&v74 = v31;
                *(&v74 + 1) = v30;
                mlir::Diagnostic::operator<<(&v87 + 8, &v74);
                if (v87)
                {
                  mlir::Diagnostic::operator<<<16ul>(&v87 + 8, "' for dialect '");
                }
              }
            }

            v38 = mlir::InFlightDiagnostic::append<llvm::StringRef &>(&v87, *v26 + 3);
            v39 = v38;
            if (*v38)
            {
              mlir::Diagnostic::operator<<<2ul>((v38 + 1), "'");
            }

            v40 = *(v39 + 200);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
            if (v40)
            {
              goto LABEL_36;
            }

LABEL_78:
            if (*(&v80 + 1))
            {
              v84 = v80;
              v85 = v80;
              v86 = v60;
              v50 = llvm::StringMap<std::string,llvm::MallocAllocator>::find(a1 + 488, v31, v30);
              if (*(a1 + 488) + 8 * *(a1 + 496) != v50)
              {
                v51 = *(*v50 + 31);
                if (v51 >= 0)
                {
                  v31 = (*v50 + 8);
                }

                else
                {
                  v31 = *(*v50 + 8);
                }

                if (v51 >= 0)
                {
                  v30 = *(*v50 + 31);
                }

                else
                {
                  v30 = *(*v50 + 16);
                }
              }

              *&v83 = v31;
              *(&v83 + 1) = v30;
              *&v74 = &unk_286EA0338;
              *(&v74 + 1) = v31;
              v75 = v30;
              v76 = v82;
              v77 = &v84;
              v78 = a1 + 536;
              v79 = v62;
              if (((*(*v28 + 48))(v28, &v74) & 1) == 0)
              {
                goto LABEL_36;
              }

              if (v85 != v84 + *(&v84 + 1))
              {
                v52 = v89;
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
                if (v52)
                {
                  goto LABEL_36;
                }

                goto LABEL_91;
              }
            }

            if (++v29 == v61)
            {
              goto LABEL_91;
            }
          }

          (*(*v28 + 40))(&v87, v28, &v84);
          v33 = llvm::xxh3_64bits(v31, v30, v32);
          v34 = llvm::StringMapImpl::LookupBucketFor((a1 + 488), v31, v30, v33);
          v35 = *(a1 + 488);
          v36 = v34;
          v37 = *(v35 + 8 * v34);
          if (v37 == -8)
          {
            --*(a1 + 504);
          }

          else if (v37)
          {
            v26 = v59;
LABEL_75:
            if (*(v37 + 31) < 0)
            {
              operator delete(*(v37 + 8));
            }

            v46 = v87;
            *(v37 + 24) = v88;
            *(v37 + 8) = v46;
            v47 = llvm::SmallVectorTemplateCommon<mlir::AsmDialectResourceHandle,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::AsmDialectResourceHandle,true>>(a1 + 424, &v84, 1);
            v48 = *(a1 + 424) + 24 * *(a1 + 432);
            v49 = *v47;
            *(v48 + 16) = *(v47 + 16);
            *v48 = v49;
            ++*(a1 + 432);
            goto LABEL_78;
          }

          buffer = llvm::allocate_buffer((v30 + 33), 8uLL);
          v42 = buffer;
          v43 = (buffer + 4);
          if (v30)
          {
            memcpy(buffer + 4, v31, v30);
          }

          v43[v30] = 0;
          *v42 = v30;
          v42[1] = 0;
          v42[2] = 0;
          v42[3] = 0;
          *(v35 + 8 * v36) = v42;
          ++*(a1 + 500);
          v44 = (*(a1 + 488) + 8 * llvm::StringMapImpl::RehashTable((a1 + 488), v36));
          v26 = v59;
          while (1)
          {
            v37 = *v44;
            if (*v44 && v37 != -8)
            {
              break;
            }

            ++v44;
          }

          goto LABEL_75;
        }

LABEL_91:
        v22 = 1;
        v24 = v58;
        if (v67 == v66 + *(&v66 + 1))
        {
          goto LABEL_94;
        }
      }

      LOWORD(v77) = 257;
      emitDiag(v71, 2, &v74, &v87);
      if (v87)
      {
        mlir::Diagnostic::operator<<<10ul>(&v87 + 8, "dialect '");
      }

      v55 = mlir::InFlightDiagnostic::append<llvm::StringRef &>(&v87, *v26 + 3);
      v56 = v55;
      if (*v55)
      {
        mlir::Diagnostic::operator<<<13ul>((v55 + 1), "' is unknown");
      }

      goto LABEL_103;
    }

LABEL_93:
    v22 = 1;
    goto LABEL_94;
  }

LABEL_36:
  v22 = 0;
LABEL_94:
  v53 = *MEMORY[0x277D85DE8];
  return v22;
}

BOOL anonymous namespace::AttrTypeReader::initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v27[0] = a4;
  v27[1] = a5;
  v10 = *(a1 + 136);
  v23 = a6;
  v24 = a7;
  v25 = a6;
  v26 = v10;
  v22 = 0;
  {
    v11 = v22;
    v12 = *(a1 + 32);
    if (v22 != v12)
    {
      if (v22 >= v12)
      {
        if (v22 > *(a1 + 36))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v22, 40);
          v12 = *(a1 + 32);
        }

        if (v11 != v12)
        {
          bzero((*(a1 + 24) + 40 * v12), 40 * ((40 * (v11 - v12) - 40) / 0x28) + 40);
        }
      }

      *(a1 + 32) = v11;
      LODWORD(v12) = v11;
    }

    v13 = v21;
    v14 = *(a1 + 88);
    if (v21 != v14)
    {
      if (v21 >= v14)
      {
        if (v21 > *(a1 + 92))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 80, (a1 + 96), v21, 40);
          v14 = *(a1 + 88);
        }

        if (v13 != v14)
        {
          bzero((*(a1 + 80) + 40 * v14), 40 * ((40 * (v13 - v14) - 40) / 0x28) + 40);
        }
      }

      *(a1 + 88) = v13;
      LODWORD(v12) = *(a1 + 32);
    }

    v20 = 0;
    v28 = 0;
    v29 = a1 + 24;
    v15 = v12;
    v30 = &v28;
    v31 = &v23;
    v32 = &v20;
    v33 = v27;
    while (v28 != v15)
    {
      if ((parseDialectGrouping(&v23, a2, a3, _ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_, &v29) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v28 = 0;
    v29 = a1 + 80;
    v16 = *(a1 + 88);
    v30 = &v28;
    v31 = &v23;
    v32 = &v20;
    v33 = v27;
    while (v28 != v16)
    {
      if ((parseDialectGrouping(&v23, a2, a3, _ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir4TypeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_, &v29) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v17 = 1;
    if (v25 != v23 + v24)
    {
      v17 = (v34 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
    }
  }

  else
  {
LABEL_24:
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void mlir::BytecodeReader::Impl::parseIRSection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[26] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v7 = a2;
  v8 = a3;
  v9 = a2;
  v10 = v3;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  LOBYTE(v11) = 0;
  v12 = 0;
  v13[0] = *(**v3 + 32);
  memset(&v13[1], 0, 24);
  mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(v13, v3, &v11);
}

uint64_t anonymous namespace::EncodingReader::parseVarInt(_anonymous_namespace_::EncodingReader *this, unint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  if (v4 == (*this + *(this + 1)))
  {
    v9 = v11;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
    if (v9)
    {
      goto LABEL_7;
    }

    v5 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v5)
    {
      goto LABEL_5;
    }

    {
      v6 = *__dst;
      goto LABEL_4;
    }

LABEL_7:
    result = 0;
    goto LABEL_5;
  }

  *(this + 2) = v4 + 1;
  v5 = *v4;
  *a2 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = v5 >> 1;
LABEL_4:
  *a2 = v6;
  result = 1;
LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL anonymous namespace::StringSectionReader::parseString(uint64_t a1, _anonymous_namespace_::EncodingReader *this, _OWORD *a3)
{
  v11 = 0;
  {
    return 0;
  }

  v6 = v11;
  v7 = *(this + 3);
  v8 = *a1;
  v9 = *(a1 + 8);

  return resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v7, v8, v9, v6, a3);
}

uint64_t parseDialectGrouping(_anonymous_namespace_::EncodingReader *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v12 = 0;
  {
    v11 = 0;
    {
      v8 = v11;
      if (!v11)
      {
        return 1;
      }

      v9 = v12;
      while ((a4(a5, *v9) & 1) != 0)
      {
        if (!--v8)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::BytecodeReader::Impl::sortUseListOrder(uint64_t a1, uint64_t ***a2)
{
  v83[6] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (!*a2 || !*v2)
  {
    v20 = 1;
    goto LABEL_92;
  }

  v5 = llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::doFind<void const*>(*(a1 + 512), *(a1 + 528), a2);
  v81 = v2[2];
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::doFind<mlir::Operation const*>((a1 + 704), &v81);
  v7 = *(a1 + 704) + 16 * *(a1 + 720);
  if (v6)
  {
    v7 = v6;
  }

  v8 = *(v7 + 8);
  v9 = v2[2];
  if ((*(v9 + 46) & 0x80) != 0)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = (v8 << 32) | ((v2 - v10) >> 5);
  LODWORD(__src) = 0;
  v78 = v11;
  v81 = v83;
  v82 = 0x300000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,unsigned long long>>::append<std::pair<unsigned int,unsigned long long> const*,void>(&v81, &__src, v79);
  v12 = **a2;
  if (v12)
  {
    v13 = 1;
    v14 = 1;
    do
    {
      __src = v12[2];
      v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::doFind<mlir::Operation const*>((a1 + 704), &__src);
      v16 = *(a1 + 704) + 16 * *(a1 + 720);
      if (v15)
      {
        v16 = v15;
      }

      v17 = v12[2];
      if ((*(v17 + 46) & 0x80) != 0)
      {
        v18 = v17[9];
      }

      else
      {
        v18 = 0;
      }

      v19 = (*(v16 + 8) << 32) | ((v12 - v18) >> 5);
      v13 &= v11 > v19;
      llvm::SmallVectorTemplateBase<std::pair<unsigned int,unsigned long long>,true>::push_back(&v81, v14++, v19);
      v12 = *v12;
      v11 = v19;
    }

    while (v12);
    if (v5)
    {
      v21 = 0;
    }

    else
    {
      v21 = v13;
    }

    if (v21)
    {
      goto LABEL_89;
    }

    if ((v13 & 1) == 0)
    {
      v22 = 126 - 2 * __clz(v82);
      if (v82)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,false>(v81, v81 + 16 * v82, v23, 1);
    }

    if (!v5)
    {
      v24 = v81;
      v25 = v82;
      __src = v79;
      v78 = 0xC00000000;
      if (v82 < 0xD)
      {
        if (!v82)
        {
          v59 = 0;
          v27 = v79;
          goto LABEL_87;
        }

        v26 = 0;
        v27 = v79;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v79, v82, 4);
        v26 = v78;
        v27 = __src;
      }

      v56 = v26;
      v57 = 16 * v25;
      do
      {
        v58 = *v24;
        v24 += 2;
        v27[v56++] = v58;
        v57 -= 16;
      }

      while (v57);
      v59 = v78;
LABEL_87:
      LODWORD(v78) = v59 + v25;
      mlir::IRObjectWithUseList<mlir::OpOperand>::shuffleUseList(a2, v27, (v59 + v25));
      if (__src != v79)
      {
        free(__src);
      }

      goto LABEL_89;
    }

LABEL_30:
    v28 = *(a1 + 512);
    v29 = *(a1 + 528);
    v30 = llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::doFind<void const*>(v28, v29, a2);
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = (v28 + 48 * v29);
    }

    __src = v79;
    v78 = 0x400000000;
    if (*(v31 + 4))
    {
      llvm::SmallVectorImpl<unsigned int>::operator=(&__src, (v31 + 1));
      v80 = *(v31 + 40);
      v74 = v76;
      v75 = 0x400000000;
      if (v78)
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(&v74, &__src);
      }
    }

    else
    {
      v80 = *(v31 + 40);
      v74 = v76;
      v75 = 0x400000000;
    }

    v32 = *a2;
    if (*a2)
    {
      v33 = 0;
      do
      {
        ++v33;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      v33 = 0;
    }

    v34 = v75;
    if (v80 == 1)
    {
      if (v75)
      {
        v20 = 0;
LABEL_78:
        if (v74 != v76)
        {
          free(v74);
        }

        if (__src != v79)
        {
          free(__src);
        }

        goto LABEL_90;
      }

      v71 = v73;
      v72 = 0x400000000;
      llvm::SmallVectorImpl<unsigned int>::resizeImpl<false>(&v71, v33);
      v35 = v71;
      if (v72)
      {
        v36 = 0;
        v37 = vdupq_n_s64((v72 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL);
        v38 = ((v72 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL) - ((v72 - 1) & 3) + 4;
        v39 = v71 + 8;
        do
        {
          v40 = vdupq_n_s64(v36);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_25D0A0500)));
          if (vuzp1_s16(v41, *v37.i8).u8[0])
          {
            *(v39 - 2) = v36;
          }

          if (vuzp1_s16(v41, *&v37).i8[2])
          {
            *(v39 - 1) = v36 + 1;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_25D0A04F0)))).i32[1])
          {
            *v39 = v36 + 2;
            v39[1] = v36 + 3;
          }

          v36 += 4;
          v39 += 4;
        }

        while (v38 != v36);
      }

      if (v75)
      {
        v42 = 0;
        v43 = v74;
        do
        {
          v35[v43[v42]] = v43[v42 + 1];
          v42 += 2;
        }

        while (v42 < v75);
      }

      llvm::SmallVectorImpl<unsigned int>::operator=(&v74, &v71);
      if (v71 != v73)
      {
        free(v71);
      }

      v34 = v75;
    }

    v67 = 0;
    v68 = 0;
    v69 = 0;
    if (v34)
    {
      v44 = 0;
      v45 = 0;
      v46 = v74;
      v47 = 4 * v34;
      while (1)
      {
        v70 = 0;
        v48 = v69;
        if (llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v44, v69, *v46, &v70))
        {
          goto LABEL_76;
        }

        v49 = v70;
        v71 = v70;
        v50 = v68;
        if (4 * v68 + 4 >= 3 * v48)
        {
          break;
        }

        if (v48 + ~v68 - HIDWORD(v68) <= v48 >> 3)
        {
          goto LABEL_69;
        }

LABEL_64:
        LODWORD(v68) = v50 + 1;
        if (*v49 != -1)
        {
          --HIDWORD(v68);
        }

        v51 = *v46++;
        *v49 = v51;
        v45 += v51;
        v47 -= 4;
        if (!v47)
        {
          v52 = v75;
          goto LABEL_72;
        }
      }

      v48 *= 2;
LABEL_69:
      llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(&v67, v48);
      v44 = v67;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(v67, v69, *v46, &v71);
      v50 = v68;
      v49 = v71;
      goto LABEL_64;
    }

    v52 = 0;
    v45 = 0;
LABEL_72:
    if (v33 != v52 || v45 != ((v33 - 1) * v33) >> 1)
    {
LABEL_76:
      v20 = 0;
LABEL_77:
      MEMORY[0x25F891030](v67, 4);
      goto LABEL_78;
    }

    v53 = v81;
    v54 = v82;
    v71 = v73;
    v72 = 0x400000000;
    if (v82 < 5)
    {
      if (!v82)
      {
        v66 = 0;
LABEL_98:
        LODWORD(v72) = v66 + v54;
        llvm::SmallVectorImpl<unsigned int>::operator=(&v74, &v71);
        if (v71 != v73)
        {
          free(v71);
        }

        mlir::IRObjectWithUseList<mlir::OpOperand>::shuffleUseList(a2, v74, v75);
        v20 = 1;
        goto LABEL_77;
      }

      v55 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v82, 4);
      v55 = v72;
    }

    v62 = v71 + 4 * v55;
    v63 = v74;
    v64 = 16 * v54;
    do
    {
      v65 = *v53;
      v53 += 4;
      *v62++ = v63[v65];
      v64 -= 16;
    }

    while (v64);
    v66 = v72;
    goto LABEL_98;
  }

  if (v5)
  {
    goto LABEL_30;
  }

LABEL_89:
  v20 = 1;
LABEL_90:
  if (v81 != v83)
  {
    free(v81);
  }

LABEL_92:
  v60 = *MEMORY[0x277D85DE8];
  return v20;
}

void llvm::SmallVectorTemplateBase<std::pair<unsigned int,unsigned long long>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
}

uint64_t mlir::BytecodeReader::Impl::parseBlockHeader(void *a1, void **this, uint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  {
LABEL_33:
    result = 0;
    goto LABEL_34;
  }

  v6 = *(a3 + 112);
  *(a3 + 112) = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v10 = a1[31];
LABEL_11:
    result = 1;
    goto LABEL_34;
  }

  v7 = *(a3 + 104);
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v46 = 0;
  {
    goto LABEL_33;
  }

  v50 = &v52;
  v51 = 0x600000000;
  v47 = v49;
  v48 = 0x600000000;
  v9 = v46;
  if (v46 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, &v52, v46, 8);
    if (v9 > HIDWORD(v48))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v49, v9, 8);
    }

    goto LABEL_13;
  }

  if (v46)
  {
LABEL_13:
    v42 = v8;
    v12 = *(***a1 + 616);
    while (1)
    {
      v44 = v12;
      v45 = 0;
      if (a1[31] < 4uLL)
      {
        {
LABEL_25:
          v22 = 1;
          goto LABEL_28;
        }

        v17 = v45;
      }

      else
      {
        v43 = 0;
        {
          goto LABEL_25;
        }

        v15 = v43;
        if (!v16)
        {
          goto LABEL_25;
        }

        v17 = v16;
        if ((v15 & 1) != 0 && !mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, this, &v44))
        {
          goto LABEL_25;
        }
      }

      --v9;
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v50, v17);
      llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(&v47, v44);
      if (!v9)
      {
        v18 = v50;
        v19 = v51;
        v20 = v47;
        v21 = v48;
        v8 = v42;
        goto LABEL_27;
      }
    }
  }

  v21 = 0;
  v19 = 0;
  v20 = v49;
  v18 = &v52;
LABEL_27:
  mlir::Block::addArguments(v8, v18 & 0xFFFFFFFFFFFFFFF9 | 2, v19, v20, v21);
  v22 = !mlir::BytecodeReader::Impl::defineValues(a1, this[3], *(v8 + 48) & 0xFFFFFFFFFFFFFFF9, (*(v8 + 56) - *(v8 + 48)) >> 3);
LABEL_28:
  if (v47 != v49)
  {
    free(v47);
  }

  if (v50 != &v52)
  {
    free(v50);
  }

  if (v22)
  {
    goto LABEL_33;
  }

  if (a1[31] < 3uLL)
  {
    goto LABEL_11;
  }

  LOBYTE(v45) = 0;
  result = 0;
  if (!v24)
  {
    goto LABEL_34;
  }

  if (!v45)
  {
    goto LABEL_11;
  }

  v25 = *(a3 + 104);
  if (v25)
  {
    v26 = v25 - 8;
  }

  else
  {
    v26 = 0;
  }

  mlir::BytecodeReader::Impl::parseUseListOrderForRange(&v50, this, ((*(v26 + 56) - *(v26 + 48)) >> 3));
  if (v53 != 1 || !v51)
  {
    v41 = 0;
    result = 0;
    if (!v53)
    {
      goto LABEL_34;
    }

LABEL_67:
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::destroyAll(&v50);
    MEMORY[0x25F891030](v50, 8);
    result = v41;
    goto LABEL_34;
  }

  v28 = *(v26 + 48);
  v27 = *(v26 + 56);
  if (((v27 - v28) & 0x7FFFFFFF8) == 0)
  {
    v41 = 1;
    goto LABEL_67;
  }

  v29 = 0;
  do
  {
    if (v52)
    {
      v30 = v52 - 1;
      v31 = (v52 - 1) & (37 * v29);
      v32 = v50 + 48 * v31;
      v33 = *v32;
      if (*v32 == v29)
      {
        v46 = *(v28 + 8 * v29);
LABEL_48:
        v34 = v50 + 48 * v52;
        if (v32)
        {
          v34 = v32;
        }

        llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::try_emplace<mlir::BytecodeReader::Impl::UseListOrderStorage const&>(&v47, (a1 + 64), &v46, (v34 + 8));
        v28 = *(v26 + 48);
        v27 = *(v26 + 56);
      }

      else
      {
        v35 = 1;
        v36 = *v32;
        v37 = v30 & (37 * v29);
        while (v36 != -1)
        {
          v38 = v37 + v35++;
          v37 = v38 & v30;
          v36 = *(v50 + 12 * v37);
          if (v36 == v29)
          {
            v46 = *(v28 + 8 * v29);
            if (v33 != v29)
            {
              v39 = 1;
              while (v33 != -1)
              {
                v40 = v31 + v39++;
                v31 = v40 & v30;
                v32 = v50 + 48 * (v40 & v30);
                v33 = *v32;
                if (*v32 == v29)
                {
                  goto LABEL_48;
                }
              }

              v32 = 0;
            }

            goto LABEL_48;
          }
        }
      }
    }

    ++v29;
  }

  while (v29 < ((v27 - v28) >> 3));
  v41 = 1;
  result = 1;
  if (v53)
  {
    goto LABEL_67;
  }

LABEL_34:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<mlir::BytecodeReader::Impl::ValueScope>::emplace_back<>(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 >= v2)
  {
    v5 = *a1;
    v6 = &v3[-*a1];
    v7 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3) + 1;
    if (v7 > 0x492492492492492)
    {
      std::vector<mlir::BytecodeReader::Impl::ValueScope>::__throw_length_error[abi:nn200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 8 * (v6 >> 3);
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0;
    *v10 = 0u;
    *(v10 + 24) = v10 + 40;
    *(v10 + 36) = 4;
    v4 = v10 + 56;
    v11 = v10 - v6;
    if (v5 != v3)
    {
      v12 = 0;
      do
      {
        v13 = (v12 + v5);
        *v12 = 0;
        v12[1] = 0;
        v12[2] = 0;
        *v12 = *(v12 + v5);
        v12[2] = *(v12 + v5 + 16);
        *v13 = 0;
        v13[1] = 0;
        v13[2] = 0;
        v12[3] = v12 + 5;
        v12[4] = 0x400000000;
        if (*(v12 + v5 + 32))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=((v12 + 3), (v13 + 3));
        }

        v12 += 7;
      }

      while (v13 + 7 != v3);
      do
      {
        std::allocator<mlir::BytecodeReader::Impl::ValueScope>::destroy[abi:nn200100](v5);
        v5 += 56;
      }

      while (v5 != v3);
      v5 = *a1;
    }

    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *(v3 + 6) = 0;
    *v3 = 0u;
    *(v3 + 3) = v3 + 40;
    *(v3 + 9) = 4;
    v4 = (v3 + 56);
  }

  a1[1] = v4;
}

void mlir::BytecodeReader::Impl::ValueScope::push(void *a1, uint64_t a2)
{
  llvm::SmallVectorTemplateBase<unsigned int,true>::push_back((a1 + 3), (a1[1] - *a1) >> 3);
  v4 = *(a2 + 32) + ((a1[1] - *a1) >> 3);

  std::vector<mlir::Value>::resize(a1, v4);
}

BOOL mlir::BytecodeReader::Impl::parseRegions(mlir::StringAttr ***a1, uint64_t *a2, uint64_t a3)
{
  v159 = *MEMORY[0x277D85DE8];
  if (*a3 == *(a3 + 8))
  {
LABEL_172:
    if (*(a3 + 120) == 1)
    {
      v98 = (a1[86] - 7);
      std::allocator<mlir::BytecodeReader::Impl::ValueScope>::destroy[abi:nn200100](v98);
      a1[86] = v98;
    }

    v99 = (a2[1] - 128);
    std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::destroy[abi:nn200100](v99);
    a2[1] = v99;
    v85 = 1;
    goto LABEL_179;
  }

  v110 = a1 + 53;
  v111 = (a1 + 67);
  v109 = a1 + 42;
  v112 = (a1 + 104);
  v113 = (a1 + 95);
  v114 = (a1 + 31);
  v108 = a1 + 91;
  while (!*(a3 + 104))
  {
    v7 = *(a3 + 16);
    v133 = 0;
    {
      goto LABEL_178;
    }

    v8 = v133;
    if (v133)
    {
      v151 = 0;
      {
        *(a3 + 32) = v151;
        *(a3 + 48) = 0;
        if (v8 > *(a3 + 52))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3 + 40, (a3 + 56), v8, 8);
        }

        operator new();
      }

LABEL_178:
      v85 = 0;
      goto LABEL_179;
    }

    v9 = *a3;
    if (**a3 != *a3)
    {
      break;
    }

LABEL_171:
    v97 = v9 + 24;
    *a3 = v97;
    if (v97 == *(a3 + 8))
    {
      goto LABEL_172;
    }
  }

  v107 = a2;
  v10 = *(a3 + 16);
  while (1)
  {
    v11 = *(a3 + 112);
    *(a3 + 112) = v11 - 1;
    v12 = v3;
    if (v11)
    {
      break;
    }

LABEL_167:
    v93 = *(*(a3 + 104) + 8);
    *(a3 + 104) = v93;
    if (v93 == *a3)
    {
      *(a3 + 104) = 0;
      v94 = a1[86];
      v95 = *(v94 - 56);
      v96 = *(v94 - 48);
      v94 -= 56;
      std::vector<mlir::Value>::resize(v94, ((v96 - v95) >> 3) - *(a3 + 32));
      --*(v94 + 32);
      v9 = *a3;
      v3 = v12;
      a2 = v107;
      goto LABEL_171;
    }

    v3 = v12;
    v85 = 0;
    if ((mlir::BytecodeReader::Impl::parseBlockHeader(a1, v10, a3) & 1) == 0)
    {
      goto LABEL_179;
    }
  }

  while (1)
  {
    __p[0] = 0;
    {
      goto LABEL_178;
    }

    v151 = "operation name";
    *&v152 = 14;
    *v123 = __p[0];
    if (__p[0] >= *(a1 + 92))
    {
      v15 = v144;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v133);
      if (v15)
      {
        goto LABEL_178;
      }

      v14 = 0;
    }

    else
    {
      v14 = &a1[45][6 * __p[0]];
    }

    v16 = *(v14 + 40);
    if ((*(v14 + 8) & 1) == 0)
    {
      if (*(v14 + 32))
      {
        v133 = &unk_286EA02A0;
        v134 = a1 + 11;
        v135 = v111;
        v136 = v110;
        v137[0] = v109;
        v137[1] = v10;
        v137[2] = v114;
        {
          goto LABEL_178;
        }

        v17 = *(v14 + 16);
        WORD4(v124) = 773;
        v19 = *(v17 + 24);
        v18 = *(v17 + 32);
        *v123 = v19;
        *&v123[8] = v18;
        *&v123[16] = ".";
        v20 = *(v14 + 24);
        v21 = *(v14 + 32);
        v151 = v123;
        *(&v152 + 1) = v20;
        *&v153 = v21;
        WORD4(v153) = 1282;
        llvm::Twine::str(&v151, __p);
        v22 = **a1;
        if (*(v14 + 8) == 1)
        {
          *(v14 + 8) = 0;
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v24 = SHIBYTE(__p[2]);
        }

        else
        {
          v24 = __p[1];
        }

        mlir::OperationName::OperationName(v14, v23, v24, v22);
        *(v14 + 8) = 1;
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        mlir::OperationName::OperationName(v14, *(*(v14 + 16) + 24), *(*(v14 + 16) + 32), **a1);
        *(v14 + 8) = 1;
      }
    }

    v25 = *v14;
    v120 = 0;
    {
      goto LABEL_178;
    }

    v119 = 0;
    if (!mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(a1, v10, &v119))
    {
      goto LABEL_178;
    }

    v133 = v119;
    v134 = v25;
    v135 = v137;
    v136 = 0x400000000;
    v138 = &v140;
    v139 = 0x400000000;
    v141[0] = &v142;
    v141[1] = 0x400000000;
    v143 = 4;
    v144 = &v146;
    v145 = 0x100000000;
    v147 = &v149;
    v148 = 0x100000000;
    v150[0] = 0;
    v150[1] = 0;
    v150[2] = &mlir::detail::TypeIDResolver<void,void>::id;
    v150[3] = 0;
    v150[5] = 0;
    v26 = v120;
    if (v120)
    {
      __p[0] = 0;
      {
        goto LABEL_177;
      }

      v27 = __p[0];
      if (*(*__p[0] + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        {
          *&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::DictionaryAttr>();
          *(&llvm::getTypeName<mlir::DictionaryAttr>(void)::Name + 1) = v92;
        }

        *v123 = llvm::getTypeName<mlir::DictionaryAttr>(void)::Name;
        v28 = v158;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v151);
        if (v28)
        {
          goto LABEL_177;
        }

        v27 = 0;
      }

      mlir::NamedAttrList::NamedAttrList(&v151, v27);
      llvm::SmallVectorImpl<mlir::NamedAttribute>::operator=(v141, &v151);
      v143 = v156[3];
      if (v151 != &v152 + 8)
      {
        free(v151);
      }

      v26 = v120;
    }

    if ((v26 & 0x40) != 0)
    {
      if ((v16 & 0x100) == 0)
      {
        v102 = a1[1];
        WORD4(v124) = 259;
        emitDiag(v102, 2, v123, &v151);
        if (v151)
        {
          v103 = *v114;
          LODWORD(__p[0]) = 5;
          __p[1] = v103;
          v104 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v153, __p, 1);
          v105 = v153 + 24 * DWORD2(v153);
          v106 = *v104;
          *(v105 + 16) = *(v104 + 16);
          *v105 = v106;
          ++DWORD2(v153);
          if (v151)
          {
            mlir::Diagnostic::operator<<<18ul>(&v152, " with properties.");
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v151);
LABEL_177:
        mlir::OperationState::~OperationState(&v133);
        goto LABEL_178;
      }

      __p[0] = &unk_286EA02A0;
      __p[1] = (a1 + 11);
      __p[2] = v111;
      *&v116 = v110;
      *(&v116 + 1) = v109;
      v117 = v10;
      v118 = v114;
      v29 = a1[1];
      v130 = 0;
      {
        goto LABEL_177;
      }

      if (v130 >= *(a1 + 156))
      {
        v34 = "Properties idx out-of-bound for ";
      }

      else
      {
        v30 = a1[76];
        if (v130 < v30)
        {
          v31 = a1[77][v130];
          v128 = 0;
          v129 = 0;
          *v123 = v31 + a1[75];
          *&v123[8] = v30 - v31;
          *&v123[16] = *v123;
          *&v124 = v29;
          v152 = *&__p[1];
          v153 = v116;
          v151 = &unk_286EA02A0;
          v154 = v123;
          v155 = v118;
          {
            goto LABEL_177;
          }

          v127[0] = v128;
          v127[1] = v129;
          v127[2] = v128;
          v127[3] = v29;
          *&v123[8] = *&__p[1];
          v124 = v116;
          *v123 = &unk_286EA02A0;
          v125 = v127;
          v126 = v118;
          v32 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();
          v33 = mlir::detail::InterfaceMap::lookup(v25 + 32, v32);
          if (v33)
          {
            if (((*v33)(v123, &v133) & 1) == 0)
            {
              goto LABEL_177;
            }
          }

          else if (*(v25 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
          {
            {
              goto LABEL_177;
            }
          }

          else
          {
            v121[0] = "has properties but missing BytecodeOpInterface for ";
            v122 = 259;
            if (v151)
            {
              v88 = *(*(v25 + 8) + 16);
              v89 = *(*(v25 + 8) + 24);
              v132 = 261;
              v131[0] = v88;
              v131[1] = v89;
              mlir::Diagnostic::operator<<(&v152, v131);
            }

            v90 = v158;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v151);
            if (v90)
            {
              goto LABEL_177;
            }
          }

          goto LABEL_57;
        }

        v34 = "Properties offset out-of-bound for ";
      }

      v131[0] = v34;
      v132 = 259;
      (*(__p[0] + 2))(&v151, __p, v131);
      if (v151)
      {
        v35 = *(*(v25 + 8) + 16);
        v36 = *(*(v25 + 8) + 24);
        WORD4(v124) = 261;
        *v123 = v35;
        *&v123[8] = v36;
        mlir::Diagnostic::operator<<(&v152, v123);
      }

      v37 = v158;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v151);
      if (v37)
      {
        goto LABEL_177;
      }
    }

LABEL_57:
    if ((v26 & 2) != 0)
    {
      v151 = 0;
      {
        goto LABEL_177;
      }

      v38 = v151;
      llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v138, v151);
      if (v38 >= 1)
      {
        v39 = 0;
        v40 = v38 & 0x7FFFFFFF;
        {
          ++v39;
          if (!--v40)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_177;
      }
    }

LABEL_63:
    if ((v26 & 4) != 0)
    {
      v121[0] = 0;
      {
        goto LABEL_177;
      }

      v41 = v121[0];
      llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(&v135, v121[0]);
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = v41 & 0x7FFFFFFF;
        while (1)
        {
          v44 = a1[86];
          v131[0] = 0;
          {
            break;
          }

          v45 = v131[0];
          *v123 = "value";
          *&v123[8] = 5;
          __p[0] = v131[0];
          v47 = v44 - 7;
          v46 = *(v44 - 7);
          if (v131[0] >= (v47[1] - v46) >> 3)
          {
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v151);
            break;
          }

          v48 = *(v46 + 8 * v131[0]);
          if (!v48)
          {
            v49 = *v112;
            if (*v112 == v112)
            {
              v52 = mlir::Operation::create((a1 + 109));
              *(v52 + 2) = v108;
              *(v52 + 8) = -1;
              v50 = v113;
              v53 = *v113;
              *v52 = *v113;
              *(v52 + 1) = v113;
              *(v53 + 8) = v52;
              *v113 = v52;
            }

            else
            {
              v50 = v113;
              if (v49 != v113)
              {
                v51 = v49[1];
                if (v51 != v113)
                {
                  llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(v113, v113, v49[2] + 32, v49, v51);
                  v50 = v113;
                }
              }
            }

            v48 = *v50 - 16;
            *(v46 + 8 * v45) = v48;
          }

          v135[v42++] = v48;
          if (v43 == v42)
          {
            goto LABEL_77;
          }
        }

        v135[v42] = 0;
        goto LABEL_177;
      }
    }

LABEL_77:
    if ((v26 & 8) != 0)
    {
      v121[0] = 0;
      {
        goto LABEL_177;
      }

      v54 = v121[0];
      v55 = v145;
      if (v121[0] != v145)
      {
        if (v121[0] >= v145)
        {
          if (v121[0] > HIDWORD(v145))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v144, &v146, v121[0], 8);
            v55 = v145;
          }

          if (v54 != v55)
          {
            bzero(&v144[v55], 8 * (v54 - v55));
          }
        }

        LODWORD(v145) = v54;
      }

      if (v54 >= 1)
      {
        v56 = 0;
        do
        {
          v57 = v144;
          v131[0] = 0;
          {
            goto LABEL_177;
          }

          *v123 = "successor";
          *&v123[8] = 9;
          __p[0] = v131[0];
          if (v131[0] >= *(a3 + 48))
          {
            v58 = v158;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v151);
            if (v58 == 1)
            {
              goto LABEL_177;
            }
          }

          else
          {
            v57[v56] = *(*(a3 + 40) + 8 * v131[0]);
          }
        }

        while ((v54 & 0x7FFFFFFF) != ++v56);
      }
    }

    LOBYTE(v151) = 0;
    LOBYTE(v153) = 0;
    v59 = (*v114 > 2) & (v26 >> 5);
    if (v59 == 1)
    {
      mlir::BytecodeReader::Impl::parseUseListOrderForRange(v123, v10, v139);
      if ((v124 & 1) == 0)
      {
        goto LABEL_177;
      }

      v151 = *v123;
      *&v152 = *&v123[8];
      memset(v123, 0, 20);
      DWORD2(v152) = *&v123[16];
      LOBYTE(v153) = 1;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::destroyAll(v123);
      MEMORY[0x25F891030](0, 8);
    }

    if ((v26 & 0x10) != 0)
    {
      *v123 = 0;
      {
        if ((v59 & 1) == 0)
        {
          goto LABEL_177;
        }

        v83 = 0;
        v63 = 0;
        v60 = 0;
        goto LABEL_138;
      }

      v60 = v123[0];
      v61 = *v123 >> 1;
      if (*v123 >> 1 > HIDWORD(v148))
      {
        llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::grow(&v147, *v123 >> 1);
      }

      if (v61 >= 1)
      {
        operator new();
      }
    }

    else
    {
      v60 = 0;
    }

    v62 = mlir::Operation::create(&v133);
    v63 = v62;
    v64 = *(a3 + 104);
    v65 = v64 ? v64 - 8 : 0;
    *(v62 + 2) = v65;
    *(v62 + 8) = -1;
    v67 = *(v65 + 32);
    v66 = (v65 + 32);
    *v62 = v67;
    *(v62 + 1) = v66;
    *(v67 + 8) = v62;
    *v66 = v62;
    if (!*(a3 + 32))
    {
      goto LABEL_109;
    }

    v68 = *(v62 + 9);
    if (v68 && !mlir::BytecodeReader::Impl::defineValues(a1, v10[3], (v62 - 16) & 0xFFFFFFFFFFFFFFF9 | 4, v68))
    {
      if ((v59 & 1) == 0)
      {
        goto LABEL_177;
      }

      v83 = 0;
      v63 = 0;
    }

    else
    {
LABEL_109:
      if ((v59 & 1) == 0)
      {
        goto LABEL_135;
      }

      v69 = v63[9];
      if (v69)
      {
        for (i = 0; i < v69; ++i)
        {
          if (DWORD2(v152))
          {
            v71 = DWORD2(v152) - 1;
            v72 = (DWORD2(v152) - 1) & (37 * i);
            v73 = v151 + 48 * v72;
            v74 = *v73;
            if (*v73 == i)
            {
LABEL_114:
              v75 = &v63[-6 * (i - 5) - 24];
              if (i <= 5)
              {
                v75 = &v63[4 * ~i];
              }

              __p[0] = v75;
              if (v74 != i)
              {
                v81 = 1;
                while (v74 != -1)
                {
                  v82 = v72 + v81++;
                  v72 = v82 & v71;
                  v73 = v151 + 48 * v72;
                  v74 = *v73;
                  if (*v73 == i)
                  {
                    goto LABEL_117;
                  }
                }

                v73 = 0;
              }

LABEL_117:
              v76 = v151 + 48 * DWORD2(v152);
              if (v73)
              {
                v76 = v73;
              }

              llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::try_emplace<mlir::BytecodeReader::Impl::UseListOrderStorage const&>(v123, (a1 + 64), __p, (v76 + 8));
              v69 = v63[9];
            }

            else
            {
              v77 = 1;
              v78 = *v73;
              v79 = v71 & (37 * i);
              while (v78 != -1)
              {
                v80 = v79 + v77++;
                v79 = v80 & v71;
                v78 = *(v151 + 12 * v79);
                if (v78 == i)
                {
                  goto LABEL_114;
                }
              }
            }
          }
        }

        if ((v153 & 1) == 0)
        {
LABEL_135:
          mlir::OperationState::~OperationState(&v133);
          goto LABEL_139;
        }
      }

      v83 = 1;
    }

LABEL_138:
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::destroyAll(&v151);
    MEMORY[0x25F891030](v151, 8);
    mlir::OperationState::~OperationState(&v133);
    if ((v83 & 1) == 0)
    {
      goto LABEL_178;
    }

LABEL_139:
    v84 = v63[11];
    if ((v84 & 0x7FFFFF) != 0)
    {
      break;
    }

    v87 = *(a3 + 112);
    *(a3 + 112) = v87 - 1;
    if (!v87)
    {
      goto LABEL_167;
    }
  }

  v151 = (((&v63[4 * ((v84 >> 23) & 1) + 17] + ((v84 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v63[10]);
  *&v152 = v151 + 24 * (v84 & 0x7FFFFF);
  *(&v152 + 1) = v10;
  *&v153 = 0;
  DWORD2(v153) = 0;
  v154 = v156;
  v155 = 0x600000000;
  v156[6] = 0;
  v156[7] = 0;
  v157 = v60 & 1;
  if (*v114 < 2)
  {
    std::vector<mlir::BytecodeReader::Impl::RegionReadState>::push_back[abi:nn200100](v107, &v151);
    if (v60)
    {
      std::vector<mlir::BytecodeReader::Impl::ValueScope>::emplace_back<>(a1 + 85);
    }

    goto LABEL_148;
  }

  if ((v60 & 1) == 0)
  {
    std::vector<mlir::BytecodeReader::Impl::RegionReadState>::push_back[abi:nn200100](v107, &v151);
LABEL_148:
    v85 = 1;
    goto LABEL_149;
  }

  LOBYTE(v131[0]) = 0;
  __p[0] = 0;
  __p[1] = 0;
  {
    if (LOBYTE(v131[0]) == 4)
    {
      operator new();
    }

    v91 = a1[1];
    *v123 = "expected IR section for region";
    WORD4(v124) = 259;
    emitDiag(v91, 2, v123, &v133);
    v85 = (v144 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v133);
  }

  else
  {
    v85 = 0;
  }

LABEL_149:
  if (v154 != v156)
  {
    free(v154);
  }

  v86 = v153;
  *&v153 = 0;
  if (v86)
  {
    MEMORY[0x25F891040](v86, 0x1070C401CF53446);
  }

LABEL_179:
  v100 = *MEMORY[0x277D85DE8];
  return v85;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[54]>(uint64_t a1, void *a2, char *a3)
{
  v8[25] = *MEMORY[0x277D85DE8];
  v6[16] = 257;
  emitDiag(a2, 2, v6, &v7);
  if (v7)
  {
    mlir::Diagnostic::operator<<<54ul>(v8, a3);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v7);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::try_emplace<std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::LookupBucketFor<mlir::Operation *>(*a2, *(a2 + 16), *a3, &v14);
  v9 = v14;
  v10 = *(a2 + 16);
  if (result)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v15 = v14;
  v12 = *(a2 + 8);
  if (4 * v12 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_10;
  }

  if (v10 + ~v12 - *(a2 + 12) <= v10 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::LookupBucketFor<mlir::Operation *>(*a2, *(a2 + 16), *a3, &v15);
    v12 = *(a2 + 8);
    v9 = v15;
  }

  *(a2 + 8) = v12 + 1;
  if (*v9 != -4096)
  {
    --*(a2 + 12);
  }

  *v9 = *a3;
  v9[1] = *a4;
  v10 = *(a2 + 16);
  v11 = 1;
LABEL_8:
  v13 = *a2 + 16 * v10;
  *a1 = v9;
  *(a1 + 8) = v13;
  *(a1 + 16) = v11;
  return result;
}

void std::vector<mlir::BytecodeReader::Impl::RegionReadState>::push_back[abi:nn200100](uint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 7;
    if ((v6 + 1) >> 57)
    {
      std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 6;
    if (v7 >> 6 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFF80)
    {
      v9 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BytecodeReader::Impl::RegionReadState>>(v9);
    }

    v10 = v6 << 7;
    std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::construct[abi:nn200100]<mlir::BytecodeReader::Impl::RegionReadState,mlir::BytecodeReader::Impl::RegionReadState>(v10, a2);
    v5 = v10 + 128;
    v11 = a1[1];
    v12 = v10 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::BytecodeReader::Impl::RegionReadState>,mlir::BytecodeReader::Impl::RegionReadState*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    a1[1] = v10 + 128;
    v14 = a1[2];
    a1[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    std::__split_buffer<mlir::BytecodeReader::Impl::RegionReadState>::~__split_buffer(v15);
  }

  else
  {
    std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::construct[abi:nn200100]<mlir::BytecodeReader::Impl::RegionReadState,mlir::BytecodeReader::Impl::RegionReadState>(a1[1], a2);
    v5 = v4 + 128;
  }

  a1[1] = v5;
}

void mlir::BytecodeReader::BytecodeReader(void *a1, uint64_t a2, mlir::StringAttr **a3)
{
  *a1 = 0;
  mlir::FileLineColRange::get(*a3, *(a2 + 16), *(a2 + 24), 0, 0);
  operator new();
}

uint64_t mlir::BytecodeReader::Impl::materialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 72) = a3;
  *(a1 + 80) = a4;
  v8 = a2;
  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::doFind<mlir::Operation const*>((a1 + 48), &v8);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = (*(a1 + 48) + 16 * *(a1 + 64));
  }

  result = mlir::BytecodeReader::Impl::materialize(a1, v6);
  *(a1 + 72) = 0;
  return result;
}

uint64_t mlir::BytecodeReader::Impl::finalize(uint64_t a1, unsigned int (*a2)(uint64_t), uint64_t a3)
{
  if (!*(a1 + 40))
  {
    return 1;
  }

  do
  {
    v13 = *(*(a1 + 32) + 16);
    if (a2(a3))
    {
      v14 = v13;
      v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::doFind<mlir::Operation const*>((a1 + 48), &v14);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = (*(a1 + 48) + 16 * *(a1 + 64));
      }

      if ((mlir::BytecodeReader::Impl::materialize(a1, v7) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      mlir::Operation::dropAllReferences(v13);
      v8 = v13;
      if (*(v13 + 2))
      {
        *(v13 + 2) = 0;
        v10 = *v8;
        v9 = *(v8 + 1);
        *v9 = *v8;
        *(v10 + 8) = v9;
        *v8 = 0;
        *(v8 + 1) = 0;
      }

      mlir::Operation::destroy(v8);
      std::list<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>>::pop_front(a1 + 24);
      v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::doFind<mlir::Operation *>((a1 + 48), &v13);
      if (v11)
      {
        *v11 = -8192;
        *(a1 + 56) = vadd_s32(*(a1 + 56), 0x1FFFFFFFFLL);
      }
    }
  }

  while (*(a1 + 40));
  return 1;
}

BOOL mlir::readBytecodeFile(_OWORD *a1, uint64_t a2, mlir::StringAttr **a3)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v6 = 0;
  v7 = 0;
  BytecodeFileImpl = readBytecodeFileImpl(v8, a2, a3, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return BytecodeFileImpl;
}

BOOL readBytecodeFileImpl(uint64_t a1, uint64_t a2, mlir::StringAttr **a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = mlir::FileLineColRange::get(*a3, *(a1 + 16), *(a1 + 24), 0, 0);
  if (*(a1 + 8) >= 4uLL && **a1 == 1391414349)
  {
    v12 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v12;
    mlir::BytecodeReader::Impl::Impl(v16, v8, a3, 0, v14, a4);
    v9 = mlir::BytecodeReader::Impl::read(v16, a2, 0, v13);
    mlir::BytecodeReader::Impl::~Impl(v16);
  }

  else
  {
    *&v14[0] = "input buffer is not an MLIR bytecode file";
    v15 = 259;
    emitDiag(v8, 2, v14, v16);
    v9 = (v16[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::readBytecodeFile(uint64_t ****a1, uint64_t a2, mlir::StringAttr **a3)
{
  v6 = ***a1;
  v7 = *v6;
  v8 = v6[2] - v6[1];
  v11[0] = v6[1];
  v11[1] = v8;
  v11[2] = (*(v7 + 16))(v6, a2);
  v11[3] = v9;
  return readBytecodeFileImpl(v11, a2, a3, a1);
}

uint64_t mlir::Diagnostic::append<unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = 5;
  v14 = a2;
  v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v13, 1);
  v6 = *(a1 + 16) + 24 * *(a1 + 24);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  ++*(a1 + 24);
  mlir::Diagnostic::operator<<<18ul>(a1, " bytes when only ");
  v8 = *a3;
  v13 = 5;
  v14 = v8;
  v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v13, 1);
  v10 = *(a1 + 16) + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 16);
  *v10 = v11;
  ++*(a1 + 24);
  mlir::Diagnostic::operator<<<8ul>(a1, " remain");
  return a1;
}

BOOL anonymous namespace::EncodingReader::parseByte<unsigned char>(uint64_t a1, _BYTE *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == (*a1 + *(a1 + 8)))
  {
    v3 = (v6[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v6);
  }

  else
  {
    *(a1 + 16) = v2 + 1;
    *a2 = *v2;
    v3 = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL anonymous namespace::EncodingReader::alignTo(_anonymous_namespace_::EncodingReader *this, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = (a2 - 1);
  if ((a2 ^ v3) <= v3)
  {
    v7 = *(this + 3);
    v23 = 257;
    emitDiag(v7, 2, v22, &v25);
    if (v25)
    {
      mlir::Diagnostic::operator<<<40ul>(&v26, "expected alignment to be a power-of-two");
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v22, &v25);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
    v8 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
  }

  else
  {
    do
    {
      if ((*(this + 2) & v3) == 0)
      {
        v8 = 1;
        goto LABEL_23;
      }

      v21 = 0;
      {
        v8 = 0;
        goto LABEL_23;
      }

      v4 = v21;
    }

    while (v21 == 203);
    if (v21)
    {
      v5 = v28;
      do
      {
        *--v5 = llvm::hexdigit(unsigned int,BOOL)::LUT[v4 & 0xF];
        v6 = v4 > 0xF;
        v4 >>= 4;
      }

      while (v6);
    }

    else
    {
      v5 = &v27;
      v27 = 48;
    }

    std::string::__init_with_size[abi:nn200100]<char *,char *>(&__dst, v5, v28, v28 - v5);
    v9 = std::string::insert(&__dst, 0, "expected alignment byte (0xCB), but got: '0x");
    v10 = v9->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v18, "'");
    v12 = v11->__r_.__value_.__r.__words[2];
    *__p = *&v11->__r_.__value_.__l.__data_;
    v20 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = *(this + 3);
    v23 = 257;
    emitDiag(v13, 2, v22, &v25);
    if (v25)
    {
      v23 = 260;
      v22[0] = __p;
      mlir::Diagnostic::operator<<(&v26, v22);
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v22, &v25);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
    v14 = v24;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v8 = (v14 & 1) == 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

LABEL_23:
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL anonymous namespace::EncodingReader::parseBytes(uint64_t a1, unint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v3 = *(a1 + 16);
  if (*a1 + *(a1 + 8) - v3 >= a2)
  {
    *a3 = v3;
    a3[1] = a2;
    *(a1 + 16) += a2;
    v4 = 1;
  }

  else
  {
    v7 = *a1 + *(a1 + 8) - v3;
    v4 = (v9[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[21],unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v10[25] = *MEMORY[0x277D85DE8];
  v8[16] = 257;
  emitDiag(a2, 2, v8, &v9);
  if (v9)
  {
    mlir::Diagnostic::operator<<<21ul>(v10, "attempting to parse ");
    mlir::Diagnostic::append<unsigned long &,char const(&)[18],unsigned long,char const(&)[8]>(v10, *a3, a4);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v9);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  v7 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::EncodingReader::emitError<char const(&)[62]>(uint64_t a1, void *a2, char *a3)
{
  v8[25] = *MEMORY[0x277D85DE8];
  v6[16] = 257;
  emitDiag(a2, 2, v6, &v7);
  if (v7)
  {
    mlir::Diagnostic::operator<<<62ul>(v8, a3);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v7);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  v5 = *MEMORY[0x277D85DE8];
}

BOOL _ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir9AttributeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (*v5)++;
  v7 = *v4;
  v16 = 0;
  {
    v8 = v7 + 40 * v6;
    v9 = v16;
    *(v8 + 16) = v16 & 1;
    v10 = *(a1 + 32);
    v11 = **(a1 + 24);
    if (v11 + (v9 >> 1) <= v10[1])
    {
      v13 = v9 >> 1;
      *(v8 + 24) = *v10 + v11;
      *(v8 + 32) = v13;
      *(v8 + 8) = a2;
      **(a1 + 24) += v13;
      v12 = 1;
    }

    else
    {
      v12 = (v17[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL _ZN4llvm12function_refIFNS_13LogicalResultEPN12_GLOBAL__N_115BytecodeDialectEEE11callback_fnIZZNS2_14AttrTypeReader10initializeENS_15MutableArrayRefINSt3__110unique_ptrIS3_NSA_14default_deleteIS3_EEEEEENS_8ArrayRefIhEESH_ENK3__0clIRNS_11SmallVectorINS8_5EntryIN4mlir4TypeEEELj1EEEEEDaOT_EUlS4_E_EES1_lS4_(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (*v5)++;
  v7 = *v4;
  v16 = 0;
  {
    v8 = v7 + 40 * v6;
    v9 = v16;
    *(v8 + 16) = v16 & 1;
    v10 = *(a1 + 32);
    v11 = **(a1 + 24);
    if (v11 + (v9 >> 1) <= v10[1])
    {
      v13 = v9 >> 1;
      *(v8 + 24) = *v10 + v11;
      *(v8 + 32) = v13;
      *(v8 + 8) = a2;
      **(a1 + 24) += v13;
      v12 = 1;
    }

    else
    {
      v12 = (v17[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL anonymous namespace::EncodingReader::parseBytes(_anonymous_namespace_::EncodingReader *this, size_t __n, unsigned __int8 *__dst)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = __n;
  v5 = *(this + 2);
  if (*this + *(this + 1) - v5 >= __n)
  {
    memcpy(__dst, v5, __n);
    *(this + 2) += __n;
    v6 = 1;
  }

  else
  {
    v9 = *this + *(this + 1) - v5;
    v6 = (v11[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t anonymous namespace::EncodingReader::parseMultiByteVarInt(_anonymous_namespace_::EncodingReader *this, unint64_t *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = __clz(__rbit32(*a2));
  v6[0] = *a2;
  {
    *a2 = v6[0] >> (v3 + 1);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(void *a1, uint64_t a2, unsigned int a3, unint64_t a4, _OWORD *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v9[0] = "string";
  v9[1] = 6;
  v8 = a4;
  if (a3 <= a4)
  {
    v5 = (v10[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  else
  {
    *a5 = *(a2 + 16 * a4);
    v5 = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[9],llvm::StringRef &,char const(&)[9],unsigned long long &>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 257;
  emitDiag(a2, 2, &v14, &v17);
  if (v17)
  {
    mlir::Diagnostic::operator<<<9ul>(v18, "invalid ");
    v7 = *a3;
    v8 = a3[1];
    v16 = 261;
    v14 = v7;
    v15 = v8;
    mlir::Diagnostic::operator<<(v18, &v14);
    mlir::Diagnostic::operator<<<9ul>(v18, " index: ");
    v9 = *a4;
    LODWORD(v14) = 5;
    v15 = v9;
    v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
    v11 = v19 + 24 * v20;
    v12 = *v10;
    *(v11 + 16) = *(v10 + 16);
    *v11 = v12;
    ++v20;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v17);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  v13 = *MEMORY[0x277D85DE8];
}

BOOL parseEntry<llvm::MutableArrayRef<std::unique_ptr<anonymous namespace::BytecodeDialect>>,std::unique_ptr<anonymous namespace::BytecodeDialect>*>(void **a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  {
    v11[0] = "dialect";
    v11[1] = 7;
    v10 = v9;
    if (a2[1] <= v9)
    {
      v6 = (v12[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }

    else
    {
      *a3 = *a2 + 8 * v9;
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void anonymous namespace::DialectReader::emitError(_anonymous_namespace_::DialectReader *this@<X0>, const llvm::Twine *a2@<X1>, uint64_t a3@<X8>)
{
  v9[25] = *MEMORY[0x277D85DE8];
  v5 = *(*(this + 5) + 24);
  v7[16] = 257;
  emitDiag(v5, 2, v7, &v8);
  if (v8)
  {
    mlir::Diagnostic::operator<<(v9, a2);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a3, &v8);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t anonymous namespace::DialectReader::getDialectVersion(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = *(a1 + 32);
  v7 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(v6, a2, a3, v7);
  if (Key == -1)
  {
    v10 = *(v6 + 8);
  }

  else
  {
    v10 = Key;
  }

  v11 = *v6 + 8 * v10;
  {
    return 0;
  }

  else
  {
    return *(*(*v11 + 8) + 56);
  }
}

BOOL anonymous namespace::DialectReader::readOptionalAttribute(_anonymous_namespace_::DialectReader *this, mlir::Attribute *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 5);
  v9 = 0;
  {
    return 0;
  }

  if ((v9 & 1) == 0)
  {
    return 1;
  }

  *a2 = v7;
  return v7 != 0;
}

uint64_t anonymous namespace::DialectReader::readSignedVarInt(_anonymous_namespace_::EncodingReader **this, unint64_t *a2)
{
  v4 = 0;
  {
    return 0;
  }

  *a2 = -(v4 & 1) ^ (v4 >> 1);
  return 1;
}

void anonymous namespace::DialectReader::readAPIntWithKnownWidth(_anonymous_namespace_::DialectReader *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v16[4] = *MEMORY[0x277D85DE8];
  if (a2 <= 8)
  {
    LOBYTE(v15[0]) = 0;
    {
      v6 = LOBYTE(v15[0]);
LABEL_7:
      *(a3 + 8) = a2;
      *a3 = v6;
      v7 = 1;
LABEL_9:
      *(a3 + 16) = v7;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a2 <= 0x40)
  {
    v15[0] = 0;
    {
      v6 = -(v15[0] & 1) ^ (v15[0] >> 1);
      goto LABEL_7;
    }

LABEL_8:
    v7 = 0;
    *a3 = 0;
    goto LABEL_9;
  }

  v14 = 0;
  {
    v9 = v14;
    v15[0] = v16;
    v15[1] = 0x400000000;
    llvm::SmallVectorImpl<unsigned long long>::resizeImpl<false>(v15, v14);
    if (v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = v15[0];
        {
          break;
        }

        *&v11[v10] = -(*&v11[v10] & 1) ^ (*&v11[v10] >> 1);
        v10 += 8;
        if (!--v9)
        {
          goto LABEL_16;
        }
      }

      *a3 = 0;
      *(a3 + 16) = 0;
    }

    else
    {
LABEL_16:
      v13 = a2;
      llvm::APInt::initFromArray(&v12, v15[0]);
      *(a3 + 8) = v13;
      *a3 = v12;
      *(a3 + 16) = 1;
    }

    if (v15[0] != v16)
    {
      free(v15[0]);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::DialectReader::readAPFloatWithKnownSemantics(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2[3];
  (*(*a1 + 88))(&v8);
  if (v10)
  {
    llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v11, a2, &v8);
    if (v11 == &llvm::semPPCDoubleDouble)
    {
      v6 = v12;
      *a3 = &llvm::semPPCDoubleDouble;
      *(a3 + 8) = v6;
      v11 = &llvm::semBogus;
      v12 = 0;
    }

    else
    {
      *a3 = &llvm::semBogus;
      llvm::detail::IEEEFloat::operator=(a3, &v11);
    }

    *(a3 + 24) = 1;
    llvm::APFloat::Storage::~Storage(&v11);
    if ((v10 & 1) != 0 && v9 >= 0x41 && v8)
    {
      MEMORY[0x25F891010](v8, 0x1000C8000313F17);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t anonymous namespace::DialectReader::readBlob(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  {
    return 0;
  }

  v4 = v7;
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

void anonymous namespace::DialectReader::readResourceHandle(_anonymous_namespace_::DialectReader *this@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(this + 3);
  v4 = *(this + 5);
  v11 = 0;
  {
    v13[0] = "resource handle";
    v13[1] = 15;
    v12 = v11;
    if (v11 < *(v3 + 8))
    {
      v5 = *v3 + 24 * v11;
      v6 = *v5;
      v7 = *(v5 + 8);
LABEL_7:
      *a2 = v6;
      *(a2 + 8) = v7;
      v9 = 1;
      goto LABEL_8;
    }

    v8 = v14[200];
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    if (v8 != 1)
    {
      v6 = 0;
      *&v7 = &mlir::detail::TypeIDResolver<void,void>::id;
      goto LABEL_7;
    }
  }

  v9 = 0;
  *a2 = 0;
LABEL_8:
  *(a2 + 24) = v9;
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t anonymous namespace::BytecodeDialect::load(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 8) & 1) == 0)
  {
    v7 = (a1 + 24);
    Dialect = mlir::MLIRContext::getOrLoadDialect(a3, *(a1 + 24), *(a1 + 32), a4);
    if (Dialect)
    {
      v9 = Dialect;
      *a1 = Dialect;
      *(a1 + 8) = 1;
      v10 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(Dialect);
      if (v10)
      {
        v10 = mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(v9);
      }

      *(a1 + 16) = v10;
    }

    else
    {
      if (*(*a3 + 40) != 1)
      {
        v28[0] = "dialect '";
        v29 = 259;
        (*(*a2 + 16))(&v31, a2, v28);
        v22 = mlir::InFlightDiagnostic::append<llvm::StringRef &>(&v31, v7);
        v21 = v22;
        if (*v22)
        {
          LODWORD(v30[0]) = 3;
          v30[1] = "' is unknown. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR tool used.";
          v30[2] = 154;
          v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v22 + 3), v30, 1);
          v24 = v21[3] + 24 * *(v21 + 8);
          v25 = *v23;
          *(v24 + 16) = *(v23 + 16);
          *v24 = v25;
          ++*(v21 + 8);
        }

        goto LABEL_20;
      }

      *a1 = 0;
      *(a1 + 8) = 1;
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = *(a1 + 16);
      if (v12)
      {
        v28[0] = *(a1 + 40);
        v28[1] = v11;
        v13 = *(a2 + 48);
        v14 = *(*(a2 + 40) + 24);
        v28[2] = v28[0];
        v28[3] = v14;
        v31 = &unk_286EA02A0;
        v15 = *(a2 + 24);
        v32 = *(a2 + 8);
        v33 = v15;
        v34 = v28;
        v35 = v13;
        (*(*v12 + 56))(v30);
        v16 = v30[0];
        v30[0] = 0;
        v17 = *(a1 + 56);
        *(a1 + 56) = v16;
        if (v17)
        {
          (*(*v17 + 8))(v17);
          v18 = v30[0];
          v30[0] = 0;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }

          v16 = *(a1 + 56);
        }

        if (!v16)
        {
          v19 = 0;
          goto LABEL_22;
        }

        goto LABEL_15;
      }

      v28[0] = "dialect '";
      v29 = 259;
      (*(*a2 + 16))(&v31, a2, v28);
      v20 = mlir::InFlightDiagnostic::append<llvm::StringRef &>(&v31, v7);
      v21 = v20;
      if (*v20)
      {
        mlir::Diagnostic::operator<<<71ul>((v20 + 1), "' does not implement the bytecode interface, but found a version entry");
      }

LABEL_20:
      v19 = *(v21 + 200) ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
      goto LABEL_22;
    }
  }

LABEL_15:
  v19 = 1;
LABEL_22:
  v26 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::BytecodeDialectInterface>(uint64_t a1)
{
  v4 = mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID();
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::doFind<mlir::TypeID>((a1 + 48), &v4);
  result = 0;
  if (v2)
  {
    if (v2 != *(a1 + 48) + 16 * *(a1 + 64))
    {
      return *(v2 + 8);
    }
  }

  return result;
}

BOOL anonymous namespace::AttrTypeReader::parseAttribute(_anonymous_namespace_::AttrTypeReader *a1, _anonymous_namespace_::EncodingReader *this, uint64_t **a3)
{
  v9 = 0;
  {
    return 0;
  }

  *a3 = v7;
  return v7 != 0;
}

uint64_t *anonymous namespace::AttrTypeReader::resolveAttribute(_anonymous_namespace_::AttrTypeReader *this, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = a2;
  if (*(this + 8) <= a2)
  {
    v16 = *(this + 17);
    LOWORD(v35) = 257;
    emitDiag(v16, 2, &v32, &v40);
    if (v40)
    {
      mlir::Diagnostic::operator<<<9ul>(v41, "invalid ");
      if (v40)
      {
        LOWORD(v35) = 261;
        v32 = "Attribute";
        v33 = 9;
        mlir::Diagnostic::operator<<(v41, &v32);
        if (v40)
        {
          mlir::Diagnostic::operator<<<9ul>(v41, " index: ");
        }
      }
    }

    mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v40, &v31);
LABEL_18:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    goto LABEL_19;
  }

  v5 = *(this + 3) + 40 * a2;
  result = *v5;
  if (!*v5)
  {
    v7 = *(this + 17);
    v28 = *(v5 + 24);
    v29 = v28;
    v30 = v7;
    if (*(v5 + 16) == 1)
    {
      v8 = *(this + 2);
      v9 = *(this + 18);
      v32 = &unk_286EA02A0;
      v33 = this;
      v34 = *this;
      v35 = v8;
      v36 = &v28;
      v37 = v9;
      {
LABEL_19:
        result = 0;
        goto LABEL_20;
      }

      v10 = *(this + 19);
      v11 = *(v10 + 56);
      if (v11)
      {
        v12 = *(v10 + 48);
        v13 = 8 * v11;
        while (((*(**v12 + 16))(*v12, &v32, *(*(v5 + 8) + 24), *(*(v5 + 8) + 32), v5) & 1) != 0)
        {
          if (*v5)
          {
            goto LABEL_29;
          }

          v28 = *(v5 + 24);
          v29 = v28;
          ++v12;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_19;
      }

LABEL_10:
      v14 = *(v5 + 8);
      v15 = *(v14 + 16);
      if (v15)
      {
        result = (*(*v15 + 16))(v15, &v32);
        *v5 = result;
        if (!result)
        {
          goto LABEL_20;
        }

LABEL_29:
        if (v29 == v28 + *(&v28 + 1))
        {
          result = *v5;
          goto LABEL_20;
        }

        v27 = 1283;
        v23 = "unexpected trailing bytes after ";
        v25 = "Attribute";
        v26 = 9;
        v32 = &v23;
        *&v34 = " entry";
        LOWORD(v35) = 770;
        goto LABEL_18;
      }
    }

    else
    {
      v32 = "Attribute";
      v33 = 9;
      v23 = 0;
      v24 = 0;
      {
        goto LABEL_19;
      }

      v39 = 0;
      v18 = *(***(this + 17) + 32);
      v19 = v23;
      v20 = v24;
      result = mlir::parseAttribute(v23, v24, v18, 0, &v39, 1);
      *v5 = result;
      if (!result)
      {
        goto LABEL_20;
      }

      v21 = v39;
      if (v39 == v20)
      {
        goto LABEL_29;
      }

      if (v20 < v39)
      {
        v21 = v20;
      }

      v38[0] = v19 + v21;
      v38[1] = v20 - v21;
    }

    v22 = v41[192];
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    if (v22)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::EncodingReader::emitError<llvm::Twine>(uint64_t a1, void *a2, uint64_t a3)
{
  v8[25] = *MEMORY[0x277D85DE8];
  v6[16] = 257;
  emitDiag(a2, 2, v6, &v7);
  if (v7)
  {
    mlir::Diagnostic::operator<<(v8, a3);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v7);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  v5 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::EncodingReader::emitError<char const(&)[10],llvm::StringRef &,char const(&)[44]>(uint64_t a1, void *a2, void *a3)
{
  v10[25] = *MEMORY[0x277D85DE8];
  v8 = 257;
  emitDiag(a2, 2, v7, &v9);
  if (v9)
  {
    mlir::Diagnostic::operator<<<10ul>(v10, "dialect '");
    v8 = 261;
    v5 = a3[1];
    v7[0] = *a3;
    v7[1] = v5;
    mlir::Diagnostic::operator<<(v10, v7);
    mlir::Diagnostic::operator<<<44ul>(v10, "' does not implement the bytecode interface");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v9);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  v6 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::EncodingReader::emitError<char const(&)[33],llvm::StringRef &,char const(&)[19],llvm::StringRef>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v15[25] = *MEMORY[0x277D85DE8];
  v13 = 257;
  emitDiag(a2, 2, &v11, &v14);
  if (v14)
  {
    mlir::Diagnostic::operator<<<33ul>(v15, "trailing characters found after ");
    v7 = *a3;
    v8 = a3[1];
    v13 = 261;
    v11 = v7;
    v12 = v8;
    mlir::Diagnostic::operator<<(v15, &v11);
    mlir::Diagnostic::operator<<<19ul>(v15, " assembly format: ");
    v13 = 261;
    v9 = a4[1];
    v11 = *a4;
    v12 = v9;
    mlir::Diagnostic::operator<<(v15, &v11);
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v14);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  v10 = *MEMORY[0x277D85DE8];
}

BOOL anonymous namespace::AttrTypeReader::parseType(_anonymous_namespace_::AttrTypeReader *a1, _anonymous_namespace_::EncodingReader *this, uint64_t *a3)
{
  v9 = 0;
  {
    return 0;
  }

  *a3 = v7;
  return v7 != 0;
}

uint64_t anonymous namespace::AttrTypeReader::resolveType(_anonymous_namespace_::AttrTypeReader *this, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v31 = a2;
  if (*(this + 22) <= a2)
  {
    v16 = *(this + 17);
    LOWORD(v35) = 257;
    emitDiag(v16, 2, &v32, &v40);
    if (v40)
    {
      mlir::Diagnostic::operator<<<9ul>(v41, "invalid ");
      if (v40)
      {
        LOWORD(v35) = 261;
        v32 = "Type";
        v33 = 4;
        mlir::Diagnostic::operator<<(v41, &v32);
        if (v40)
        {
          mlir::Diagnostic::operator<<<9ul>(v41, " index: ");
        }
      }
    }

    mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v40, &v31);
LABEL_18:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    goto LABEL_19;
  }

  v5 = *(this + 10) + 40 * a2;
  result = *v5;
  if (!*v5)
  {
    v7 = *(this + 17);
    v28 = *(v5 + 24);
    v29 = v28;
    v30 = v7;
    if (*(v5 + 16) == 1)
    {
      v8 = *(this + 2);
      v9 = *(this + 18);
      v32 = &unk_286EA02A0;
      v33 = this;
      v34 = *this;
      v35 = v8;
      v36 = &v28;
      v37 = v9;
      {
LABEL_19:
        result = 0;
        goto LABEL_20;
      }

      v10 = *(this + 19);
      v11 = *(v10 + 120);
      if (v11)
      {
        v12 = *(v10 + 112);
        v13 = 8 * v11;
        while (((*(**v12 + 16))(*v12, &v32, *(*(v5 + 8) + 24), *(*(v5 + 8) + 32), v5) & 1) != 0)
        {
          if (*v5)
          {
            goto LABEL_29;
          }

          v28 = *(v5 + 24);
          v29 = v28;
          ++v12;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_19;
      }

LABEL_10:
      v14 = *(v5 + 8);
      v15 = *(v14 + 16);
      if (v15)
      {
        result = (*(*v15 + 24))(v15, &v32);
        *v5 = result;
        if (!result)
        {
          goto LABEL_20;
        }

LABEL_29:
        if (v29 == v28 + *(&v28 + 1))
        {
          result = *v5;
          goto LABEL_20;
        }

        v27 = 1283;
        v23 = "unexpected trailing bytes after ";
        v25 = "Type";
        v26 = 4;
        v32 = &v23;
        *&v34 = " entry";
        LOWORD(v35) = 770;
        goto LABEL_18;
      }
    }

    else
    {
      v32 = "Type";
      v33 = 4;
      v23 = 0;
      v24 = 0;
      {
        goto LABEL_19;
      }

      v39 = 0;
      v18 = *(***(this + 17) + 32);
      v19 = v23;
      v20 = v24;
      result = mlir::parseType(v23, v24, v18, &v39, 1);
      *v5 = result;
      if (!result)
      {
        goto LABEL_20;
      }

      v21 = v39;
      if (v39 == v20)
      {
        goto LABEL_29;
      }

      if (v20 < v39)
      {
        v21 = v20;
      }

      v38[0] = &v19[v21];
      v38[1] = v20 - v21;
    }

    v22 = v41[192];
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    if (v22)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL anonymous namespace::EncodingReader::parseByte<BOOL>(uint64_t a1, BOOL *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == (*a1 + *(a1 + 8)))
  {
    v3 = (v6[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v6);
  }

  else
  {
    *(a1 + 16) = v2 + 1;
    *a2 = *v2 != 0;
    v3 = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL anonymous namespace::EncodingReader::parseByte<mlir::AsmResourceEntryKind>(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == (*a1 + *(a1 + 8)))
  {
    v3 = (v6[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v6);
  }

  else
  {
    *(a1 + 16) = v2 + 1;
    *a2 = *v2;
    v3 = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[46],llvm::StringRef &,char const(&)[2]>(uint64_t a1, void *a2, void *a3)
{
  v10[25] = *MEMORY[0x277D85DE8];
  v8 = 257;
  emitDiag(a2, 2, v7, &v9);
  if (v9)
  {
    mlir::Diagnostic::operator<<<46ul>(v10, "unexpected trailing bytes in resource entry '");
    v8 = 261;
    v5 = a3[1];
    v7[0] = *a3;
    v7[1] = v5;
    mlir::Diagnostic::operator<<(v10, v7);
    mlir::Diagnostic::operator<<<2ul>(v10, "'");
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v9);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  v6 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::ParsedResourceEntry::emitError(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*(this + 4) + 24);
  v4 = 257;
  emitDiag(v2, 2, v3, a2);
}

void anonymous namespace::ParsedResourceEntry::parseAsString(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(this + 6) == 2)
  {
    __src[0] = 0;
    __src[1] = 0;
    {
      if (__src[0])
      {
        v4 = __src[1];
        if (__src[1] >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (__src[1] >= 0x17)
        {
          operator new();
        }

        HIBYTE(v13) = __src[1];
        if (__src[1])
        {
          memmove(&__dst, __src[0], __src[1]);
        }

        *(&__dst + v4) = 0;
      }

      else
      {
        __dst = 0uLL;
        v13 = 0;
      }

      *a2 = __dst;
      *(a2 + 16) = v13;
      *(a2 + 24) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v5 = *(*(this + 4) + 24);
    v11 = 257;
    emitDiag(v5, 2, __src, &__dst);
    if (__dst)
    {
      mlir::Diagnostic::operator<<<47ul>(&__dst + 8, "expected a string resource entry, but found a ");
      if (__dst)
      {
        v6 = *(this + 6);
        v7 = qword_25D0A02C0[v6];
        v8 = (&off_2799BECA0)[v6];
        v11 = 261;
        __src[0] = v8;
        __src[1] = v7;
        mlir::Diagnostic::operator<<(&__dst + 8, __src);
        if (__dst)
        {
          mlir::Diagnostic::operator<<<15ul>(&__dst + 8, " entry instead");
        }
      }
    }

    *a2 = 0;
    *(a2 + 24) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__dst);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::ParsedResourceEntry::parseAsBlob(uint64_t a1@<X0>, void (*a2)(void **__return_ptr, uint64_t, size_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v6 = *(*(a1 + 32) + 24);
    v24 = 257;
    emitDiag(v6, 2, &__src, __dst);
    if (__dst[0])
    {
      mlir::Diagnostic::operator<<<45ul>(&__dst[1], "expected a blob resource entry, but found a ");
      if (__dst[0])
      {
        v7 = *(a1 + 24);
        v8 = qword_25D0A02C0[v7];
        v9 = (&off_2799BECA0)[v7];
        v24 = 261;
        __src = v9;
        v23 = v8;
        mlir::Diagnostic::operator<<(&__dst[1], &__src);
        if (__dst[0])
        {
          mlir::Diagnostic::operator<<<15ul>(&__dst[1], " entry instead");
        }
      }
    }

    *a4 = 0;
    *(a4 + 64) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
  }

  else
  {
    __src = 0;
    v23 = 0;
    *v21 = 0;
    v12 = *(a1 + 32);
    {
      v14 = *(a1 + 48);
      v15 = *v14;
      if (*v14)
      {
        v16 = __src;
        v17 = v23;
        v18 = v14[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        *&v25 = v15;
        *(&v25 + 1) = v18;
        mlir::UnmanagedAsmResourceBlob::allocateWithAlign(__dst, v16, v17, v13, &v25);
        *a4 = *__dst;
        *(a4 + 16) = v28;
        llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(a4 + 24, v29);
        *(a4 + 56) = v30;
        *(a4 + 64) = 1;
        mlir::AsmResourceBlob::~AsmResourceBlob(__dst);
        llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::~UniqueFunctionBase(&v25);
      }

      else
      {
        v20 = v23;
        a2(__dst, a3, v23, v13);
        memcpy(__dst[0], __src, v20);
        *a4 = *__dst;
        *(a4 + 16) = v28;
        llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(a4 + 24, v29);
        *(a4 + 56) = v30;
        *(a4 + 64) = 1;
        mlir::AsmResourceBlob::~AsmResourceBlob(__dst);
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 64) = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void *mlir::UnmanagedAsmResourceBlob::allocateWithAlign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v11, a5);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(a1 + 24, v11);
  *(a1 + 56) = 0;
  result = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::~UniqueFunctionBase(v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::MoveImpl<anonymous namespace::ParsedResourceEntry::parseAsBlob(llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>)::{lambda(void *,unsigned long,unsigned long)#1}>(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::DestroyImpl<anonymous namespace::ParsedResourceEntry::parseAsBlob(llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>)::{lambda(void *,unsigned long,unsigned long)#1}>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t llvm::StringMap<std::string,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = Key;
  }

  return *a1 + 8 * v8;
}

void std::vector<mlir::Value>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Value>>(a1, v10);
      }

      std::vector<mlir::Value>::__throw_length_error[abi:nn200100]();
    }

    bzero(*(a1 + 8), 8 * v6);
    v11 = v4 + 8 * v6;
  }

  *(a1 + 8) = v11;
}

BOOL mlir::BytecodeReader::Impl::parseAttribute<mlir::LocationAttr>(uint64_t a1, void **a2, uint64_t **a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  {
    v5 = v12;
    v13[0] = v12;
    if (mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(v13))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    *a3 = v6;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      {
        *&llvm::getTypeName<mlir::LocationAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::LocationAttr>();
        *(&llvm::getTypeName<mlir::LocationAttr>(void)::Name + 1) = v10;
      }

      v11 = llvm::getTypeName<mlir::LocationAttr>(void)::Name;
      v7 = (v14 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::BytecodeReader::Impl::parseUseListOrderForRange(mlir::BytecodeReader::Impl *this, _anonymous_namespace_::EncodingReader *a2, unint64_t a3)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v6 = 1;
  v21 = 1;
  if (a3 < 2)
  {
    goto LABEL_4;
  }

  {
    v6 = v21;
    if (v21)
    {
LABEL_4:
      v7 = 0;
      while (1)
      {
        v20 = 0;
        {
          goto LABEL_32;
        }

        v19 = 0;
        {
          goto LABEL_32;
        }

        v8 = v19;
        v9 = v19 >> 1;
        v19 >>= 1;
        v31 = v33;
        v32 = 0x400000000;
        if (v8 >= 2)
        {
          while (1)
          {
            v27 = 0;
            {
              break;
            }

            llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v31, v27);
            if (!--v9)
            {
              v10 = v20;
              v27 = v29;
              v28 = 0x400000000;
              if (v32)
              {
                llvm::SmallVectorImpl<unsigned int>::operator=(&v27, &v31);
              }

              goto LABEL_14;
            }
          }

          *this = 0;
          *(this + 24) = 0;
          if (v31 != v33)
          {
            free(v31);
          }

          goto LABEL_35;
        }

        v10 = v20;
        v27 = v29;
        v28 = 0x400000000;
LABEL_14:
        v30 = v8 & 1;
        v25 = 0;
        v11 = v24;
        if ((llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(v22, v24, v10, &v25) & 1) == 0)
        {
          break;
        }

LABEL_22:
        if (v27 != v29)
        {
          free(v27);
        }

        if (v31 != v33)
        {
          free(v31);
        }

        if (++v7 == v6)
        {
          v14 = v22;
          v15 = v23;
          v16 = v24;
          goto LABEL_34;
        }
      }

      v12 = v25;
      v26 = v25;
      v13 = v23;
      if (4 * v23 + 4 >= 3 * v11)
      {
        v11 *= 2;
      }

      else if (v11 + ~v23 - HIDWORD(v23) > v11 >> 3)
      {
LABEL_17:
        LODWORD(v23) = v13 + 1;
        if (*v12 != -1)
        {
          --HIDWORD(v23);
        }

        *v12 = v10;
        *(v12 + 8) = v12 + 24;
        *(v12 + 16) = 0x400000000;
        if (v28)
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(v12 + 8, &v27);
        }

        *(v12 + 40) = v30;
        goto LABEL_22;
      }

      llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(&v22, v11);
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(v22, v24, v10, &v26);
      v13 = v23;
      v12 = v26;
      goto LABEL_17;
    }

    v16 = 0;
    v14 = 0;
    v15 = 0;
LABEL_34:
    *this = v14;
    v22 = 0;
    v23 = 0;
    *(this + 1) = v15;
    *(this + 4) = v16;
    v24 = 0;
    *(this + 24) = 1;
  }

  else
  {
LABEL_32:
    *this = 0;
    *(this + 24) = 0;
  }

LABEL_35:
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::destroyAll(&v22);
  result = MEMORY[0x25F891030](v22, 8);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::BytecodeReader::Impl::defineValues(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v38[0] = a3;
  v38[1] = a4;
  v4 = *(a1 + 688);
  v5 = *(v4 - 32) + 4 * *(v4 - 24);
  v6 = (*(v5 - 4) + a4);
  v7 = (*(v4 - 48) - *(v4 - 56)) >> 3;
  if (v7 >= v6)
  {
    if (a4)
    {
      v19 = 0;
      v20 = (a1 + 832);
      v21 = a4;
      do
      {
        v22 = mlir::ValueRange::dereference_iterator(v38, v19);
        v23 = *(v5 - 4);
        v24 = *(v4 - 56);
        v25 = *(v24 + 8 * v23);
        *(v24 + 8 * v23) = v22;
        if (v25)
        {
          v26 = 0;
          v27 = *(v25 + 8) & 7;
          v28 = v27 == 7;
          if (v27 == 7)
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

          if (!v28)
          {
            v30 = *(v29 + 8) & 7;
            if (v30 == 6)
            {
              v26 = (v29 + 24 * *(v29 + 16) + 120);
            }

            else
            {
              v26 = (v29 + 16 * v30 + 16);
            }
          }

          v39 = v22;
          mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v25, &v39);
          if (v26 != v20)
          {
            v31 = v26[1];
            if (v31 != v20)
            {
              llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(v20, v20, v26[2] + 32, v26, v31);
            }
          }

          LODWORD(v23) = *(v5 - 4);
        }

        ++v19;
        *(v5 - 4) = v23 + 1;
      }

      while (v21 != v19);
    }

    v18 = 1;
  }

  else
  {
    v36 = 257;
    emitDiag(a2, 2, &v34, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<81ul>(v40, "value index range was outside of the expected range for the parent region, got [");
      v8 = *(v5 - 4);
      v34 = 5;
      v35 = v8;
      v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v41, &v34, 1);
      v10 = v41 + 24 * v42;
      v11 = *v9;
      *(v10 + 16) = *(v9 + 16);
      *v10 = v11;
      ++v42;
      mlir::Diagnostic::operator<<<3ul>(v40, ", ");
      v34 = 5;
      v35 = v6;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v41, &v34, 1);
      v13 = v41 + 24 * v42;
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++v42;
      mlir::Diagnostic::operator<<<30ul>(v40, "), but the maximum index was ");
      v34 = 5;
      v35 = v7 - 1;
      v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v41, &v34, 1);
      v16 = v41 + 24 * v42;
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++v42;
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v34, &v39);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    v18 = (v37 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::try_emplace<mlir::BytecodeReader::Impl::UseListOrderStorage const&>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(*a2, *(a2 + 16), *a3, &v14);
  v9 = v14;
  v10 = *(a2 + 16);
  if (result)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v15 = v14;
  v12 = *(a2 + 8);
  if (4 * v12 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_12;
  }

  if (v10 + ~v12 - *(a2 + 12) <= v10 >> 3)
  {
LABEL_12:
    llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(a2, v10);
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(*a2, *(a2 + 16), *a3, &v15);
    v12 = *(a2 + 8);
    v9 = v15;
  }

  *(a2 + 8) = v12 + 1;
  if (*v9 != -4096)
  {
    --*(a2 + 12);
  }

  *v9 = *a3;
  *(v9 + 8) = v9 + 24;
  result = v9 + 8;
  *(v9 + 16) = 0x400000000;
  if (*(a4 + 8))
  {
    result = llvm::SmallVectorImpl<unsigned int>::operator=(result, a4);
  }

  *(v9 + 40) = *(a4 + 32);
  v10 = *(a2 + 16);
  v11 = 1;
LABEL_10:
  v13 = *a2 + 48 * v10;
  *a1 = v9;
  *(a1 + 8) = v13;
  *(a1 + 16) = v11;
  return result;
}

void anonymous namespace::EncodingReader::emitError<char const(&)[29],llvm::StringRef,char const(&)[12],mlir::Attribute &>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 257;
  emitDiag(a2, 2, &v14, &v17);
  if (v17)
  {
    mlir::Diagnostic::operator<<<29ul>(v18, "expected attribute of type: ");
    v7 = *a3;
    v8 = a3[1];
    v16 = 261;
    v14 = v7;
    v15 = v8;
    mlir::Diagnostic::operator<<(v18, &v14);
    mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
    v9 = *a4;
    LODWORD(v14) = 0;
    v15 = v9;
    v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
    v11 = v19 + 24 * v20;
    v12 = *v10;
    *(v11 + 16) = *(v10 + 16);
    *v11 = v12;
    ++v20;
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a1, &v17);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 48 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 48 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 48 * v10 - 48;
      v13 = vdupq_n_s64(v12 / 0x30);
      v14 = result + 96;
      do
      {
        v15 = vdupq_n_s64(v11);
        v16 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A0500)));
        if (vuzp1_s16(v16, *v13.i8).u8[0])
        {
          *(v14 - 24) = -1;
        }

        if (vuzp1_s16(v16, *&v13).i8[2])
        {
          *(v14 - 12) = -1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v15, xmmword_25D0A04F0)))).i32[1])
        {
          *v14 = -1;
          v14[12] = -1;
        }

        v11 += 4;
        v14 += 48;
      }

      while (((v12 / 0x30 + 4) & 0xFFFFFFFFFFFFFFCLL) != v11);
    }

    if (v3)
    {
      v17 = 48 * v3;
      v18 = (v4 + 24);
      do
      {
        v19 = *(v18 - 6);
        if (v19 <= 0xFFFFFFFD)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v19, &v29);
          v20 = v29;
          *v29 = *(v18 - 6);
          *(v20 + 1) = v20 + 6;
          *(v20 + 2) = 0x400000000;
          if (*(v18 - 2))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=((v20 + 2), (v18 - 16));
          }

          *(v20 + 40) = v18[16];
          ++*(a1 + 8);
          v21 = *(v18 - 2);
          if (v18 != v21)
          {
            free(v21);
          }
        }

        v18 += 48;
        v17 -= 48;
      }

      while (v17);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = 48 * v22 - 48;
    v25 = vdupq_n_s64(v24 / 0x30);
    v26 = result + 96;
    do
    {
      v27 = vdupq_n_s64(v23);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_25D0A0500)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 24) = -1;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 12) = -1;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_25D0A04F0)))).i32[1])
      {
        *v26 = -1;
        v26[12] = -1;
      }

      v23 += 4;
      v26 += 48;
    }

    while (((v24 / 0x30 + 4) & 0xFFFFFFFFFFFFFFCLL) != v23);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>,unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::BytecodeReader::Impl::UseListOrderStorage>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 48 * v1;
    v3 = *a1 + 24;
    do
    {
      if (*(v3 - 24) <= 0xFFFFFFFD)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 48;
      v2 -= 48;
    }

    while (v2);
  }
}

uint64_t mlir::Diagnostic::operator<<<81ul>(uint64_t a1, char *__s)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 48 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 48 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 48 * v10 - 48;
      v13 = vdupq_n_s64(v12 / 0x30);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[6] = -4096;
        }

        v11 += 2;
        result += 12;
      }

      while (((v12 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = (v4 + 24);
      v16 = 48 * v3;
      do
      {
        v17 = *(v15 - 3);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0;
          llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(*a1, *(a1 + 16), v17, &v25);
          v18 = v25;
          *v25 = *(v15 - 3);
          v18[1] = v18 + 3;
          v18[2] = 0x400000000;
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=((v18 + 1), (v15 - 16));
          }

          *(v18 + 40) = v15[16];
          ++*(a1 + 8);
          v19 = *(v15 - 2);
          if (v15 != v19)
          {
            free(v19);
          }
        }

        v15 += 48;
        v16 -= 48;
      }

      while (v16);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 48 * v20 - 48;
    v23 = vdupq_n_s64(v22 / 0x30);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v24.i8[0])
      {
        *result = -4096;
      }

      if (v24.i8[4])
      {
        result[6] = -4096;
      }

      v21 += 2;
      result += 12;
    }

    while (((v22 / 0x30 + 2) & 0xFFFFFFFFFFFFFFELL) != v21);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::doFind<mlir::Operation const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t mlir::BytecodeReader::Impl::materialize(uint64_t a1, void *a2)
{
  std::vector<mlir::BytecodeReader::Impl::ValueScope>::emplace_back<>((a1 + 680));
  v10 = 0;
  v11 = 0;
  v9 = 0;
  std::vector<mlir::BytecodeReader::Impl::RegionReadState>::push_back[abi:nn200100](&v9, (a2[1] + 24));
  v4 = a2[1];
  v6 = *v4;
  v5 = v4[1];
  *(v6 + 8) = v5;
  *v5 = v6;
  --*(a1 + 40);
  std::__destroy_at[abi:nn200100]<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,0>(v4 + 2);
  operator delete(v4);
  *a2 = -8192;
  *(a1 + 56) = vadd_s32(*(a1 + 56), 0x1FFFFFFFFLL);
  while (v9 != v10)
  {
    if (!mlir::BytecodeReader::Impl::parseRegions(a1, &v9, v10 - 128))
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = 1;
LABEL_6:
  v12 = &v9;
  std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__destroy_vector::operator()[abi:nn200100](&v12);
  return v7;
}

uint64_t std::__destroy_at[abi:nn200100]<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,0>(void *a1)
{
  v2 = a1[6];
  if (v2 != a1 + 8)
  {
    free(v2);
  }

  result = a1[4];
  a1[4] = 0;
  if (result)
  {

    JUMPOUT(0x25F891040);
  }

  return result;
}

void std::list<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>>::pop_front(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  std::__destroy_at[abi:nn200100]<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,0>(v2 + 2);

  operator delete(v2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::doFind<mlir::Operation *>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t mlir::BytecodeReader::Impl::Impl(uint64_t a1, uint64_t a2, void **a3, char a4, _OWORD *a5, uint64_t a6)
{
  *a1 = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 88) = a1 + 536;
  *(a1 + 96) = a1 + 424;
  *(a1 + 104) = a1 + 336;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0x100000000;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x100000000;
  *(a1 + 224) = a2;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = a3;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 288;
  *(a1 + 280) = 0x600000000;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0x1000000000;
  *(a1 + 360) = a1 + 376;
  *(a1 + 368) = 0x100000000;
  *(a1 + 424) = a1 + 440;
  *(a1 + 432) = 0x200000000;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0x2000000000;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 536) = a1 + 552;
  *(a1 + 544) = 0x300000000;
  *(a1 + 600) = 0u;
  *(a1 + 616) = a1 + 632;
  *(a1 + 624) = 0x600000000;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 708) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 760) = a1 + 760;
  *(a1 + 768) = a1 + 760;
  *(a1 + 824) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 832) = a1 + 832;
  *(a1 + 840) = a1 + 832;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  v9 = **a3;
  v10 = v9[77];
  v11 = v9[66];
  if (!v11)
  {
    v12 = v9[48];
    v17 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), &v17);
  }

  v16 = v11;
  mlir::OperationName::OperationName(&v17, "builtin.unrealized_conversion_cast", 0x22, *(**v10 + 32));
  mlir::OperationState::OperationState((a1 + 872), v10, v17, 0, 0, &v16 + 2, 1, v13, 0, 0, 0, 0, 0, 0);
  v14 = a5[1];
  *(a1 + 1176) = *a5;
  *(a1 + 1192) = v14;
  *(a1 + 1208) = a6;
  return a1;
}

void mlir::BytecodeReader::Impl::~Impl(mlir::BytecodeReader::Impl *this)
{
  mlir::OperationState::~OperationState((this + 872));
  mlir::Block::~Block(this + 100);
  mlir::Block::~Block(this + 91);
  MEMORY[0x25F891030](*(this + 88), 8);
  v2 = *(this + 85);
  if (v2)
  {
    v3 = *(this + 86);
    v4 = *(this + 85);
    if (v3 != v2)
    {
      do
      {
        v3 -= 56;
        std::allocator<mlir::BytecodeReader::Impl::ValueScope>::destroy[abi:nn200100](v3);
      }

      while (v3 != v2);
      v4 = *(this + 85);
    }

    *(this + 86) = v2;
    operator delete(v4);
  }

  v5 = *(this + 77);
  if (v5 != this + 632)
  {
    free(v5);
  }

  v6 = *(this + 67);
  if (v6 != this + 552)
  {
    free(v6);
  }

  v7 = *(this + 132);
  v8 = *(this + 64);
  if (v7)
  {
    v9 = (v8 + 24);
    v10 = 48 * v7;
    do
    {
      if ((*(v9 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v11 = *(v9 - 2);
        if (v9 != v11)
        {
          free(v11);
        }
      }

      v9 += 6;
      v10 -= 48;
    }

    while (v10);
    v8 = *(this + 64);
  }

  MEMORY[0x25F891030](v8, 8);
  if (*(this + 125))
  {
    v12 = *(this + 124);
    if (v12)
    {
      v13 = 0;
      v14 = 8 * v12;
      do
      {
        v15 = *(*(this + 61) + v13);
        if (v15 != -8 && v15 != 0)
        {
          if (*(v15 + 31) < 0)
          {
            operator delete(*(v15 + 8));
          }

          MEMORY[0x25F891030](v15, 8);
        }

        v13 += 8;
      }

      while (v14 != v13);
    }
  }

  free(*(this + 61));
  v17 = *(this + 53);
  if (v17 != this + 440)
  {
    free(v17);
  }

  v18 = *(this + 45);
  if (v18 != this + 376)
  {
    free(v18);
  }

  if (*(this + 87))
  {
    v19 = *(this + 86);
    if (v19)
    {
      v20 = 0;
      v21 = 8 * v19;
      do
      {
        v22 = *(*(this + 42) + v20);
        if (v22 != -8 && v22 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v20 += 8;
      }

      while (v21 != v20);
    }
  }

  free(*(this + 42));
  v24 = *(this + 34);
  v25 = *(this + 70);
  if (v25)
  {
    v26 = -8 * v25;
    v27 = &v24[8 * v25 - 8];
    do
    {
      v26 += 8;
    }

    while (v26);
    v24 = *(this + 34);
  }

  if (v24 != this + 288)
  {
    free(v24);
  }

  v28 = *(this + 21);
  if (v28 != this + 184)
  {
    free(v28);
  }

  v29 = *(this + 14);
  if (v29 != this + 128)
  {
    free(v29);
  }

  MEMORY[0x25F891030](*(this + 6), 8);
  if (*(this + 5))
  {
    v30 = *(this + 4);
    v31 = *(*(this + 3) + 8);
    v32 = *v30;
    *(v32 + 8) = v31;
    *v31 = v32;
    *(this + 5) = 0;
    if (v30 != (this + 24))
    {
      do
      {
        v33 = *(v30 + 1);
        std::__destroy_at[abi:nn200100]<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,0>(v30 + 2);
        operator delete(v30);
        v30 = v33;
      }

      while (v33 != (this + 24));
    }
  }
}

void std::allocator<mlir::BytecodeReader::Impl::ValueScope>::destroy[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {
    free(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void std::vector<mlir::BytecodeReader::Impl::RegionReadState>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 16;
        std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::destroy[abi:nn200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[5];
  if (v2 != a1 + 7)
  {
    free(v2);
  }

  result = a1[3];
  a1[3] = 0;
  if (result)
  {

    JUMPOUT(0x25F891040);
  }

  return result;
}

__n128 std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::construct[abi:nn200100]<mlir::BytecodeReader::Impl::RegionReadState,mlir::BytecodeReader::Impl::RegionReadState>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 40) = a1 + 56;
  v6 = a1 + 40;
  *(a1 + 48) = 0x600000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::Block *>::operator=(v6, a2 + 40);
  }

  result = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::BytecodeReader::Impl::RegionReadState>>(unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<mlir::BytecodeReader::Impl::RegionReadState>,mlir::BytecodeReader::Impl::RegionReadState*>(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::construct[abi:nn200100]<mlir::BytecodeReader::Impl::RegionReadState,mlir::BytecodeReader::Impl::RegionReadState>(a3, v6);
      v6 += 8;
      a3 += 128;
    }

    while (v6 != a2);
    do
    {
      result = std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::destroy[abi:nn200100](v5);
      v5 += 8;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<mlir::BytecodeReader::Impl::RegionReadState>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    std::allocator<mlir::BytecodeReader::Impl::RegionReadState>::destroy[abi:nn200100]((i - 128));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<anonymous namespace::BytecodeDialect>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(anonymous namespace::BytecodeDialect *)>::callback_fn<mlir::BytecodeReader::Impl::parseDialectSection(llvm::ArrayRef<unsigned char>)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v13 = 0uLL;
  if (*(v3 + 248) > 4uLL)
  {
    v8 = a1[1];
    v14 = 0;
    {
      return 0;
    }

    v9 = v14;
    if (!resolveEntry<llvm::SmallVector<llvm::StringRef,3u> const,llvm::StringRef>(v8[3], *(v3 + 536), *(v3 + 544), v14 >> 1, &v13))
    {
      return 0;
    }

    v6 = v9 & 1;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  v10 = *(v3 + 368);
  v11 = v6 | (v5 << 8);
  if (v10 >= *(v3 + 372))
  {
  }

  else
  {
    v12 = *(v3 + 360) + 48 * v10;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = a2;
    *(v12 + 24) = v13;
    *(v12 + 40) = v11;
    ++*(v3 + 368);
  }

  return 1;
}

__n128 llvm::SmallVectorTemplateBase<anonymous namespace::BytecodeOperationName,true>::growAndEmplaceBack<anonymous namespace::BytecodeDialect *&,llvm::StringRef &,std::optional<BOOL> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v13[0] = 0;
  v13[8] = 0;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = v13;
  if (v6 >= *(a1 + 12))
  {
    if (v7 <= v13 && v7 + 48 * v6 > v13)
    {
      v12 = &v13[-v7];
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 48);
      v7 = *a1;
      v8 = &v12[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 48);
      v7 = *a1;
      v8 = v13;
    }
  }

  v9 = v7 + 48 * *(a1 + 8);
  result = *v8;
  v11 = *(v8 + 2);
  *(v9 + 16) = *(v8 + 1);
  *(v9 + 32) = v11;
  *v9 = result;
  ++*(a1 + 8);
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::doFind<void const*>(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2 - 1;
  v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
  v5 = (a1 + 48 * v4);
  v6 = *v5;
  if (*v5 != a3)
  {
    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & v3;
      v5 = (a1 + 48 * (v8 & v3));
      v6 = *v5;
      if (*v5 == a3)
      {
        return v5;
      }
    }

    return 0;
  }

  return v5;
}

void llvm::SmallVectorImpl<std::pair<unsigned int,unsigned long long>>::append<std::pair<unsigned int,unsigned long long> const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 4);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 16);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 16 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 4);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,false>(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v82 = *(a2 - 8);
        v83 = *(v8 + 8);
        if (v82 > v83)
        {
          v84 = *v8;
          *v8 = *(a2 - 16);
          *(a2 - 16) = v84;
          *(v8 + 8) = v82;
          *(a2 - 8) = v83;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v89 = (v8 + 24);
      v90 = *(v8 + 24);
      v92 = (v8 + 8);
      v91 = *(v8 + 8);
      v93 = *(v8 + 40);
      if (v90 <= v91)
      {
        if (v93 > v90)
        {
          v140 = *(v8 + 16);
          v141 = *(v8 + 32);
          *(v8 + 16) = v141;
          *(v8 + 32) = v140;
          *(v8 + 24) = v93;
          *(v8 + 40) = v90;
          if (v93 > v91)
          {
            v142 = *v8;
            *v8 = v141;
            *(v8 + 16) = v142;
            goto LABEL_187;
          }

LABEL_188:
          v93 = v90;
        }
      }

      else
      {
        v94 = *v8;
        if (v93 > v90)
        {
          *v8 = *(v8 + 32);
          *(v8 + 32) = v94;
          goto LABEL_186;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v94;
        *(v8 + 8) = v90;
        *(v8 + 24) = v91;
        if (v93 > v91)
        {
          *(v8 + 16) = *(v8 + 32);
          *(v8 + 32) = v94;
          v92 = (v8 + 24);
LABEL_186:
          v89 = (v8 + 40);
          v90 = v91;
LABEL_187:
          *v92 = v93;
          *v89 = v91;
          goto LABEL_188;
        }
      }

      v151 = *(a2 - 8);
      if (v151 > v93)
      {
        v152 = *(v8 + 32);
        *(v8 + 32) = *(a2 - 16);
        *(a2 - 16) = v152;
        *(v8 + 40) = v151;
        *(a2 - 8) = v93;
        v153 = *(v8 + 40);
        v154 = *(v8 + 24);
        if (v153 > v154)
        {
          v155 = *(v8 + 16);
          v156 = *(v8 + 32);
          *(v8 + 16) = v156;
          *(v8 + 32) = v155;
          *(v8 + 24) = v153;
          *(v8 + 40) = v154;
          v157 = *(v8 + 8);
          if (v153 > v157)
          {
            v158 = *v8;
            *v8 = v156;
            *(v8 + 16) = v158;
            *(v8 + 8) = v153;
            *(v8 + 24) = v157;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48), (a2 - 16));
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = (v8 + 16);
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v100 = *(v99 + 3);
            v101 = *(v99 + 1);
            v99 = v95;
            if (v100 > v101)
            {
              v102 = *v95;
              v103 = v98;
              while (1)
              {
                v104 = v8 + v103;
                *(v104 + 16) = *(v8 + v103);
                *(v104 + 24) = *(v8 + v103 + 8);
                if (!v103)
                {
                  break;
                }

                v103 -= 16;
                if (v100 <= *(v104 - 8))
                {
                  v105 = v8 + v103 + 16;
                  goto LABEL_131;
                }
              }

              v105 = v8;
LABEL_131:
              *v105 = v102;
              *(v105 + 8) = v100;
            }

            v95 = v99 + 4;
            v98 += 16;
          }

          while (v99 + 4 != a2);
        }
      }

      else if (!v97)
      {
        v143 = (v8 + 24);
        do
        {
          v144 = *(v7 + 24);
          v145 = *(v7 + 8);
          v7 = v95;
          if (v144 > v145)
          {
            v146 = *v95;
            v147 = v143;
            do
            {
              v148 = v147;
              *(v147 - 2) = *(v147 - 6);
              v149 = *(v147 - 2);
              v147 -= 2;
              *v148 = v149;
            }

            while (v144 > *(v148 - 4));
            *(v147 - 2) = v146;
            *v147 = v144;
          }

          v95 = (v7 + 16);
          v143 += 2;
        }

        while (v7 + 16 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v106 = (v9 - 2) >> 1;
        v107 = v106;
        do
        {
          v108 = v107;
          if (v106 >= v107)
          {
            v109 = (2 * v107) | 1;
            v110 = v8 + 16 * v109;
            if (2 * v108 + 2 < v9)
            {
              v111 = *(v110 + 8) > *(v110 + 24);
              v110 += 16 * v111;
              if (v111)
              {
                v109 = 2 * v108 + 2;
              }
            }

            v112 = v8 + 16 * v108;
            v113 = *(v110 + 8);
            v114 = *(v112 + 8);
            if (v113 <= v114)
            {
              v115 = *v112;
              do
              {
                v116 = v112;
                v112 = v110;
                *v116 = *v110;
                *(v116 + 8) = v113;
                if (v106 < v109)
                {
                  break;
                }

                v117 = (2 * v109) | 1;
                v110 = v8 + 16 * v117;
                v118 = 2 * v109 + 2;
                if (v118 < v9)
                {
                  result = *(v110 + 24);
                  v111 = *(v110 + 8) > result;
                  v110 += 16 * v111;
                  if (v111)
                  {
                    v117 = v118;
                  }
                }

                v113 = *(v110 + 8);
                v109 = v117;
              }

              while (v113 <= v114);
              *v112 = v115;
              *(v112 + 8) = v114;
            }
          }

          v107 = v108 - 1;
        }

        while (v108);
        do
        {
          v119 = 0;
          v120 = *v8;
          v121 = *(v8 + 8);
          v122 = v8;
          do
          {
            v123 = v122 + 16 * v119;
            v124 = v123 + 16;
            v125 = (2 * v119) | 1;
            v119 = 2 * v119 + 2;
            if (v119 >= v9)
            {
              v119 = v125;
            }

            else
            {
              v126 = *(v123 + 24);
              result = *(v123 + 40);
              v127 = v123 + 32;
              if (v126 <= result)
              {
                v119 = v125;
              }

              else
              {
                v124 = v127;
              }
            }

            *v122 = *v124;
            *(v122 + 8) = *(v124 + 8);
            v122 = v124;
          }

          while (v119 <= ((v9 - 2) >> 1));
          if (v124 == a2 - 16)
          {
            *v124 = v120;
            *(v124 + 8) = v121;
          }

          else
          {
            *v124 = *(a2 - 16);
            *(v124 + 8) = *(a2 - 8);
            *(a2 - 16) = v120;
            *(a2 - 8) = v121;
            v128 = (v124 - v8 + 16) >> 4;
            v111 = v128 < 2;
            v129 = v128 - 2;
            if (!v111)
            {
              v130 = v129 >> 1;
              v131 = v8 + 16 * (v129 >> 1);
              v132 = *(v131 + 8);
              v133 = *(v124 + 8);
              if (v132 > v133)
              {
                v134 = *v124;
                do
                {
                  v135 = v124;
                  v124 = v131;
                  *v135 = *v131;
                  *(v135 + 8) = v132;
                  if (!v130)
                  {
                    break;
                  }

                  v130 = (v130 - 1) >> 1;
                  v131 = v8 + 16 * v130;
                  v132 = *(v131 + 8);
                }

                while (v132 > v133);
                *v124 = v134;
                *(v124 + 8) = v133;
              }
            }
          }

          a2 -= 16;
          v111 = v9-- <= 2;
        }

        while (!v111);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 8);
    if (v9 >= 0x81)
    {
      v12 = *(v10 + 8);
      v13 = *(v8 + 8);
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 16);
          *(a2 - 16) = v18;
          *(v10 + 8) = v11;
          *(a2 - 8) = v12;
          v19 = *(v10 + 8);
          v20 = *(v8 + 8);
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            *(v8 + 8) = v19;
            *(v10 + 8) = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 > v12)
        {
          *v8 = *(a2 - 16);
          *(a2 - 16) = v14;
          *(v8 + 8) = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        *(v8 + 8) = v12;
        *(v10 + 8) = v13;
        v26 = *(a2 - 8);
        if (v26 > v13)
        {
          *v10 = *(a2 - 16);
          *(a2 - 16) = v14;
          *(v10 + 8) = v26;
LABEL_27:
          *(a2 - 8) = v13;
        }
      }

      v27 = (v10 - 16);
      v28 = *(v10 - 8);
      v29 = *(v8 + 24);
      v30 = *(a2 - 24);
      if (v28 <= v29)
      {
        if (v30 > v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 32);
          *(a2 - 32) = v32;
          *(v10 - 8) = v30;
          *(a2 - 24) = v28;
          v33 = *(v10 - 8);
          v34 = *(v8 + 24);
          if (v33 > v34)
          {
            v35 = *(v8 + 16);
            *(v8 + 16) = *v27;
            *v27 = v35;
            *(v8 + 24) = v33;
            *(v10 - 8) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 16);
        if (v30 > v28)
        {
          *(v8 + 16) = *(a2 - 32);
          *(a2 - 32) = v31;
          *(v8 + 24) = v30;
          goto LABEL_39;
        }

        *(v8 + 16) = *v27;
        *v27 = v31;
        *(v8 + 24) = v28;
        *(v10 - 8) = v29;
        v37 = *(a2 - 24);
        if (v37 > v29)
        {
          *v27 = *(a2 - 32);
          *(a2 - 32) = v31;
          *(v10 - 8) = v37;
LABEL_39:
          *(a2 - 24) = v29;
        }
      }

      v38 = *(v10 + 24);
      v39 = *(v8 + 40);
      v40 = *(a2 - 40);
      if (v38 <= v39)
      {
        if (v40 > v38)
        {
          v42 = *(v10 + 16);
          *(v10 + 16) = *(a2 - 48);
          *(a2 - 48) = v42;
          *(v10 + 24) = v40;
          *(a2 - 40) = v38;
          v43 = *(v10 + 24);
          v44 = *(v8 + 40);
          if (v43 > v44)
          {
            v45 = *(v8 + 32);
            *(v8 + 32) = *(v10 + 16);
            *(v10 + 16) = v45;
            *(v8 + 40) = v43;
            *(v10 + 24) = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 32);
        if (v40 > v38)
        {
          *(v8 + 32) = *(a2 - 48);
          *(a2 - 48) = v41;
          *(v8 + 40) = v40;
          goto LABEL_48;
        }

        *(v8 + 32) = *(v10 + 16);
        *(v10 + 16) = v41;
        *(v8 + 40) = v38;
        *(v10 + 24) = v39;
        v46 = *(a2 - 40);
        if (v46 > v39)
        {
          *(v10 + 16) = *(a2 - 48);
          *(a2 - 48) = v41;
          *(v10 + 24) = v46;
LABEL_48:
          *(a2 - 40) = v39;
        }
      }

      v47 = *(v10 + 8);
      v48 = *(v10 - 8);
      v49 = *(v10 + 24);
      if (v47 <= v48)
      {
        v50 = *v10;
        if (v49 <= v47)
        {
LABEL_55:
          v48 = v47;
        }

        else
        {
          v51 = *(v10 + 16);
          *v10 = v51;
          *(v10 + 16) = v50;
          *(v10 + 8) = v49;
          *(v10 + 24) = v47;
          if (v49 <= v48)
          {
            v48 = v49;
            v50 = v51;
          }

          else
          {
            v50 = *v27;
            *v27 = v51;
            *v10 = v50;
            *(v10 - 8) = v49;
            *(v10 + 8) = v48;
          }
        }
      }

      else
      {
        v50 = *v27;
        if (v49 > v47)
        {
          *v27 = *(v10 + 16);
          *(v10 + 16) = v50;
          *(v10 - 8) = v49;
          *(v10 + 24) = v48;
          v50 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v50;
        *(v10 - 8) = v47;
        *(v10 + 8) = v48;
        if (v49 > v48)
        {
          v70 = *(v10 + 16);
          *v10 = v70;
          *(v10 + 16) = v50;
          *(v10 + 8) = v49;
          *(v10 + 24) = v48;
          v48 = v49;
          v50 = v70;
        }
      }

      v52 = *v8;
      *v8 = v50;
      *v10 = v52;
      v53 = *(v8 + 8);
      *(v8 + 8) = v48;
      *(v10 + 8) = v53;
      goto LABEL_57;
    }

    v15 = *(v8 + 8);
    v16 = *(v10 + 8);
    if (v15 <= v16)
    {
      if (v11 > v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 16);
        *(a2 - 16) = v22;
        *(v8 + 8) = v11;
        *(a2 - 8) = v15;
        v23 = *(v8 + 8);
        v24 = *(v10 + 8);
        if (v23 > v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          *(v10 + 8) = v23;
          *(v8 + 8) = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 > v15)
    {
      *v10 = *(a2 - 16);
      *(a2 - 16) = v17;
      *(v10 + 8) = v11;
LABEL_36:
      *(a2 - 8) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    *(v10 + 8) = v15;
    *(v8 + 8) = v16;
    v36 = *(a2 - 8);
    if (v36 > v16)
    {
      *v8 = *(a2 - 16);
      *(a2 - 16) = v17;
      *(v8 + 8) = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v54 = *v8;
    if (a4)
    {
      v55 = *(v8 + 8);
LABEL_60:
      v56 = 0;
      do
      {
        v57 = *(v8 + v56 + 24);
        v56 += 16;
      }

      while (v57 > v55);
      v58 = v8 + v56;
      v59 = a2;
      if (v56 == 16)
      {
        v62 = a2;
        while (v58 < v62)
        {
          v60 = v62 - 16;
          v63 = *(v62 - 8);
          v62 -= 16;
          if (v63 > v55)
          {
            goto LABEL_70;
          }
        }

        v60 = v62;
      }

      else
      {
        do
        {
          v60 = v59 - 16;
          v61 = *(v59 - 8);
          v59 -= 16;
        }

        while (v61 <= v55);
      }

LABEL_70:
      v8 = v58;
      if (v58 < v60)
      {
        v64 = v60;
        do
        {
          v65 = *v8;
          *v8 = *v64;
          *v64 = v65;
          v66 = *(v8 + 8);
          *(v8 + 8) = *(v64 + 8);
          *(v64 + 8) = v66;
          do
          {
            v67 = *(v8 + 24);
            v8 += 16;
          }

          while (v67 > v55);
          do
          {
            v68 = *(v64 - 8);
            v64 -= 16;
          }

          while (v68 <= v55);
        }

        while (v8 < v64);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v54;
      *(v8 - 8) = v55;
      if (v58 < v60)
      {
        goto LABEL_81;
      }

      v69 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *>(v7, v8 - 16);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 16;
        if (!v69)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v69)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,false>(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v55 = *(v8 + 8);
      if (*(v8 - 8) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(a2 - 8))
      {
        v73 = v8 + 16;
        do
        {
          v8 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v74 = *(v73 + 8);
          v73 += 16;
        }

        while (v55 <= v74);
      }

      else
      {
        v71 = v8;
        do
        {
          v8 = v71 + 16;
          v72 = *(v71 + 24);
          v71 += 16;
        }

        while (v55 <= v72);
      }

      v75 = a2;
      if (v8 < a2)
      {
        v76 = a2;
        do
        {
          v75 = v76 - 16;
          v77 = *(v76 - 8);
          v76 -= 16;
        }

        while (v55 > v77);
      }

      while (v8 < v75)
      {
        v78 = *v8;
        *v8 = *v75;
        *v75 = v78;
        v79 = *(v8 + 8);
        *(v8 + 8) = *(v75 + 8);
        *(v75 + 8) = v79;
        do
        {
          v80 = *(v8 + 24);
          v8 += 16;
        }

        while (v55 <= v80);
        do
        {
          v81 = *(v75 - 8);
          v75 -= 16;
        }

        while (v55 > v81);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v54;
      *(v8 - 8) = v55;
    }
  }

  v85 = *(v8 + 24);
  v86 = *(v8 + 8);
  v87 = *(a2 - 8);
  if (v85 <= v86)
  {
    if (v87 > v85)
    {
      v136 = *(v8 + 16);
      *(v8 + 16) = *(a2 - 16);
      *(a2 - 16) = v136;
      *(v8 + 24) = v87;
      *(a2 - 8) = v85;
      v137 = *(v8 + 24);
      v138 = *(v8 + 8);
      if (v137 > v138)
      {
        v139 = *v8;
        *v8 = *(v8 + 16);
        *(v8 + 16) = v139;
        *(v8 + 8) = v137;
        *(v8 + 24) = v138;
      }
    }
  }

  else
  {
    v88 = *v8;
    if (v87 <= v85)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v88;
      *(v8 + 8) = v85;
      *(v8 + 24) = v86;
      v150 = *(a2 - 8);
      if (v150 <= v86)
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 16);
      *(a2 - 16) = v88;
      *(v8 + 24) = v150;
    }

    else
    {
      *v8 = *(a2 - 16);
      *(a2 - 16) = v88;
      *(v8 + 8) = v87;
    }

    *(a2 - 8) = v86;
  }

  return result;
}

int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,0>(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *(a2 + 1);
  v6 = *(result + 1);
  v7 = *(a3 + 1);
  if (v5 <= v6)
  {
    if (v7 <= v5)
    {
      v5 = *(a3 + 1);
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      *(a2 + 1) = v7;
      *(a3 + 1) = v5;
      v10 = *(a2 + 1);
      v11 = *(result + 1);
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        *(result + 1) = v10;
        *(a2 + 1) = v11;
        v5 = *(a3 + 1);
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = *a3;
      *a3 = v8;
      *(result + 1) = v7;
LABEL_9:
      *(a3 + 1) = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    *(result + 1) = v5;
    *(a2 + 1) = v6;
    v5 = *(a3 + 1);
    if (v5 > v6)
    {
      *a2 = *a3;
      *a3 = v8;
      *(a2 + 1) = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = *(a4 + 1);
  if (v13 > v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    *(a3 + 1) = v13;
    *(a4 + 1) = v5;
    v15 = *(a3 + 1);
    v16 = *(a2 + 1);
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      *(a2 + 1) = v15;
      *(a3 + 1) = v16;
      v18 = *(a2 + 1);
      v19 = *(result + 1);
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        *(result + 1) = v18;
        *(a2 + 1) = v19;
      }
    }
  }

  v21 = *(a5 + 1);
  v22 = *(a4 + 1);
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    *(a4 + 1) = v21;
    *(a5 + 1) = v22;
    v24 = *(a4 + 1);
    v25 = *(a3 + 1);
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      *(a3 + 1) = v24;
      *(a4 + 1) = v25;
      v27 = *(a3 + 1);
      v28 = *(a2 + 1);
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        *(a2 + 1) = v27;
        *(a3 + 1) = v28;
        v30 = *(a2 + 1);
        v31 = *(result + 1);
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          *(result + 1) = v30;
          *(a2 + 1) = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 24);
      v7 = *(a1 + 8);
      v8 = *(a2 - 8);
      if (v6 <= v7)
      {
        if (v8 > v6)
        {
          v22 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 16);
          *(a2 - 16) = v22;
          *(a1 + 24) = v8;
          *(a2 - 8) = v6;
          v23 = *(a1 + 24);
          v24 = *(a1 + 8);
          if (v23 > v24)
          {
            v25 = *a1;
            *a1 = *(a1 + 16);
            *(a1 + 16) = v25;
            *(a1 + 8) = v23;
            *(a1 + 24) = v24;
          }
        }

        return 1;
      }

      v9 = *a1;
      if (v8 <= v6)
      {
        *a1 = *(a1 + 16);
        *(a1 + 16) = v9;
        *(a1 + 8) = v6;
        *(a1 + 24) = v7;
        v32 = *(a2 - 8);
        if (v32 <= v7)
        {
          return 1;
        }

        *(a1 + 16) = *(a2 - 16);
        *(a2 - 16) = v9;
        *(a1 + 24) = v32;
      }

      else
      {
        *a1 = *(a2 - 16);
        *(a2 - 16) = v9;
        *(a1 + 8) = v8;
      }

      *(a2 - 8) = v7;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::BytecodeReader::Impl::sortUseListOrder(mlir::Value)::$_2 &,std::pair<unsigned int,unsigned long long> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16));
      return 1;
    }

    v16 = (a1 + 24);
    v17 = *(a1 + 24);
    v19 = (a1 + 8);
    v18 = *(a1 + 8);
    v20 = *(a1 + 40);
    if (v17 <= v18)
    {
      if (v20 > v17)
      {
        v29 = *(a1 + 16);
        v30 = *(a1 + 32);
        *(a1 + 16) = v30;
        *(a1 + 32) = v29;
        *(a1 + 24) = v20;
        *(a1 + 40) = v17;
        if (v20 <= v18)
        {
LABEL_49:
          v20 = v17;
          goto LABEL_50;
        }

        v31 = *a1;
        *a1 = v30;
        *(a1 + 16) = v31;
LABEL_48:
        *v19 = v20;
        *v16 = v18;
        goto LABEL_49;
      }
    }

    else
    {
      v21 = *a1;
      if (v20 > v17)
      {
        *a1 = *(a1 + 32);
        *(a1 + 32) = v21;
LABEL_47:
        v16 = (a1 + 40);
        v17 = v18;
        goto LABEL_48;
      }

      *a1 = *(a1 + 16);
      *(a1 + 16) = v21;
      *(a1 + 8) = v17;
      *(a1 + 24) = v18;
      if (v20 > v18)
      {
        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v21;
        v19 = (a1 + 24);
        goto LABEL_47;
      }
    }

LABEL_50:
    v42 = *(a2 - 8);
    if (v42 > v20)
    {
      v43 = *(a1 + 32);
      *(a1 + 32) = *(a2 - 16);
      *(a2 - 16) = v43;
      *(a1 + 40) = v42;
      *(a2 - 8) = v20;
      v44 = *(a1 + 40);
      v45 = *(a1 + 24);
      if (v44 > v45)
      {
        v46 = *(a1 + 16);
        v47 = *(a1 + 32);
        *(a1 + 16) = v47;
        *(a1 + 32) = v46;
        *(a1 + 24) = v44;
        *(a1 + 40) = v45;
        v48 = *(a1 + 8);
        if (v44 > v48)
        {
          v49 = *a1;
          *a1 = v47;
          *(a1 + 16) = v49;
          *(a1 + 8) = v44;
          *(a1 + 24) = v48;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 8);
    v4 = *(a1 + 8);
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 16);
      *(a2 - 16) = v5;
      *(a1 + 8) = v3;
      *(a2 - 8) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = *(a1 + 24);
  v12 = (a1 + 8);
  v11 = *(a1 + 8);
  v14 = (a1 + 40);
  v13 = *(a1 + 40);
  if (v10 > v11)
  {
    v15 = *a1;
    if (v13 <= v10)
    {
      *a1 = *(a1 + 16);
      *(a1 + 16) = v15;
      *(a1 + 8) = v10;
      *(a1 + 24) = v11;
      if (v13 <= v11)
      {
        goto LABEL_34;
      }

      *(a1 + 16) = *(a1 + 32);
      *(a1 + 32) = v15;
      v12 = (a1 + 24);
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 32) = v15;
    }

    goto LABEL_33;
  }

  if (v13 > v10)
  {
    v26 = *(a1 + 16);
    v27 = *(a1 + 32);
    *(a1 + 16) = v27;
    *(a1 + 32) = v26;
    *(a1 + 24) = v13;
    *(a1 + 40) = v10;
    if (v13 > v11)
    {
      v28 = *a1;
      *a1 = v27;
      *(a1 + 16) = v28;
      v14 = (a1 + 24);
LABEL_33:
      *v12 = v13;
      *v14 = v11;
    }
  }

LABEL_34:
  v33 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 32;
  while (1)
  {
    v37 = *(v33 + 8);
    if (v37 > *(v36 + 8))
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = a1 + v39;
        *(v40 + 48) = *(a1 + v39 + 32);
        *(v40 + 56) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 <= *(v40 + 24))
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 16 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 16;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 4 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 4 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((4 * v8), 4uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      memset(result, 255, 4 * v10);
    }

    if (v3)
    {
      v11 = 4 * v3;
      v12 = v4;
      do
      {
        v13 = *v12;
        if (*v12 <= 0xFFFFFFFD)
        {
          v15 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::LookupBucketFor<unsigned int>(*a1, *(a1 + 16), v13, &v15);
          *v15 = *v12;
          ++*(a1 + 8);
        }

        ++v12;
        v11 -= 4;
      }

      while (v11);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v14 = *(a1 + 16);
  if (v14)
  {

    return memset(result, 255, 4 * v14);
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_0>(uint64_t *a1, uint64_t a2)
{
  v8 = a2;
  v3 = *a1;
  v2 = a1[1];
  v4 = (*v2)++;
  v7 = v4;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v3 + 704, &v8, &v7, v6);
}

uint64_t mlir::detail::walk<mlir::ForwardIterator>(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *(a1 + 44);
  if ((v3 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v6 = a1 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 32 * *(a1 + 40) + 64;
  v7 = v6 + 24 * (v3 & 0x7FFFFF);
  while (1)
  {
    v8 = *(v6 + 8);
    if (v8 != v6)
    {
      break;
    }

LABEL_10:
    v6 += 24;
    if (v6 == v7)
    {
      return 1;
    }
  }

  while (1)
  {
    v9 = *(v8 + 8);
    for (i = *(v8 + 32); i != v8 + 24; i = *(i + 8))
    {
      result = mlir::detail::walk<mlir::ForwardIterator>(i, a2, a3);
      if (!result)
      {
        return result;
      }
    }

    result = a2(a3, v8 - 8);
    if (!result)
    {
      return result;
    }

    v8 = v9;
    if (v9 == v6)
    {
      goto LABEL_10;
    }
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Block *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_1>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return 1;
  }

  v4 = *a1;
  while ((mlir::BytecodeReader::Impl::sortUseListOrder(v4, *v2) & 1) != 0)
  {
    if (++v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::BytecodeReader::Impl::processUseLists(mlir::Operation *)::$_2>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  v3 = a2 - 16;
  if (v2)
  {
    v4 = (a2 - 16);
  }

  else
  {
    v4 = 0;
  }

  if (!v2)
  {
    return 1;
  }

  v6 = 0;
  v7 = *a1;
  for (i = (a2 - 16); ; i -= 2)
  {
    v9 = v4;
    if (!v6)
    {
      goto LABEL_11;
    }

    v10 = *(a2 - 8) & 7;
    v11 = v3;
    v12 = v6;
    if (v10 != 6)
    {
      v13 = (5 - v10);
      v9 = i;
      v12 = v6 - v13;
      if (v6 <= v13)
      {
        goto LABEL_11;
      }

      v11 = v3 - 16 * v13;
    }

    v9 = (v11 - 24 * v12);
LABEL_11:
    if ((mlir::BytecodeReader::Impl::sortUseListOrder(v7, v9) & 1) == 0)
    {
      break;
    }

    if (v2 == ++v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>,mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::__list_iterator<std::pair<mlir::Operation *,mlir::BytecodeReader::Impl::RegionReadState>,void *>>>::LookupBucketFor<mlir::Operation *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}