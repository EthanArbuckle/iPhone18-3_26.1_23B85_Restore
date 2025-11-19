BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::LLVM::GlobalOp>::verifyTrait(mlir::Operation *a1, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (mlir::detail::verifySymbol(a1, a2))
  {
    v3 = *(a1 + 2);
    if (v3 && (v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8) != 0 && (v5 = *(v4 + 16)) != 0 && (v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(), ((*(**(v5 + 48) + 32))(*(v5 + 48), v6) & 1) == 0))
    {
      v10 = *(*(v5 + 48) + 16);
      v7 = 1;
      if (v10 != &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v11 = "symbol's parent must have the SymbolTable trait";
        v12 = 259;
        mlir::Operation::emitOpError(a1, &v11, v13);
        v7 = (v13[200] & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::Op<mlir::LLVM::GlobalOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::LLVM::ReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants(mlir::OpTrait::impl *this, mlir::Operation *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *(this + 11);
  v4 = v3 & 0x7FFFFF;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = (((this + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    do
    {
      if (v5 != *v5)
      {
        v6 = v5[1];
        v7 = v6 ? v6 - 8 : 0;
        v8 = *(*(v7 + 32) + 48);
        if (*(v8 + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::ReturnOp,void>::id)
        {
          v33 = 1283;
          v32[0] = "expects regions to end with '";
          v32[2] = "llvm.return";
          v32[3] = 11;
          v34[0] = v32;
          v34[2] = "', found '";
          v35 = 770;
          v20 = *(v8 + 8);
          v36 = v34;
          v37 = *(v20 + 16);
          v38 = 1282;
          v39 = &v36;
          v41 = "'";
          v42 = 770;
          mlir::Operation::emitOpError(this, &v39, &v45);
          mlir::Diagnostic::attachNote(v46, 0, 0);
        }
      }

      v5 += 3;
      --v4;
    }

    while (v4);
  }

  if (mlir::OpTrait::impl::verifyIsIsolatedFromAbove(this, a2))
  {
    v9 = this + 64;
    v10 = *(this + 11);
    v11 = (v10 >> 23) & 1;
    v12 = this + 16 * v11 + 64;
    v13 = ((&v12[((v10 >> 21) & 0x7F8) + 7] & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
    if (*v13 != v13)
    {
      v14 = v13[1];
      if (v14)
      {
        v15 = v14 + 24;
        v16 = *(v14 + 24);
        if ((*(v16 + 46) & 0x80) == 0 || !*(v16 + 68))
        {
          v19 = "initializer region cannot return void";
          goto LABEL_26;
        }

        if ((*(*(*(v16 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != *(*(v12 + 7) + 8))
        {
          v43[0] = "initializer region type ";
          v44 = 259;
          mlir::Operation::emitOpError(this, v43, &v45);
          if (v45)
          {
            v24 = *(*(*(v16 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
            LODWORD(v39) = 4;
            v40 = v24;
            v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v47, &v39, 1);
            v26 = v47 + 24 * v48;
            v27 = *v25;
            *(v26 + 16) = *(v25 + 16);
            *v26 = v27;
            ++v48;
            if (v45)
            {
              mlir::Diagnostic::operator<<<29ul>(v46, " does not match global type ");
              if (v45)
              {
                v28 = *(*&v9[16 * ((*(this + 11) >> 23) & 1) + 56] + 8);
                LODWORD(v39) = 4;
                v40 = v28;
                v29 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v47, &v39, 1);
                v30 = v47 + 24 * v48;
                v31 = *v29;
                *(v30 + 16) = *(v29 + 16);
                *v30 = v31;
                ++v48;
              }
            }
          }

          goto LABEL_27;
        }

        v17 = *(v14 + 32);
        if (v17 != v15)
        {
          while (1)
          {
            v39 = llvm::DefaultDoCastIfPossible<mlir::MemoryEffectOpInterface,mlir::Operation &,llvm::CastInfo<mlir::MemoryEffectOpInterface,mlir::Operation,void>>::doCastIfPossible(v17);
            v40 = v18;
            if (!v39 || !mlir::MemoryEffectOpInterface::hasNoEffect(&v39))
            {
              break;
            }

            v17 = *(v17 + 8);
            if (v17 == v15)
            {
              v11 = (*(this + 11) >> 23) & 1;
              goto LABEL_20;
            }
          }

          v44 = 257;
          mlir::Operation::emitError(&v45, v17, v43);
          if (v45)
          {
            mlir::Diagnostic::operator<<<57ul>(v46, "ops with side effects not allowed in global initializers");
          }

          goto LABEL_27;
        }

LABEL_20:
        if (*&v9[16 * v11 + 104])
        {
          v19 = "cannot have both initializer value and region";
LABEL_26:
          v43[0] = v19;
          v44 = 259;
          mlir::Operation::emitOpError(this, v43, &v45);
LABEL_27:
          v21 = v49 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
          goto LABEL_28;
        }
      }
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x7461636964657270 ? (v4 = *(a3 + 8) == 101) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 24) == 9)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 8);
    if (v5 == 0x7461636964657270 && v6 == 101)
    {
      v9 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
      if (a4)
      {
        if (mlir::LLVM::ICmpPredicateAttr::classof(a4))
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      *(v9 + 64) = v10;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "predicate";
    v7[1] = 9;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v7 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  result = 1;
  if (v8)
  {
    v9 = v7[1];
    if (v9)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps32(v9, a4, a5))
      {
        return 0;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "predicate", 9uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (!mlir::LLVM::ICmpPredicateAttr::classof(*(v10 + 8)))
        {
          a5(&v19, a6);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v12;
              v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v15 = v21 + 24 * v22;
              v16 = *v14;
              *(v15 + 16) = *(v14 + 16);
              *v15 = v16;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_10;
  }

  a5(&v19, a6);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "predicate";
    v11[1] = 9;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ICmpOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::ICmpOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    if (mlir::LLVM::ICmpPredicateAttr::classof(v14))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    *v3 = v5;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC21068, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC21068))
      {
        qword_27FC21058 = llvm::detail::getTypeNameImpl<mlir::LLVM::ICmpPredicateAttr>();
        unk_27FC21060 = v12;
        __cxa_guard_release(&qword_27FC21068);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC21058;
        v16 = unk_27FC21060;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v8 = v20 + 24 * v21;
            v9 = *v7;
            *(v8 + 16) = *(v7 + 16);
            *v8 = v9;
            ++v21;
          }
        }
      }

      v6 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::ICmpOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::LLVM::ICmpOp::inferReturnTypes(a4, a5, &v18))
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
      v22 = "llvm.icmp";
      v23 = 9;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::ICmpOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2 + 64;
  v36 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (mlir::IntegerAttr::getInt(&v36))
  {
    v36 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1));
    if (mlir::IntegerAttr::getInt(&v36) != 1)
    {
      return 0;
    }
  }

  v8 = *(a2 + 72);
  v9 = v8[3];
  v10 = v8[7];
  if (v9 == v10)
  {
    v15 = *(a2 - 8);
    v16 = *(***(a2 + 24) + 32);
    v36 = *(a2 + 80);
    v17 = mlir::IntegerAttr::getInt(&v36) == 0;
    goto LABEL_12;
  }

  if ((~*(v9 + 2) & 7) != 0)
  {
    v11 = v8[3];
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = *(v11 + 16);
    v14 = v11 + 24 * v13 + 120;
    if (v11 + 24 * v13 == -120)
    {
LABEL_24:
      v21 = v11 + 24 * v13 + 120;
      if (!v21)
      {
        return 0;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v14 = v11 + 16 * v12 + 16;
  }

  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id)
  {
    v22 = (~*(v10 + 2) & 7) != 0 ? v8[7] : 0;
    if (v22)
    {
      v23 = *(v22 + 8) & 7;
      if (v23 == 6)
      {
        v24 = v22 + 24 * *(v22 + 16) + 120;
        if (!v24)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v24 = v22 + 16 * v23 + 16;
      }

      if (*(*(v24 + 48) + 16) != &unk_27FC20028)
      {
        goto LABEL_22;
      }

      v15 = *(a2 - 8);
      v16 = *(***(a2 + 24) + 32);
      v36 = *(a2 + 80);
      v17 = mlir::IntegerAttr::getInt(&v36) == 1;
LABEL_12:
      v18 = v17;
      v19 = getBoolAttribute((v15 & 0xFFFFFFFFFFFFFFF8), *v16, v18) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_16;
    }
  }

LABEL_22:
  if (v12 == 6)
  {
    v13 = *(v11 + 16);
    goto LABEL_24;
  }

  v21 = v11 + 16 * v12 + 16;
LABEL_27:
  if (*(*(v21 + 48) + 16) != &unk_27FC20028)
  {
    return 0;
  }

  v25 = (~*(v10 + 2) & 7) != 0 ? v8[7] : 0;
  if (!v25)
  {
    return 0;
  }

  v26 = *(v25 + 8) & 7;
  if (v26 == 6)
  {
    v27 = v25 + 24 * *(v25 + 16) + 120;
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    v27 = v25 + 16 * v26 + 16;
  }

  if (*(*(v27 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::AllocaOp,void>::id)
  {
    return 0;
  }

  v28 = v8[1];
  if (v28)
  {
    v29 = *v8;
    *v28 = *v8;
    if (v29)
    {
      *(v29 + 8) = v8[1];
    }
  }

  v8[3] = v10;
  v8[1] = v10;
  v30 = *v10;
  *v8 = *v10;
  if (v30)
  {
    v30[1] = v8;
  }

  *v10 = v8;
  v31 = *(a2 + 72);
  v32 = v31 + 4;
  v33 = v31[5];
  if (v33)
  {
    v34 = *v32;
    *v33 = *v32;
    if (v34)
    {
      *(v34 + 8) = v31[5];
    }
  }

  v31[7] = v9;
  v31[5] = v9;
  v35 = *v9;
  v31[4] = *v9;
  if (v35)
  {
    v35[1] = v32;
  }

  *v9 = v32;
  v19 = (a2 - 16) | 4;
LABEL_16:
  if (v19 < 8)
  {
    return 0;
  }

  if (a2 - 16 != (v19 & ((v19 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v19);
  }

  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[12] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameTypeOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameTypeOperands>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[11] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) - v8 > 1uLL)
  {
    *v8 = 8736;
    *(v7 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v7, " ", 2uLL);
  }

  v25[0] = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Int = mlir::IntegerAttr::getInt(v25);
  v10 = mlir::LLVM::stringifyICmpPredicate(Int);
  v12 = v11;
  v13 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v13, v10, v12);
  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 8226;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, " ", 2uLL);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 1uLL)
  {
    *v17 = 8236;
    *(v16 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v16, ", ", 2uLL);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v19 = *(AttrDictionary + 8);
  v20 = *(AttrDictionary + 16);
  v25[0] = "predicate";
  v25[1] = 9;
  (*(*a3 + 192))(a3, v19, v20, v25, 1);
  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if ((*(v21 + 3) - v22) > 2)
  {
    *(v22 + 2) = 32;
    *v22 = 14880;
    *(v21 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v21, " : ", 3uLL);
  }

  result = (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::Op<mlir::LLVM::ICmpOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    goto LABEL_20;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (v5)
  {
    v17[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps32(v5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps32(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v17) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u))
    {
      goto LABEL_20;
    }

    v6 = *(a1 + 36) ? a1 - 16 : 0;
    if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps15(a1, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6))
    {
      goto LABEL_20;
    }

    I1SameShape = getI1SameShape((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
    if (*(a1 + 36))
    {
      v9 = a1 - 16;
    }

    else
    {
      v9 = 0;
    }

    if (I1SameShape == (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_22:
      v12 = mlir::OpTrait::impl::verifySameTypeOperands(a1, v8);
      goto LABEL_21;
    }

    v10 = "failed to verify that result type has i1 element type and same shape as operands";
  }

  else
  {
    v10 = "requires attribute 'predicate'";
  }

  v15 = v10;
  v16 = 259;
  mlir::Operation::emitOpError(a1, &v15, v17);
  v11 = v18;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
  if ((v11 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v12 = 0;
LABEL_21:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (a4 <= 12)
  {
    if (a4 == 10)
    {
      if (*a3 != 0x697274735F6D7361 || *(a3 + 8) != 26478)
      {
        goto LABEL_39;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      goto LABEL_41;
    }

    v6 = 0;
    if (a4 == 11)
    {
      if (*a3 != 0x6C6169645F6D7361 || *(a3 + 3) != 0x7463656C6169645FLL)
      {
        if (*a3 != 0x69617274736E6F63 || *(a3 + 3) != 0x73746E6961727473)
        {
          goto LABEL_39;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      }

      goto LABEL_41;
    }
  }

  else
  {
    if (a4 == 13)
    {
      if (*a3 != 0x5F646E617265706FLL || *(a3 + 5) != 0x73727474615F646ELL)
      {
        goto LABEL_39;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      goto LABEL_41;
    }

    if (a4 == 14)
    {
      if (*a3 != 0x6E67696C615F7369 || *(a3 + 6) != 0x6B636174735F6E67)
      {
        goto LABEL_39;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      goto LABEL_41;
    }

    v6 = 0;
    if (a4 == 16)
    {
      if (*a3 != 0x656469735F736168 || *(a3 + 8) != 0x737463656666655FLL)
      {
LABEL_39:
        v4 = 0;
        v6 = 0;
        return v6 | v4;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
LABEL_41:
      v13 = *v5;
      v6 = v13 & 0xFFFFFFFFFFFFFF00;
      v4 = v13;
    }
  }

  return v6 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 <= 12)
  {
    if (v7 == 10)
    {
      v25 = *v6;
      v26 = *(v6 + 4);
      if (v25 == 0x697274735F6D7361 && v26 == 26478)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v28 = a4;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }

        v5[9] = v28;
      }
    }

    else if (v7 == 11)
    {
      if (*v6 == 0x6C6169645F6D7361 && *(v6 + 3) == 0x7463656C6169645FLL)
      {
        if (a4)
        {
          if (mlir::LLVM::AsmDialectAttr::classof(a4))
          {
            v29 = a4;
          }

          else
          {
            v29 = 0;
          }
        }

        else
        {
          v29 = 0;
        }

        v5[8] = v29;
      }

      else
      {
        v13 = *v6;
        v14 = *(v6 + 3);
        if (v13 == 0x69617274736E6F63 && v14 == 0x73746E6961727473)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v16 = a4;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }

          v5[10] = v16;
        }
      }
    }
  }

  else
  {
    switch(v7)
    {
      case 13:
        v17 = *v6;
        v18 = *(v6 + 5);
        if (v17 == 0x5F646E617265706FLL && v18 == 0x73727474615F646ELL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v20 = a4;
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }

          v5[13] = v20;
        }

        break;
      case 14:
        v21 = *v6;
        v22 = *(v6 + 6);
        if (v21 == 0x6E67696C615F7369 && v22 == 0x6B636174735F6E67)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v24 = a4;
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }

          v5[12] = v24;
        }

        break;
      case 16:
        v9 = *v6;
        v8 = v6[1];
        if (v9 == 0x656469735F736168 && v8 == 0x737463656666655FLL)
        {
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
          }

          else
          {
            v11 = 0;
          }

          v5[11] = v11;
        }

        break;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v27 = 261;
    v25 = "asm_dialect";
    v26 = 11;
    v9 = mlir::StringAttr::get(v8, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v27 = 261;
    v25 = "asm_string";
    v26 = 10;
    v12 = mlir::StringAttr::get(v11, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v27 = 261;
    v25 = "constraints";
    v26 = 11;
    v15 = mlir::StringAttr::get(v14, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v27 = 261;
    v25 = "has_side_effects";
    v26 = 16;
    v18 = mlir::StringAttr::get(v17, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v27 = 261;
    v25 = "is_align_stack";
    v26 = 14;
    v21 = mlir::StringAttr::get(v20, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v27 = 261;
    v25 = "operand_attrs";
    v26 = 13;
    v24 = mlir::StringAttr::get(v23, &v25, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }
}

double mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[2];
    a3[1] = a4[1];
    a3[2] = v5;
    *a3 = v4;
  }

  else
  {
    *&v4 = 0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v32, a6);
    if (v32)
    {
      mlir::Diagnostic::operator<<<42ul>(v33, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "asm_dialect", 0xBuLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (!mlir::LLVM::AsmDialectAttr::classof(*(v12 + 8)))
      {
        a5(&v32, a6);
        if (!v32)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      *a3 = v14;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "asm_string", 0xAuLL);
  if ((v16 & 1) == 0 || (v14 = *(v15 + 8)) == 0)
  {
LABEL_18:
    v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "constraints", 0xBuLL);
    if (v19)
    {
      v14 = *(v18 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v32, a6);
          if (!v32)
          {
            goto LABEL_4;
          }

LABEL_23:
          mlir::Diagnostic::operator<<<57ul>(v33, v17);
          goto LABEL_30;
        }

        a3[2] = v14;
      }
    }

    v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "has_side_effects", 0x10uLL);
    if (v21)
    {
      v14 = *(v20 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v32, a6);
          if (!v32)
          {
            goto LABEL_4;
          }

LABEL_30:
          if (v32)
          {
            LODWORD(v31[0]) = 0;
            v31[1] = v14;
            v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34, v31, 1);
            v23 = v34 + 24 * v35;
            v24 = *v22;
            *(v23 + 16) = *(v22 + 16);
            *v23 = v24;
            ++v35;
          }

          goto LABEL_4;
        }

        a3[3] = v14;
      }
    }

    v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "is_align_stack", 0xEuLL);
    if (v26)
    {
      v27 = *(v25 + 8);
      v31[0] = v27;
      if (v27)
      {
        if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v32, a6);
          if (!v32)
          {
            goto LABEL_4;
          }

LABEL_44:
          if (v32)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v33, v31);
          }

          goto LABEL_4;
        }

        a3[4] = v27;
      }
    }

    v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_attrs", 0xDuLL);
    if (v29)
    {
      v30 = *(v28 + 8);
      v31[0] = v30;
      if (v30)
      {
        if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v32, a6);
          if (!v32)
          {
            goto LABEL_4;
          }

          goto LABEL_44;
        }

        a3[5] = v30;
      }
    }

    result = 1;
    goto LABEL_5;
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a3[1] = v14;
    goto LABEL_18;
  }

  a5(&v32, a6);
  if (v32)
  {
    goto LABEL_30;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  result = 0;
LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v32 = v34;
  v33 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v31 = 261;
    v29 = "asm_dialect";
    v30 = 11;
    v9 = mlir::StringAttr::get(v8, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v31 = 261;
    v29 = "asm_string";
    v30 = 10;
    v12 = mlir::StringAttr::get(v11, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v31 = 261;
    v29 = "constraints";
    v30 = 11;
    v15 = mlir::StringAttr::get(v14, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v31 = 261;
    v29 = "has_side_effects";
    v30 = 16;
    v18 = mlir::StringAttr::get(v17, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v31 = 261;
    v29 = "is_align_stack";
    v30 = 14;
    v21 = mlir::StringAttr::get(v20, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v31 = 261;
    v29 = "operand_attrs";
    v30 = 13;
    v24 = mlir::StringAttr::get(v23, &v29, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v32, v24, v22);
  }

  v25 = v32;
  if (v33)
  {
    v26 = mlir::DictionaryAttr::get(v3, v32, v33);
    v25 = v32;
  }

  else
  {
    v26 = 0;
  }

  if (v25 != v34)
  {
    free(v25);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InlineAsmOp>::hashProperties(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v24 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v23 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v22 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v21 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v13 = a2[5];
  v14 = 8 * a2[4] - 0xAE502812AA7333;
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(a2[4]) ^ ((0x9DDFEA08EB382D69 * (v14 ^ HIDWORD(a2[4]))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ HIDWORD(a2[4]))));
  v20 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ ((0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13))));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v19 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v25, 0, v25, v26, &v24, &v23, &v22, &v21, &v20, &v19);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InlineAsmOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::InlineAsmOpGenericAdaptorBase::Properties>(a2);
  v15 = 0;
  if (((*(*a1 + 56))(a1, &v15) & 1) == 0)
  {
    goto LABEL_20;
  }

  v4 = v15;
  if (v15)
  {
    v5 = mlir::LLVM::AsmDialectAttr::classof(v15);
    v6 = v5 ? v4 : 0;
    *v3 = v6;
    if (!v5)
    {
      v14[16] = 257;
      (*(*a1 + 16))(&v19, a1, v14);
      if (v19)
      {
        mlir::Diagnostic::operator<<<10ul>(v20, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC210A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC210A8))
      {
        qword_27FC21098 = llvm::detail::getTypeNameImpl<mlir::LLVM::AsmDialectAttr>();
        unk_27FC210A0 = v13;
        __cxa_guard_release(&qword_27FC210A8);
      }

      if (v19)
      {
        v18 = 261;
        v16 = qword_27FC21098;
        v17 = unk_27FC210A0;
        mlir::Diagnostic::operator<<(v20, &v16);
        if (v19)
        {
          mlir::Diagnostic::operator<<<12ul>(v20, ", but got: ");
          if (v19)
          {
            LODWORD(v16) = 0;
            v17 = v15;
            v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v16, 1);
            v8 = v21 + 24 * v22;
            v9 = *v7;
            *(v8 + 16) = *(v7 + 16);
            *v8 = v9;
            ++v22;
          }
        }
      }

      v10 = v23;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
      if (v10)
      {
        goto LABEL_20;
      }
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 4))
  {
    result = mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 5);
  }

  else
  {
LABEL_20:
    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InlineAsmOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 16))(a3, v4[10]);
  (*(*a3 + 24))(a3, v4[11]);
  (*(*a3 + 24))(a3, v4[12]);
  v5 = v4[13];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::LLVM::InlineAsmOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88))
  {
    v5 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>();
    llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>(a3, &v5);
    v4 = mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>();
    llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Read *>(a3, v4);
  }
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v72[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2 + 64;
  v8 = (*(a2 + 44) >> 23) & 1;
  if (*(a2 + 64 + 16 * v8 + 24))
  {
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
    if (*(v11 + 3) - v12 > 0xFuLL)
    {
      *v12 = *"has_side_effects";
      *(v11 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v11, "has_side_effects", 0x10uLL);
    }

    v8 = (*(a2 + 44) >> 23) & 1;
  }

  if (*(v7 + 16 * v8 + 32))
  {
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

    v15 = (*(*a3 + 16))(a3);
    v16 = *(v15 + 4);
    if (*(v15 + 3) - v16 > 0xDuLL)
    {
      qmemcpy(v16, "is_align_stack", 14);
      *(v15 + 4) += 14;
    }

    else
    {
      llvm::raw_ostream::write(v15, "is_align_stack", 0xEuLL);
    }

    v8 = (*(a2 + 44) >> 23) & 1;
  }

  if (*(v7 + 16 * v8))
  {
    v17 = (*(*a3 + 16))(a3);
    v18 = *(v17 + 4);
    if (v18 >= *(v17 + 3))
    {
      llvm::raw_ostream::write(v17, 32);
    }

    else
    {
      *(v17 + 4) = v18 + 1;
      *v18 = 32;
    }

    v19 = (*(*a3 + 16))(a3);
    v20 = *(v19 + 4);
    if ((*(v19 + 3) - v20) > 0xA)
    {
      *(v20 + 7) = 1952671084;
      *v20 = *"asm_dialect";
      *(v19 + 4) += 11;
    }

    else
    {
      llvm::raw_ostream::write(v19, "asm_dialect", 0xBuLL);
    }

    v21 = (*(*a3 + 16))(a3);
    v22 = *(v21 + 4);
    if (v22 >= *(v21 + 3))
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      *(v21 + 4) = v22 + 1;
      *v22 = 32;
    }

    v23 = (*(*a3 + 16))(a3);
    v24 = *(v23 + 4);
    if (*(v23 + 3) == v24)
    {
      llvm::raw_ostream::write(v23, "=", 1uLL);
    }

    else
    {
      *v24 = 61;
      ++*(v23 + 4);
    }

    v25 = (*(*a3 + 16))(a3);
    v26 = *(v25 + 4);
    if (v26 >= *(v25 + 3))
    {
      llvm::raw_ostream::write(v25, 32);
    }

    else
    {
      *(v25 + 4) = v26 + 1;
      *v26 = 32;
    }

    v70 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1));
    if (v70)
    {
      Int = mlir::IntegerAttr::getInt(&v70);
      v28 = &str_2_25;
      v29 = 5;
      if (Int == 1)
      {
        v28 = "intel";
      }

      else
      {
        v29 = 0;
      }

      if (Int)
      {
        v30 = v29;
      }

      else
      {
        v30 = 3;
      }

      if (Int)
      {
        v31 = v28;
      }

      else
      {
        v31 = "att";
      }
    }

    else
    {
      v31 = "att";
      v30 = 3;
    }

    v32 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v32, v31, v30);
    v8 = (*(a2 + 44) >> 23) & 1;
  }

  if (*(v7 + 16 * v8 + 40))
  {
    v33 = (*(*a3 + 16))(a3);
    v34 = *(v33 + 4);
    if (v34 >= *(v33 + 3))
    {
      llvm::raw_ostream::write(v33, 32);
    }

    else
    {
      *(v33 + 4) = v34 + 1;
      *v34 = 32;
    }

    v35 = (*(*a3 + 16))(a3);
    v36 = *(v35 + 4);
    if (*(v35 + 3) - v36 > 0xCuLL)
    {
      qmemcpy(v36, "operand_attrs", 13);
      *(v35 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v35, "operand_attrs", 0xDuLL);
    }

    v37 = (*(*a3 + 16))(a3);
    v38 = *(v37 + 4);
    if (v38 >= *(v37 + 3))
    {
      llvm::raw_ostream::write(v37, 32);
    }

    else
    {
      *(v37 + 4) = v38 + 1;
      *v38 = 32;
    }

    v39 = (*(*a3 + 16))(a3);
    v40 = *(v39 + 4);
    if (*(v39 + 3) == v40)
    {
      llvm::raw_ostream::write(v39, "=", 1uLL);
    }

    else
    {
      *v40 = 61;
      ++*(v39 + 4);
    }

    v41 = (*(*a3 + 16))(a3);
    v42 = *(v41 + 4);
    if (v42 >= *(v41 + 3))
    {
      llvm::raw_ostream::write(v41, 32);
    }

    else
    {
      *(v41 + 4) = v42 + 1;
      *v42 = 32;
    }

    (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 40));
  }

  v70 = v72;
  v71 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v70, "has_side_effects", 16);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v70, "is_align_stack", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v70, "asm_dialect", 11);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v70, "operand_attrs", 13);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v70, "asm_string", 10);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v70, "constraints", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v70, v71);
  v44 = (*(*a3 + 16))(a3);
  v45 = *(v44 + 4);
  if (v45 >= *(v44 + 3))
  {
    llvm::raw_ostream::write(v44, 32);
  }

  else
  {
    *(v44 + 4) = v45 + 1;
    *v45 = 32;
  }

  (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 8));
  v46 = (*(*a3 + 16))(a3);
  v47 = *(v46 + 4);
  if (*(v46 + 3) == v47)
  {
    llvm::raw_ostream::write(v46, ",", 1uLL);
  }

  else
  {
    *v47 = 44;
    ++*(v46 + 4);
  }

  v48 = (*(*a3 + 16))(a3);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  (*(*a3 + 48))(a3, *(v7 + 16 * ((*(a2 + 44) >> 23) & 1) + 16));
  v50 = (*(*a3 + 16))(a3);
  v51 = *(v50 + 4);
  if (v51 >= *(v50 + 3))
  {
    llvm::raw_ostream::write(v50, 32);
  }

  else
  {
    *(v50 + 4) = v51 + 1;
    *v51 = 32;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v52 = *(a2 + 72);
    v53 = *(a2 + 68);
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v66 = v52;
  v67 = v53;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v66);
  v54 = (*(*a3 + 16))(a3);
  v55 = *(v54 + 4);
  if (v55 >= *(v54 + 3))
  {
    llvm::raw_ostream::write(v54, 32);
  }

  else
  {
    *(v54 + 4) = v55 + 1;
    *v55 = 32;
  }

  v56 = (*(*a3 + 16))(a3);
  v57 = *(v56 + 4);
  if (*(v56 + 3) == v57)
  {
    llvm::raw_ostream::write(v56, ":", 1uLL);
  }

  else
  {
    *v57 = 58;
    ++*(v56 + 4);
  }

  v58 = (*(*a3 + 16))(a3);
  v59 = *(v58 + 4);
  if (v59 >= *(v58 + 3))
  {
    llvm::raw_ostream::write(v58, 32);
  }

  else
  {
    *(v58 + 4) = v59 + 1;
    *v59 = 32;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v60 = *(a2 + 72);
    v61 = *(a2 + 68);
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v66 = v60;
  v67 = 0;
  v68 = v60;
  v69 = v61;
  v62 = *(a2 + 36);
  v63 = a2 - 16;
  if (!v62)
  {
    v63 = 0;
  }

  v65[0] = v63;
  v65[1] = 0;
  v65[2] = v63;
  v65[3] = v62;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a3, &v66, v65);
  if (v70 != v72)
  {
    free(v70);
  }

  v64 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::LLVM::InlineAsmOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_27;
  }

  v4 = a1 + 16 * ((*(a1 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v5 = *(v4 + 72);
  v6 = (v4 + 64);
  if (v5)
  {
    v8 = v6[2];
    if (v8)
    {
      v10 = v6[3];
      v9 = v6[4];
      v11 = v6[5];
      v27[0] = a1;
      if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v5, "asm_string", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27))
      {
        v27[0] = a1;
        if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v8, "constraints", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27))
        {
          v27[0] = a1;
          if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v10, "has_side_effects", 16, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27))
          {
            v27[0] = a1;
            if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v9, "is_align_stack", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27))
            {
              v27[0] = a1;
              if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps33(v7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps33(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27))
              {
                v27[0] = a1;
                if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v11, "operand_attrs", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v27))
                {
                  if ((*(a1 + 46) & 0x80) != 0)
                  {
                    v12 = *(a1 + 68);
                    if (v12)
                    {
                      v13 = 0;
                      v14 = *(a1 + 72) + 24;
                      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v14 + 8) & 0xFFFFFFFFFFFFFFF8, v13))
                      {
                        ++v13;
                        v14 += 32;
                        if (v12 == v13)
                        {
                          goto LABEL_16;
                        }
                      }

                      goto LABEL_27;
                    }
                  }

LABEL_16:
                  v24 = 0;
                  v15 = *(a1 + 36);
                  if (v15 > 1)
                  {
                    v25[0] = "result group starting at #";
                    v26 = 259;
                    mlir::Operation::emitOpError(a1, v25, v27);
                    v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v27, &v24);
                    v17 = v16;
                    if (*v16)
                    {
                      mlir::Diagnostic::operator<<<37ul>((v16 + 1), " requires 0 or 1 element, but found ");
                    }

                    v23 = v15;
                    v18 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v17, &v23) + 200);
                    goto LABEL_23;
                  }

                  if (!v15 || mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(a1 - 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
                  {
                    v20 = 1;
                    goto LABEL_28;
                  }
                }
              }
            }
          }
        }
      }

LABEL_27:
      v20 = 0;
      goto LABEL_28;
    }

    v19 = "requires attribute 'constraints'";
  }

  else
  {
    v19 = "requires attribute 'asm_string'";
  }

  v25[0] = v19;
  v26 = 259;
  mlir::Operation::emitOpError(a1, v25, v27);
  v18 = v28;
LABEL_23:
  v20 = v18 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
LABEL_28:
  v21 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::printAssembly(uint64_t a1, mlir::Operation *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertElementOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InsertElementOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::LLVM::InsertElementOp::inferReturnTypes(a4, a5, &v18))
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
      v22 = "llvm.insertelement";
      v23 = 18;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InsertElementOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[9] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 56));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ",", 1uLL);
  }

  else
  {
    *v10 = 44;
    ++*(v9 + 4);
  }

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
  }

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 24));
  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, "[", 1uLL);
  }

  else
  {
    *v14 = 91;
    ++*(v13 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 88));
  v15 = (*(*a3 + 16))(a3);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if (*(v17 + 3) == v18)
  {
    llvm::raw_ostream::write(v17, ":", 1uLL);
  }

  else
  {
    *v18 = 58;
    ++*(v17 + 4);
  }

  v19 = (*(*a3 + 16))(a3);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, "]", 1uLL);
  }

  else
  {
    *v22 = 93;
    ++*(v21 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v31, 0);
  v24 = (*(*a3 + 16))(a3);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ":", 1uLL);
  }

  else
  {
    *v27 = 58;
    ++*(v26 + 4);
  }

  v28 = (*(*a3 + 16))(a3);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::LLVM::InsertElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyNOperands(a1, 3) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps12(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps18(a1, *(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps4(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) || (*(a1 + 36) ? (v5 = a1 - 16) : (v5 = 0), !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps12(a1, (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v12 = 0;
    goto LABEL_24;
  }

  v6 = *(a1 + 72);
  v7 = *(*(v6 + 24) + 8);
  v8 = *(*(v7 & 0xFFFFFFFFFFFFFFF8) + 136);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
  v10 = 24;
  if (v9)
  {
    v10 = 8;
  }

  if ((*(*(v6 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) != *((v7 & 0xFFFFFFFFFFFFFFF8) + v10))
  {
    v15 = "failed to verify that argument type matches vector element type";
LABEL_27:
    v16 = v15;
    v17 = 259;
    mlir::Operation::emitOpError(a1, &v16, v18);
    v12 = v18[200] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    goto LABEL_24;
  }

  if (*(a1 + 36))
  {
    v11 = a1 - 16;
  }

  else
  {
    v11 = 0;
  }

  if ((*(v11 + 8) ^ v7) >= 8)
  {
    v15 = "failed to verify that all of {res, vector} have same type";
    goto LABEL_27;
  }

  v12 = 1;
LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6E6F697469736F70)
  {
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + 24) == 8 && **(a3 + 16) == 0x6E6F697469736F70)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v4 = a4[1], *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
    {
      if (v4[2] == 64)
      {
        v5 = a4;
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

    *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v5;
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "position";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "position", 8uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v13 = v12[1], *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v13[2] != 64)
        {
          a5(&v20, a6);
          if (v20)
          {
            if (v20)
            {
              v18 = 0;
              v19 = v12;
              v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
              v16 = v22 + 24 * v23;
              v17 = *v15;
              *(v16 + 16) = *(v15 + 16);
              *v16 = v17;
              ++v23;
            }
          }

          goto LABEL_4;
        }

        *a3 = v12;
      }
    }

    result = 1;
    goto LABEL_12;
  }

  a5(&v20, a6);
  if (v20)
  {
    mlir::Diagnostic::operator<<<42ul>(v21, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  result = 0;
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "position";
    v11[1] = 8;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InsertValueOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InsertValueOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::LLVM::InsertValueOp::inferReturnTypes(a4, a5, &v18))
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
      v22 = "llvm.insertvalue";
      v23 = 16;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InsertValueOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v8[10] = v2;
  do
  {
    v4 = v8[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 10);
  result = v4 == a1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v25[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ",", 1uLL);
  }

  else
  {
    *v10 = 44;
    ++*(v9 + 4);
  }

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
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  v23 = v25;
  v24 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "position", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v23, v24);
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

  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ":", 1uLL);
  }

  else
  {
    *v17 = 58;
    ++*(v16 + 4);
  }

  v18 = (*(*a3 + 16))(a3);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  if (v23 != v25)
  {
    free(v23);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::LLVM::InsertValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyNOperands(a1, 2))
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (v5)
  {
    v28 = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(v5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v28) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps13(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps18(a1, *(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_23;
    }

    v6 = *(a1 + 36) ? a1 - 16 : 0;
    if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps13(a1, *(v6 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6))
    {
      goto LABEL_23;
    }

    if (*(a1 + 36))
    {
      v7 = a1 - 16;
    }

    else
    {
      v7 = 0;
    }

    if ((*(v7 + 8) ^ *(*(*(a1 + 72) + 24) + 8)) <= 7)
    {
      goto LABEL_20;
    }

    v8 = "failed to verify that all of {container, res} have same type";
  }

  else
  {
    v8 = "requires attribute 'position'";
  }

  v23[0] = v8;
  v24 = 259;
  mlir::Operation::emitOpError(a1, v23, &v28);
  v9 = v32;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  if (v9)
  {
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

LABEL_20:
  v22 = a1;
  v25 = &v22;
  ValueElementType = getInsertExtractValueElementType(llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::StringRef)>::callback_fn<mlir::LLVM::InsertValueOp::verify(void)::$_0>, &v25, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(a1 + 80) + 24), *(*(a1 + 80) + 32) >> 3);
  if (!ValueElementType)
  {
    goto LABEL_23;
  }

  if ((*(*(*(v22 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8) == ValueElementType)
  {
    v11 = 1;
  }

  else
  {
    v24 = 257;
    mlir::Operation::emitOpError(v22, v23, &v28);
    if (v28)
    {
      mlir::Diagnostic::operator<<<30ul>(v29, "Type mismatch: cannot insert ");
      if (v28)
      {
        v14 = *(*(*(v22 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
        v26 = 4;
        v27 = v14;
        v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
        v16 = v30 + 24 * v31;
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        ++v31;
        if (v28)
        {
          mlir::Diagnostic::operator<<<7ul>(v29, " into ");
          if (v28)
          {
            v18 = *(*(*(v22 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
            v26 = 4;
            v27 = v18;
            v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
            v20 = v30 + 24 * v31;
            v21 = *v19;
            *(v20 + 16) = *(v19 + 16);
            *v20 = v21;
            ++v31;
          }
        }
      }
    }

    v11 = v32 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  }

LABEL_24:
  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::IntToPtrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v9[25] = *MEMORY[0x277D85DE8];
  a5(&v8, a6);
  if (v8)
  {
    mlir::Diagnostic::operator<<<43ul>(v9, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[9] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[8] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v24[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, 0);
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
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
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

  (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 28532;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "to", 2uLL);
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

  if (*(a2 + 36))
  {
    v22 = a2 - 16;
  }

  else
  {
    v22 = 0;
  }

  (*(*a3 + 32))(a3, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::LLVM::IntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    if (*(a1 + 36))
    {
      v6 = a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps2(a1, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 <= 13)
  {
    if (a4 == 5)
    {
      if (*a3 != 1852785475 || *(a3 + 4) != 118)
      {
        goto LABEL_68;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
      goto LABEL_73;
    }

    if (a4 == 6)
    {
      if (*a3 != 1819042147 || *(a3 + 4) != 25957)
      {
        goto LABEL_68;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      goto LABEL_73;
    }

    v5 = 0;
    if (a4 == 9)
    {
      if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
      }

      else
      {
        if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
        {
          goto LABEL_68;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
      }

      goto LABEL_73;
    }
  }

  else
  {
    if (a4 > 18)
    {
      if (a4 == 19)
      {
        if (*a3 != 0x53646E617265706FLL || *(a3 + 8) != 0x6953746E656D6765 || *(a3 + 11) != 0x73657A6953746E65)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v5 = 0;
        if (a4 != 21)
        {
          return v5 | v4;
        }

        if (*a3 != 0x5F646E617265706FLL || *(a3 + 8) != 0x5F746E656D676573 || *(a3 + 13) != 0x73657A69735F746ELL)
        {
          goto LABEL_68;
        }
      }

      v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128, 4);
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
      return v5 | v4;
    }

    if (a4 == 14)
    {
      if (*a3 == 0x775F68636E617262 && *(a3 + 6) == 0x737468676965775FLL)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
      }

      else
      {
        if (*a3 != 0x6C646E75625F706FLL || *(a3 + 6) != 0x736761745F656C64)
        {
          goto LABEL_68;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      }

      goto LABEL_73;
    }

    v5 = 0;
    if (a4 == 15)
    {
      if (*a3 == 0x6C646E75625F706FLL && *(a3 + 7) == 0x73657A69735F656CLL)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      }

      else
      {
        if (*a3 != 0x6C6C61635F726176 || *(a3 + 7) != 0x657079745F65656CLL)
        {
LABEL_68:
          LOBYTE(v4) = 0;
          v5 = 0;
          return v5 | v4;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120);
      }

LABEL_73:
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
    }
  }

  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 <= 13)
  {
    switch(v5)
    {
      case 5:
        v20 = *v4;
        v21 = *(v4 + 4);
        if (v20 == 1852785475 && v21 == 118)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
            {
              v23 = a4;
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v23;
        }

        break;
      case 6:
        v33 = *v4;
        v34 = *(v4 + 2);
        if (v33 == 1819042147 && v34 == 25957)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
          {
            if (*(a4 + 24))
            {
              v41 = 0;
            }

            else
            {
              v41 = a4;
            }
          }

          else
          {
            v41 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88) = v41;
        }

        break;
      case 9:
        if (*v4 == 0x727474615F677261 && *(v4 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v40 = a4;
            }

            else
            {
              v40 = 0;
            }
          }

          else
          {
            v40 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v40;
        }

        else
        {
          v12 = *v4;
          v13 = *(v4 + 8);
          if (v12 == 0x727474615F736572 && v13 == 115)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
              {
                v15 = a4;
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

            *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112) = v15;
          }
        }

        break;
    }
  }

  else if (v5 > 18)
  {
    if (v5 == 19)
    {
      v16 = *v4 ^ 0x53646E617265706FLL;
      v17 = *(v4 + 1) ^ 0x6953746E656D6765;
      v18 = *(v4 + 11);
      v19 = 0x73657A6953746E65;
    }

    else
    {
      if (v5 != 21)
      {
        return result;
      }

      v16 = *v4 ^ 0x5F646E617265706FLL;
      v17 = *(v4 + 1) ^ 0x5F746E656D676573;
      v18 = *(v4 + 13);
      v19 = 0x73657A69735F746ELL;
    }

    if (v16 | v17 | v18 ^ v19)
    {
      v29 = 1;
    }

    else
    {
      v29 = a4 == 0;
    }

    if (!v29 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v30 = *(a4 + 8);
      if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v30[2] == 32 && *(a4 + 16) == 4)
      {
        v31 = *(a4 + 32);
        if (v31 >= 4)
        {
          return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128), *(a4 + 24), v31 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (v5 == 14)
  {
    if (*v4 == 0x775F68636E617262 && *(v4 + 6) == 0x737468676965775FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v36 = *(a4 + 8), *(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v36[2] == 32)
        {
          v37 = a4;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80) = v37;
    }

    else
    {
      v25 = *v4;
      v26 = *(v4 + 6);
      if (v25 == 0x6C646E75625F706FLL && v26 == 0x736761745F656C64)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v28 = a4;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104) = v28;
      }
    }
  }

  else if (v5 == 15)
  {
    if (*v4 == 0x6C646E75625F706FLL && *(v4 + 7) == 0x73657A69735F656CLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v38 = *(a4 + 8), *(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v38[2] == 32)
        {
          v39 = a4;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96) = v39;
    }

    else
    {
      v7 = *v4;
      v8 = *(v4 + 7);
      if (v7 == 0x6C6C61635F726176 && v8 == 0x657079745F65656CLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120) = v10;
      }
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = (v5 + 64);
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v38 = 261;
    v36 = "CConv";
    v37 = 5;
    v10 = mlir::StringAttr::get(v9, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = v7[1];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v38 = 261;
    v36 = "arg_attrs";
    v37 = 9;
    v13 = mlir::StringAttr::get(v12, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = v7[2];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v38 = 261;
    v36 = "branch_weights";
    v37 = 14;
    v16 = mlir::StringAttr::get(v15, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = v7[3];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v38 = 261;
    v36 = "callee";
    v37 = 6;
    v19 = mlir::StringAttr::get(v18, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = v7[4];
  if (v20)
  {
    v21 = *(**v20 + 32);
    v38 = 261;
    v36 = "op_bundle_sizes";
    v37 = 15;
    v22 = mlir::StringAttr::get(v21, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v22, v20);
  }

  v23 = v7[5];
  if (v23)
  {
    v24 = *(**v23 + 32);
    v38 = 261;
    v36 = "op_bundle_tags";
    v37 = 14;
    v25 = mlir::StringAttr::get(v24, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v25, v23);
  }

  v26 = v7[6];
  if (v26)
  {
    v27 = *(**v26 + 32);
    v38 = 261;
    v36 = "res_attrs";
    v37 = 9;
    v28 = mlir::StringAttr::get(v27, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v28, v26);
  }

  v29 = v7[7];
  if (v29)
  {
    v30 = *(**v29 + 32);
    v38 = 261;
    v36 = "var_callee_type";
    v37 = 15;
    v31 = mlir::StringAttr::get(v30, &v36, a3);
    mlir::NamedAttrList::push_back(a3, v31, v29);
  }

  v32 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (v7 + 8), 4);
  v33 = *(**v32 + 32);
  v38 = 261;
  v36 = "operandSegmentSizes";
  v37 = 19;
  v35 = mlir::StringAttr::get(v33, &v36, v34);
  mlir::NamedAttrList::push_back(a3, v35, v32);
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  if (v10)
  {
    v11 = v9[1];
    if (v11)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(v11, a4, a5))
      {
        return 0;
      }
    }
  }

  v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
  if (v13)
  {
    v14 = v12[1];
    if (v14)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v14, "arg_attrs", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
  if (v16)
  {
    v17 = v15[1];
    if (v17)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v17, "branch_weights", 14, a4, a5))
      {
        return 0;
      }
    }
  }

  v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
  if (v19)
  {
    v20 = v18[1];
    if (v20)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v20, "callee", 6, a4, a5))
      {
        return 0;
      }
    }
  }

  v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
  if (v22)
  {
    v23 = v21[1];
    if (v23)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v23, "op_bundle_sizes", 15, a4, a5))
      {
        return 0;
      }
    }
  }

  v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
  if (v25)
  {
    v26 = v24[1];
    if (v26)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v26, "op_bundle_tags", 14, a4, a5))
      {
        return 0;
      }
    }
  }

  v27 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 48));
  if (v28)
  {
    v29 = v27[1];
    if (v29)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v29, "res_attrs", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v30 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 56));
  return (v31 & 1) == 0 || (v32 = v30[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v32, "var_callee_type", 15, a4, a5);
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
    v4 = a4[1];
    v5 = a4[2];
    v6 = a4[4];
    a3[3] = a4[3];
    a3[4] = v6;
    a3[1] = v4;
    a3[2] = v5;
    if (*a3)
    {
      return;
    }
  }

  else
  {
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  *a3 = mlir::LLVM::CConvAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::LLVM::CConvAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v50 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v46, a6);
    if (v46)
    {
      mlir::Diagnostic::operator<<<42ul>(v47, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "CConv", 5uLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
      {
        a5(&v46, a6);
        if (v46)
        {
          goto LABEL_33;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
        goto LABEL_5;
      }

      *a3 = v14;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
  if (v16)
  {
    v14 = *(v15 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v46, a6);
        if (!v46)
        {
          goto LABEL_4;
        }

LABEL_33:
        if (v46)
        {
          LODWORD(v45[0]) = 0;
          v45[1] = v14;
          v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v48, v45, 1);
          v24 = v48 + 24 * v49;
          v25 = *v23;
          *(v24 + 16) = *(v23 + 16);
          *v24 = v25;
          ++v49;
        }

        goto LABEL_4;
      }

      a3[1] = v14;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "branch_weights", 0xEuLL);
  if (v18)
  {
    v14 = *(v17 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v19 = v14[1], *(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v19[2] != 32)
      {
        a5(&v46, a6);
        if (!v46)
        {
          goto LABEL_4;
        }

        goto LABEL_33;
      }

      a3[2] = v14;
    }
  }

  v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "callee", 6uLL);
  if (v21)
  {
    v22 = *(v20 + 8);
    v45[0] = v22;
    if (v22)
    {
      if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v22[3])
      {
        a5(&v46, a6);
        if (!v46)
        {
          goto LABEL_4;
        }

LABEL_62:
        if (v46)
        {
          mlir::Diagnostic::operator<<<mlir::Attribute &>(v47, v45);
        }

        goto LABEL_4;
      }

      a3[3] = v22;
    }
  }

  v26 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_sizes", 0xFuLL);
  if (v27)
  {
    v28 = *(v26 + 8);
    v45[0] = v28;
    if (v28)
    {
      if (*(*v28 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v29 = v28[1], *(*v29 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v29[2] != 32)
      {
        a5(&v46, a6);
        if (!v46)
        {
          goto LABEL_4;
        }

        goto LABEL_61;
      }

      a3[4] = v28;
    }
  }

  v30 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_tags", 0xEuLL);
  if (v31)
  {
    v32 = *(v30 + 8);
    v45[0] = v32;
    if (v32)
    {
      if (*(*v32 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v46, a6);
        if (!v46)
        {
          goto LABEL_4;
        }

        goto LABEL_62;
      }

      a3[5] = v32;
    }
  }

  v34 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
  if (v35)
  {
    v36 = *(v34 + 8);
    v45[0] = v36;
    if (v36)
    {
      if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v46, a6);
        if (!v46)
        {
          goto LABEL_4;
        }

        goto LABEL_62;
      }

      a3[6] = v36;
    }
  }

  v37 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "var_callee_type", 0xFuLL);
  if (v38)
  {
    v39 = *(v37 + 8);
    v45[0] = v39;
    if (v39)
    {
      if (*(*v39 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a5(&v46, a6);
        if (!v46)
        {
          goto LABEL_4;
        }

LABEL_61:
        mlir::Diagnostic::operator<<<61ul>(v47, v33);
        goto LABEL_62;
      }

      a3[7] = v39;
    }
  }

  v40 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v41 & 1) == 0 || (v42 = *(v40 + 8)) == 0) && ((v43 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v44 & 1) == 0) || (v42 = *(v43 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 8, 4, v42, a5, a6, "DenseI32ArrayAttr", 17))
  {
    result = 1;
    goto LABEL_6;
  }

LABEL_5:
  result = 0;
LABEL_6:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v43[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v41 = v43;
  v42 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v40 = 261;
    v38 = "CConv";
    v39 = 5;
    v9 = mlir::StringAttr::get(v8, &v38, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v41, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v40 = 261;
    v38 = "arg_attrs";
    v39 = 9;
    v12 = mlir::StringAttr::get(v11, &v38, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v41, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v40 = 261;
    v38 = "branch_weights";
    v39 = 14;
    v15 = mlir::StringAttr::get(v14, &v38, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v41, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v40 = 261;
    v38 = "callee";
    v39 = 6;
    v18 = mlir::StringAttr::get(v17, &v38, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v41, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v40 = 261;
    v38 = "op_bundle_sizes";
    v39 = 15;
    v21 = mlir::StringAttr::get(v20, &v38, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v41, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v40 = 261;
    v38 = "op_bundle_tags";
    v39 = 14;
    v24 = mlir::StringAttr::get(v23, &v38, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v41, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v40 = 261;
    v38 = "res_attrs";
    v39 = 9;
    v27 = mlir::StringAttr::get(v26, &v38, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v41, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v40 = 261;
    v38 = "var_callee_type";
    v39 = 15;
    v30 = mlir::StringAttr::get(v29, &v38, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v41, v30, v28);
  }

  v31 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, (v6 + 8), 4);
  v32 = *(**v31 + 32);
  v40 = 261;
  v38 = "operandSegmentSizes";
  v39 = 19;
  v34 = mlir::StringAttr::get(v32, &v38, v33);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v41, v34, v31);
  if (v42)
  {
    v35 = mlir::DictionaryAttr::get(v3, v41, v42);
  }

  else
  {
    v35 = 0;
  }

  if (v41 != v43)
  {
    free(v41);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  result = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 64);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = v5;
  *(a2 + 16) = result;
  *(a2 + 32) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2 || a3[1] != a2[1] || a3[2] != a2[2] || a3[3] != a2[3] || a3[4] != a2[4] || a3[5] != a2[5] || a3[6] != a2[6] || a3[7] != a2[7])
  {
    return 0;
  }

  return a3[8] == a2[8] && a3[9] == a2[9];
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::InvokeOp>::hashProperties(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = HIDWORD(a2[1]);
  v4 = HIDWORD(*a2) ^ (v2 >> 47) ^ v2;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v3);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a2[2];
  v8 = a2[3];
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v38 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v39 = v6;
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v14 = a2[4];
  v15 = a2[5];
  v16 = (8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14);
  v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ ((0x9DDFEA08EB382D69 * v16) >> 47) ^ (0x9DDFEA08EB382D69 * v16));
  v36 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v37 = v13;
  v18 = HIDWORD(v15);
  v19 = 0x9DDFEA08EB382D69 * ((8 * v15 - 0xAE502812AA7333) ^ HIDWORD(v15));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v21 = a2[6];
  v22 = a2[7];
  v23 = (8 * v21 - 0xAE502812AA7333) ^ HIDWORD(v21);
  v24 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ ((0x9DDFEA08EB382D69 * v23) >> 47) ^ (0x9DDFEA08EB382D69 * v23));
  v34 = 0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47));
  v35 = v20;
  v25 = HIDWORD(v22);
  v26 = 0x9DDFEA08EB382D69 * ((8 * v22 - 0xAE502812AA7333) ^ HIDWORD(v22));
  v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v26 >> 47) ^ v26)) >> 47));
  v27 = a2[9];
  v28 = __ROR8__(v27 + 16, 16);
  v29 = 0x9DDFEA08EB382D69 * (a2[8] ^ v28 ^ 0xFF51AFD7ED558CCDLL);
  v32 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) ^ ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) >> 47))) ^ v27;
  memset(v41, 0, sizeof(v41));
  v42 = 0xFF51AFD7ED558CCDLL;
  v40 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v4) ^ ((0x9DDFEA08EB382D69 * v4) >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v40, 0, v41, &v41[3] + 8, &v39, &v38, &v37, &v36, &v35, &v34, &v33, &v32);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::CConvAttr>(a1, v3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FlatSymbolRefAttr>(a1, v3 + 3) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 4) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 5))
  {
    goto LABEL_18;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_18:
      result = 0;
      goto LABEL_19;
    }

    if (*(v9 + 16) >= 5)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_18;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 8, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 6) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v3 + 7))
  {
    goto LABEL_18;
  }

  v10[0] = a1;
  v10[1] = (v3 + 8);
  result = mlir::LLVM::InvokeOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(v10) & 1;
LABEL_19:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  (*(*a3 + 24))(a3, *(v6 + 8));
  (*(*a3 + 24))(a3, *(v6 + 16));
  (*(*a3 + 24))(a3, *(v6 + 24));
  (*(*a3 + 16))(a3, *(v6 + 32));
  (*(*a3 + 24))(a3, *(v6 + 40));
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 64, 4);
    (*(*a3 + 16))(a3, v8);
  }

  (*(*a3 + 24))(a3, *(v6 + 48));
  (*(*a3 + 24))(a3, *(v6 + 56));
  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 64), 4);
  }

  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::getSuccessorBlockArgument(int a1, uint64_t a2, unsigned int a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  if (v3)
  {
    v6 = 0;
    v7 = a2 + 64;
    v8 = 24;
    while (1)
    {
      mlir::LLVM::InvokeOp::getSuccessorOperands(v15, a2, v6);
      BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(v15, a3, *(((v7 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + v8));
      v11 = v10;
      if (v16 != v17)
      {
        free(v16);
      }

      if (v11)
      {
        break;
      }

      ++v6;
      v8 += 32;
      if (v3 == v6)
      {
        v12 = 0;
        goto LABEL_10;
      }
    }

    v12 = BranchSuccessorArgument;
LABEL_10:
    result = v12 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::getCallableForCallee(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
  if (v2)
  {
    return v2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return *(*(a2 + 72) + 24) | 4;
  }
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = (a3 & 0xFFFFFFFFFFFFFFF8);
  if (*(v3 + 88))
  {
    *(v3 + 88) = v4;
  }

  else
  {
    v5 = *(a2 + 72);
    v6 = v5[1];
    if (v6)
    {
      v7 = *v5;
      *v6 = *v5;
      if (v7)
      {
        *(v7 + 8) = v5[1];
      }
    }

    v5[3] = v4;
    v8 = *v4;
    *v5 = *v4;
    v5[1] = v4;
    if (v8)
    {
      *(v8 + 8) = v5;
    }

    *v4 = v5;
  }
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  v4 = *(v3 + 128);
  if ((v2 & 0x800000) != 0)
  {
    v5 = *(a2 + 72);
  }

  else
  {
    v5 = 0;
  }

  return v5 + 32 * (*(v3 + 88) == 0);
}

double mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::getArgOperandsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1 + 16 * ((*(a1 + 44) >> 23) & 1);
  v3 = *(v2 + 88) == 0;
  LODWORD(v2) = *(v2 + 128);
  *a2 = a1;
  *(a2 + 8) = v3;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *InterfaceFor, uint64_t a3)
{
  v4 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v4, InterfaceFor, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

uint64_t mlir::LLVM::detail::BranchWeightOpInterfaceInterfaceTraits::Model<mlir::LLVM::InvokeOp>::setBranchWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 44);
  result = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), *(a3 + 24), *(a3 + 32) >> 2);
  *(a2 + 16 * ((v4 >> 23) & 1) + 80) = result;
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::NSuccessors<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NSuccessors<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v94 = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2 + 64;
  v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 24);
  if (v9)
  {
    v10 = *(v9 + 8);
    v11 = *(v10 + 16);
    v5 = *(v10 + 24);
  }

  else
  {
    v11 = 0;
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

  v14 = *(*(v8 + 16 * ((*(a2 + 44) >> 23) & 1)) + 8);
  if (v14)
  {
    v15 = mlir::LLVM::cconv::stringifyCConv(v14);
    v17 = v16;
    v18 = (*(*a3 + 16))(a3);
    llvm::raw_ostream::operator<<(v18, v15, v17);
    v19 = (*(*a3 + 16))(a3);
    v20 = *(v19 + 4);
    if (v20 >= *(v19 + 3))
    {
      llvm::raw_ostream::write(v19, 32);
      if (v9)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  if (v9)
  {
LABEL_11:
    (*(*a3 + 88))(a3, v11, v5);
    goto LABEL_14;
  }

LABEL_13:
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
LABEL_14:
  v21 = (*(*a3 + 16))(a3);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 40);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 40;
  }

  v23 = *(a2 + 44);
  v24 = *(v8 + 16 * ((v23 >> 23) & 1) + 64);
  if ((v23 & 0x800000) != 0)
  {
    v25 = *(a2 + 72);
  }

  else
  {
    v25 = 0;
  }

  v26 = v9 == 0;
  *&v81 = v25 + 32 * v26;
  *(&v81 + 1) = (__PAIR128__(v24, v9) - 1) >> 64;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v81);
  v27 = (*(*a3 + 16))(a3);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 41);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 41;
  }

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (*(v29 + 3) - v30 > 3uLL)
  {
    *v30 = 544175136;
    *(v29 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v29, " to ", 4uLL);
  }

  v31 = *(a2 + 44);
  v32 = v8 + 16 * ((v31 >> 23) & 1);
  v33 = *(((v32 + ((v31 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  v34 = *(v32 + 64);
  v35 = *(v32 + 68);
  if ((v31 & 0x800000) != 0)
  {
    v36 = *(a2 + 72);
  }

  else
  {
    v36 = 0;
  }

  (*(*a3 + 184))(a3, v33, (v36 + 32 * v34) & 0xFFFFFFFFFFFFFFF9 | 2, (v35 + v34) - v34);
  v37 = (*(*a3 + 16))(a3);
  v38 = *(v37 + 4);
  if (*(v37 + 3) - v38 > 7uLL)
  {
    *v38 = 0x20646E69776E7520;
    *(v37 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v37, " unwind ", 8uLL);
  }

  v39 = *(a2 + 44);
  v40 = (v8 + 16 * ((v39 >> 23) & 1));
  v41 = *(((v40 + ((v39 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
  v42 = (v40[17] + v40[16]);
  v43 = v40[18];
  if ((v39 & 0x800000) != 0)
  {
    v44 = *(a2 + 72);
  }

  else
  {
    v44 = 0;
  }

  (*(*a3 + 184))(a3, v41, (v44 + 32 * v42) & 0xFFFFFFFFFFFFFFF9 | 2, (v43 + v42) - v42);
  v45 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 56);
  if (v45)
  {
    v46 = *(v45 + 8);
    v47 = (*(*a3 + 16))(a3);
    v48 = *(v47 + 4);
    if (*(v47 + 3) - v48 > 7uLL)
    {
      *v48 = 0x2867726172617620;
      *(v47 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v47, " vararg(", 8uLL);
    }

    (*(*a3 + 32))(a3, v46);
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

  if (*(*(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 32) + 16))
  {
    v51 = (*(*a3 + 16))(a3);
    v52 = *(v51 + 4);
    if (*(v51 + 3) == v52)
    {
      llvm::raw_ostream::write(v51, " ", 1uLL);
    }

    else
    {
      *v52 = 32;
      ++*(v51 + 4);
    }

    v53 = *(a2 + 44);
    v54 = v8 + 16 * ((v53 >> 23) & 1);
    if ((v53 & 0x800000) != 0)
    {
      v55 = *(a2 + 72);
    }

    else
    {
      v55 = 0;
    }

    v56 = (*(v54 + 68) + *(v54 + 64) + *(v54 + 72));
    v57 = *(v54 + 32);
    v58 = *(v57 + 16);
    *&v81 = v55 + 32 * v56;
    *(&v81 + 1) = v57;
    v82 = 0;
    v83 = v58;
    if ((v53 & 0x800000) != 0)
    {
      v59 = *(a2 + 72);
    }

    else
    {
      v59 = 0;
    }

    *&v90 = v59 + 32 * v56;
    *(&v90 + 1) = v57;
    v91 = 0;
    v92 = v58;
    mlir::TypeRangeRange::TypeRangeRange<mlir::OperandRangeRange>(v93, 0, v58, &v90);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v61 = *(AttrDictionary + 8);
  v62 = *(AttrDictionary + 16);
  v63 = *(*(a2 + 48) + 96);
  v81 = *(v63[3] + 16);
  v82 = "operandSegmentSizes";
  v83 = 19;
  v84 = *(*v63 + 16);
  v85 = *(v63[7] + 16);
  v86 = *(v63[4] + 16);
  v87 = *(v63[5] + 16);
  v88 = *(v63[1] + 16);
  v89 = *(v63[6] + 16);
  (*(*a3 + 192))(a3, v61, v62, &v81, 8);
  v64 = (*(*a3 + 16))(a3);
  v65 = *(v64 + 4);
  if ((*(v64 + 3) - v65) > 2)
  {
    *(v65 + 2) = 32;
    *v65 = 14880;
    *(v64 + 4) += 3;
    if (!v9)
    {
      goto LABEL_52;
    }
  }

  else
  {
    llvm::raw_ostream::write(v64, " : ", 3uLL);
    if (!v9)
    {
LABEL_52:
      (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v66 = (*(*a3 + 16))(a3);
      v67 = *(v66 + 4);
      if (*(v66 + 3) - v67 > 1uLL)
      {
        *v67 = 8236;
        *(v66 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v66, ", ", 2uLL);
      }
    }
  }

  v68 = *(a2 + 44);
  v69 = v8 + 16 * ((v68 >> 23) & 1);
  v70 = *(v69 + 64);
  if ((v68 & 0x800000) != 0)
  {
    v71 = *(a2 + 72);
  }

  else
  {
    v71 = 0;
  }

  v72 = (__PAIR128__(v70, v9) - 1) >> 64;
  v73 = (v71 + 32 * v26) & 0xFFFFFFFFFFFFFFF8;
  if (v73)
  {
    v74 = v70 == v26;
  }

  else
  {
    v74 = 1;
  }

  if (v74)
  {
    v75 = 0;
  }

  else
  {
    v75 = v73 | 4;
  }

  v76 = *(v69 + 8);
  v77 = *(a2 + 36);
  v78 = (a2 - 16);
  if (!v77)
  {
    v78 = 0;
  }

  v81 = v78;
  v82 = v78;
  v83 = v77;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v90, &v81);
  result = mlir::call_interface_impl::printFunctionSignature(a3, v75, v72, v76, 0, v90, *(&v90 + 1), *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 48), 0, 1u);
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::LLVM::InvokeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v90 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyNSuccessors(a1, 2))
  {
    goto LABEL_57;
  }

  v3 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v3))
  {
    goto LABEL_57;
  }

  v4 = a1 + 64;
  v5 = (a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  v6 = v5[4];
  if (!v6)
  {
    v81[0] = "requires attribute 'op_bundle_sizes'";
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v84);
    v35 = v89;
    goto LABEL_38;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  v11 = v5[5];
  v12 = v5[6];
  v13 = v5[7];
  v84 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v13, "var_callee_type", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v84))
  {
    goto LABEL_57;
  }

  v84 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v10, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v84))
  {
    goto LABEL_57;
  }

  v84 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v8, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v84))
  {
    goto LABEL_57;
  }

  v84 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v12, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v84))
  {
    goto LABEL_57;
  }

  v84 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v9, "branch_weights", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v84))
  {
    goto LABEL_57;
  }

  v84 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(v7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v84))
  {
    goto LABEL_57;
  }

  v84 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v6, "op_bundle_sizes", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v84))
  {
    goto LABEL_57;
  }

  v84 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v11, "op_bundle_tags", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v84))
  {
    goto LABEL_57;
  }

  v14 = *(a1 + 44);
  v15 = *(v4 + 16 * ((v14 >> 23) & 1) + 64);
  if ((v14 & 0x800000) != 0)
  {
    v16 = *(a1 + 72);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    if (v15)
    {
LABEL_17:
      v17 = 0;
      v18 = v16 + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v18 + 8) & 0xFFFFFFFFFFFFFFF8, v17))
      {
        ++v17;
        v18 += 32;
        if (v15 == v17)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_57;
    }
  }

LABEL_20:
  ODSOperands = mlir::LLVM::InvokeOp::getODSOperands(a1, 1u);
  if (v20)
  {
    v21 = v20;
    v22 = ODSOperands + 24;
    while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v22 + 8) & 0xFFFFFFFFFFFFFFF8, v15))
    {
      LODWORD(v15) = v15 + 1;
      v22 += 32;
      if (!--v21)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_57;
  }

LABEL_24:
  v23 = mlir::LLVM::InvokeOp::getODSOperands(a1, 2u);
  if (v24)
  {
    v25 = v24;
    v26 = v23 + 24;
    while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v26 + 8) & 0xFFFFFFFFFFFFFFF8, v15))
    {
      LODWORD(v15) = v15 + 1;
      v26 += 32;
      if (!--v25)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_57;
  }

LABEL_28:
  v27 = mlir::LLVM::InvokeOp::getODSOperands(a1, 3u);
  v29 = v28;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "op_bundle_sizes", 0xFuLL, "op_bundle_operands", 0x12uLL, v28))
  {
    goto LABEL_57;
  }

  if (v29)
  {
    v31 = v27 + 24;
    while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v31 + 8) & 0xFFFFFFFFFFFFFFF8, v15))
    {
      LODWORD(v15) = v15 + 1;
      v31 += 32;
      if (!--v29)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_57;
  }

LABEL_33:
  LODWORD(v80) = 0;
  v32 = *(a1 + 36);
  if (v32 > 1)
  {
    v81[0] = "result group starting at #";
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v84);
    v33 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v84, &v80);
    v34 = v33;
    if (*v33)
    {
      mlir::Diagnostic::operator<<<37ul>((v33 + 1), " requires 0 or 1 element, but found ");
    }

    v83[0] = v32;
    v35 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v34, v83) + 200);
LABEL_38:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v84);
    if (v35)
    {
      goto LABEL_57;
    }

    goto LABEL_39;
  }

  if (v32 && !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(a1 - 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    goto LABEL_57;
  }

LABEL_39:
  v36 = *(a1 + 40);
  if (v36)
  {
    v37 = 0;
    do
    {
      mlir::LLVM::InvokeOp::getSuccessorOperands(&v84, a1, v37);
      v38 = mlir::detail::verifyBranchSuccessorOperands(a1, v37, &v84);
      if (v86 != &v88)
      {
        free(v86);
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    while (v36 != ++v37);
  }

  if (mlir::OpTrait::impl::verifyIsTerminator(a1, v30))
  {
    v39 = *(a1 + 44);
    v40 = v4 + 16 * ((v39 >> 23) & 1);
    v41 = *(v40 + 56);
    if (!v41)
    {
      goto LABEL_80;
    }

    v42 = *(v41 + 8);
    if (*(v42 + 32) == 1)
    {
      v44 = *(v42 + 16);
      v43 = *(v42 + 24);
      v45 = *(v40 + 64);
      v46 = *(v40 + 24) == 0;
      if ((v39 & 0x800000) != 0)
      {
        if (v45 - v46 < v43)
        {
LABEL_50:
          v81[0] = "expected var_callee_type to have at most ";
          v82 = 259;
          mlir::Operation::emitOpError(a1, v81, &v84);
          v47 = v4 + 16 * ((*(a1 + 44) >> 23) & 1);
          v83[0] = (__PAIR128__(*(v47 + 64), *(v47 + 24)) - 1) >> 64;
          v48 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v84, v83);
          v49 = v48;
          if (*v48)
          {
            mlir::Diagnostic::operator<<<12ul>((v48 + 1), " parameters");
          }

          v50 = *(v49 + 200);
LABEL_56:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v84);
          if (v50)
          {
            goto LABEL_57;
          }

LABEL_80:
          v68 = *(a1 + 44);
          v69 = v4 + 16 * ((v68 >> 23) & 1);
          v70 = *(((v69 + ((v68 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
          if (*(v70 + 32) == v70 + 32)
          {
            v71 = "must have at least one operation in unwind destination";
          }

          else
          {
            if (*(*(*(v70 + 40) + 48) + 16) == &unk_27FC1FF90)
            {
              v73 = *(v69 + 40);
              v74 = *(*(v69 + 32) + 16);
              if (v73)
              {
                v75 = *(v73 + 16);
                if (v75)
                {
                  v76 = *(v73 + 8);
                  v77 = 8 * v75;
                  while (*(**v76 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
                  {
                    v76 += 8;
                    v77 -= 8;
                    if (!v77)
                    {
                      goto LABEL_93;
                    }
                  }

                  v71 = "operand bundle tag must be a StringAttr";
                  goto LABEL_84;
                }
              }

              else
              {
                v75 = 0;
              }

LABEL_93:
              v83[0] = v74;
              v80 = v75;
              if (v74 == v75)
              {
                v52 = 1;
                goto LABEL_58;
              }

              v81[0] = "expected ";
              v82 = 259;
              mlir::Operation::emitError(&v84, a1, v81);
              v78 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v84, v83);
              v79 = v78;
              if (*v78)
              {
                mlir::Diagnostic::operator<<<40ul>((v78 + 1), " operand bundle tags, but actually got ");
              }

              v72 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v79, &v80) + 200);
              goto LABEL_85;
            }

            v71 = "first operation in unwind destination should be a llvm.landingpad operation";
          }

LABEL_84:
          v81[0] = v71;
          v82 = 259;
          mlir::Operation::emitError(&v84, a1, v81);
          v72 = v89;
LABEL_85:
          v52 = v72 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v84);
          goto LABEL_58;
        }

        v55 = *(a1 + 72);
      }

      else
      {
        if (v45 - v46 < v43)
        {
          goto LABEL_50;
        }

        v55 = 0;
      }

      if (v43)
      {
        v56 = v45 == v46;
      }

      else
      {
        v56 = 1;
      }

      if (!v56)
      {
        v61 = ~v46 + v45;
        v62 = v55 + 32 * v46 + 24;
        v63 = 8 * v43 - 8;
        while (1)
        {
          v64 = *v62;
          if (*v44 != (*(*v62 + 8) & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          v66 = v61-- != 0;
          if (v63)
          {
            ++v44;
            v62 += 32;
            v63 -= 8;
            if (v66)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        v82 = 257;
        mlir::Operation::emitOpError(a1, v81, &v84);
        if (!v84)
        {
          goto LABEL_55;
        }

        mlir::Diagnostic::operator<<<42ul>(v85, "var_callee_type parameter type mismatch: ");
        if (!v84)
        {
          goto LABEL_55;
        }

        mlir::Diagnostic::operator<<<mlir::Type const&>(v85, v44);
        if (!v84)
        {
          goto LABEL_55;
        }

        mlir::Diagnostic::operator<<<5ul>(v85, " != ");
        v83[0] = *(v64 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (!v84)
        {
          goto LABEL_55;
        }

        goto LABEL_102;
      }

LABEL_65:
      if (*(a1 + 36))
      {
        if ((*(a1 - 8) & 0xFFFFFFFFFFFFFFF8) == *(v42 + 8))
        {
          goto LABEL_80;
        }

        v81[0] = "var_callee_type return type mismatch: ";
        v82 = 259;
        mlir::Operation::emitOpError(a1, v81, &v84);
        if (!v84)
        {
          goto LABEL_55;
        }

        v57 = *(v42 + 8);
        LODWORD(v83[0]) = 4;
        v83[1] = v57;
        v58 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v86, v83, 1);
        v59 = v86 + 24 * v87;
        v60 = *v58;
        *(v59 + 2) = *(v58 + 16);
        *v59 = v60;
        ++v87;
        if (!v84)
        {
          goto LABEL_55;
        }

        mlir::Diagnostic::operator<<<5ul>(v85, " != ");
        v83[0] = *(a1 - 8) & 0xFFFFFFFFFFFFFFF8;
        if (!v84)
        {
          goto LABEL_55;
        }

LABEL_102:
        mlir::Diagnostic::operator<<<mlir::Type>(v85, v83);
        goto LABEL_55;
      }

      v67 = *(**(v42 + 8) + 136);
      if (v67 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
      {
        goto LABEL_80;
      }

      v51 = "expected var_callee_type to return void";
    }

    else
    {
      v51 = "expected var_callee_type to be a variadic function type";
    }

    v81[0] = v51;
    v82 = 259;
    mlir::Operation::emitOpError(a1, v81, &v84);
LABEL_55:
    v50 = v89;
    goto LABEL_56;
  }

LABEL_57:
  v52 = 0;
LABEL_58:
  v53 = *MEMORY[0x277D85DE8];
  return v52 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::LLVMFuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v6 = 0;
  switch(a4)
  {
    case 5:
      if (*a3 == 1852785475 && *(a3 + 4) == 118)
      {
        goto LABEL_289;
      }

      goto LABEL_255;
    case 6:
      if (*a3 != 1684893539 || *(a3 + 4) != 29793)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 168);
      goto LABEL_289;
    case 7:
      if (*a3 == 1802398060 && *(a3 + 3) == 1701273963)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 256);
        goto LABEL_289;
      }

      if (*a3 == 1952671091 && *(a3 + 3) == 1852795252)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 352);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 8:
      if (*a3 == 0x656D616E5F6D7973)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 360);
      }

      else
      {
        if (*a3 != 0x7570635F656E7574)
        {
          goto LABEL_255;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 392);
      }

      goto LABEL_289;
    case 9:
      if (*a3 == 0x6E656D6E67696C61 && *(a3 + 8) == 116)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
        goto LABEL_289;
      }

      if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
        goto LABEL_289;
      }

      if (*a3 == 0x7A5F6E695F6D7261 && *(a3 + 8) == 97)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
        goto LABEL_289;
      }

      if (*a3 == 0x61636F6C5F6F7364 && *(a3 + 8) == 108)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 200);
        goto LABEL_289;
      }

      if (*a3 == 0x6E696C6E695F6F6ELL && *(a3 + 8) == 101)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 280);
        goto LABEL_289;
      }

      if (*a3 == 0x6E69776E755F6F6ELL && *(a3 + 8) == 100)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 304);
        goto LABEL_289;
      }

      if (*a3 == 0x727474615F736572 && *(a3 + 8) == 115)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 344);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 10:
      if (*a3 == 0x5F77656E5F6D7261 && *(a3 + 8) == 24954)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128);
        goto LABEL_289;
      }

      if (*a3 == 0x5F74756F5F6D7261 && *(a3 + 8) == 24954)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 136);
        goto LABEL_289;
      }

      if (*a3 == 0x65677265766E6F63 && *(a3 + 8) == 29806)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 176);
        goto LABEL_289;
      }

      if (*a3 == 0x635F746567726174 && *(a3 + 8) == 30064)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 376);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 11:
      if (*a3 == 0x72746E6F635F7066 && *(a3 + 3) == 0x74636172746E6F63)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 208);
        goto LABEL_289;
      }

      if (*a3 == 0x6F72687473736170 && *(a3 + 3) == 0x6867756F72687473)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 320);
        goto LABEL_289;
      }

      if (*a3 == 0x6C616E6F73726570 && *(a3 + 3) == 0x7974696C616E6F73)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 328);
        goto LABEL_289;
      }

      if (*a3 == 0x696C696269736976 && *(a3 + 3) == 0x5F7974696C696269)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 424);
        goto LABEL_289;
      }

      if (*a3 == 0x7465725F6C6C6977 && *(a3 + 3) == 0x6E72757465725F6CLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 440);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 12:
      if (*a3 == 0x756F6E695F6D7261 && *(a3 + 8) == 1635409780)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
        goto LABEL_289;
      }

      if (*a3 == 0x5F64656D616E6E75 && *(a3 + 8) == 1919181921)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 400);
        goto LABEL_289;
      }

      if (*a3 == 0x725F656C61637376 && *(a3 + 8) == 1701277281)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 432);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 13:
      if (*a3 == 0x695F737961776C61 && *(a3 + 5) == 0x656E696C6E695F73)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
        goto LABEL_289;
      }

      if (*a3 == 0x657274735F6D7261 && *(a3 + 5) == 0x676E696D61657274)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 152);
        goto LABEL_289;
      }

      if (*a3 == 0x6F705F656D617266 && *(a3 + 5) == 0x7265746E696F705FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 216);
        goto LABEL_289;
      }

      if (*a3 == 0x6E6F6974636E7566 && *(a3 + 5) == 0x657079745F6E6F69)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 232);
        goto LABEL_289;
      }

      if (*a3 == 0x657A696D6974706FLL && *(a3 + 5) == 0x656E6F6E5F657A69)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 312);
        goto LABEL_289;
      }

      if (*a3 == 0x657079745F636576 && *(a3 + 5) == 0x746E69685F657079)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 416);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 14:
      if (*a3 == 0x655F79726F6D656DLL && *(a3 + 6) == 0x737463656666655FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 264);
        goto LABEL_289;
      }

      if (*a3 == 0x697369765F6D7973 && *(a3 + 6) == 0x7974696C69626973)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 368);
        goto LABEL_289;
      }

      if (*a3 == 0x665F656661736E75 && *(a3 + 6) == 0x6874616D5F70665FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 408);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 15:
      if (*a3 == 0x5F73666E695F6F6ELL && *(a3 + 7) == 0x6874616D5F70665FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 272);
        goto LABEL_289;
      }

      if (*a3 == 0x5F736E616E5F6F6ELL && *(a3 + 7) == 0x6874616D5F70665FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 288);
        goto LABEL_289;
      }

      if (*a3 == 0x665F746567726174 && *(a3 + 7) == 0x7365727574616566)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 384);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 16:
      if (*a3 == 0x736572705F6D7261 && *(a3 + 8) == 0x617A5F7365767265)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 144);
        goto LABEL_289;
      }

      if (*a3 == 0x6C616D726F6E6564 && *(a3 + 8) == 0x6874616D5F70665FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 184);
        goto LABEL_289;
      }

      if (*a3 == 0x4365676162726167 && *(a3 + 8) == 0x726F7463656C6C6FLL)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 240);
        goto LABEL_289;
      }

      goto LABEL_255;
    case 17:
    case 18:
    case 22:
      return v6 | v4;
    case 19:
      if (*a3 != 0x665F786F72707061 || *(a3 + 8) != 0x6D5F70665F636E75 || *(a3 + 11) != 0x6874616D5F70665FLL)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
      goto LABEL_289;
    case 20:
      if (*a3 == 0x6C616D726F6E6564 && *(a3 + 8) == 0x6874616D5F70665FLL && *(a3 + 16) == 842229343)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 192);
      }

      else if (*a3 == 0x6E6F6974636E7566 && *(a3 + 8) == 0x635F7972746E655FLL && *(a3 + 16) == 1953396079)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 224);
      }

      else if (*a3 == 0x726F775F64716572 && *(a3 + 8) == 0x5F70756F72675F6BLL && *(a3 + 16) == 1702521203)
      {
        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 336);
      }

      else
      {
        if (*a3 != 0x6F72675F6B726F77 || *(a3 + 8) != 0x5F657A69735F7075 || *(a3 + 16) != 1953393000)
        {
LABEL_255:
          v4 = 0;
          v6 = 0;
          return v6 | v4;
        }

        v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 448);
      }

LABEL_289:
      v64 = *v5;
      v6 = v64 & 0xFFFFFFFFFFFFFF00;
      v4 = v64;
      return v6 | v4;
    case 21:
      if (*a3 != 0x61636F6C5F6D7261 || *(a3 + 8) != 0x657274735F796C6CLL || *(a3 + 13) != 0x676E696D61657274)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120);
      goto LABEL_289;
    case 23:
      if (*a3 != 0x656E6769735F6F6ELL || *(a3 + 8) != 0x5F736F72657A5F64 || *(a3 + 15) != 0x6874616D5F70665FLL)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 296);
      goto LABEL_289;
    case 24:
      if (*a3 != 0x657274735F6D7261 || *(a3 + 8) != 0x6F635F676E696D61 || *(a3 + 16) != 0x656C62697461706DLL)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 160);
      goto LABEL_289;
    case 25:
      if (*a3 != 0x65725F6C65746E69 || *(a3 + 8) != 0x675F6275735F6471 || *(a3 + 16) != 0x7A69735F70756F72 || *(a3 + 24) != 101)
      {
        goto LABEL_255;
      }

      v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 248);
      goto LABEL_289;
    default:
      v6 = 0;
      return v6 | v4;
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  v6 = *(a3 + 16);
  switch(*(a3 + 24))
  {
    case 5:
      v7 = *v6;
      v8 = *(v6 + 4);
      if (v7 == 1852785475 && v8 == 118)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
          {
            v10 = a4;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        v5[8] = v10;
      }

      break;
    case 6:
      v47 = *v6;
      v48 = *(v6 + 2);
      if (v47 == 1684893539 && v48 == 29793)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
          {
            v50 = a4;
          }

          else
          {
            v50 = 0;
          }
        }

        else
        {
          v50 = 0;
        }

        v5[21] = v50;
      }

      break;
    case 7:
      if (*v6 == 1802398060 && *(v6 + 3) == 1701273963)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
          {
            v134 = a4;
          }

          else
          {
            v134 = 0;
          }
        }

        else
        {
          v134 = 0;
        }

        v5[32] = v134;
      }

      else
      {
        v66 = *v6;
        v67 = *(v6 + 3);
        if (v66 == 1952671091 && v67 == 1852795252)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v69 = a4;
            }

            else
            {
              v69 = 0;
            }
          }

          else
          {
            v69 = 0;
          }

          v5[44] = v69;
        }
      }

      break;
    case 8:
      if (*v6 == 0x656D616E5F6D7973)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v133 = a4;
          }

          else
          {
            v133 = 0;
          }
        }

        else
        {
          v133 = 0;
        }

        v5[45] = v133;
      }

      else if (*v6 == 0x7570635F656E7574)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v64 = a4;
          }

          else
          {
            v64 = 0;
          }
        }

        else
        {
          v64 = 0;
        }

        v5[49] = v64;
      }

      break;
    case 9:
      if (*v6 == 0x6E656D6E67696C61 && *(v6 + 8) == 116)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v130 = a4;
          }

          else
          {
            v130 = 0;
          }
        }

        else
        {
          v130 = 0;
        }

        v5[9] = v130;
      }

      else if (*v6 == 0x727474615F677261 && *(v6 + 8) == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v142 = a4;
          }

          else
          {
            v142 = 0;
          }
        }

        else
        {
          v142 = 0;
        }

        v5[12] = v142;
      }

      else if (*v6 == 0x7A5F6E695F6D7261 && *(v6 + 8) == 97)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v151 = a4;
          }

          else
          {
            v151 = 0;
          }
        }

        else
        {
          v151 = 0;
        }

        v5[13] = v151;
      }

      else if (*v6 == 0x61636F6C5F6F7364 && *(v6 + 8) == 108)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v155 = a4;
          }

          else
          {
            v155 = 0;
          }
        }

        else
        {
          v155 = 0;
        }

        v5[25] = v155;
      }

      else if (*v6 == 0x6E696C6E695F6F6ELL && *(v6 + 8) == 101)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v158 = a4;
          }

          else
          {
            v158 = 0;
          }
        }

        else
        {
          v158 = 0;
        }

        v5[35] = v158;
      }

      else if (*v6 == 0x6E69776E755F6F6ELL && *(v6 + 8) == 100)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v160 = a4;
          }

          else
          {
            v160 = 0;
          }
        }

        else
        {
          v160 = 0;
        }

        v5[38] = v160;
      }

      else
      {
        v36 = *v6;
        v37 = *(v6 + 8);
        if (v36 == 0x727474615F736572 && v37 == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v39 = a4;
            }

            else
            {
              v39 = 0;
            }
          }

          else
          {
            v39 = 0;
          }

          v5[43] = v39;
        }
      }

      break;
    case 0xALL:
      if (*v6 == 0x5F77656E5F6D7261 && *(v6 + 4) == 24954)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v131 = a4;
          }

          else
          {
            v131 = 0;
          }
        }

        else
        {
          v131 = 0;
        }

        v5[16] = v131;
      }

      else if (*v6 == 0x5F74756F5F6D7261 && *(v6 + 4) == 24954)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v143 = a4;
          }

          else
          {
            v143 = 0;
          }
        }

        else
        {
          v143 = 0;
        }

        v5[17] = v143;
      }

      else if (*v6 == 0x65677265766E6F63 && *(v6 + 4) == 29806)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v152 = a4;
          }

          else
          {
            v152 = 0;
          }
        }

        else
        {
          v152 = 0;
        }

        v5[22] = v152;
      }

      else
      {
        v54 = *v6;
        v55 = *(v6 + 4);
        if (v54 == 0x635F746567726174 && v55 == 30064)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v57 = a4;
            }

            else
            {
              v57 = 0;
            }
          }

          else
          {
            v57 = 0;
          }

          v5[47] = v57;
        }
      }

      break;
    case 0xBLL:
      if (*v6 == 0x72746E6F635F7066 && *(v6 + 3) == 0x74636172746E6F63)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v135 = a4;
          }

          else
          {
            v135 = 0;
          }
        }

        else
        {
          v135 = 0;
        }

        v5[26] = v135;
      }

      else if (*v6 == 0x6F72687473736170 && *(v6 + 3) == 0x6867756F72687473)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v145 = a4;
          }

          else
          {
            v145 = 0;
          }
        }

        else
        {
          v145 = 0;
        }

        v5[40] = v145;
      }

      else if (*v6 == 0x6C616E6F73726570 && *(v6 + 3) == 0x7974696C616E6F73)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          if (a4[3])
          {
            v153 = 0;
          }

          else
          {
            v153 = a4;
          }
        }

        else
        {
          v153 = 0;
        }

        v5[41] = v153;
      }

      else if (*v6 == 0x696C696269736976 && *(v6 + 3) == 0x5F7974696C696269)
      {
        if (a4)
        {
          if (mlir::LLVM::VisibilityAttr::classof(a4))
          {
            v156 = a4;
          }

          else
          {
            v156 = 0;
          }
        }

        else
        {
          v156 = 0;
        }

        v5[53] = v156;
      }

      else
      {
        v74 = *v6;
        v75 = *(v6 + 3);
        if (v74 == 0x7465725F6C6C6977 && v75 == 0x6E72757465725F6CLL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v77 = a4;
            }

            else
            {
              v77 = 0;
            }
          }

          else
          {
            v77 = 0;
          }

          v5[55] = v77;
        }
      }

      break;
    case 0xCLL:
      if (*v6 == 0x756F6E695F6D7261 && v6[2] == 1635409780)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v136 = a4;
          }

          else
          {
            v136 = 0;
          }
        }

        else
        {
          v136 = 0;
        }

        v5[14] = v136;
      }

      else if (*v6 == 0x5F64656D616E6E75 && v6[2] == 1919181921)
      {
        if (a4)
        {
          if (mlir::LLVM::UnnamedAddrAttr::classof(a4))
          {
            v146 = a4;
          }

          else
          {
            v146 = 0;
          }
        }

        else
        {
          v146 = 0;
        }

        v5[50] = v146;
      }

      else
      {
        v80 = *v6;
        v81 = v6[2];
        if (v80 == 0x725F656C61637376 && v81 == 1701277281)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
            {
              v83 = a4;
            }

            else
            {
              v83 = 0;
            }
          }

          else
          {
            v83 = 0;
          }

          v5[54] = v83;
        }
      }

      break;
    case 0xDLL:
      if (*v6 == 0x695F737961776C61 && *(v6 + 5) == 0x656E696C6E695F73)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v138 = a4;
          }

          else
          {
            v138 = 0;
          }
        }

        else
        {
          v138 = 0;
        }

        v5[10] = v138;
      }

      else if (*v6 == 0x657274735F6D7261 && *(v6 + 5) == 0x676E696D61657274)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v148 = a4;
          }

          else
          {
            v148 = 0;
          }
        }

        else
        {
          v148 = 0;
        }

        v5[19] = v148;
      }

      else if (*v6 == 0x6F705F656D617266 && *(v6 + 5) == 0x7265746E696F705FLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
          {
            v154 = a4;
          }

          else
          {
            v154 = 0;
          }
        }

        else
        {
          v154 = 0;
        }

        v5[27] = v154;
      }

      else if (*v6 == 0x6E6F6974636E7566 && *(v6 + 5) == 0x657079745F6E6F69)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v157 = a4;
          }

          else
          {
            v157 = 0;
          }
        }

        else
        {
          v157 = 0;
        }

        v5[29] = v157;
      }

      else if (*v6 == 0x657A696D6974706FLL && *(v6 + 5) == 0x656E6F6E5F657A69)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v159 = a4;
          }

          else
          {
            v159 = 0;
          }
        }

        else
        {
          v159 = 0;
        }

        v5[39] = v159;
      }

      else
      {
        v109 = *v6;
        v110 = *(v6 + 5);
        if (v109 == 0x657079745F636576 && v110 == 0x746E69685F657079)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
            {
              v112 = a4;
            }

            else
            {
              v112 = 0;
            }
          }

          else
          {
            v112 = 0;
          }

          v5[52] = v112;
        }
      }

      break;
    case 0xELL:
      if (*v6 == 0x655F79726F6D656DLL && *(v6 + 6) == 0x737463656666655FLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
          {
            v137 = a4;
          }

          else
          {
            v137 = 0;
          }
        }

        else
        {
          v137 = 0;
        }

        v5[33] = v137;
      }

      else if (*v6 == 0x697369765F6D7973 && *(v6 + 6) == 0x7974696C69626973)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v147 = a4;
          }

          else
          {
            v147 = 0;
          }
        }

        else
        {
          v147 = 0;
        }

        v5[46] = v147;
      }

      else
      {
        v99 = *v6;
        v100 = *(v6 + 6);
        if (v99 == 0x665F656661736E75 && v100 == 0x6874616D5F70665FLL)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v102 = a4[1], *(*v102 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
          {
            if (v102[2] == 1)
            {
              v103 = a4;
            }

            else
            {
              v103 = 0;
            }
          }

          else
          {
            v103 = 0;
          }

          v5[51] = v103;
        }
      }

      break;
    case 0xFLL:
      if (*v6 == 0x5F73666E695F6F6ELL && *(v6 + 7) == 0x6874616D5F70665FLL)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v128 = a4[1], *(*v128 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v128[2] == 1)
          {
            v129 = a4;
          }

          else
          {
            v129 = 0;
          }
        }

        else
        {
          v129 = 0;
        }

        v5[34] = v129;
      }

      else if (*v6 == 0x5F736E616E5F6F6ELL && *(v6 + 7) == 0x6874616D5F70665FLL)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v140 = a4[1], *(*v140 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v140[2] == 1)
          {
            v141 = a4;
          }

          else
          {
            v141 = 0;
          }
        }

        else
        {
          v141 = 0;
        }

        v5[36] = v141;
      }

      else
      {
        v26 = *v6;
        v27 = *(v6 + 7);
        if (v26 == 0x665F746567726174 && v27 == 0x7365727574616566)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
            {
              v29 = a4;
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }

          v5[48] = v29;
        }
      }

      break;
    case 0x10:
      if (*v6 == 0x736572705F6D7261 && *(v6 + 1) == 0x617A5F7365767265)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v132 = a4;
          }

          else
          {
            v132 = 0;
          }
        }

        else
        {
          v132 = 0;
        }

        v5[18] = v132;
      }

      else if (*v6 == 0x6C616D726F6E6564 && *(v6 + 1) == 0x6874616D5F70665FLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v144 = a4;
          }

          else
          {
            v144 = 0;
          }
        }

        else
        {
          v144 = 0;
        }

        v5[23] = v144;
      }

      else
      {
        v61 = *v6;
        v60 = *(v6 + 1);
        if (v61 == 0x4365676162726167 && v60 == 0x726F7463656C6C6FLL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v63 = a4;
            }

            else
            {
              v63 = 0;
            }
          }

          else
          {
            v63 = 0;
          }

          v5[30] = v63;
        }
      }

      break;
    case 0x13:
      v40 = *v6;
      v41 = *(v6 + 1);
      v42 = *(v6 + 11);
      if (v40 == 0x665F786F72707061 && v41 == 0x6D5F70665F636E75 && v42 == 0x6874616D5F70665FLL)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v45 = a4[1], *(*v45 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v45[2] == 1)
          {
            v46 = a4;
          }

          else
          {
            v46 = 0;
          }
        }

        else
        {
          v46 = 0;
        }

        v5[11] = v46;
      }

      break;
    case 0x14:
      if (*v6 == 0x6C616D726F6E6564 && *(v6 + 1) == 0x6874616D5F70665FLL && v6[4] == 842229343)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v127 = a4;
          }

          else
          {
            v127 = 0;
          }
        }

        else
        {
          v127 = 0;
        }

        v5[24] = v127;
      }

      else if (*v6 == 0x6E6F6974636E7566 && *(v6 + 1) == 0x635F7972746E655FLL && v6[4] == 1953396079)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v139 = a4;
          }

          else
          {
            v139 = 0;
          }
        }

        else
        {
          v139 = 0;
        }

        v5[28] = v139;
      }

      else if (*v6 == 0x726F775F64716572 && *(v6 + 1) == 0x5F70756F72675F6BLL && v6[4] == 1702521203)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v149 = a4[1], *(*v149 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v149[2] == 32)
          {
            v150 = a4;
          }

          else
          {
            v150 = 0;
          }
        }

        else
        {
          v150 = 0;
        }

        v5[42] = v150;
      }

      else
      {
        v17 = *v6;
        v18 = *(v6 + 1);
        v19 = v6[4];
        if (v17 == 0x6F72675F6B726F77 && v18 == 0x5F657A69735F7075 && v19 == 1953393000)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v22 = a4[1], *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
          {
            if (v22[2] == 32)
            {
              v23 = a4;
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 0;
          }

          v5[56] = v23;
        }
      }

      break;
    case 0x15:
      v84 = *v6;
      v85 = *(v6 + 1);
      v86 = *(v6 + 13);
      if (v84 == 0x61636F6C5F6D7261 && v85 == 0x657274735F796C6CLL && v86 == 0x676E696D61657274)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v89 = a4;
          }

          else
          {
            v89 = 0;
          }
        }

        else
        {
          v89 = 0;
        }

        v5[15] = v89;
      }

      break;
    case 0x17:
      v90 = *v6;
      v91 = *(v6 + 1);
      v92 = *(v6 + 15);
      if (v90 == 0x656E6769735F6F6ELL && v91 == 0x5F736F72657A5F64 && v92 == 0x6874616D5F70665FLL)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v95 = a4[1], *(*v95 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v95[2] == 1)
          {
            v96 = a4;
          }

          else
          {
            v96 = 0;
          }
        }

        else
        {
          v96 = 0;
        }

        v5[37] = v96;
      }

      break;
    case 0x18:
      v121 = *v6;
      v122 = *(v6 + 1);
      v123 = *(v6 + 2);
      if (v121 == 0x657274735F6D7261 && v122 == 0x6F635F676E696D61 && v123 == 0x656C62697461706DLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v126 = a4;
          }

          else
          {
            v126 = 0;
          }
        }

        else
        {
          v126 = 0;
        }

        v5[20] = v126;
      }

      break;
    case 0x19:
      v113 = *v6;
      v114 = *(v6 + 1);
      v115 = *(v6 + 2);
      v116 = *(v6 + 24);
      if (v113 == 0x65725F6C65746E69 && v114 == 0x675F6275735F6471 && v115 == 0x7A69735F70756F72 && v116 == 101)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v120 = a4;
          }

          else
          {
            v120 = 0;
          }
        }

        else
        {
          v120 = 0;
        }

        v5[31] = v120;
      }

      break;
    default:
      return;
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v156 = 261;
    v154 = "CConv";
    v155 = 5;
    v9 = mlir::StringAttr::get(v8, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v156 = 261;
    v154 = "alignment";
    v155 = 9;
    v12 = mlir::StringAttr::get(v11, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v156 = 261;
    v154 = "always_inline";
    v155 = 13;
    v15 = mlir::StringAttr::get(v14, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v156 = 261;
    v154 = "approx_func_fp_math";
    v155 = 19;
    v18 = mlir::StringAttr::get(v17, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v156 = 261;
    v154 = "arg_attrs";
    v155 = 9;
    v21 = mlir::StringAttr::get(v20, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v156 = 261;
    v154 = "arm_in_za";
    v155 = 9;
    v24 = mlir::StringAttr::get(v23, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v156 = 261;
    v154 = "arm_inout_za";
    v155 = 12;
    v27 = mlir::StringAttr::get(v26, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v156 = 261;
    v154 = "arm_locally_streaming";
    v155 = 21;
    v30 = mlir::StringAttr::get(v29, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v156 = 261;
    v154 = "arm_new_za";
    v155 = 10;
    v33 = mlir::StringAttr::get(v32, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v156 = 261;
    v154 = "arm_out_za";
    v155 = 10;
    v36 = mlir::StringAttr::get(v35, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v36, v34);
  }

  v37 = v6[10];
  if (v37)
  {
    v38 = *(**v37 + 32);
    v156 = 261;
    v154 = "arm_preserves_za";
    v155 = 16;
    v39 = mlir::StringAttr::get(v38, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v39, v37);
  }

  v40 = v6[11];
  if (v40)
  {
    v41 = *(**v40 + 32);
    v156 = 261;
    v154 = "arm_streaming";
    v155 = 13;
    v42 = mlir::StringAttr::get(v41, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v42, v40);
  }

  v43 = v6[12];
  if (v43)
  {
    v44 = *(**v43 + 32);
    v156 = 261;
    v154 = "arm_streaming_compatible";
    v155 = 24;
    v45 = mlir::StringAttr::get(v44, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v45, v43);
  }

  v46 = v6[13];
  if (v46)
  {
    v47 = *(**v46 + 32);
    v156 = 261;
    v154 = "comdat";
    v155 = 6;
    v48 = mlir::StringAttr::get(v47, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v48, v46);
  }

  v49 = v6[14];
  if (v49)
  {
    v50 = *(**v49 + 32);
    v156 = 261;
    v154 = "convergent";
    v155 = 10;
    v51 = mlir::StringAttr::get(v50, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v51, v49);
  }

  v52 = v6[15];
  if (v52)
  {
    v53 = *(**v52 + 32);
    v156 = 261;
    v154 = "denormal_fp_math";
    v155 = 16;
    v54 = mlir::StringAttr::get(v53, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v54, v52);
  }

  v55 = v6[16];
  if (v55)
  {
    v56 = *(**v55 + 32);
    v156 = 261;
    v154 = "denormal_fp_math_f32";
    v155 = 20;
    v57 = mlir::StringAttr::get(v56, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v57, v55);
  }

  v58 = v6[17];
  if (v58)
  {
    v59 = *(**v58 + 32);
    v156 = 261;
    v154 = "dso_local";
    v155 = 9;
    v60 = mlir::StringAttr::get(v59, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v60, v58);
  }

  v61 = v6[18];
  if (v61)
  {
    v62 = *(**v61 + 32);
    v156 = 261;
    v154 = "fp_contract";
    v155 = 11;
    v63 = mlir::StringAttr::get(v62, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v63, v61);
  }

  v64 = v6[19];
  if (v64)
  {
    v65 = *(**v64 + 32);
    v156 = 261;
    v154 = "frame_pointer";
    v155 = 13;
    v66 = mlir::StringAttr::get(v65, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v66, v64);
  }

  v67 = v6[20];
  if (v67)
  {
    v68 = *(**v67 + 32);
    v156 = 261;
    v154 = "function_entry_count";
    v155 = 20;
    v69 = mlir::StringAttr::get(v68, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v69, v67);
  }

  v70 = v6[21];
  if (v70)
  {
    v71 = *(**v70 + 32);
    v156 = 261;
    v154 = "function_type";
    v155 = 13;
    v72 = mlir::StringAttr::get(v71, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v72, v70);
  }

  v73 = v6[22];
  if (v73)
  {
    v74 = *(**v73 + 32);
    v156 = 261;
    v154 = "garbageCollector";
    v155 = 16;
    v75 = mlir::StringAttr::get(v74, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v75, v73);
  }

  v76 = v6[23];
  if (v76)
  {
    v77 = *(**v76 + 32);
    v156 = 261;
    v154 = "intel_reqd_sub_group_size";
    v155 = 25;
    v78 = mlir::StringAttr::get(v77, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v78, v76);
  }

  v79 = v6[24];
  if (v79)
  {
    v80 = *(**v79 + 32);
    v156 = 261;
    v154 = "linkage";
    v155 = 7;
    v81 = mlir::StringAttr::get(v80, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v81, v79);
  }

  v82 = v6[25];
  if (v82)
  {
    v83 = *(**v82 + 32);
    v156 = 261;
    v154 = "memory_effects";
    v155 = 14;
    v84 = mlir::StringAttr::get(v83, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v84, v82);
  }

  v85 = v6[26];
  if (v85)
  {
    v86 = *(**v85 + 32);
    v156 = 261;
    v154 = "no_infs_fp_math";
    v155 = 15;
    v87 = mlir::StringAttr::get(v86, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v87, v85);
  }

  v88 = v6[27];
  if (v88)
  {
    v89 = *(**v88 + 32);
    v156 = 261;
    v154 = "no_inline";
    v155 = 9;
    v90 = mlir::StringAttr::get(v89, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v90, v88);
  }

  v91 = v6[28];
  if (v91)
  {
    v92 = *(**v91 + 32);
    v156 = 261;
    v154 = "no_nans_fp_math";
    v155 = 15;
    v93 = mlir::StringAttr::get(v92, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v93, v91);
  }

  v94 = v6[29];
  if (v94)
  {
    v95 = *(**v94 + 32);
    v156 = 261;
    v154 = "no_signed_zeros_fp_math";
    v155 = 23;
    v96 = mlir::StringAttr::get(v95, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v96, v94);
  }

  v97 = v6[30];
  if (v97)
  {
    v98 = *(**v97 + 32);
    v156 = 261;
    v154 = "no_unwind";
    v155 = 9;
    v99 = mlir::StringAttr::get(v98, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v99, v97);
  }

  v100 = v6[31];
  if (v100)
  {
    v101 = *(**v100 + 32);
    v156 = 261;
    v154 = "optimize_none";
    v155 = 13;
    v102 = mlir::StringAttr::get(v101, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v102, v100);
  }

  v103 = v6[32];
  if (v103)
  {
    v104 = *(**v103 + 32);
    v156 = 261;
    v154 = "passthrough";
    v155 = 11;
    v105 = mlir::StringAttr::get(v104, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v105, v103);
  }

  v106 = v6[33];
  if (v106)
  {
    v107 = *(**v106 + 32);
    v156 = 261;
    v154 = "personality";
    v155 = 11;
    v108 = mlir::StringAttr::get(v107, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v108, v106);
  }

  v109 = v6[34];
  if (v109)
  {
    v110 = *(**v109 + 32);
    v156 = 261;
    v154 = "reqd_work_group_size";
    v155 = 20;
    v111 = mlir::StringAttr::get(v110, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v111, v109);
  }

  v112 = v6[35];
  if (v112)
  {
    v113 = *(**v112 + 32);
    v156 = 261;
    v154 = "res_attrs";
    v155 = 9;
    v114 = mlir::StringAttr::get(v113, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v114, v112);
  }

  v115 = v6[36];
  if (v115)
  {
    v116 = *(**v115 + 32);
    v156 = 261;
    v154 = "section";
    v155 = 7;
    v117 = mlir::StringAttr::get(v116, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v117, v115);
  }

  v118 = v6[37];
  if (v118)
  {
    v119 = *(**v118 + 32);
    v156 = 261;
    v154 = "sym_name";
    v155 = 8;
    v120 = mlir::StringAttr::get(v119, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v120, v118);
  }

  v121 = v6[38];
  if (v121)
  {
    v122 = *(**v121 + 32);
    v156 = 261;
    v154 = "sym_visibility";
    v155 = 14;
    v123 = mlir::StringAttr::get(v122, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v123, v121);
  }

  v124 = v6[39];
  if (v124)
  {
    v125 = *(**v124 + 32);
    v156 = 261;
    v154 = "target_cpu";
    v155 = 10;
    v126 = mlir::StringAttr::get(v125, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v126, v124);
  }

  v127 = v6[40];
  if (v127)
  {
    v128 = *(**v127 + 32);
    v156 = 261;
    v154 = "target_features";
    v155 = 15;
    v129 = mlir::StringAttr::get(v128, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v129, v127);
  }

  v130 = v6[41];
  if (v130)
  {
    v131 = *(**v130 + 32);
    v156 = 261;
    v154 = "tune_cpu";
    v155 = 8;
    v132 = mlir::StringAttr::get(v131, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v132, v130);
  }

  v133 = v6[42];
  if (v133)
  {
    v134 = *(**v133 + 32);
    v156 = 261;
    v154 = "unnamed_addr";
    v155 = 12;
    v135 = mlir::StringAttr::get(v134, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v135, v133);
  }

  v136 = v6[43];
  if (v136)
  {
    v137 = *(**v136 + 32);
    v156 = 261;
    v154 = "unsafe_fp_math";
    v155 = 14;
    v138 = mlir::StringAttr::get(v137, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v138, v136);
  }

  v139 = v6[44];
  if (v139)
  {
    v140 = *(**v139 + 32);
    v156 = 261;
    v154 = "vec_type_hint";
    v155 = 13;
    v141 = mlir::StringAttr::get(v140, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v141, v139);
  }

  v142 = v6[45];
  if (v142)
  {
    v143 = *(**v142 + 32);
    v156 = 261;
    v154 = "visibility_";
    v155 = 11;
    v144 = mlir::StringAttr::get(v143, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v144, v142);
  }

  v145 = v6[46];
  if (v145)
  {
    v146 = *(**v145 + 32);
    v156 = 261;
    v154 = "vscale_range";
    v155 = 12;
    v147 = mlir::StringAttr::get(v146, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v147, v145);
  }

  v148 = v6[47];
  if (v148)
  {
    v149 = *(**v148 + 32);
    v156 = 261;
    v154 = "will_return";
    v155 = 11;
    v150 = mlir::StringAttr::get(v149, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v150, v148);
  }

  v151 = v6[48];
  if (v151)
  {
    v152 = *(**v151 + 32);
    v156 = 261;
    v154 = "work_group_size_hint";
    v155 = 20;
    v153 = mlir::StringAttr::get(v152, &v154, a3);
    mlir::NamedAttrList::push_back(a3, v153, v151);
  }
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v9 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, **(a2 + 96));
  if (v10)
  {
    v11 = v9[1];
    if (v11)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(v11, a4, a5))
      {
        return 0;
      }
    }
  }

  v12 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 8));
  if (v13)
  {
    v14 = v12[1];
    if (v14)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v14, "alignment", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v15 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 16));
  if (v16)
  {
    v17 = v15[1];
    if (v17)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v17, "always_inline", 13, a4, a5))
      {
        return 0;
      }
    }
  }

  v18 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 24));
  if (v19)
  {
    v20 = v18[1];
    if (v20)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v20, "approx_func_fp_math", 19, a4, a5))
      {
        return 0;
      }
    }
  }

  v21 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 32));
  if (v22)
  {
    v23 = v21[1];
    if (v23)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v23, "arg_attrs", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v24 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 40));
  if (v25)
  {
    v26 = v24[1];
    if (v26)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v26, "arm_in_za", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v27 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 48));
  if (v28)
  {
    v29 = v27[1];
    if (v29)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v29, "arm_inout_za", 12, a4, a5))
      {
        return 0;
      }
    }
  }

  v30 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 56));
  if (v31)
  {
    v32 = v30[1];
    if (v32)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v32, "arm_locally_streaming", 21, a4, a5))
      {
        return 0;
      }
    }
  }

  v33 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 64));
  if (v34)
  {
    v35 = v33[1];
    if (v35)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v35, "arm_new_za", 10, a4, a5))
      {
        return 0;
      }
    }
  }

  v36 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 72));
  if (v37)
  {
    v38 = v36[1];
    if (v38)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v38, "arm_out_za", 10, a4, a5))
      {
        return 0;
      }
    }
  }

  v39 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 80));
  if (v40)
  {
    v41 = v39[1];
    if (v41)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v41, "arm_preserves_za", 16, a4, a5))
      {
        return 0;
      }
    }
  }

  v42 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 88));
  if (v43)
  {
    v44 = v42[1];
    if (v44)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v44, "arm_streaming", 13, a4, a5))
      {
        return 0;
      }
    }
  }

  v45 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 96));
  if (v46)
  {
    v47 = v45[1];
    if (v47)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v47, "arm_streaming_compatible", 24, a4, a5))
      {
        return 0;
      }
    }
  }

  v48 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 104));
  if (v49)
  {
    v50 = v48[1];
    if (v50)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps30(v50, a4, a5))
      {
        return 0;
      }
    }
  }

  v51 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 112));
  if (v52)
  {
    v53 = v51[1];
    if (v53)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v53, "convergent", 10, a4, a5))
      {
        return 0;
      }
    }
  }

  v54 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 120));
  if (v55)
  {
    v56 = v54[1];
    if (v56)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v56, "denormal_fp_math", 16, a4, a5))
      {
        return 0;
      }
    }
  }

  v57 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 128));
  if (v58)
  {
    v59 = v57[1];
    if (v59)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v59, "denormal_fp_math_f32", 20, a4, a5))
      {
        return 0;
      }
    }
  }

  v60 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 136));
  if (v61)
  {
    v62 = v60[1];
    if (v62)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v62, "dso_local", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v63 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 144));
  if (v64)
  {
    v65 = v63[1];
    if (v65)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v65, "fp_contract", 11, a4, a5))
      {
        return 0;
      }
    }
  }

  v66 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 152));
  if (v67)
  {
    v68 = v66[1];
    if (v68)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps35(v68, a4, a5))
      {
        return 0;
      }
    }
  }

  v69 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 160));
  if (v70)
  {
    v71 = v69[1];
    if (v71)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps8(v71, "function_entry_count", 20, a4, a5))
      {
        return 0;
      }
    }
  }

  v72 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 168));
  if (v73)
  {
    v74 = v72[1];
    if (v74)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v74, "function_type", 13, a4, a5))
      {
        return 0;
      }
    }
  }

  v75 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 176));
  if (v76)
  {
    v77 = v75[1];
    if (v77)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v77, "garbageCollector", 16, a4, a5))
      {
        return 0;
      }
    }
  }

  v78 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 184));
  if (v79)
  {
    v80 = v78[1];
    if (v80)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps39(v80, a4, a5))
      {
        return 0;
      }
    }
  }

  v81 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 192));
  if (v82)
  {
    v83 = v81[1];
    if (v83)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps5(v83, a4, a5))
      {
        return 0;
      }
    }
  }

  v84 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 200));
  if (v85)
  {
    v86 = v84[1];
    if (v86)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(v86, a4, a5))
      {
        return 0;
      }
    }
  }

  v87 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 208));
  if (v88)
  {
    v89 = v87[1];
    if (v89)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v89, "no_infs_fp_math", 15, a4, a5))
      {
        return 0;
      }
    }
  }

  v90 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 216));
  if (v91)
  {
    v92 = v90[1];
    if (v92)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v92, "no_inline", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v93 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 224));
  if (v94)
  {
    v95 = v93[1];
    if (v95)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v95, "no_nans_fp_math", 15, a4, a5))
      {
        return 0;
      }
    }
  }

  v96 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 232));
  if (v97)
  {
    v98 = v96[1];
    if (v98)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v98, "no_signed_zeros_fp_math", 23, a4, a5))
      {
        return 0;
      }
    }
  }

  v99 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 240));
  if (v100)
  {
    v101 = v99[1];
    if (v101)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v101, "no_unwind", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v102 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 248));
  if (v103)
  {
    v104 = v102[1];
    if (v104)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v104, "optimize_none", 13, a4, a5))
      {
        return 0;
      }
    }
  }

  v105 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 256));
  if (v106)
  {
    v107 = v105[1];
    if (v107)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v107, "passthrough", 11, a4, a5))
      {
        return 0;
      }
    }
  }

  v108 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 264));
  if (v109)
  {
    v110 = v108[1];
    if (v110)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v110, "personality", 11, a4, a5))
      {
        return 0;
      }
    }
  }

  v111 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 272));
  if (v112)
  {
    v113 = v111[1];
    if (v113)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v113, "reqd_work_group_size", 20, a4, a5))
      {
        return 0;
      }
    }
  }

  v114 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 280));
  if (v115)
  {
    v116 = v114[1];
    if (v116)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v116, "res_attrs", 9, a4, a5))
      {
        return 0;
      }
    }
  }

  v117 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 288));
  if (v118)
  {
    v119 = v117[1];
    if (v119)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v119, "section", 7, a4, a5))
      {
        return 0;
      }
    }
  }

  v120 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 296));
  if (v121)
  {
    v122 = v120[1];
    if (v122)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v122, "sym_name", 8, a4, a5))
      {
        return 0;
      }
    }
  }

  v123 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 304));
  if (v124)
  {
    v125 = v123[1];
    if (v125)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v125, "sym_visibility", 14, a4, a5))
      {
        return 0;
      }
    }
  }

  v126 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 312));
  if (v127)
  {
    v128 = v126[1];
    if (v128)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v128, "target_cpu", 10, a4, a5))
      {
        return 0;
      }
    }
  }

  v129 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 320));
  if (v130)
  {
    v131 = v129[1];
    if (v131)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps36(v131, a4, a5))
      {
        return 0;
      }
    }
  }

  v132 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 328));
  if (v133)
  {
    v134 = v132[1];
    if (v134)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v134, "tune_cpu", 8, a4, a5))
      {
        return 0;
      }
    }
  }

  v135 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 336));
  if (v136)
  {
    v137 = v135[1];
    if (v137)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps6(v137, a4, a5))
      {
        return 0;
      }
    }
  }

  v138 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 344));
  if (v139)
  {
    v140 = v138[1];
    if (v140)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps37(v140, "unsafe_fp_math", 14, a4, a5))
      {
        return 0;
      }
    }
  }

  v141 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 352));
  if (v142)
  {
    v143 = v141[1];
    if (v143)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps38(v143, a4, a5))
      {
        return 0;
      }
    }
  }

  v144 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 360));
  if (v145)
  {
    v146 = v144[1];
    if (v146)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps7(v146, a4, a5))
      {
        return 0;
      }
    }
  }

  v147 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 368));
  if (v148)
  {
    v149 = v147[1];
    if (v149)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps34(v149, a4, a5))
      {
        return 0;
      }
    }
  }

  v150 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 376));
  if (v151)
  {
    v152 = v150[1];
    if (v152)
    {
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v152, "will_return", 11, a4, a5))
      {
        return 0;
      }
    }
  }

  v153 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 384));
  return (v154 & 1) == 0 || (v155 = v153[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v155, "work_group_size_hint", 20, a4, a5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::initProperties(int a1, uint64_t a2, _OWORD *__dst, void *__src)
{
  if (__src)
  {
    memcpy(__dst, __src, 0x188uLL);
  }

  else
  {
    *(__dst + 48) = 0;
    __dst[22] = 0u;
    __dst[23] = 0u;
    __dst[20] = 0u;
    __dst[21] = 0u;
    __dst[18] = 0u;
    __dst[19] = 0u;
    __dst[16] = 0u;
    __dst[17] = 0u;
    __dst[14] = 0u;
    __dst[15] = 0u;
    __dst[12] = 0u;
    __dst[13] = 0u;
    __dst[10] = 0u;
    __dst[11] = 0u;
    __dst[8] = 0u;
    __dst[9] = 0u;
    __dst[6] = 0u;
    __dst[7] = 0u;
    __dst[4] = 0u;
    __dst[5] = 0u;
    __dst[2] = 0u;
    __dst[3] = 0u;
    *__dst = 0u;
    __dst[1] = 0u;
  }

  return mlir::LLVM::LLVMFuncOp::populateDefaultProperties(a2, __dst);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::LLVMFuncOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v182 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v178, a6);
    if (v178)
    {
      mlir::Diagnostic::operator<<<42ul>(v179, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "CConv", 5uLL);
  if ((v13 & 1) == 0 || (v14 = *(v12 + 8)) == 0)
  {
LABEL_12:
    v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alignment", 9uLL);
    if (v16)
    {
      v14 = *(v15 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_37:
          if (v178)
          {
            LODWORD(v177[0]) = 0;
            v177[1] = v14;
            v26 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v180, v177, 1);
            v27 = v180 + 24 * v181;
            v28 = *v26;
            *(v27 + 16) = *(v26 + 16);
            *v27 = v28;
            ++v181;
          }

          goto LABEL_4;
        }

        a3[1] = v14;
      }
    }

    v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "always_inline", 0xDuLL);
    if (v18)
    {
      v14 = *(v17 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_37;
        }

        a3[2] = v14;
      }
    }

    v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "approx_func_fp_math", 0x13uLL);
    if (v20)
    {
      v14 = *(v19 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v21 = v14[1], *(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v21[2] != 1)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_37;
        }

        a3[3] = v14;
      }
    }

    v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
    if (v23)
    {
      v24 = *(v22 + 8);
      v177[0] = v24;
      if (v24)
      {
        if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        a3[4] = v24;
      }
    }

    v29 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_in_za", 9uLL);
    if (v30)
    {
      v31 = *(v29 + 8);
      v177[0] = v31;
      if (v31)
      {
        if (*(*v31 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        a3[5] = v31;
      }
    }

    v32 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_inout_za", 0xCuLL);
    if (v33)
    {
      v34 = *(v32 + 8);
      v177[0] = v34;
      if (v34)
      {
        if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_52;
        }

        a3[6] = v34;
      }
    }

    v36 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_locally_streaming", 0x15uLL);
    if (v37)
    {
      v38 = *(v36 + 8);
      v177[0] = v38;
      if (v38)
      {
        if (*(*v38 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_142:
          if (v178)
          {
            mlir::Diagnostic::operator<<<mlir::Attribute &>(v179, v177);
          }

          goto LABEL_4;
        }

        a3[7] = v38;
      }
    }

    v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_new_za", 0xAuLL);
    if (v40)
    {
      v41 = *(v39 + 8);
      v177[0] = v41;
      if (v41)
      {
        if (*(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_102;
        }

        a3[8] = v41;
      }
    }

    v43 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_out_za", 0xAuLL);
    if (v44)
    {
      v45 = *(v43 + 8);
      v177[0] = v45;
      if (v45)
      {
        if (*(*v45 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_102;
        }

        a3[9] = v45;
      }
    }

    v46 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_preserves_za", 0x10uLL);
    if (v47)
    {
      v48 = *(v46 + 8);
      v177[0] = v48;
      if (v48)
      {
        if (*(*v48 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_109;
        }

        a3[10] = v48;
      }
    }

    v50 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_streaming", 0xDuLL);
    if (v51)
    {
      v52 = *(v50 + 8);
      v177[0] = v52;
      if (v52)
      {
        if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_83;
        }

        a3[11] = v52;
      }
    }

    v54 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arm_streaming_compatible", 0x18uLL);
    if (v55)
    {
      v56 = *(v54 + 8);
      v177[0] = v56;
      if (v56)
      {
        if (*(*v56 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_142;
        }

        a3[12] = v56;
      }
    }

    v57 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "comdat", 6uLL);
    if (v58)
    {
      v59 = *(v57 + 8);
      v177[0] = v59;
      if (v59)
      {
        if (*(*v59 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_142;
        }

        a3[13] = v59;
      }
    }

    v60 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "convergent", 0xAuLL);
    if (v61)
    {
      v62 = *(v60 + 8);
      v177[0] = v62;
      if (v62)
      {
        if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_102;
        }

        a3[14] = v62;
      }
    }

    v63 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "denormal_fp_math", 0x10uLL);
    if (v64)
    {
      v65 = *(v63 + 8);
      v177[0] = v65;
      if (v65)
      {
        if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_109;
        }

        a3[15] = v65;
      }
    }

    v66 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "denormal_fp_math_f32", 0x14uLL);
    if (v67)
    {
      v68 = *(v66 + 8);
      v177[0] = v68;
      if (v68)
      {
        if (*(*v68 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_141;
        }

        a3[16] = v68;
      }
    }

    v70 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "dso_local", 9uLL);
    if (v71)
    {
      v72 = *(v70 + 8);
      v177[0] = v72;
      if (v72)
      {
        if (*(*v72 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        a3[17] = v72;
      }
    }

    v73 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "fp_contract", 0xBuLL);
    if (v74)
    {
      v75 = *(v73 + 8);
      v177[0] = v75;
      if (v75)
      {
        if (*(*v75 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_128;
        }

        a3[18] = v75;
      }
    }

    v77 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "frame_pointer", 0xDuLL);
    if (v78)
    {
      v79 = *(v77 + 8);
      v177[0] = v79;
      if (v79)
      {
        if (*(*v79 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_83;
        }

        a3[19] = v79;
      }
    }

    v80 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "function_entry_count", 0x14uLL);
    if (v81)
    {
      v82 = *(v80 + 8);
      v177[0] = v82;
      if (v82)
      {
        if (*(*v82 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_141;
        }

        a3[20] = v82;
      }
    }

    v83 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "function_type", 0xDuLL);
    if (v84)
    {
      v85 = *(v83 + 8);
      v177[0] = v85;
      if (v85)
      {
        if (*(*v85 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_83;
        }

        a3[21] = v85;
      }
    }

    v86 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "garbageCollector", 0x10uLL);
    if (v87)
    {
      v88 = *(v86 + 8);
      v177[0] = v88;
      if (v88)
      {
        if (*(*v88 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_109:
          mlir::Diagnostic::operator<<<62ul>(v179, v49);
          goto LABEL_142;
        }

        a3[22] = v88;
      }
    }

    v89 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "intel_reqd_sub_group_size", 0x19uLL);
    if (v90)
    {
      v91 = *(v89 + 8);
      v177[0] = v91;
      if (v91)
      {
        if (*(*v91 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_142;
        }

        a3[23] = v91;
      }
    }

    v92 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "linkage", 7uLL);
    if (v93)
    {
      v94 = *(v92 + 8);
      v177[0] = v94;
      if (v94)
      {
        if (*(*v94 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_168;
        }

        a3[24] = v94;
      }
    }

    v96 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "memory_effects", 0xEuLL);
    if (v97)
    {
      v98 = *(v96 + 8);
      v177[0] = v98;
      if (v98)
      {
        if (*(*v98 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_175;
        }

        a3[25] = v98;
      }
    }

    v100 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_infs_fp_math", 0xFuLL);
    if (v101)
    {
      v102 = *(v100 + 8);
      v177[0] = v102;
      if (v102)
      {
        if (*(*v102 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v103 = v102[1], *(*v103 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v103[2] != 1)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_210;
        }

        a3[26] = v102;
      }
    }

    v104 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_inline", 9uLL);
    if (v105)
    {
      v106 = *(v104 + 8);
      v177[0] = v106;
      if (v106)
      {
        if (*(*v106 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        a3[27] = v106;
      }
    }

    v108 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_nans_fp_math", 0xFuLL);
    if (v109)
    {
      v110 = *(v108 + 8);
      v177[0] = v110;
      if (v110)
      {
        if (*(*v110 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v111 = v110[1], *(*v111 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v111[2] != 1)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_210;
        }

        a3[28] = v110;
      }
    }

    v112 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_signed_zeros_fp_math", 0x17uLL);
    if (v113)
    {
      v114 = *(v112 + 8);
      v177[0] = v114;
      if (v114)
      {
        if (*(*v114 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v115 = v114[1], *(*v115 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v115[2] != 1)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_142;
        }

        a3[29] = v114;
      }
    }

    v116 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_unwind", 9uLL);
    if (v117)
    {
      v118 = *(v116 + 8);
      v177[0] = v118;
      if (v118)
      {
        if (*(*v118 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_45;
        }

        a3[30] = v118;
      }
    }

    v119 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "optimize_none", 0xDuLL);
    if (v120)
    {
      v121 = *(v119 + 8);
      v177[0] = v121;
      if (v121)
      {
        if (*(*v121 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_83;
        }

        a3[31] = v121;
      }
    }

    v122 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "passthrough", 0xBuLL);
    if (v123)
    {
      v124 = *(v122 + 8);
      v177[0] = v124;
      if (v124)
      {
        if (*(*v124 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_128;
        }

        a3[32] = v124;
      }
    }

    v125 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "personality", 0xBuLL);
    if (v126)
    {
      v127 = *(v125 + 8);
      v177[0] = v127;
      if (v127)
      {
        if (*(*v127 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v127[3])
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_128;
        }

        a3[33] = v127;
      }
    }

    v128 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "reqd_work_group_size", 0x14uLL);
    if (v129)
    {
      v130 = *(v128 + 8);
      v177[0] = v130;
      if (v130)
      {
        if (*(*v130 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v131 = v130[1], *(*v131 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v131[2] != 32)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_141;
        }

        a3[34] = v130;
      }
    }

    v132 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
    if (v133)
    {
      v134 = *(v132 + 8);
      v177[0] = v134;
      if (v134)
      {
        if (*(*v134 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_45:
          mlir::Diagnostic::operator<<<55ul>(v179, v25);
          goto LABEL_142;
        }

        a3[35] = v134;
      }
    }

    v135 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "section", 7uLL);
    if (v136)
    {
      v137 = *(v135 + 8);
      v177[0] = v137;
      if (v137)
      {
        if (*(*v137 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_168:
          mlir::Diagnostic::operator<<<53ul>(v179, v95);
          goto LABEL_142;
        }

        a3[36] = v137;
      }
    }

    v138 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
    if (v139)
    {
      v140 = *(v138 + 8);
      v177[0] = v140;
      if (v140)
      {
        if (*(*v140 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_282;
        }

        a3[37] = v140;
      }
    }

    v142 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_visibility", 0xEuLL);
    if (v143)
    {
      v144 = *(v142 + 8);
      v177[0] = v144;
      if (v144)
      {
        if (*(*v144 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_175;
        }

        a3[38] = v144;
      }
    }

    v145 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "target_cpu", 0xAuLL);
    if (v146)
    {
      v147 = *(v145 + 8);
      v177[0] = v147;
      if (v147)
      {
        if (*(*v147 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_102:
          mlir::Diagnostic::operator<<<56ul>(v179, v42);
          goto LABEL_142;
        }

        a3[39] = v147;
      }
    }

    v148 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "target_features", 0xFuLL);
    if (v149)
    {
      v150 = *(v148 + 8);
      v177[0] = v150;
      if (v150)
      {
        if (*(*v150 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::TargetFeaturesAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_210:
          mlir::Diagnostic::operator<<<61ul>(v179, v107);
          goto LABEL_142;
        }

        a3[40] = v150;
      }
    }

    v151 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "tune_cpu", 8uLL);
    if (v152)
    {
      v153 = *(v151 + 8);
      v177[0] = v153;
      if (v153)
      {
        if (*(*v153 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_282:
          mlir::Diagnostic::operator<<<54ul>(v179, v141);
          goto LABEL_142;
        }

        a3[41] = v153;
      }
    }

    v154 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "unnamed_addr", 0xCuLL);
    if (v155)
    {
      v156 = *(v154 + 8);
      v177[0] = v156;
      if (v156)
      {
        if (!mlir::LLVM::UnnamedAddrAttr::classof(v156))
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_52;
        }

        a3[42] = v156;
      }
    }

    v157 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "unsafe_fp_math", 0xEuLL);
    if (v158)
    {
      v159 = *(v157 + 8);
      v177[0] = v159;
      if (v159)
      {
        if (*(*v159 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v160 = v159[1], *(*v160 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v160[2] != 1)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_175:
          mlir::Diagnostic::operator<<<60ul>(v179, v99);
          goto LABEL_142;
        }

        a3[43] = v159;
      }
    }

    v161 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "vec_type_hint", 0xDuLL);
    if (v162)
    {
      v163 = *(v161 + 8);
      v177[0] = v163;
      if (v163)
      {
        if (*(*v163 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::VecTypeHintAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_83:
          mlir::Diagnostic::operator<<<59ul>(v179, v53);
          goto LABEL_142;
        }

        a3[44] = v163;
      }
    }

    v164 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "visibility_", 0xBuLL);
    if (v165)
    {
      v166 = *(v164 + 8);
      v177[0] = v166;
      if (v166)
      {
        if (!mlir::LLVM::VisibilityAttr::classof(v166))
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

          goto LABEL_128;
        }

        a3[45] = v166;
      }
    }

    v167 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "vscale_range", 0xCuLL);
    if (v168)
    {
      v169 = *(v167 + 8);
      v177[0] = v169;
      if (v169)
      {
        if (*(*v169 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::VScaleRangeAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_52:
          mlir::Diagnostic::operator<<<58ul>(v179, v35);
          goto LABEL_142;
        }

        a3[46] = v169;
      }
    }

    v170 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "will_return", 0xBuLL);
    if (v171)
    {
      v172 = *(v170 + 8);
      v177[0] = v172;
      if (v172)
      {
        if (*(*v172 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          a5(&v178, a6);
          if (!v178)
          {
            goto LABEL_4;
          }

LABEL_128:
          mlir::Diagnostic::operator<<<57ul>(v179, v76);
          goto LABEL_142;
        }

        a3[47] = v172;
      }
    }

    v173 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "work_group_size_hint", 0x14uLL);
    if ((v174 & 1) == 0 || (v175 = *(v173 + 8), (v177[0] = v175) == 0))
    {
LABEL_328:
      result = 1;
      goto LABEL_5;
    }

    if (*(*v175 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v176 = v175[1];
      if (*(*v176 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v176[2] == 32)
      {
        a3[48] = v175;
        goto LABEL_328;
      }
    }

    a5(&v178, a6);
    if (!v178)
    {
      goto LABEL_4;
    }

LABEL_141:
    mlir::Diagnostic::operator<<<66ul>(v179, v69);
    goto LABEL_142;
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
  {
    *a3 = v14;
    goto LABEL_12;
  }

  a5(&v178, a6);
  if (v178)
  {
    goto LABEL_37;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v178);
  result = 0;
LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}