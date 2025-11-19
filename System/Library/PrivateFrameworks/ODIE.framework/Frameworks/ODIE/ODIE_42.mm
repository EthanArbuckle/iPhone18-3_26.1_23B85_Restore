uint64_t mlir::Op<mlir::pdl::ReplaceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    goto LABEL_25;
  }

  v5 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v5))
  {
    goto LABEL_25;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id)
  {
    v25 = 257;
    mlir::Operation::emitOpError(a1, v24, &v27);
    if (v27)
    {
      mlir::Diagnostic::operator<<<19ul>(v28, "expects parent op ");
    }

    v23 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v27, &v23);
    v26[0] = "pdl.rewrite";
    v26[1] = 11;
    v22[0] = v26;
    v22[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v22);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
    if (v12)
    {
      goto LABEL_25;
    }
  }

  v27 = a1;
  if (!mlir::pdl::ReplaceOp::verifyInvariantsImpl(&v27))
  {
LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  v13 = *(a1 + 44);
  v14 = a1 + 16 * ((v13 >> 23) & 1);
  v16 = *(v14 + 64);
  v17 = *(v14 + 68);
  v15 = v14 + 64;
  if ((v13 & 0x800000) == 0)
  {
    v18 = 0;
    if (v17)
    {
      goto LABEL_20;
    }

LABEL_29:
    v19 = 1;
    goto LABEL_26;
  }

  v18 = *(a1 + 72);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (!*(v18 + 32 * v16 + 24) || !*(v15 + 8))
  {
    goto LABEL_29;
  }

  v25 = 257;
  mlir::Operation::emitOpError(a1, v24, &v27);
  if (v27)
  {
    mlir::Diagnostic::operator<<<88ul>(v28, "expected no replacement values to be provided when the replacement operation is present");
  }

  v19 = v28[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v27);
LABEL_26:
  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ResultOp>,mlir::OpTrait::OneResult<mlir::pdl::ResultOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::pdl::ResultOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ResultOp>,mlir::OpTrait::OneOperand<mlir::pdl::ResultOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ResultOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ResultOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::ResultOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::ResultOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::ResultOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.result", 0xA, a2, &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E81EF0;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701080681 ? (v4 = *(a3 + 4) == 120) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1701080681 && v6 == 120)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "index";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "index", 5uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "index";
    v11[1] = 5;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ResultOp>,mlir::OpTrait::OneResult<mlir::pdl::ResultOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::pdl::ResultOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ResultOp>,mlir::OpTrait::OneOperand<mlir::pdl::ResultOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ResultOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ResultOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::ResultOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::ResultOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::ResultOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[9] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v19[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 48))(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 > 1uLL)
  {
    *v12 = 26223;
    *(v11 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, "of", 2uLL);
  }

  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v17 = v19;
  v18 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v17, "index", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v17, v18);
  if (v17 != v19)
  {
    free(v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::pdl::ResultOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::ValueType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    goto LABEL_12;
  }

  v6 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v6)
  {
    v11 = "requires attribute 'index'";
    v12 = 259;
    mlir::Operation::emitOpError(a1, &v11, v13);
    v8 = v14 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    goto LABEL_13;
  }

  v13[0] = a1;
  if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13) && mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    if (*(a1 + 36))
    {
      v7 = a1 - 16;
    }

    else
    {
      v7 = 0;
    }

    v8 = mlir::pdl::__mlir_ods_local_type_constraint_PDLOps5(a1, *(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ResultsOp>,mlir::OpTrait::OneResult<mlir::pdl::ResultsOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::pdl::ResultsOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ResultsOp>,mlir::OpTrait::OneOperand<mlir::pdl::ResultsOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ResultsOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ResultsOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::ResultsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::ResultsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::ResultsOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.results", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E81FB8;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1701080681 ? (v4 = *(a3 + 4) == 120) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1701080681 && v6 == 120)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "index";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "index", 5uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "index";
    v11[1] = 5;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::ResultsOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl::ResultsOp>,mlir::OpTrait::OneResult<mlir::pdl::ResultsOp>,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::pdl::ResultsOp>,mlir::OpTrait::ZeroSuccessors<mlir::pdl::ResultsOp>,mlir::OpTrait::OneOperand<mlir::pdl::ResultsOp>,mlir::OpTrait::OpInvariants<mlir::pdl::ResultsOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl::ResultsOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl::ResultsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl::ResultsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl::ResultsOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultsOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultsOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl::ResultsOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl::ResultsOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[9] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 9);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[377];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>();
    unk_27FC18BE0 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl<Empty>]";
  v6 = 124;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v26[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)))
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 32;
    }

    (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1)));
  }

  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 1uLL)
  {
    *v13 = 26223;
    *(v12 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v12, "of", 2uLL);
  }

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  if (*(a2 + 36))
  {
    v18 = a2 - 16;
  }

  else
  {
    v18 = 0;
  }

  if (*(v7 + 16 * ((*(a2 + 44) >> 23) & 1)))
  {
    v19 = *(v18 + 8);
    v20 = (*(*a3 + 16))(a3);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 3uLL)
    {
      *v21 = 540945696;
      *(v20 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v20, " -> ", 4uLL);
    }

    (*(*a3 + 32))(a3, v19 & 0xFFFFFFFFFFFFFFF8);
  }

  v24 = v26;
  v25 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v24, "index", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
  if (v24 != v26)
  {
    free(v24);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::pdl::ResultsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::PDLType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2))
  {
    goto LABEL_19;
  }

  if (!mlir::OpTrait::impl::verifyOneResult(a1, v3))
  {
    goto LABEL_19;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_19;
  }

  if (!mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  v28 = a1;
  if (!mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v28) || !mlir::pdl::__mlir_ods_local_type_constraint_PDLOps4(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 36) ? a1 - 16 : 0;
  v8 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  LODWORD(v23) = 0;
  v9 = (*v8)[17];
  if (v9 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*v8[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    goto LABEL_21;
  }

  v25 = 261;
  v24[0] = "result";
  v24[1] = 6;
  mlir::Operation::emitOpError(a1, v24, &v28);
  if (v28)
  {
    mlir::Diagnostic::operator<<<3ul>(v29, " #");
  }

  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v28, &v23);
  v11 = v10;
  if (*v10)
  {
    if (*v11)
    {
      v26 = 4;
      v27 = v8;
      v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v11 + 3), &v26, 1);
      v13 = v11[3] + 24 * *(v11 + 8);
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      ++*(v11 + 8);
    }
  }

  v15 = *(v11 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  if (v15 != 1)
  {
LABEL_21:
    v23 = a1;
    if (!(mlir::pdl::ResultsOp::getIndex(&v23) >> 32) && *(*(*(a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      v25 = 257;
      mlir::Operation::emitOpError(a1, v24, &v28);
      if (v28)
      {
        if (v28)
        {
          v19 = *(a1 - 8) & 0xFFFFFFFFFFFFFFF8;
          v26 = 4;
          v27 = v19;
          v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
          v21 = v30 + 24 * v31;
          v22 = *v20;
          *(v21 + 16) = *(v20 + 16);
          *v21 = v22;
          ++v31;
        }
      }

      v16 = v32 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
LABEL_19:
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>>(v6);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.rewrite", 0xB, a2, &mlir::detail::TypeIDResolver<mlir::pdl::RewriteOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E82080;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 == 21)
  {
    v7 = *(a3 + 13);
    v8 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    v9 = 1935635566;
LABEL_14:
    v10 = v9 | 0x73657A6900000000;
    if (v8 && v7 == v10)
    {
      v5 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72, 2);
      v6 = v5 & 0xFFFFFFFFFFFFFF00;
      return v6 | v5;
    }

    goto LABEL_18;
  }

  if (a4 == 19)
  {
    v7 = *(a3 + 11);
    v8 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
    v9 = 1400139365;
    goto LABEL_14;
  }

  if (a4 != 4 || *a3 != 1701667182)
  {
LABEL_18:
    LOBYTE(v5) = 0;
    v6 = 0;
    return v6 | v5;
  }

  v5 = *v4;
  v6 = *v4 & 0xFFFFFFFFFFFFFF00;
  return v6 | v5;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 == 21)
  {
    v7 = *v4 ^ 0x5F646E617265706FLL;
    v8 = v4[1] ^ 0x5F746E656D676573;
    v9 = *(v4 + 13);
    v10 = 1935635566;
  }

  else
  {
    if (v5 != 19)
    {
      if (v5 == 4 && *v4 == 1701667182)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v6 = a4;
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v6;
      }

      return result;
    }

    v7 = *v4 ^ 0x53646E617265706FLL;
    v8 = v4[1] ^ 0x6953746E656D6765;
    v9 = *(v4 + 11);
    v10 = 1400139365;
  }

  if (v7 | v8 | v9 ^ (v10 | 0x73657A6900000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = a4 == 0;
  }

  if (!v11 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v12 = *(a4 + 8);
    if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v12[2] == 32 && *(a4 + 16) == 2)
    {
      v13 = *(a4 + 32);
      if (v13 >= 4)
      {
        return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72), *(a4 + 24), v13 & 0xFFFFFFFFFFFFFFFCLL);
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v17 = 261;
    v15 = "name";
    v16 = 4;
    v10 = mlir::StringAttr::get(v9, &v15, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v7 + 8, 2);
  v12 = *(**v11 + 32);
  v17 = 261;
  v15 = "operandSegmentSizes";
  v16 = 19;
  v14 = mlir::StringAttr::get(v12, &v15, v13);
  mlir::NamedAttrList::push_back(a3, v14, v11);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v25, a6);
    if (v25)
    {
      mlir::Diagnostic::operator<<<42ul>(v26, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
    goto LABEL_5;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "name", 4uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a5(&v25, a6);
        if (v25)
        {
          if (v25)
          {
            v23 = 0;
            v24 = v13;
            v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
            v15 = v27 + 24 * v28;
            v16 = *v14;
            *(v15 + 16) = *(v14 + 16);
            *v15 = v16;
            ++v28;
          }
        }

        goto LABEL_4;
      }

      *a3 = v13;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v18 & 1) == 0 || (v19 = *(v17 + 8)) == 0) && ((v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v21 & 1) == 0) || (v19 = *(v20 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 1, 2, v19, a5, a6, "DenseI32ArrayAttr", 17))
  {
    result = 1;
    goto LABEL_19;
  }

LABEL_5:
  result = 0;
LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v20 = v22;
  v21 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v19 = 261;
    v17 = "name";
    v18 = 4;
    v9 = mlir::StringAttr::get(v8, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v9, v5);
  }

  v10 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v6 + 8, 2);
  v11 = *(**v10 + 32);
  v19 = 261;
  v17 = "operandSegmentSizes";
  v18 = 19;
  v13 = mlir::StringAttr::get(v11, &v17, v12);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v13, v10);
  if (v21)
  {
    v14 = mlir::DictionaryAttr::get(v3, v20, v21);
  }

  else
  {
    v14 = 0;
  }

  if (v20 != v22)
  {
    free(v20);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

__n128 mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::RewriteOp>::hashProperties(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v9 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = *(a2 + 12) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (8 * *(a2 + 8) + 8));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v10, 0, v10, v11, &v9, &v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3))
  {
    goto LABEL_11;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_11:
      result = 0;
      goto LABEL_12;
    }

    if (*(v9 + 16) >= 3)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_11;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 1, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if ((*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 2, 2uLL) & 1) == 0)
  {
    goto LABEL_11;
  }

  result = 1;
LABEL_12:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 8, 2);
    (*(*a3 + 16))(a3, v8);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 8), 2);
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::pdl::RewriteOp>::getDefaultDialect;
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[13] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[12] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 12);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v6 = a2;
  v59[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v56 = v6;
  v7 = *(v6 + 11);
  v8 = (v7 >> 23) & 1;
  v9 = *(v6 + 4 * v8 + 18);
  if ((v7 & 0x800000) != 0)
  {
    v10 = *(v6 + 9);
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (*(v10 + 24))
  {
    v11 = (*(*a3 + 16))(a3);
    v12 = *(v11 + 4);
    if (v12 >= *(v11 + 3))
    {
      llvm::raw_ostream::write(v11, 32);
    }

    else
    {
      *(v11 + 4) = v12 + 1;
      *v12 = 32;
      v6 = v56;
    }

    v13 = *(v6 + 11);
    v8 = (v13 >> 23) & 1;
    v14 = *(v6 + 4 * v8 + 18);
    if ((v13 & 0x800000) != 0)
    {
      v15 = *(v6 + 9);
      if (!v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 0;
      if (!v14)
      {
        goto LABEL_11;
      }
    }

    if (*(v15 + 24))
    {
      (*(*a3 + 160))(a3);
      v8 = (*(v6 + 11) >> 23) & 1;
    }
  }

LABEL_11:
  if (*(v6 + 2 * v8 + 8))
  {
    v16 = (*(*a3 + 16))(a3);
    v17 = *(v16 + 4);
    if (v17 >= *(v16 + 3))
    {
      llvm::raw_ostream::write(v16, 32);
    }

    else
    {
      *(v16 + 4) = v17 + 1;
      *v17 = 32;
    }

    v18 = (*(*a3 + 16))(a3);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 3uLL)
    {
      *v19 = 1752459639;
      *(v18 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v18, "with", 4uLL);
    }

    v20 = (*(*a3 + 16))(a3);
    v21 = *(v20 + 4);
    if (v21 >= *(v20 + 3))
    {
      llvm::raw_ostream::write(v20, 32);
    }

    else
    {
      *(v20 + 4) = v21 + 1;
      *v21 = 32;
    }

    (*(*a3 + 48))(a3, *(v56 + 2 * ((*(v56 + 11) >> 23) & 1) + 8));
    mlir::pdl::RewriteOp::getODSOperands(&v56, 1u);
    if (v22)
    {
      v23 = (*(*a3 + 16))(a3);
      v24 = *(v23 + 4);
      if (*(v23 + 3) == v24)
      {
        llvm::raw_ostream::write(v23, "(", 1uLL);
      }

      else
      {
        *v24 = 40;
        ++*(v23 + 4);
      }

      ODSOperands = mlir::pdl::RewriteOp::getODSOperands(&v56, 1u);
      v27 = v26;
      v28 = (*(*a3 + 16))(a3);
      if (v27)
      {
        v29 = v28;
        (*(*a3 + 160))(a3, *(ODSOperands + 24));
        v30 = v27 - 1;
        if (v30)
        {
          v31 = (ODSOperands + 56);
          do
          {
            v32 = *(v29 + 4);
            if (*(v29 + 3) - v32 > 1uLL)
            {
              *v32 = 8236;
              *(v29 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v29, ", ", 2uLL);
            }

            v33 = *v31;
            v31 += 4;
            (*(*a3 + 160))(a3, v33);
            --v30;
          }

          while (v30);
        }
      }

      v34 = (*(*a3 + 16))(a3);
      v35 = *(v34 + 4);
      if (v35 >= *(v34 + 3))
      {
        llvm::raw_ostream::write(v34, 32);
      }

      else
      {
        *(v34 + 4) = v35 + 1;
        *v35 = 32;
      }

      v36 = (*(*a3 + 16))(a3);
      v37 = *(v36 + 4);
      if (*(v36 + 3) == v37)
      {
        llvm::raw_ostream::write(v36, ":", 1uLL);
      }

      else
      {
        *v37 = 58;
        ++*(v36 + 4);
      }

      v38 = (*(*a3 + 16))(a3);
      v39 = *(v38 + 4);
      if (v39 >= *(v38 + 3))
      {
        llvm::raw_ostream::write(v38, 32);
      }

      else
      {
        *(v38 + 4) = v39 + 1;
        *v39 = 32;
      }

      v40 = mlir::pdl::RewriteOp::getODSOperands(&v56, 1u);
      if (v41)
      {
        v42 = v40;
        v43 = v41;
        (*(*a3 + 32))(a3, *(*(v40 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        v44 = v43 - 1;
        if (v44)
        {
          v45 = (v42 + 56);
          do
          {
            v46 = (*(*a3 + 16))(a3);
            v47 = *(v46 + 4);
            if (*(v46 + 3) - v47 > 1uLL)
            {
              *v47 = 8236;
              *(v46 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v46, ", ", 2uLL);
            }

            v48 = *v45;
            v45 += 4;
            (*(*a3 + 32))(a3, *(v48 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v44;
          }

          while (v44);
        }
      }

      v49 = (*(*a3 + 16))(a3);
      v50 = *(v49 + 4);
      if (*(v49 + 3) == v50)
      {
        llvm::raw_ostream::write(v49, ")", 1uLL);
      }

      else
      {
        *v50 = 41;
        ++*(v49 + 4);
      }
    }
  }

  v51 = (((v56 + 16 * ((*(v56 + 11) >> 23) & 1) + ((*(v56 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v56 + 10));
  if (*v51 != v51)
  {
    v52 = (*(*a3 + 16))(a3);
    v53 = *(v52 + 4);
    if (v53 >= *(v52 + 3))
    {
      llvm::raw_ostream::write(v52, 32);
    }

    else
    {
      *(v52 + 4) = v53 + 1;
      *v53 = 32;
    }

    (*(*a3 + 224))(a3, ((v56 + 16 * ((*(v56 + 11) >> 23) & 1) + ((*(v56 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v56 + 10), 1, 1, 0);
  }

  v57 = v59;
  v58 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v57, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v57, "name", 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(v56);
  (*(*a3 + 200))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v57, v58);
  if (v57 != v59)
  {
    free(v57);
  }

  v55 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v31[25] = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    goto LABEL_30;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8) == 0 || (v8 = *(v7 + 16)) == 0 || *(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl::PatternOp,void>::id)
  {
    v28 = 257;
    mlir::Operation::emitOpError(a1, v27, &v30);
    if (v30)
    {
      mlir::Diagnostic::operator<<<19ul>(v31, "expects parent op ");
    }

    v26 = "'";
    v9 = mlir::InFlightDiagnostic::operator<<<char const*>(&v30, &v26);
    v29[0] = "pdl.pattern";
    v29[1] = 11;
    v25[0] = v29;
    v25[1] = 1;
    v10 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<llvm::StringLiteral>>(v9, v25);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<2ul>((v10 + 1), "'");
    }

    v12 = *(v11 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
    if (v12)
    {
      goto LABEL_30;
    }
  }

  if ((mlir::OpTrait::impl::verifyNoRegionArguments(a1, v5) & 1) == 0)
  {
    goto LABEL_30;
  }

  v13 = *(a1 + 44);
  if ((v13 & 0x7FFFFF) != 0)
  {
    v14 = 0;
    v15 = (((a1 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
    while (1)
    {
      if (v15 != *v15)
      {
        v16 = v15[1];
        if (v15 == v16 || v15 != *(v16 + 8))
        {
          break;
        }
      }

      ++v14;
      v15 += 3;
      if ((v13 & 0x7FFFFF) == v14)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v25[0]) = v14;
    v27[0] = "expects region #";
    v28 = 259;
    mlir::Operation::emitOpError(a1, v27, &v30);
    v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v30, v25);
    v18 = v17;
    if (*v17)
    {
      mlir::Diagnostic::operator<<<23ul>((v17 + 1), " to have 0 or 1 blocks");
    }

    v19 = *(v18 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
    if (v19)
    {
      goto LABEL_30;
    }

    LODWORD(v13) = *(a1 + 44);
  }

LABEL_25:
  v20 = (v13 & 0x800000) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v20) || (v30 = a1, !mlir::pdl::RewriteOp::verifyInvariantsImpl(&v30)))
  {
LABEL_30:
    IsTerminator = 0;
    goto LABEL_31;
  }

  IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v21);
LABEL_31:
  v23 = *MEMORY[0x277D85DE8];
  return IsTerminator;
}

uint64_t mlir::Op<mlir::pdl::RewriteOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::PatternOp>::Impl,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::SingleBlock,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants(unsigned int *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[10];
  v1 = a1[11];
  v3 = &a1[4 * ((v1 >> 23) & 1)];
  v4 = *(v3 + 8);
  v11 = a1;
  v5 = (((v3 + ((v1 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v2);
  v6 = *v5;
  if (v4)
  {
    if (*v5 != v5)
    {
      v13 = 257;
      mlir::Operation::emitOpError(a1, v12, &v14);
      if (v14)
      {
        mlir::Diagnostic::operator<<<61ul>(v15, "expected rewrite region to be empty when rewrite is external");
      }

LABEL_12:
      v7 = v15[192] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
      goto LABEL_13;
    }

    v7 = 1;
  }

  else
  {
    if (*v5 == v5)
    {
      v13 = 257;
      mlir::Operation::emitOpError(a1, v12, &v14);
      if (v14)
      {
        mlir::Diagnostic::operator<<<74ul>(v15, "expected rewrite region to be non-empty if external name is not specified");
      }

      goto LABEL_12;
    }

    v7 = 1;
    mlir::pdl::RewriteOp::getODSOperands(&v11, 1u);
    if (v8)
    {
      v13 = 257;
      mlir::Operation::emitOpError(v11, v12, &v14);
      if (v14)
      {
        mlir::Diagnostic::operator<<<68ul>(v15, "expected no external arguments when the rewrite is specified inline");
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypeOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.type", 8, a2, &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E82148;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::printAssembly(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 12 && (*a3 == 0x746E6174736E6F63 ? (v4 = *(a3 + 8) == 1701869908) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 12)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 2);
    if (v5 == 0x746E6174736E6F63 && v6 == 1701869908)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "constantType";
    v7[1] = 12;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "constantType", 0xCuLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "constantType";
    v11[1] = 12;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypeOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypeOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[6] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[388];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>();
    *algn_27FC18C38 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl<Empty>]";
  v6 = 125;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v17[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v15 = v17;
  v16 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "constantType", 12);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, v16);
  if (*&a2[4 * ((a2[11] >> 23) & 1) + 16])
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 32;
    }

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) == v11)
    {
      llvm::raw_ostream::write(v10, ":", 1uLL);
    }

    else
    {
      *v11 = 58;
      ++*(v10 + 4);
    }

    v12 = (*(*a3 + 16))(a3);
    v13 = *(v12 + 4);
    if (v13 >= *(v12 + 3))
    {
      llvm::raw_ostream::write(v12, 32);
    }

    else
    {
      *(v12 + 4) = v13 + 1;
      *v13 = 32;
    }

    (*(*a3 + 48))(a3, *&a2[4 * ((a2[11] >> 23) & 1) + 16]);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::pdl::TypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::TypeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && (v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8), v10 = a1, mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10)) && (*(a1 + 9) ? (v7 = (a1 - 16)) : (v7 = 0), mlir::pdl::__mlir_ods_local_type_constraint_PDLOps2(a1, *(v7 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0)))
  {
    return *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8) || verifyHasBindingUse(a1);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::Model(void *a1, uint64_t a2)
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl.types", 9, a2, &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E82210;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::printAssembly(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x746E6174736E6F63 ? (v4 = *(a3 + 5) == 0x7365707954746E61) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 13)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 5);
    if (v5 == 0x746E6174736E6F63 && v6 == 0x7365707954746E61)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "constantTypes";
    v7[1] = 13;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "constantTypes", 0xDuLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v14 = v21 + 24 * v22;
              v15 = *v13;
              *(v14 + 16) = *(v13 + 16);
              *v14 = v15;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "constantTypes";
    v11[1] = 13;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl::TypesOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl::TypesOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[6] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v17[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v15 = v17;
  v16 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v15, "constantTypes", 13);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v15, v16);
  if (*&a2[4 * ((a2[11] >> 23) & 1) + 16])
  {
    v8 = (*(*a3 + 16))(a3);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 32;
    }

    v10 = (*(*a3 + 16))(a3);
    v11 = *(v10 + 4);
    if (*(v10 + 3) == v11)
    {
      llvm::raw_ostream::write(v10, ":", 1uLL);
    }

    else
    {
      *v11 = 58;
      ++*(v10 + 4);
    }

    v12 = (*(*a3 + 16))(a3);
    v13 = *(v12 + 4);
    if (v13 >= *(v12 + 3))
    {
      llvm::raw_ostream::write(v12, 32);
    }

    else
    {
      *(v12 + 4) = v13 + 1;
      *v13 = 32;
    }

    (*(*a3 + 48))(a3, *&a2[4 * ((a2[11] >> 23) & 1) + 16]);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::pdl::TypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && (v6 = *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8), v10 = a1, mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10)) && (*(a1 + 9) ? (v7 = (a1 - 16)) : (v7 = 0), mlir::pdl::__mlir_ods_local_type_constraint_PDLOps6(a1, (*(v7 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    return *(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8) || verifyHasBindingUse(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::pdl::PatternOp::verifyRegions(void)::$_0>(mlir::Operation ***a1, uint64_t a2)
{
  v12[25] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  if (*(v3 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = (*(v3 + 8) + 32);
  }

  else
  {
    v4 = (v3 + 24);
  }

  v5 = *a1;
  v6 = *v4;
  if (!v6 || *(v6 + 24) != &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
  {
    v10 = 259;
    mlir::Operation::emitOpError(*v5, &v9, v11);
    mlir::Diagnostic::attachNote(v12, *(a2 + 24), 1);
  }

  result = 1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Diagnostic::operator<<<78ul>(uint64_t a1, char *__s)
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

uint64_t mlir::Diagnostic::operator<<<74ul>(uint64_t a1, char *__s)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E808))
  {
    qword_27FC1E7F8 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>();
    unk_27FC1E800 = v1;
    __cxa_guard_release(&qword_27FC1E808);
  }

  return qword_27FC1E7F8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::ApplyNativeConstraintOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::BoolAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BoolAttr]";
  v6 = 76;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E830))
  {
    qword_27FC1E820 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>();
    *algn_27FC1E828 = v1;
    __cxa_guard_release(&qword_27FC1E830);
  }

  return qword_27FC1E820;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::ApplyNativeRewriteOpGenericAdaptorBase::Properties]";
  v6 = 131;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ApplyNativeRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E858))
  {
    qword_27FC1E848 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>();
    unk_27FC1E850 = v1;
    __cxa_guard_release(&qword_27FC1E858);
  }

  return qword_27FC1E848;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::AttributeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E880))
  {
    qword_27FC1E870 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>();
    *algn_27FC1E878 = v1;
    __cxa_guard_release(&qword_27FC1E880);
  }

  return qword_27FC1E870;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::OperationOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<int>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int32_t>]";
  v6 = 103;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::OperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E8A8))
  {
    qword_27FC1E898 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>();
    unk_27FC1E8A0 = v1;
    __cxa_guard_release(&qword_27FC1E8A8);
  }

  return qword_27FC1E898;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::PatternOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::PatternOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

void llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

uint64_t llvm::getTypeName<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E8D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E8D0))
  {
    qword_27FC1E8C0 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>();
    *algn_27FC1E8C8 = v1;
    __cxa_guard_release(&qword_27FC1E8D0);
  }

  return qword_27FC1E8C0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::ReplaceOpGenericAdaptorBase::Properties]";
  v6 = 120;
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
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E8F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E8F8))
  {
    qword_27FC1E8E8 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>();
    unk_27FC1E8F0 = v1;
    __cxa_guard_release(&qword_27FC1E8F8);
  }

  return qword_27FC1E8E8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::ResultOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E920))
  {
    qword_27FC1E910 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>();
    *algn_27FC1E918 = v1;
    __cxa_guard_release(&qword_27FC1E920);
  }

  return qword_27FC1E910;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::ResultsOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::ResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E948))
  {
    qword_27FC1E938 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>();
    unk_27FC1E940 = v1;
    __cxa_guard_release(&qword_27FC1E948);
  }

  return qword_27FC1E938;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::RewriteOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::RewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E970))
  {
    qword_27FC1E960 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>();
    *algn_27FC1E968 = v1;
    __cxa_guard_release(&qword_27FC1E970);
  }

  return qword_27FC1E960;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::TypeOpGenericAdaptorBase::Properties]";
  v6 = 117;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::TypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

BOOL mlir::AsmParser::parseAttribute<mlir::TypeAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v13 = 0;
  if ((*(*a1 + 440))(a1, &v13, a3))
  {
    v7 = v13;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v7 = 0;
    }

    *a2 = v7;
    v8 = 1;
    if (!v7)
    {
      v11 = "invalid kind of attribute specified";
      v12 = 259;
      (*(*a1 + 24))(v14, a1, v6, &v11);
      v8 = (v15 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E998))
  {
    qword_27FC1E988 = llvm::detail::getTypeNameImpl<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>();
    unk_27FC1E990 = v1;
    __cxa_guard_release(&qword_27FC1E998);
  }

  return qword_27FC1E988;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl::detail::TypesOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl::TypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::pdl::PDLDialect::parseType(uint64_t a1, mlir::AsmParser *a2)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v11 = 0;
  v12 = 0;
  v10 = 0;
  if ((generatedTypeParser(a2, &v11, &v10) & 0x100) != 0)
  {
    result = v10;
  }

  else
  {
    v9[16] = 257;
    (*(*a2 + 24))(&v16, a2, v4, v9);
    if (v16)
    {
      if (v16)
      {
        v15 = 261;
        v13 = v11;
        v14 = v12;
        mlir::Diagnostic::operator<<(v17, &v13);
        if (v16)
        {
          if (v16)
          {
            v5 = *(a1 + 8);
            v6 = *(a1 + 16);
            v15 = 261;
            v13 = v5;
            v14 = v6;
            mlir::Diagnostic::operator<<(v17, &v13);
            if (v16)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t generatedTypeParser(mlir::AsmParser *a1, llvm::StringRef *a2, mlir::Type *a3)
{
  v38[25] = *MEMORY[0x277D85DE8];
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(v24, a1, 0);
  v37 = "attribute";
  v38[0] = 9;
  if (v27[2])
  {
    goto LABEL_57;
  }

  v6 = v26;
  if (v26 == 9)
  {
    if (*v25 == 0x7475626972747461 && *(v25 + 8) == 101)
    {
      v11 = *(**(*(*a1 + 32))(a1) + 384);
      v12 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
      goto LABEL_52;
    }

    goto LABEL_16;
  }

  if (v26)
  {
LABEL_16:
    v37 = "operation";
    v38[0] = 9;
    goto LABEL_17;
  }

  (*(*v24[0] + 648))(v24[0], &v37, 1);
  v37 = "operation";
  v38[0] = 9;
  if (v27[2])
  {
    goto LABEL_57;
  }

  v6 = v26;
  if (v26)
  {
LABEL_17:
    if (v6 == 9 && *v25 == 0x6F6974617265706FLL && *(v25 + 8) == 110)
    {
      v11 = *(**(*(*a1 + 32))(a1) + 384);
      v12 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
      goto LABEL_52;
    }

    v28 = "range";
    v29 = 5;
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  (*(*v24[0] + 648))(v24[0], &v37, 1);
  v28 = "range";
  v29 = 5;
  if (v27[2])
  {
    goto LABEL_57;
  }

  v6 = v26;
  if (!v26)
  {
LABEL_8:
    (*(*v24[0] + 648))(v24[0], &v28, 1);
    v37 = "type";
    v38[0] = 4;
    if (v27[2])
    {
      goto LABEL_57;
    }

    v6 = v26;
    if (!v26)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_23:
  if (v6 == 5 && *v25 == 1735287154 && *(v25 + 4) == 101)
  {
    if ((*(*a1 + 152))(a1))
    {
      v13 = (*(*a1 + 40))(a1);
      v32 = 0;
      v33 = 0;
      v34 = 0;
      if ((generatedTypeParser(a1, &v32, &v34) & 0x100) != 0)
      {
        v21 = v34;
        v30[0] = v34;
        if (!v34 || ((*(*a1 + 168))(a1) & 1) == 0)
        {
          goto LABEL_62;
        }

        v22 = *v21;
        if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          v37 = v21;
          v23 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(*v22 + 32), &v37);
LABEL_63:
          *a3 = v23;
          v17 = v23 == 0;
          goto LABEL_53;
        }

        v36 = 257;
        (*(*a1 + 24))(&v37, a1, v13, v35);
        if (v37)
        {
          mlir::Diagnostic::operator<<<54ul>(v38, "element of pdl.range cannot be another range, but got");
          if (v37)
          {
            mlir::Diagnostic::operator<<<mlir::Type &>(v38, v30);
          }
        }
      }

      else
      {
        v14 = (*(*a1 + 16))(a1);
        v31 = 259;
        (*(*a1 + 24))(&v37, a1, v14, v30);
        if (v37)
        {
          v36 = 261;
          v35[0] = v32;
          v35[1] = v33;
          mlir::Diagnostic::operator<<(v38, v35);
          if (v37)
          {
            mlir::Diagnostic::operator<<<2ul>(v38, "'");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
    }

LABEL_62:
    v23 = 0;
    goto LABEL_63;
  }

  v37 = "type";
  v38[0] = 4;
  if (v6)
  {
LABEL_29:
    if (v6 != 4 || *v25 != 1701869940)
    {
      v37 = "value";
      v38[0] = 5;
      goto LABEL_32;
    }

    v11 = *(**(*(*a1 + 32))(a1) + 384);
    v12 = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
LABEL_52:
    v35[0] = v12;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v35);
    v16 = *v15;
    *a3 = *v15;
    v17 = v16 == 0;
LABEL_53:
    v18 = !v17;
    v27[0] = v18;
    *&v27[1] = 257;
    goto LABEL_57;
  }

LABEL_10:
  (*(*v24[0] + 648))(v24[0], &v37, 1);
  v37 = "value";
  v38[0] = 5;
  if (v27[2])
  {
    goto LABEL_57;
  }

  v6 = v26;
LABEL_32:
  if (v6)
  {
    if (v6 != 5)
    {
      goto LABEL_44;
    }

    if (*v25 != 1970037110 || *(v25 + 4) != 101)
    {
      goto LABEL_44;
    }

    v11 = *(**(*(*a1 + 32))(a1) + 384);
    v12 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
    goto LABEL_52;
  }

  (*(*v24[0] + 648))(v24[0], &v37, 1);
  if ((v27[2] & 1) == 0)
  {
    v6 = v26;
LABEL_44:
    *a2 = v25;
    *(a2 + 1) = v6;
    *v27 = 0;
    v27[2] = 1;
  }

LABEL_57:
  result = mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v24);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *generatedTypePrinter(llvm::raw_ostream *result, uint64_t a2)
{
  v3 = *(*result + 136);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v7 = *(result + 4);
    if ((*(result + 3) - v7) <= 8)
    {
      v8 = "attribute";
LABEL_11:
      v9 = 9;
      goto LABEL_12;
    }

    v11 = 101;
    v12 = "attribute";
LABEL_21:
    *(v7 + 8) = v11;
    *v7 = *v12;
    v13 = *(result + 4) + 9;
LABEL_33:
    *(result + 4) = v13;
    return result;
  }

  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v7 = *(result + 4);
    if ((*(result + 3) - v7) <= 8)
    {
      v8 = "operation";
      goto LABEL_11;
    }

    v11 = 110;
    v12 = "operation";
    goto LABEL_21;
  }

  v4 = result;
  if (result && v3 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v5 = (*(*a2 + 16))(a2);
    v6 = *(v5 + 4);
    if ((*(v5 + 3) - v6) > 4)
    {
      *(v6 + 4) = 101;
      *v6 = 1735287154;
      *(v5 + 4) += 5;
    }

    else
    {
      llvm::raw_ostream::write(v5, "range", 5uLL);
    }

    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (*(v14 + 3) == v15)
    {
      llvm::raw_ostream::write(v14, "<", 1uLL);
    }

    else
    {
      *v15 = 60;
      ++*(v14 + 4);
    }

    generatedTypePrinter(*(v4 + 1), a2);
    result = (*(*a2 + 16))(a2);
    v17 = *(result + 4);
    if (*(result + 3) != v17)
    {
      *v17 = 62;
      v13 = *(result + 4) + 1;
      goto LABEL_33;
    }

    v8 = ">";
    v9 = 1;
  }

  else if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    result = (*(*a2 + 16))(a2);
    v16 = *(result + 4);
    if (*(result + 3) - v16 > 3uLL)
    {
      *v16 = 1701869940;
      v13 = *(result + 4) + 4;
      goto LABEL_33;
    }

    v8 = "type";
    v9 = 4;
  }

  else
  {
    if (v3 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      return result;
    }

    result = (*(*a2 + 16))(a2);
    v10 = *(result + 4);
    if ((*(result + 3) - v10) > 4)
    {
      *(v10 + 4) = 101;
      *v10 = 1970037110;
      v13 = *(result + 4) + 5;
      goto LABEL_33;
    }

    v8 = "value";
    v9 = 5;
  }

LABEL_12:

  return llvm::raw_ostream::write(result, v8, v9);
}

void mlir::Dialect::addTypes<mlir::pdl::AttributeType,mlir::pdl::OperationType,mlir::pdl::RangeType,mlir::pdl::TypeType,mlir::pdl::ValueType>(uint64_t a1)
{
  mlir::Dialect::addType<mlir::pdl::AttributeType>(a1);
  mlir::Dialect::addType<mlir::pdl::OperationType>(a1);
  mlir::Dialect::addType<mlir::pdl::RangeType>(a1);
}

uint64_t mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id;
  v7[1] = &v8;
  v8 = a1;
  v3 = *a2;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = v3;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Type>(v12, 0, v12, v13, &v10);
  v9 = &v10;
  *&v12[0] = &v10;
  *(&v12[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 384), &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v12);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl::detail::RangeTypeStorage * mlir::StorageUniquer::get<mlir::pdl::detail::RangeTypeStorage,mlir::Type &>(llvm::function_ref<void ()(mlir::pdl::detail::RangeTypeStorage *)>,mlir::TypeID,mlir::Type &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  v4[1] = v3;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir3pdl6detail16RangeTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_9RangeTypeEJRNS1_4TypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::Dialect::addType<mlir::pdl::AttributeType>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::pdl::AttributeType>(a1, &v4);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::TypeUniquer::registerType<mlir::pdl::AttributeType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Dialect::addType<mlir::pdl::OperationType>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::pdl::OperationType>(a1, &v4);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::TypeUniquer::registerType<mlir::pdl::OperationType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::Dialect::addType<mlir::pdl::RangeType>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::pdl::RangeType>(a1, &v2);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 384), &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id);
}

uint64_t mlir::Dialect::addType<mlir::pdl::TypeType>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::pdl::TypeType>(a1, &v4);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::TypeUniquer::registerType<mlir::pdl::TypeType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Dialect::addType<mlir::pdl::ValueType>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractType::get<mlir::pdl::ValueType>(a1, &v4);
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::TypeUniquer::registerType<mlir::pdl::ValueType>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractType::get<mlir::pdl::AttributeType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::pdl::AttributeType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13AttributeTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13AttributeTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id, "pdl.attribute", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::pdl::AttributeType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13AttributeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13AttributeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::pdl::OperationType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::pdl::OperationType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13OperationTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl13OperationTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id, "pdl.operation", 13);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::pdl::OperationType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13OperationTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl13OperationTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::pdl::RangeType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::pdl::RangeType,mlir::pdl::PDLType,mlir::pdl::detail::RangeTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSD_7PDLTypeENSD_6detail16RangeTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSC_7PDLTypeENSC_6detail16RangeTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id, "pdl.range", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9RangeTypeENSD_7PDLTypeENSD_6detail16RangeTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (*(a2 + 8))
  {
    return a5(a6);
  }

  return result;
}

void mlir::AbstractType::get<mlir::pdl::TypeType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::pdl::TypeType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl8TypeTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl8TypeTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id, "pdl.type", 8);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::pdl::TypeType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl8TypeTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

void mlir::AbstractType::get<mlir::pdl::ValueType>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::pdl::ValueType,mlir::pdl::PDLType,mlir::TypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractType::AbstractType(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9ValueTypeENSD_7PDLTypeENS1_11TypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_, &v4, _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_3pdl9ValueTypeENSC_7PDLTypeENS1_11TypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id, "pdl.value", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::detail::TypeUniquer::registerType<mlir::pdl::ValueType>(void *a1, uint64_t a2)
{
  v5[1] = a2;
  v6 = a1;
  v2 = *a1;
  v5[0] = &v6;
  v8[0] = _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl9ValueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v8[1] = v5;
  v7 = v8;
  v11 = a2;
  v3 = *(v2 + 384);
  v10 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::TypeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::TypeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v7, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v11, &v10, v9);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir11TypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer12registerTypeINS1_3pdl9ValueTypeEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*(a1 + 8), **a1);
  *a2 = result;
  return result;
}

uint64_t mlir::Diagnostic::operator<<<109ul>(uint64_t a1, char *__s)
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

void mlir::pdl_interp::PDLInterpDialect::PDLInterpDialect(mlir::pdl_interp::PDLInterpDialect *this, mlir::MLIRContext *a2, uint64_t a3, unint64_t *a4)
{
  *(this + 1) = "pdl_interp";
  *(this + 2) = 10;
  *(this + 3) = &mlir::detail::TypeIDResolver<mlir::pdl_interp::PDLInterpDialect,void>::id;
  *(this + 4) = a2;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *this = &unk_286E822D8;
  mlir::MLIRContext::loadDialect<mlir::pdl::PDLDialect>(a2, a2, a3, a4);
  mlir::Dialect::addOperations<mlir::pdl_interp::ApplyConstraintOp,mlir::pdl_interp::ApplyRewriteOp,mlir::pdl_interp::AreEqualOp,mlir::pdl_interp::BranchOp,mlir::pdl_interp::CheckAttributeOp,mlir::pdl_interp::CheckOperandCountOp,mlir::pdl_interp::CheckOperationNameOp,mlir::pdl_interp::CheckResultCountOp,mlir::pdl_interp::CheckTypeOp,mlir::pdl_interp::CheckTypesOp,mlir::pdl_interp::ContinueOp,mlir::pdl_interp::CreateAttributeOp,mlir::pdl_interp::CreateOperationOp,mlir::pdl_interp::CreateRangeOp,mlir::pdl_interp::CreateTypeOp,mlir::pdl_interp::CreateTypesOp,mlir::pdl_interp::EraseOp,mlir::pdl_interp::ExtractOp,mlir::pdl_interp::FinalizeOp,mlir::pdl_interp::ForEachOp,mlir::pdl_interp::FuncOp,mlir::pdl_interp::GetAttributeOp,mlir::pdl_interp::GetAttributeTypeOp,mlir::pdl_interp::GetDefiningOpOp,mlir::pdl_interp::GetOperandOp,mlir::pdl_interp::GetOperandsOp,mlir::pdl_interp::GetResultOp,mlir::pdl_interp::GetResultsOp,mlir::pdl_interp::GetUsersOp,mlir::pdl_interp::GetValueTypeOp,mlir::pdl_interp::IsNotNullOp,mlir::pdl_interp::RecordMatchOp,mlir::pdl_interp::ReplaceOp,mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_interp::SwitchTypeOp,mlir::pdl_interp::SwitchTypesOp>();
}

mlir::Dialect *mlir::MLIRContext::loadDialect<mlir::pdl::PDLDialect>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = mlir::MLIRContext::isDialectLoading(a1, "pdl", 3, a4);
  if ((result & 1) == 0)
  {
    v6 = a1;
    return mlir::MLIRContext::getOrLoadDialect(a1, "pdl", 3uLL, &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::pdl::PDLDialect * mlir::MLIRContext::getOrLoadDialect<mlir::pdl::PDLDialect>(void)::{lambda(void)#1}>, &v6);
  }

  return result;
}

void mlir::pdl_interp::PDLInterpDialect::~PDLInterpDialect(mlir::pdl_interp::PDLInterpDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

void mlir::pdl_interp::ForEachOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3)
{
  mlir::pdl_interp::ForEachOp::build(a1, a2, a3);
}

{
  v4 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v4, 0, &v4, 1);
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::pdl_interp::ForEachOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  memset(&v8[4], 0, 24);
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(v8, 0, 24);
  if ((*(*a1 + 752))())
  {
    v6[0] = " after loop variable";
    v7 = 259;
    if ((*(*a1 + 400))(a1, "in", 2, v6) & 1) != 0 && ((*(*a1 + 704))(a1, v8, 1))
    {
      v6[0] = v9;
      v4 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v9 + 32), v6);
      if ((*(*a1 + 728))(a1, v8, v4, a2 + 16))
      {
        mlir::OperationState::addRegion(a2);
      }
    }
  }

  return 0;
}

void mlir::detail::FunctionOpInterfaceTrait<mlir::pdl_interp::FuncOp>::buildWithEntryBlock(uint64_t a1, mlir::OperationState *a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v14 = *(a1 + 16);
  v16 = 261;
  v15[0] = a3;
  v15[1] = a4;
  v11 = mlir::StringAttr::get(*a1, v15, a3);
  mlir::OperationState::addAttribute(a2, "sym_name", 8, v11);
  v12 = *(*(*(a2 + 1) + 96) + 8);
  v13 = mlir::TypeAttr::get(a5);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v13);
  *(a2 + 24) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a6, &a6[16 * a7]);
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::pdl_interp::ApplyConstraintOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v13, "name", 4, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps2(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v3 = a1[1], *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v3[2] == 1)
  {
    v4 = 1;
  }

  else
  {
    a2(&v9, a3);
    if (v9)
    {
      mlir::Diagnostic::operator<<<12ul>(v10, "attribute '");
      if (v9)
      {
        v8 = 261;
        v7[0] = "isNegated";
        v7[1] = 9;
        mlir::Diagnostic::operator<<(v10, v7);
        if (v9)
        {
          mlir::Diagnostic::operator<<<47ul>(v10, "' failed to satisfy constraint: BOOL attribute");
        }
      }
    }

    v4 = (v10[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<49ul>(v13, "' failed to satisfy constraint: string attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::getIsNegated(mlir::pdl_interp::ApplyConstraintOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v2 = *(v1 + 24);
  if (v2 > 0x40)
  {
    v3 = llvm::APInt::countLeadingZerosSlowCase((v1 + 16)) == v2;
  }

  else
  {
    v3 = *(v1 + 16) == 0;
  }

  v4 = v3;
  return v4 ^ 1u;
}

void mlir::pdl_interp::ApplyConstraintOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a7, 0, a7, a8);
  v22 = 261;
  v21[0] = a5;
  v21[1] = a6;
  v18 = mlir::StringAttr::get(*a1, v21, v17);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(a2) + 8) = v18;
  v19 = 592;
  if (a9)
  {
    v19 = 600;
  }

  v20 = *(**a1 + v19);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(a2) = v20;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a10);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a11);
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(**a2 + 24) == &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
  {
    v11 = 1;
  }

  else
  {
    v15 = 261;
    v14[0] = a3;
    v14[1] = a4;
    mlir::Operation::emitOpError(a1, v14, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v7 = v6;
    if (*v6)
    {
      mlir::Diagnostic::operator<<<40ul>((v6 + 1), " must be variadic of pdl type, but got ");
      if (*v7)
      {
        v17 = 4;
        v18 = a2;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v17, 1);
        v9 = v7[3] + 24 * *(v7 + 8);
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++*(v7 + 8);
      }
    }

    v11 = (v7[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::pdl_interp::ApplyConstraintOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x277D85DE8];
  v26[0] = v27;
  v26[1] = 0x400000000;
  v24[0] = &v25;
  v24[1] = 0x100000000;
  __src = &v23;
  v22 = 0x100000000;
  v17 = 0;
  v18 = v20;
  v19 = 0x200000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v15[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v15);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v17, v5))
  {
    goto LABEL_24;
  }

  if (v17)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(a2);
    *(v7 + 8) = v17;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_24;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, v26, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v24) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 112))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, &__src) & 1) == 0)
  {
    goto LABEL_24;
  }

  v16 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_24;
  }

  v9 = *(a2 + 8);
  v15[0] = a1;
  v15[1] = &v16;
  v15[2] = a2;
  if (!mlir::pdl_interp::ApplyConstraintOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15) || ((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_24;
  }

  v15[0] = 0;
  v10 = (*(*a1 + 808))(a1, v15);
  if ((v10 & 0x100) != 0)
  {
    if (v10)
    {
      do
      {
        llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v18, v15[0]);
        if (((*(*a1 + 128))(a1) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      while (((*(*a1 + 800))(a1, v15) & 1) != 0);
    }

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

LABEL_17:
  if (v19)
  {
    v11 = v18 | 4;
  }

  else
  {
    v11 = 0;
  }

  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v11, 0, v11, v19);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v22);
  v12 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v26, v24, v8, a2 + 16);
LABEL_25:
  if (v18 != v20)
  {
    free(v18);
  }

  if (__src != &v23)
  {
    free(__src);
  }

  if (v24[0] != &v25)
  {
    free(v24[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a1, a2);
  }

  else
  {
    *(*a1 + 8 * v2) = a2;
    *(a1 + 8) = v2 + 1;
  }
}

BOOL mlir::pdl_interp::ApplyRewriteOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::ApplyRewriteOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a6, 0, a6, a7);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(a2) = a5;

  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, a3, 0, a3, a4);
}

BOOL mlir::pdl_interp::ApplyRewriteOp::parse(uint64_t a1, uint64_t a2)
{
  v22[16] = *MEMORY[0x277D85DE8];
  v21[0] = v22;
  v21[1] = 0x400000000;
  v19[0] = &v20;
  v19[1] = 0x100000000;
  v15 = 0;
  __src = &v18;
  v17 = 0x100000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v13[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v13);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v15, v5))
  {
    goto LABEL_18;
  }

  if (v15)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(a2);
    *v7 = v15;
  }

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v21, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v19) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*(*a1 + 112))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &__src))
  {
    v14 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v9 = *(a2 + 8);
      v13[0] = a1;
      v13[1] = &v14;
      v13[2] = a2;
      if (mlir::pdl_interp::ApplyRewriteOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13))
      {
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v17);
        v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v21, v19, v8, a2 + 16);
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v10 = 0;
LABEL_19:
  if (__src != &v18)
  {
    free(__src);
  }

  if (v19[0] != &v20)
  {
    free(v19[0]);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void mlir::pdl_interp::AreEqualOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v10 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a6);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps2(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(**a2 + 24) == &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
  {
    v11 = 1;
  }

  else
  {
    v15 = 261;
    v14[0] = a3;
    v14[1] = a4;
    mlir::Operation::emitOpError(a1, v14, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v7 = v6;
    if (*v6)
    {
      mlir::Diagnostic::operator<<<28ul>((v6 + 1), " must be pdl type, but got ");
      if (*v7)
      {
        v17 = 4;
        v18 = a2;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v17, 1);
        v9 = v7[3] + 24 * *(v7 + 8);
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++*(v7 + 8);
      }
    }

    v11 = (v7[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::pdl_interp::AreEqualOp::parse(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v44 = v46;
  v45 = 0x400000000;
  v36 = 0;
  v41 = v43;
  v42 = 0x200000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v44, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_41;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_41;
  }

  v47 = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &v47))
  {
    goto LABEL_41;
  }

  v36 = v47;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_41;
  }

  v47 = 0;
  v5 = (*(*a1 + 808))(a1, &v47);
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_7;
  }

  if ((v5 & 1) == 0)
  {
LABEL_41:
    v27 = 0;
    goto LABEL_42;
  }

  while (1)
  {
    llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v41, v47);
    if (((*(*a1 + 128))(a1) & 1) == 0)
    {
      break;
    }

    if (((*(*a1 + 800))(a1, &v47) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

LABEL_7:
  if (v42)
  {
    v6 = v41 | 4;
  }

  else
  {
    v6 = 0;
  }

  v35 = a2;
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v6, 0, v6, v42);
  v7 = 0;
  v34 = v45;
  v40 = v45;
  v8 = &v36;
  v47 = &v36;
  v48 = &v36;
  v49 = v37;
  v50 = v37;
  v9 = &v36;
  while (v9 != v37 || v8 != v37 || v49 != v37 || v50 != v37)
  {
    v11 = &unk_286E841C8;
    v12 = 16;
    do
    {
      v13 = v12;
      v14 = *(v11 - 1);
      v15 = (&v47 + (*v11 >> 1));
      if (*v11)
      {
        v14 = *(*v15 + v14);
      }

      if (v14(v15))
      {
        break;
      }

      v11 += 2;
      v12 = v13 - 16;
    }

    while (v13);
    ++v7;
    v9 = v47;
    v8 = v48;
  }

  v39 = v7;
  if (v7 == v34)
  {
    v16 = v44;
    v47 = v44;
    v48 = &v36;
    v49 = &v36;
    v50 = v37;
    v51 = v37;
    if (!v45)
    {
LABEL_37:
      v27 = 1;
      goto LABEL_42;
    }

    v17 = (v44 + 32 * v45);
    while (1)
    {
      v18 = &unk_286E841E8;
      do
      {
        v19 = *(v18 - 1);
        v20 = (&v48 + (*v18 >> 1));
        if (*v18)
        {
          v19 = *(*v20 + v19);
        }

        v18 += 2;
        v21 = v19(v20);
      }

      while (!v21);
      if (((*(*a1 + 728))(a1, v16, *v21, v35 + 16) & 1) == 0)
      {
        goto LABEL_41;
      }

      v47 += 4;
      v22 = &unk_286E841C8;
      v23 = 16;
      do
      {
        v24 = v23;
        v25 = *(v22 - 1);
        v26 = (&v48 + (*v22 >> 1));
        if (*v22)
        {
          v25 = *(*v26 + v25);
        }

        if (v25(v26))
        {
          break;
        }

        v22 += 2;
        v23 = v24 - 16;
      }

      while (v24);
      v16 = v47;
      if (v47 == v17)
      {
        goto LABEL_37;
      }
    }
  }

  v38 = 257;
  (*(*a1 + 24))(&v47, a1, v4, v37);
  if (v47)
  {
    mlir::Diagnostic::operator<<<48ul>(&v48, "number of operands and types do not match: got ");
  }

  v30 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v47, &v40);
  v31 = v30;
  if (*v30)
  {
    mlir::Diagnostic::operator<<<15ul>((v30 + 1), " operands and ");
  }

  v32 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v31, &v39);
  v33 = v32;
  if (*v32)
  {
    mlir::Diagnostic::operator<<<7ul>((v32 + 1), " types");
  }

  v27 = (v33[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
LABEL_42:
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t mlir::pdl_interp::BranchOp::parse(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (((*(*a1 + 800))(a1, &v5) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v5);
  return 1;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CheckAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a6);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps3(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    v10 = 1;
  }

  else
  {
    v14 = 261;
    v13[0] = a3;
    v13[1] = a4;
    mlir::Operation::emitOpError(a1, v13, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<<3ul>(v19, " #");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
    v6 = v5;
    if (*v5)
    {
      if (*v6)
      {
        v16 = 4;
        v17 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v16, 1);
        v8 = v6[3] + 24 * *(v6 + 8);
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++*(v6 + 8);
      }
    }

    v10 = (v6[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::pdl_interp::CheckAttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12 = 0;
  v17 = v19;
  v18 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v13, 1))
  {
    v16 = 257;
    if ((*(*a1 + 400))(a1, "is", 2, v15) & 1) != 0 && ((*(*a1 + 440))(a1, &v12, 0))
    {
      if (v12)
      {
        v4 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(a2);
        *v4 = v12;
      }

      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112))
      {
        mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2 + 112, **(*(a2 + 8) + 96));
        if ((*(*a1 + 56))(a1))
        {
          v15[0] = 0;
          v5 = (*(*a1 + 808))(a1, v15);
          if ((v5 & 0x100) == 0)
          {
LABEL_9:
            if (v18)
            {
              v6 = v17 | 4;
            }

            else
            {
              v6 = 0;
            }

            llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v6, 0, v6, v18);
            v7 = *(**(*(*a1 + 32))(a1) + 384);
            v15[0] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
            v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), v15);
            v9 = (*(*a1 + 728))(a1, v13, v8, a2 + 16) & 1;
            goto LABEL_17;
          }

          if (v5)
          {
            do
            {
              llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v17, v15[0]);
              if (((*(*a1 + 128))(a1) & 1) == 0)
              {
                goto LABEL_9;
              }
            }

            while (((*(*a1 + 800))(a1, v15) & 1) != 0);
          }
        }
      }
    }
  }

  v9 = 0;
LABEL_17:
  if (v17 != v19)
  {
    free(v17);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::pdl_interp::CheckOperandCountOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(v10, "compareAtLeast", 14, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v13, "count", 5, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<47ul>(v13, "' failed to satisfy constraint: unit attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_7;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_9;
  }

  v7 = *(a1 + 8);
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v7[2] != 32)
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 24);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  if (((*(a1 + 16) >> (v8 - 1)) & 1) == 0)
  {
LABEL_7:
    v9 = 1;
  }

  else
  {
LABEL_9:
    a4(&v14, a5);
    if (v14)
    {
      mlir::Diagnostic::operator<<<12ul>(v15, "attribute '");
      if (v14)
      {
        v13 = 261;
        v12[0] = a2;
        v12[1] = a3;
        mlir::Diagnostic::operator<<(v15, v12);
        if (v14)
        {
          mlir::Diagnostic::operator<<<94ul>(v15, "' failed to satisfy constraint: 32-bit signless integer attribute whose value is non-negative");
        }
      }
    }

    v9 = (v15[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::getCount(mlir::pdl_interp::CheckOperandCountOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::CheckOperandCountOp::build(void **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v16 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  v13 = mlir::IntegerType::get(*a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v13, a4);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(a2) + 8) = IntegerAttr;
  if (a5)
  {
    v15 = *(**a1 + 608);
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(a2) = v15;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a6);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a7);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps4(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    v11 = 1;
  }

  else
  {
    v15 = 261;
    v14[0] = a3;
    v14[1] = a4;
    mlir::Operation::emitOpError(a1, v14, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v7 = v6;
    if (*v6)
    {
      if (*v7)
      {
        v17 = 4;
        v18 = a2;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v17, 1);
        v9 = v7[3] + 24 * *(v7 + 8);
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++*(v7 + 8);
      }
    }

    v11 = (v7[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::pdl_interp::CheckOperandCountOp::parse(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17 = 0;
  v22 = v24;
  v23 = 0x200000000;
  v21 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v18, 1))
    {
      v21 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, v20))
      {
        if ((*(*a1 + 408))(a1, "at_least", 8))
        {
          v4 = *(**(*(*a1 + 32))(a1) + 608);
          *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(a2) = v4;
        }

        v5 = (*(*a1 + 32))(a1);
        v6 = mlir::IntegerType::get(*v5, 32, 0);
        if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v17, v6))
        {
          if (v17)
          {
            v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(a2);
            *(v7 + 8) = v17;
          }

          v16 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            v8 = *(a2 + 8);
            v20[0] = a1;
            v20[1] = &v16;
            v20[2] = a2;
            if (mlir::pdl_interp::CheckOperandCountOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20) && ((*(*a1 + 56))(a1) & 1) != 0)
            {
              v20[0] = 0;
              v9 = (*(*a1 + 808))(a1, v20);
              if ((v9 & 0x100) == 0)
              {
LABEL_13:
                if (v23)
                {
                  v10 = v22 | 4;
                }

                else
                {
                  v10 = 0;
                }

                llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v10, 0, v10, v23);
                v11 = *(**(*(*a1 + 32))(a1) + 384);
                v20[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
                v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v20);
                v13 = (*(*a1 + 728))(a1, v18, v12, a2 + 16) & 1;
                goto LABEL_21;
              }

              if (v9)
              {
                do
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v22, v20[0]);
                  if (((*(*a1 + 128))(a1) & 1) == 0)
                  {
                    goto LABEL_13;
                  }
                }

                while (((*(*a1 + 800))(a1, v20) & 1) != 0);
              }
            }
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_21:
  if (v22 != v24)
  {
    free(v22);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::pdl_interp::CheckOperationNameOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CheckOperationNameOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  v16 = 261;
  v15[0] = a4;
  v15[1] = a5;
  v14 = mlir::StringAttr::get(*a1, v15, v13);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(a2) = v14;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a6);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a7);
}

uint64_t mlir::pdl_interp::CheckOperationNameOp::parse(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17 = 0;
  v22 = v24;
  v23 = 0x200000000;
  v21 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v18, 1))
    {
      v21 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, v20))
      {
        v4 = **(*(*a1 + 32))(a1);
        v5 = *(v4 + 528);
        if (!v5)
        {
          v6 = *(v4 + 384);
          v20[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
          v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v20);
        }

        if (mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v17, v5))
        {
          if (v17)
          {
            v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(a2);
            *v7 = v17;
          }

          v16 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            v8 = *(a2 + 8);
            v20[0] = a1;
            v20[1] = &v16;
            v20[2] = a2;
            if (mlir::pdl_interp::CheckOperationNameOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20) && ((*(*a1 + 56))(a1) & 1) != 0)
            {
              v20[0] = 0;
              v9 = (*(*a1 + 808))(a1, v20);
              if ((v9 & 0x100) == 0)
              {
LABEL_13:
                if (v23)
                {
                  v10 = v22 | 4;
                }

                else
                {
                  v10 = 0;
                }

                llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v10, 0, v10, v23);
                v11 = *(**(*(*a1 + 32))(a1) + 384);
                v20[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
                v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v20);
                v13 = (*(*a1 + 728))(a1, v18, v12, a2 + 16) & 1;
                goto LABEL_21;
              }

              if (v9)
              {
                do
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v22, v20[0]);
                  if (((*(*a1 + 128))(a1) & 1) == 0)
                  {
                    goto LABEL_13;
                  }
                }

                while (((*(*a1 + 800))(a1, v20) & 1) != 0);
              }
            }
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_21:
  if (v22 != v24)
  {
    free(v22);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::pdl_interp::CheckResultCountOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(v10, "compareAtLeast", 14, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v13, "count", 5, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::CheckResultCountOp::getCount(mlir::pdl_interp::CheckResultCountOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::CheckResultCountOp::build(void **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v16 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v16, 0, &v16, 1);
  v13 = mlir::IntegerType::get(*a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v13, a4);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(a2) + 8) = IntegerAttr;
  if (a5)
  {
    v15 = *(**a1 + 608);
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(a2) = v15;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a6);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a7);
}

uint64_t mlir::pdl_interp::CheckResultCountOp::parse(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17 = 0;
  v22 = v24;
  v23 = 0x200000000;
  v21 = 257;
  if ((*(*a1 + 400))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v18, 1))
    {
      v21 = 257;
      if ((*(*a1 + 400))(a1, "is", 2, v20))
      {
        if ((*(*a1 + 408))(a1, "at_least", 8))
        {
          v4 = *(**(*(*a1 + 32))(a1) + 608);
          *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(a2) = v4;
        }

        v5 = (*(*a1 + 32))(a1);
        v6 = mlir::IntegerType::get(*v5, 32, 0);
        if (mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v17, v6))
        {
          if (v17)
          {
            v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(a2);
            *(v7 + 8) = v17;
          }

          v16 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 112))
          {
            v8 = *(a2 + 8);
            v20[0] = a1;
            v20[1] = &v16;
            v20[2] = a2;
            if (mlir::pdl_interp::CheckResultCountOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20) && ((*(*a1 + 56))(a1) & 1) != 0)
            {
              v20[0] = 0;
              v9 = (*(*a1 + 808))(a1, v20);
              if ((v9 & 0x100) == 0)
              {
LABEL_13:
                if (v23)
                {
                  v10 = v22 | 4;
                }

                else
                {
                  v10 = 0;
                }

                llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v10, 0, v10, v23);
                v11 = *(**(*(*a1 + 32))(a1) + 384);
                v20[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
                v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v20);
                v13 = (*(*a1 + 728))(a1, v18, v12, a2 + 16) & 1;
                goto LABEL_21;
              }

              if (v9)
              {
                do
                {
                  llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v22, v20[0]);
                  if (((*(*a1 + 128))(a1) & 1) == 0)
                  {
                    goto LABEL_13;
                  }
                }

                while (((*(*a1 + 800))(a1, v20) & 1) != 0);
              }
            }
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_21:
  if (v22 != v24)
  {
    free(v22);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::pdl_interp::CheckTypeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(v8, "type", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<51ul>(v13, "' failed to satisfy constraint: any type attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CheckTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a6);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps5(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    v10 = 1;
  }

  else
  {
    v14 = 261;
    v13[0] = a3;
    v13[1] = a4;
    mlir::Operation::emitOpError(a1, v13, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<<3ul>(v19, " #");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
    v6 = v5;
    if (*v5)
    {
      if (*v6)
      {
        v16 = 4;
        v17 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v16, 1);
        v8 = v6[3] + 24 * *(v6 + 8);
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++*(v6 + 8);
      }
    }

    v10 = (v6[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::pdl_interp::CheckTypeOp::parse(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17 = 0;
  v22 = v24;
  v23 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v18, 1))
  {
    v21 = 257;
    if ((*(*a1 + 400))(a1, "is", 2, v20))
    {
      v4 = **(*(*a1 + 32))(a1);
      v5 = *(v4 + 528);
      if (!v5)
      {
        v6 = *(v4 + 384);
        v20[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
        v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v20);
      }

      if (mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v17, v5))
      {
        if (v17)
        {
          v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(a2);
          *v7 = v17;
        }

        v16 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v8 = *(a2 + 8);
          v20[0] = a1;
          v20[1] = &v16;
          v20[2] = a2;
          if (mlir::pdl_interp::CheckTypeOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20) && ((*(*a1 + 56))(a1) & 1) != 0)
          {
            v20[0] = 0;
            v9 = (*(*a1 + 808))(a1, v20);
            if ((v9 & 0x100) == 0)
            {
LABEL_12:
              if (v23)
              {
                v10 = v22 | 4;
              }

              else
              {
                v10 = 0;
              }

              llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v10, 0, v10, v23);
              v11 = *(**(*(*a1 + 32))(a1) + 384);
              v20[0] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
              v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v20);
              v13 = (*(*a1 + 728))(a1, v18, v12, a2 + 16) & 1;
              goto LABEL_20;
            }

            if (v9)
            {
              do
              {
                llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v22, v20[0]);
                if (((*(*a1 + 128))(a1) & 1) == 0)
                {
                  goto LABEL_12;
                }
              }

              while (((*(*a1 + 800))(a1, v20) & 1) != 0);
            }
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_20:
  if (v22 != v24)
  {
    free(v22);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::pdl_interp::CheckTypesOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(v8, "types", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (!v8)
    {
LABEL_12:
      v7 = 1;
      goto LABEL_13;
    }

    v9 = a1[1];
    v10 = 8 * v8;
    while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v9 += 8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_12;
      }
    }
  }

  a4(&v15, a5);
  if (v15)
  {
    mlir::Diagnostic::operator<<<12ul>(v16, "attribute '");
    if (v15)
    {
      v14 = 261;
      v13[0] = a2;
      v13[1] = a3;
      mlir::Diagnostic::operator<<(v16, v13);
      if (v15)
      {
        mlir::Diagnostic::operator<<<53ul>(v16, "' failed to satisfy constraint: type array attribute");
      }
    }
  }

  v7 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CheckTypesOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a6);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps6(mlir::Operation *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = 0;
  if ((*a2)[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
  {
    v10 = 1;
  }

  else
  {
    v14 = 261;
    v13[0] = a3;
    v13[1] = a4;
    mlir::Operation::emitOpError(a1, v13, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<<3ul>(v19, " #");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
    v6 = v5;
    if (*v5)
    {
      if (*v6)
      {
        v16 = 4;
        v17 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v16, 1);
        v8 = v6[3] + 24 * *(v6 + 8);
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++*(v6 + 8);
      }
    }

    v10 = (v6[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::pdl_interp::CheckTypesOp::parse(uint64_t a1, uint64_t a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17 = 0;
  v22 = v24;
  v23 = 0x200000000;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v18, 1))
  {
    v21 = 257;
    if ((*(*a1 + 400))(a1, "are", 3, v20))
    {
      v4 = **(*(*a1 + 32))(a1);
      v5 = *(v4 + 528);
      if (!v5)
      {
        v6 = *(v4 + 384);
        v20[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
        v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v20);
      }

      if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v17, v5))
      {
        if (v17)
        {
          v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(a2);
          *v7 = v17;
        }

        v16 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v8 = *(a2 + 8);
          v20[0] = a1;
          v20[1] = &v16;
          v20[2] = a2;
          if (mlir::pdl_interp::CheckTypesOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20) && ((*(*a1 + 56))(a1) & 1) != 0)
          {
            v20[0] = 0;
            v9 = (*(*a1 + 808))(a1, v20);
            if ((v9 & 0x100) == 0)
            {
LABEL_12:
              if (v23)
              {
                v10 = v22 | 4;
              }

              else
              {
                v10 = 0;
              }

              llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v10, 0, v10, v23);
              v11 = *(**(*(*a1 + 32))(a1) + 384);
              v20[0] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
              v20[0] = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v20);
              v12 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v20[0] + 32), v20);
              v13 = (*(*a1 + 728))(a1, v18, v12, a2 + 16) & 1;
              goto LABEL_20;
            }

            if (v9)
            {
              do
              {
                llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v22, v20[0]);
                if (((*(*a1 + 128))(a1) & 1) == 0)
                {
                  goto LABEL_12;
                }
              }

              while (((*(*a1 + 800))(a1, v20) & 1) != 0);
            }
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_20:
  if (v22 != v24)
  {
    free(v22);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CreateAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(a2) = a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

uint64_t mlir::pdl_interp::CreateAttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (((*(*a1 + 440))(a1, &v7, 0) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(a2);
    *v4 = v7;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 496))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2 + 112, **(*(a2 + 8) + 96));
  v5 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
  return 1;
}

BOOL mlir::pdl_interp::CreateOperationOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps5(v10, "inferredResultTypes", 19, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v13, "inputAttributeNames", 19, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v16, "name", 4, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_13;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = 8 * v8;
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_3;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

LABEL_3:
  a4(&v15, a5);
  if (v15)
  {
    mlir::Diagnostic::operator<<<12ul>(v16, "attribute '");
    if (v15)
    {
      v14 = 261;
      v13[0] = a2;
      v13[1] = a3;
      mlir::Diagnostic::operator<<(v16, v13);
      if (v15)
      {
        mlir::Diagnostic::operator<<<55ul>(v16, "' failed to satisfy constraint: string array attribute");
      }
    }
  }

  v7 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

__n128 mlir::pdl_interp::CreateOperationOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = *(**a1 + 384);
  v24 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v21 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v20 + 232), &v24);
  mlir::pdl_interp::CreateOperationOp::build(a1, a2, *v21, a3, a4, a9, a10, v22, a11, a12, a13, a5, a6, a7);
  return result;
}

void mlir::pdl_interp::CreateOperationOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v14 = a7;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a6, 0, a6, a7);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a9, 0, a9, a10);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a12, 0, a12, a13);
  v19 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2);
  v19[6] = v14;
  v19[7] = a10;
  v19[8] = a13;
  v24 = 261;
  v23[0] = a4;
  v23[1] = a5;
  v21 = mlir::StringAttr::get(*a1, v23, v20);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2) + 16) = v21;
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2) + 8) = a11;
  if (a14)
  {
    v22 = *(**a1 + 608);
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2) = v22;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v26);
}

uint64_t mlir::pdl_interp::CreateOperationOp::getODSOperands(mlir::pdl_interp::CreateOperationOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = a2;
    v5 = (*this + 16 * ((v2 >> 23) & 1) + 88);
    v6 = a2;
    do
    {
      v7 = *v5++;
      v3 = (v7 + v3);
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v8 = *(*this + 16 * ((v2 >> 23) & 1) + 88 + 4 * v4);
  if ((v2 & 0x800000) != 0)
  {
    v9 = *(*this + 72);
  }

  else
  {
    v9 = 0;
  }

  return v9 + 32 * v3;
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps7(mlir::Operation *a1, void **a2, unsigned int a3)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v3 = (*a2)[17];
  if (v3 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    v10 = 1;
  }

  else
  {
    v14 = 261;
    v13[0] = "operand";
    v13[1] = 7;
    mlir::Operation::emitOpError(a1, v13, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<<3ul>(v19, " #");
    }

    v5 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v18, &v15);
    v6 = v5;
    if (*v5)
    {
      if (*v6)
      {
        v16 = 4;
        v17 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v6 + 3), &v16, 1);
        v8 = v6[3] + 24 * *(v6 + 8);
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++*(v6 + 8);
      }
    }

    v10 = (v6[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL mlir::pdl_interp::CreateOperationOp::parse(void *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v42 = v44;
  v43 = 0x400000000;
  v40[0] = &v41;
  v40[1] = 0x100000000;
  v37 = v39;
  v38 = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  v32[0] = &v33;
  v32[1] = 0x100000000;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v45 = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &v45);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v29, v5))
  {
    goto LABEL_39;
  }

  if (v29)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2);
    *(v7 + 16) = v29;
  }

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v42, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v40) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = 0;
  }

  v28 = v8;
  (*(*a1 + 40))(a1);
  v9 = (*(*a1 + 32))(a1);
  v45 = v47;
  p_src = 0x400000000;
  if ((*(*a1 + 80))(a1) & 1) == 0 || (__src = a1, v31[0] = &v45, v31[1] = &v37, ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseCreateOperationOpAttributes(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::ArrayAttr &)::$_0>, &__src, 0, 0)) && ((*(*a1 + 88))(a1))
  {
    v10 = mlir::ArrayAttr::get(*v9, v45, p_src);
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v11)
  {
    goto LABEL_39;
  }

  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2) + 8) = v10;
  v12 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 64))(a1))
  {
    if ((*(*a1 + 160))(a1))
    {
      v48 = 257;
      if (((*(*a1 + 400))(a1, "inferred", 8, &v45) & 1) == 0 || ((*(*a1 + 168))(a1) & 1) == 0)
      {
        goto LABEL_39;
      }

      v13 = *(**(*(*a1 + 32))(a1) + 608);
      if (v13)
      {
        *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2) = v13;
      }
    }

    else if (((*(*a1 + 280))(a1) & 1) == 0 || ((*(*a1 + 720))(a1, &v34, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 584))(a1, v32) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  __src = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v14 = *(a2 + 8);
    v45 = a1;
    p_src = &__src;
    v47[0] = a2;
    if (mlir::pdl_interp::CreateOperationOp::verifyInherentAttrs(v14, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateOperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v45))
    {
      v27 = v12;
      v15 = v43;
      v16 = v38;
      v17 = v35;
      v18 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(a2);
      v18[6] = v15;
      v18[7] = v16;
      v18[8] = v17;
      v19 = *(**(*(*a1 + 32))(a1) + 384);
      v45 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
      __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v19 + 232), &v45);
      v20 = *(**(*(*a1 + 32))(a1) + 384);
      v45 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
      v21 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v20 + 232), &v45);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v31);
      if (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v42, v40, v28, a2 + 16))
      {
        if (!v38)
        {
LABEL_38:
          v24 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v34, v32, v27, a2 + 16);
          goto LABEL_40;
        }

        v22 = v37;
        v23 = 32 * v38;
        while (((*(*a1 + 728))(a1, v22, v21, a2 + 16) & 1) != 0)
        {
          v22 += 32;
          v23 -= 32;
          if (!v23)
          {
            goto LABEL_38;
          }
        }
      }
    }
  }

LABEL_39:
  v24 = 0;
LABEL_40:
  if (v32[0] != &v33)
  {
    free(v32[0]);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40[0] != &v41)
  {
    free(v40[0]);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

BOOL mlir::pdl_interp::CreateRangeOp::parse(uint64_t a1, uint64_t a2)
{
  v17[16] = *MEMORY[0x277D85DE8];
  v15 = v17;
  v16 = 0x400000000;
  v12 = &v14;
  v13 = 0x100000000;
  v10 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v15, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v16 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, &v12) & 1) == 0))
  {
    goto LABEL_13;
  }

  if (v13)
  {
    v5 = mlir::TypeRange::dereference_iterator(v12 & 0xFFFFFFFFFFFFFFF9 | 2, 0);
    v6 = *v5;
    if (v5 && v6[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v5 = *(v5 + 8);
      v6 = *v5;
    }

    v11 = v5;
    v10 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(*v6 + 4), &v11);
  }

  else if (((*(*a1 + 576))(a1, &v10) & 1) == 0)
  {
    goto LABEL_13;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v10, &v11);
    v7 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v15, &v12, v4, a2 + 16);
    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
LABEL_14:
  if (v12 != &v14)
  {
    free(v12);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::pdl_interp::CreateTypeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps6(v8, "value", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CreateTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(a2) = a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

uint64_t mlir::pdl_interp::CreateTypeOp::parse(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    __src = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &__src);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::TypeAttr>(a1, &v14, v5))
  {
    return 0;
  }

  if (v14)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(a2);
    *v7 = v14;
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  __src = a1;
  v12[0] = &v13;
  v12[1] = a2;
  if (!mlir::pdl_interp::CreateTypeOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  v9 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v12);
  return 1;
}

BOOL mlir::pdl_interp::CreateTypesOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(v8, "value", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::CreateTypesOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  __src = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(a2) = a3;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

uint64_t mlir::pdl_interp::CreateTypesOp::parse(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    __src = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &__src);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v14, v5))
  {
    return 0;
  }

  if (v14)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(a2);
    *v7 = v14;
  }

  v13 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  __src = a1;
  v12[0] = &v13;
  v12[1] = a2;
  if (!mlir::pdl_interp::CreateTypesOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  v9 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), &__src);
  __src = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v12);
  return 1;
}

uint64_t mlir::pdl_interp::EraseOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v7, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(**(*(*a1 + 32))(a1) + 384);
  v9 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), &v9);
  return (*(*a1 + 728))(a1, v7, v5, a2 + 16) & 1;
}

BOOL mlir::pdl_interp::ExtractOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::ExtractOp::getIndex(mlir::pdl_interp::ExtractOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::ExtractOp::build(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  v8 = mlir::IntegerType::get(*a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v8, a5);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(a2) = IntegerAttr;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v12);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps11(mlir::Operation *a1, void ***a2)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = 0;
  if ((*a2)[17] == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(**a2[1] + 24) == &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
  {
    v8 = 1;
  }

  else
  {
    v12 = 261;
    v11[0] = "operand";
    v11[1] = 7;
    mlir::Operation::emitOpError(a1, v11, &v16);
    if (v16)
    {
      mlir::Diagnostic::operator<<<3ul>(v17, " #");
    }

    v3 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v16, &v13);
    v4 = v3;
    if (*v3)
    {
      mlir::Diagnostic::operator<<<44ul>((v3 + 1), " must be range of pdl type values, but got ");
      if (*v4)
      {
        v14 = 4;
        v15 = a2;
        v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v4 + 3), &v14, 1);
        v6 = v4[3] + 24 * *(v4 + 8);
        v7 = *v5;
        *(v6 + 16) = *(v5 + 16);
        *v6 = v7;
        ++*(v4 + 8);
      }
    }

    v8 = (v4[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::pdl_interp::ExtractOp::parse(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v20, v5))
  {
    goto LABEL_15;
  }

  if (v20)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(a2);
    *v6 = v20;
  }

  v23 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, &v21) & 1) == 0)
  {
    goto LABEL_15;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &v21))
  {
    goto LABEL_15;
  }

  v7 = v21;
  __src = v21;
  v14[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v8 = *(a2 + 8), v21 = a1, v22[0] = v14, v22[1] = a2, mlir::pdl_interp::ExtractOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v21)))
  {
    v16 = v7;
    if (*(**v7 + 24) == &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
    {
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v18);
      v21 = __src;
      v13 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &v21);
      v10 = (*(*a1 + 728))(a1, v18, v13, a2 + 16) & 1;
    }

    else
    {
      v9 = (*(*a1 + 16))(a1);
      v15 = 257;
      (*(*a1 + 24))(&v21, a1, v9, v14);
      if (v21)
      {
        mlir::Diagnostic::operator<<<36ul>(v22, "'result' must be pdl type, but got ");
        if (v21)
        {
          mlir::Diagnostic::operator<<<mlir::Type &>(v22, &v16);
        }
      }

      v10 = (v24 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    }
  }

  else
  {
LABEL_15:
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps10(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_13;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = 8 * v8;
      while (*v9 && *(**v9 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_3;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

LABEL_3:
  a4(&v15, a5);
  if (v15)
  {
    mlir::Diagnostic::operator<<<12ul>(v16, "attribute '");
    if (v15)
    {
      v14 = 261;
      v13[0] = a2;
      v13[1] = a3;
      mlir::Diagnostic::operator<<(v16, v13);
      if (v15)
      {
        mlir::Diagnostic::operator<<<63ul>(v16, "' failed to satisfy constraint: Array of dictionary attributes");
      }
    }
  }

  v7 = (v16[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps9(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*a1)[17] == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && *(*a1[1] + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v3 = 1;
  }

  else
  {
    a2(&v8, a3);
    if (v8)
    {
      mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
      if (v8)
      {
        v7 = 261;
        v6[0] = "function_type";
        v6[1] = 13;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<64ul>(v9, "' failed to satisfy constraint: type attribute of function type");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL mlir::pdl_interp::GetAttributeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v8, "name", 4, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::GetAttributeOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __src = a3;
  v14 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v14, 0, &v14, 1);
  v13 = 261;
  v12[0] = a5;
  v12[1] = a6;
  v11 = mlir::StringAttr::get(*a1, v12, v10);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>(a2) = v11;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v16);
}

uint64_t mlir::pdl_interp::GetAttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v17[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v17);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v16, v5))
  {
    return 0;
  }

  if (v16)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>(a2);
    *v7 = v16;
  }

  v18 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v17) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v14, 1) & 1) == 0)
  {
    return 0;
  }

  __src = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v17[0] = a1;
  v17[1] = &__src;
  v17[2] = a2;
  if (!mlir::pdl_interp::GetAttributeOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17))
  {
    return 0;
  }

  v9 = *(**(*(*a1 + 32))(a1) + 384);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v17);
  v10 = *(**(*(*a1 + 32))(a1) + 384);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v11 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v10 + 232), v17);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v14);
  return (*(*a1 + 728))(a1, v14, v11, a2 + 16) & 1;
}

void mlir::pdl_interp::GetAttributeTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  v7 = a3;
  __src = v6;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

uint64_t mlir::pdl_interp::GetAttributeTypeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v12 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v9, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(**(*(*a1 + 32))(a1) + 384);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  v8 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v4 + 232), v11);
  v5 = *(**(*(*a1 + 32))(a1) + 384);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
  v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), v11);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v8, v9);
  return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
}

void mlir::pdl_interp::GetDefiningOpOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps12(mlir::Operation *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = (*a2)[17];
  if (v4 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*a2[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    v11 = 1;
  }

  else
  {
    v15 = 261;
    v14[0] = a3;
    v14[1] = a4;
    mlir::Operation::emitOpError(a1, v14, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v7 = v6;
    if (*v6)
    {
      if (*v7)
      {
        v17 = 4;
        v18 = a2;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v17, 1);
        v9 = v7[3] + 24 * *(v7 + 8);
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++*(v7 + 8);
      }
    }

    v11 = (v7[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::pdl_interp::GetDefiningOpOp::parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v20 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, &__src, a5, a6, a7, a8, &v14) & 1) == 0)
  {
    return 0;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &__src))
  {
    return 0;
  }

  v14 = __src;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v11 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v19);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v13, v10, a2 + 16);
}

BOOL mlir::pdl_interp::GetOperandOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::GetOperandOp::getIndex(mlir::pdl_interp::GetOperandOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::GetOperandOp::build(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  v8 = mlir::IntegerType::get(*a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v8, a5);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>(a2) = IntegerAttr;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v12);
}

BOOL mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps13(mlir::Operation *a1, uint64_t a2)
{
  v17[25] = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
  {
    v8 = 1;
  }

  else
  {
    v12 = 261;
    v11[0] = "result";
    v11[1] = 6;
    mlir::Operation::emitOpError(a1, v11, &v16);
    if (v16)
    {
      mlir::Diagnostic::operator<<<3ul>(v17, " #");
    }

    v3 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v16, &v13);
    v4 = v3;
    if (*v3)
    {
      if (*v4)
      {
        v14 = 4;
        v15 = a2;
        v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v4 + 3), &v14, 1);
        v6 = v4[3] + 24 * *(v4 + 8);
        v7 = *v5;
        *(v6 + 16) = *(v5 + 16);
        *v6 = v7;
        ++*(v4 + 8);
      }
    }

    v8 = (v4[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::pdl_interp::GetOperandOp::parse(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v15, v5))
  {
    return 0;
  }

  if (v15)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>(a2);
    *v6 = v15;
  }

  v17 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v16) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  __src = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v16[0] = a1;
  v16[1] = &__src;
  v16[2] = a2;
  if (!mlir::pdl_interp::GetOperandOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16))
  {
    return 0;
  }

  v8 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), v16);
  v9 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v16);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return (*(*a1 + 728))(a1, v13, v10, a2 + 16) & 1;
}

BOOL mlir::pdl_interp::GetOperandsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::GetOperandsOp::getIndex(mlir::pdl_interp::GetOperandsOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) | 0x100000000;
}

void mlir::pdl_interp::GetOperandsOp::build(mlir::Builder *I32IntegerAttr, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0x100000000) != 0)
  {
    I32IntegerAttr = mlir::Builder::getI32IntegerAttr(I32IntegerAttr, a5);
    v8 = I32IntegerAttr;
  }

  else
  {
    v8 = 0;
  }

  mlir::pdl_interp::GetOperandsOp::build(I32IntegerAttr, a2, a3, a4, v8);
}

void mlir::pdl_interp::GetOperandsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  if (a5)
  {
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>(a2) = a5;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

uint64_t mlir::pdl_interp::GetOperandsOp::parse(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  v6 = (*(*a1 + 456))(a1, &v16, v5);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    if (v16)
    {
      v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>(a2);
      *v7 = v16;
    }
  }

  v18 = 257;
  if ((*(*a1 + 400))(a1, "of", 2, v17))
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v14, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
    {
      v17[0] = 0;
      if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v17))
      {
        __src = v17[0];
        v12 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v8 = *(a2 + 8);
          v17[0] = a1;
          v17[1] = &v12;
          v17[2] = a2;
          if (mlir::pdl_interp::GetOperandsOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17))
          {
            v9 = *(**(*(*a1 + 32))(a1) + 384);
            v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
            v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v17);
            llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v14);
            return (*(*a1 + 728))(a1, v14, v10, a2 + 16) & 1;
          }
        }
      }
    }
  }

  return 0;
}

BOOL mlir::pdl_interp::GetResultOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::GetResultOp::getIndex(mlir::pdl_interp::GetResultOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::GetResultOp::build(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v10, 0, &v10, 1);
  v8 = mlir::IntegerType::get(*a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, v8, a5);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>(a2) = IntegerAttr;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v12);
}

uint64_t mlir::pdl_interp::GetResultOp::parse(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v15, v5))
  {
    return 0;
  }

  if (v15)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>(a2);
    *v6 = v15;
  }

  v17 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, v16) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  __src = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  v16[0] = a1;
  v16[1] = &__src;
  v16[2] = a2;
  if (!mlir::pdl_interp::GetResultOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v16))
  {
    return 0;
  }

  v8 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), v16);
  v9 = *(**(*(*a1 + 32))(a1) + 384);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v16);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return (*(*a1 + 728))(a1, v13, v10, a2 + 16) & 1;
}

BOOL mlir::pdl_interp::GetResultsOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps4(v8, "index", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::GetResultsOp::getIndex(mlir::pdl_interp::GetResultsOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16) | 0x100000000;
}

void mlir::pdl_interp::GetResultsOp::build(mlir::Builder *I32IntegerAttr, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0x100000000) != 0)
  {
    I32IntegerAttr = mlir::Builder::getI32IntegerAttr(I32IntegerAttr, a5);
    v8 = I32IntegerAttr;
  }

  else
  {
    v8 = 0;
  }

  mlir::pdl_interp::GetResultsOp::build(I32IntegerAttr, a2, a3, a4, v8);
}

void mlir::pdl_interp::GetResultsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  if (a5)
  {
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>(a2) = a5;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

void mlir::pdl_interp::GetResultsOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  v6 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
  v7 = a3;
  __src = v6;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

uint64_t mlir::pdl_interp::GetResultsOp::parse(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 32, 0);
  v6 = (*(*a1 + 456))(a1, &v16, v5);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    if (v16)
    {
      v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>(a2);
      *v7 = v16;
    }
  }

  v18 = 257;
  if ((*(*a1 + 400))(a1, "of", 2, v17))
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 704))(a1, v14, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
    {
      v17[0] = 0;
      if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, v17))
      {
        __src = v17[0];
        v12 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          v8 = *(a2 + 8);
          v17[0] = a1;
          v17[1] = &v12;
          v17[2] = a2;
          if (mlir::pdl_interp::GetResultsOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17))
          {
            v9 = *(**(*(*a1 + 32))(a1) + 384);
            v17[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
            v10 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), v17);
            llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v14);
            return (*(*a1 + 728))(a1, v14, v10, a2 + 16) & 1;
          }
        }
      }
    }
  }

  return 0;
}

void mlir::pdl_interp::GetUsersOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &__src);
  v6 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
  v7 = a3;
  __src = v6;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v7, 0, &v7, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v9);
}

BOOL mlir::pdl_interp::GetUsersOp::parse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  v13[1] = 1;
  v14 = 0;
  v20 = 257;
  if (((*(*a1 + 400))(a1, "of", 2, &__src, a5, a6, a7, a8, &v14) & 1) == 0)
  {
    return 0;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &__src))
  {
    return 0;
  }

  v14 = __src;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v11 = *(**(*(*a1 + 32))(a1) + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  __src = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), &__src);
  __src = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**__src + 32), &__src);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v19);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v13, v10, a2 + 16);
}

void mlir::pdl_interp::GetValueTypeOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(**a1 + 384);
  __src = &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id;
  v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &__src);
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    __src = v7;
    v7 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v7 + 32), &__src);
  }

  v8 = a3;
  __src = v7;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v10);
}

void *getGetValueTypeOpValueType(uint64_t a1)
{
  v2 = *(**(**a1 + 32) + 384);
  v4 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v2 + 232), &v4);
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v4 = result;
    return mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**result + 32), &v4);
  }

  return result;
}

uint64_t mlir::pdl_interp::GetValueTypeOp::parse(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v17[12] = 257;
  if ((*(*a1 + 400))() & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v16 = 0, mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &v16)) && (v4 = v16, __src = v16, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)))
  {
    v12 = v4;
    v5 = (*v4)[17];
    if (v5 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(*v4[1] + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v14);
      ValueTypeOpValueType = getGetValueTypeOpValueType(__src);
      v7 = (*(*a1 + 728))(a1, v14, ValueTypeOpValueType, a2 + 16) & 1;
    }

    else
    {
      v6 = (*(*a1 + 16))(a1);
      v11[16] = 257;
      (*(*a1 + 24))(&v16, a1, v6, v11);
      if (v16)
      {
        if (v16)
        {
          mlir::Diagnostic::operator<<<mlir::Type &>(v17, &v12);
        }
      }

      v7 = (v18 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::pdl_interp::IsNotNullOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v8, 0, &v8, 1);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a4);
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
}

BOOL mlir::pdl_interp::IsNotNullOp::parse(uint64_t a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  v11[1] = 1;
  v12 = 0;
  v11[0] = &v12;
  v16 = v18;
  v17 = 0x200000000;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v14, 1) & 1) != 0 && ((*(*a1 + 104))(a1))
  {
    v10 = 0;
    if (mlir::AsmParser::parseType<mlir::pdl::PDLType>(a1, &v10))
    {
      v12 = v10;
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 56))(a1))
      {
        v10 = 0;
        v5 = (*(*a1 + 808))(a1, &v10);
        if ((v5 & 0x100) == 0)
        {
LABEL_7:
          if (v17)
          {
            v6 = v16 | 4;
          }

          else
          {
            v6 = 0;
          }

          llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v6, 0, v6, v17);
          v7 = mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v11, v4, a2 + 16);
          goto LABEL_15;
        }

        if (v5)
        {
          do
          {
            llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v16, v10);
            if (((*(*a1 + 128))(a1) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          while (((*(*a1 + 800))(a1, &v10) & 1) != 0);
        }
      }
    }
  }

  v7 = 0;
LABEL_15:
  if (v16 != v18)
  {
    free(v16);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::pdl_interp::RecordMatchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(v10, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v13, "generatedOps", 12, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0 || (v16 = v14[1]) == 0 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(v16, a3, a4))
      {
        v17 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 24));
        if ((v18 & 1) == 0)
        {
          return 1;
        }

        v19 = v17[1];
        if (!v19 || mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps1(v19, "rootKind", 8, a3, a4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps12(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_8;
  }

  v3 = *(a1 + 8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v3[2] != 16)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 24);
  if (v4 > 0x40)
  {
    operator new[]();
  }

  if (((*(a1 + 16) >> (v4 - 1)) & 1) == 0)
  {
    v5 = 1;
  }

  else
  {
LABEL_8:
    a2(&v10, a3);
    if (v10)
    {
      mlir::Diagnostic::operator<<<12ul>(v11, "attribute '");
      if (v10)
      {
        v9 = 261;
        v8[0] = "benefit";
        v8[1] = 7;
        mlir::Diagnostic::operator<<(v11, v8);
        if (v10)
        {
          mlir::Diagnostic::operator<<<94ul>(v11, "' failed to satisfy constraint: 16-bit signless integer attribute whose value is non-negative");
        }
      }
    }

    v5 = (v11[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v3 = 1;
  }

  else
  {
    a2(&v8, a3);
    if (v8)
    {
      mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
      if (v8)
      {
        v7 = 261;
        v6[0] = "rewriter";
        v6[1] = 8;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<59ul>(v9, "' failed to satisfy constraint: symbol reference attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::pdl_interp::RecordMatchOp::getBenefit(mlir::pdl_interp::RecordMatchOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

void mlir::pdl_interp::RecordMatchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a3, 0, a3, a4);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a5, 0, a5, a6);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 32) = v15 | (a6 << 32);
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 16) = a7;
  if (a8)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 24) = a8;
  }

  if (a9)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 8) = a9;
  }

  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) = a10;

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a11);
}

uint64_t mlir::pdl_interp::RecordMatchOp::getODSOperands(mlir::pdl_interp::RecordMatchOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = a2;
    v5 = (*this + 16 * ((v2 >> 23) & 1) + 96);
    v6 = a2;
    do
    {
      v7 = *v5++;
      v3 = (v7 + v3);
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v8 = *(*this + 16 * ((v2 >> 23) & 1) + 96 + 4 * v4);
  if ((v2 & 0x800000) != 0)
  {
    v9 = *(*this + 72);
  }

  else
  {
    v9 = 0;
  }

  return v9 + 32 * v3;
}

uint64_t mlir::pdl_interp::RecordMatchOp::parse(uint64_t a1, uint64_t a2)
{
  v45[16] = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = 0;
  v43 = v45;
  v44 = 0x400000000;
  v41[0] = &v42;
  v41[1] = 0x100000000;
  v32 = 0;
  v33 = 0;
  v38 = v40;
  v39 = 0x400000000;
  v31 = 0;
  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v36[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v36);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::SymbolRefAttr>(a1, &v35, v5))
  {
    goto LABEL_51;
  }

  if (v35)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
    *(v7 + 16) = v35;
  }

  if ((*(*a1 + 288))(a1))
  {
    v8 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v43, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v41) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
LABEL_51:
      v27 = 0;
      goto LABEL_52;
    }
  }

  else
  {
    v8 = 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "benefit", 7, v36) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  v9 = (*(*a1 + 32))(a1);
  v10 = mlir::IntegerType::get(*v9, 16, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v34, v10))
  {
    goto LABEL_51;
  }

  if (v34)
  {
    v11 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
    *v11 = v34;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if ((*(*a1 + 408))(a1, "generatedOps", 12))
  {
    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    v12 = (*(*a1 + 32))(a1);
    v14 = mlir::NoneType::get(*v12, v13);
    if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v33, v14))
    {
      goto LABEL_51;
    }

    if (v33)
    {
      v15 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
      *(v15 + 8) = v33;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "loc", 3, v36) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v38, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 328))(a1) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if ((*(*a1 + 128))(a1))
  {
    v37 = 257;
    if (((*(*a1 + 400))(a1, "root", 4, v36) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    v16 = (*(*a1 + 32))(a1);
    v18 = mlir::NoneType::get(*v16, v17);
    if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v32, v18))
    {
      goto LABEL_51;
    }

    if (v32)
    {
      v19 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2);
      *(v19 + 24) = v32;
    }

    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v30 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_51;
  }

  v20 = *(a2 + 8);
  v36[0] = a1;
  v36[1] = &v30;
  v36[2] = a2;
  if (!mlir::pdl_interp::RecordMatchOp::verifyInherentAttrs(v20, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::RecordMatchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v36))
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (((*(*a1 + 800))(a1, &v31) & 1) == 0)
  {
    goto LABEL_51;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v31);
  v21 = v44;
  v22 = v39;
  *(mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(a2) + 32) = v21 | (v22 << 32);
  v23 = *(**(*(*a1 + 32))(a1) + 384);
  v36[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  v24 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v23 + 232), v36);
  if (!mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v43, v41, v8, a2 + 16))
  {
    goto LABEL_51;
  }

  if (v39)
  {
    v25 = v38;
    v26 = 32 * v39;
    while (((*(*a1 + 728))(a1, v25, v24, a2 + 16) & 1) != 0)
    {
      v25 += 32;
      v27 = 1;
      v26 -= 32;
      if (!v26)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_51;
  }

  v27 = 1;
LABEL_52:
  if (v38 != v40)
  {
    free(v38);
  }

  if (v41[0] != &v42)
  {
    free(v41[0]);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

unint64_t mlir::pdl_interp::ReplaceOp::getODSOperandIndexAndLength(mlir::pdl_interp::ReplaceOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir10pdl_interp9ReplaceOp27getODSOperandIndexAndLengthEj_isVariadic;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 2) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir10pdl_interp9ReplaceOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 1) << 32;
  }

  return v8 | v7;
}

uint64_t mlir::pdl_interp::ReplaceOp::getODSOperands(mlir::pdl_interp::ReplaceOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::pdl_interp::ReplaceOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

BOOL mlir::pdl_interp::ReplaceOp::parse(uint64_t a1, uint64_t a2)
{
  v18[16] = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v16 = v18;
  v17 = 0x400000000;
  v14[0] = &v15;
  v14[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  v7 = ((*(*a1 + 704))(a1, v10, 1) & 1) != 0 && (v13 = 257, ((*(*a1 + 400))(a1, "with", 4, v12) & 1) != 0) && ((*(*a1 + 280))(a1) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v16, 0, 1, 0xFFFFFFFFLL) & 1) != 0) && (!v17 || ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::AsmParser::parseTypeList(a1, v14) & 1) != 0) && ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0) && (v5 = *(**(*(*a1 + 32))(a1) + 384), v12[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id, v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), v12), ((*(*a1 + 728))(a1, v10, v6, a2 + 16) & 1) != 0) && mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v16, v14, v4, a2 + 16);
  if (v14[0] != &v15)
  {
    free(v14[0]);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::pdl_interp::SwitchAttributeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps13(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps13(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v3 = 1;
  }

  else
  {
    a2(&v8, a3);
    if (v8)
    {
      mlir::Diagnostic::operator<<<12ul>(v9, "attribute '");
      if (v8)
      {
        v7 = 261;
        v6[0] = "caseValues";
        v6[1] = 10;
        mlir::Diagnostic::operator<<(v9, v6);
        if (v8)
        {
          mlir::Diagnostic::operator<<<48ul>(v9, "' failed to satisfy constraint: array attribute");
        }
      }
    }

    v3 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::SwitchAttributeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v12, 0, &v12, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, a6, 0, a6, a7);
}

uint64_t mlir::pdl_interp::SwitchAttributeOp::parse(uint64_t a1, uint64_t a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v23 = v25;
  v24 = 0x200000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    goto LABEL_22;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v21) & 1) == 0)
  {
    goto LABEL_22;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v21[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v21);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v18, v5))
  {
    goto LABEL_22;
  }

  if (v18)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>(a2);
    *v7 = v18;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_22;
  }

  v21[0] = 0;
  v8 = (*(*a1 + 808))(a1, v21);
  if ((v8 & 0x100) != 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }

    while (1)
    {
      llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v23, v21[0]);
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        break;
      }

      if (((*(*a1 + 800))(a1, v21) & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  if ((*(*a1 + 296))(a1))
  {
    v16 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v9 = *(a2 + 8);
      v21[0] = a1;
      v21[1] = &v16;
      v21[2] = a2;
      if (mlir::pdl_interp::SwitchAttributeOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v21) && ((*(*a1 + 56))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v17) & 1) != 0)
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v17);
        if (v24)
        {
          v10 = v23 | 4;
        }

        else
        {
          v10 = 0;
        }

        llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v10, 0, v10, v24);
        v11 = *(**(*(*a1 + 32))(a1) + 384);
        v21[0] = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
        v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v21);
        v13 = (*(*a1 + 728))(a1, v19, v12, a2 + 16) & 1;
        goto LABEL_23;
      }
    }
  }

LABEL_22:
  v13 = 0;
LABEL_23:
  if (v23 != v25)
  {
    free(v23);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::pdl_interp::SwitchOperandCountOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (mlir::DenseIntElementsAttr::classof(a1) && (v6 = a1[1], v7 = (*(a1[2] + 8))(), *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 32)
  {
    v8 = 1;
  }

  else
  {
    a2(&v13, a3);
    if (v13)
    {
      mlir::Diagnostic::operator<<<12ul>(v14, "attribute '");
      if (v13)
      {
        v12 = 261;
        v11[0] = "caseValues";
        v11[1] = 10;
        mlir::Diagnostic::operator<<(v14, v11);
        if (v13)
        {
          mlir::Diagnostic::operator<<<75ul>(v14, "' failed to satisfy constraint: 32-bit signless integer elements attribute");
        }
      }
    }

    v8 = (v14[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::SwitchOperandCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v12, 0, &v12, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, a6, 0, a6, a7);
}

uint64_t mlir::pdl_interp::SwitchOperandCountOp::parse(uint64_t a1, uint64_t a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v20 = v22;
  v21 = 0x200000000;
  v19 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v18) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::DenseIntElementsAttr>(a1, &v15))
  {
    goto LABEL_21;
  }

  v4 = v15;
  if (v15)
  {
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v18[0] = 0;
  v5 = (*(*a1 + 808))(a1, v18);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v20, v18[0]);
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        break;
      }

      if (((*(*a1 + 800))(a1, v18) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  if ((*(*a1 + 296))(a1))
  {
    v13 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v6 = *(a2 + 8);
      v18[0] = a1;
      v18[1] = &v13;
      v18[2] = a2;
      if (mlir::pdl_interp::SwitchOperandCountOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18) && ((*(*a1 + 56))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v14) & 1) != 0)
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v14);
        if (v21)
        {
          v7 = v20 | 4;
        }

        else
        {
          v7 = 0;
        }

        llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v7, 0, v7, v21);
        v8 = *(**(*(*a1 + 32))(a1) + 384);
        v18[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
        v9 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), v18);
        v10 = (*(*a1 + 728))(a1, v16, v9, a2 + 16) & 1;
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  if (v20 != v22)
  {
    free(v20);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL mlir::pdl_interp::SwitchOperationNameOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps8(v8, "caseValues", 10, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::SwitchOperationNameOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  v27[16] = *MEMORY[0x277D85DE8];
  v16 = &a4[a5];
  v25 = v27;
  v26 = 0x800000000;
  v17 = (8 * a5) >> 3;
  if (v17 < 9)
  {
    v18 = 0;
    v19 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v17, 16);
    v18 = v26;
    v19 = v25;
  }

  if (v12 != v16)
  {
    v20 = &v19[2 * v18];
    v21 = 8 * a5;
    do
    {
      v22 = *v12++;
      *v20 = *(*(v22 + 8) + 16);
      v20 += 2;
      v21 -= 8;
    }

    while (v21);
    v18 = v26;
    v19 = v25;
  }

  LODWORD(v26) = v18 + a5;
  StrArrayAttr = mlir::Builder::getStrArrayAttr(a1, v19, v18 + a5);
  mlir::pdl_interp::SwitchOperationNameOp::build(StrArrayAttr, a2, a3, StrArrayAttr, a6, a7, a8);
  if (v25 != v27)
  {
    free(v25);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void mlir::pdl_interp::SwitchOperationNameOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v12, 0, &v12, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, a6, 0, a6, a7);
}

uint64_t mlir::pdl_interp::SwitchOperationNameOp::parse(uint64_t a1, uint64_t a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v23 = v25;
  v24 = 0x200000000;
  v22 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    goto LABEL_23;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v21) & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = **(*(*a1 + 32))(a1);
  v5 = *(v4 + 528);
  if (!v5)
  {
    v6 = *(v4 + 384);
    v21[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v5 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v21);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v18, v5))
  {
    goto LABEL_23;
  }

  if (v18)
  {
    v7 = mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>(a2);
    *v7 = v18;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v21[0] = 0;
  v8 = (*(*a1 + 808))(a1, v21);
  if ((v8 & 0x100) != 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v23, v21[0]);
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        break;
      }

      if (((*(*a1 + 800))(a1, v21) & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  if ((*(*a1 + 296))(a1))
  {
    v16 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v9 = *(a2 + 8);
      v21[0] = a1;
      v21[1] = &v16;
      v21[2] = a2;
      if (mlir::pdl_interp::SwitchOperationNameOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v21) && ((*(*a1 + 56))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v17) & 1) != 0)
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v17);
        if (v24)
        {
          v10 = v23 | 4;
        }

        else
        {
          v10 = 0;
        }

        llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v10, 0, v10, v24);
        v11 = *(**(*(*a1 + 32))(a1) + 384);
        v21[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
        v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v11 + 232), v21);
        v13 = (*(*a1 + 728))(a1, v19, v12, a2 + 16) & 1;
        goto LABEL_24;
      }
    }
  }

LABEL_23:
  v13 = 0;
LABEL_24:
  if (v23 != v25)
  {
    free(v23);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::pdl_interp::SwitchResultCountOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps14(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::pdl_interp::SwitchResultCountOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v12, 0, &v12, 1);
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>(a2) = a4;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, a5);
  llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, a6, 0, a6, a7);
}

uint64_t mlir::pdl_interp::SwitchResultCountOp::parse(uint64_t a1, uint64_t a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v20 = v22;
  v21 = 0x200000000;
  v19 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v18) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::DenseIntElementsAttr>(a1, &v15))
  {
    goto LABEL_21;
  }

  v4 = v15;
  if (v15)
  {
    *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>(a2) = v4;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v18[0] = 0;
  v5 = (*(*a1 + 808))(a1, v18);
  if ((v5 & 0x100) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      llvm::SmallVectorImpl<mlir::Block *>::emplace_back<mlir::Block *&>(&v20, v18[0]);
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        break;
      }

      if (((*(*a1 + 800))(a1, v18) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  if ((*(*a1 + 296))(a1))
  {
    v13 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 112))
    {
      v6 = *(a2 + 8);
      v18[0] = a1;
      v18[1] = &v13;
      v18[2] = a2;
      if (mlir::pdl_interp::SwitchResultCountOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18) && ((*(*a1 + 56))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v14) & 1) != 0)
      {
        llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(a2 + 200, v14);
        if (v21)
        {
          v7 = v20 | 4;
        }

        else
        {
          v7 = 0;
        }

        llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v7, 0, v7, v21);
        v8 = *(**(*(*a1 + 32))(a1) + 384);
        v18[0] = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
        v9 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v8 + 232), v18);
        v10 = (*(*a1 + 728))(a1, v16, v9, a2 + 16) & 1;
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  if (v20 != v22)
  {
    free(v20);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}