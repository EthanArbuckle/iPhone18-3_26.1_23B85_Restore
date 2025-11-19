uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v4 = *(a3 + 8) == 29541) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 10)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 0x756C615665736163 && v6 == 29541)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "caseValues";
    v7[1] = 10;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "caseValues", 0xAuLL);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "caseValues";
    v11[1] = 10;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypeOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchTypeOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchTypeOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchTypeOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchTypeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchTypeOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypeOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v38[4] = *MEMORY[0x277D85DE8];
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
    *v12 = 28532;
    *(v11 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, "to", 2uLL);
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

  v15 = a2 + 64;
  (*(*a3 + 48))(a3, *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)));
  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  v18 = *(a2 + 40);
  if (v18)
  {
    v19 = v18 - 1;
    if (v18 == 1)
    {
      goto LABEL_26;
    }

    v20 = ((v15 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  else
  {
    v19 = -1;
    v20 = 32;
  }

  (*(*a3 + 176))(a3, *(v20 + 24));
  if (v19 != 1)
  {
    v21 = v18 - 2;
    v22 = (v20 + 56);
    do
    {
      v23 = (*(*a3 + 16))(a3);
      v24 = *(v23 + 4);
      if (*(v23 + 3) - v24 > 1uLL)
      {
        *v24 = 8236;
        *(v23 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v23, ", ", 2uLL);
      }

      v25 = *v22;
      v22 += 4;
      (*(*a3 + 176))(a3, v25);
      --v21;
    }

    while (v21);
  }

LABEL_26:
  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ")", 1uLL);
  }

  else
  {
    *v27 = 41;
    ++*(v26 + 4);
  }

  v36 = v38;
  v37 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v36, "caseValues", 10);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v36, v37);
  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = (*(*a3 + 16))(a3);
  v32 = *(v31 + 4);
  if (*(v31 + 3) - v32 > 1uLL)
  {
    *v32 = 15917;
    *(v31 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v31, "->", 2uLL);
  }

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

  (*(*a3 + 176))(a3, *(((v15 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (v36 != v38)
  {
    free(v36);
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::pdl_interp::SwitchTypeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) || !mlir::OpTrait::impl::verifyOneOperand(a1, v4))
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (v5)
  {
    v18[0] = a1;
    if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(v5, "caseValues", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) || !mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps5(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14[0] = "requires attribute 'caseValues'";
    v15 = 259;
    mlir::Operation::emitOpError(a1, v14, v18);
    v7 = v19;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    if (v7)
    {
LABEL_13:
      v9 = 0;
      goto LABEL_14;
    }
  }

  if (!mlir::OpTrait::impl::verifyIsTerminator(a1, v6))
  {
    goto LABEL_13;
  }

  v8 = *(a1 + 40) - 1;
  v16 = *(*(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1)) + 16);
  v17 = v8;
  if (v8 == v16)
  {
    v9 = 1;
  }

  else
  {
    v14[0] = "expected number of cases to match the number of case values, got ";
    v15 = 259;
    mlir::Operation::emitOpError(a1, v14, v18);
    v12 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v18, &v17);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<15ul>((v12 + 1), " but expected ");
    }

    v9 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v13, &v16) + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchTypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchTypesOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchTypesOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchTypesOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "pdl_interp.switch_types", 0x17, a2, &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E84108;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10 && (*a3 == 0x756C615665736163 ? (v4 = *(a3 + 8) == 29541) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 10)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 0x756C615665736163 && v6 == 29541)
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

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "caseValues";
    v7[1] = 10;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "caseValues", 0xAuLL);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "caseValues";
    v11[1] = 10;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::pdl_interp::SwitchTypesOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::ZeroResults<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::OneOperand<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::OpInvariants<mlir::pdl_interp::SwitchTypesOp>,mlir::BytecodeOpInterface::Trait<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::IsTerminator<mlir::pdl_interp::SwitchTypesOp>,mlir::ConditionallySpeculatable::Trait<mlir::pdl_interp::SwitchTypesOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::pdl_interp::SwitchTypesOp>,mlir::MemoryEffectOpInterface::Trait<mlir::pdl_interp::SwitchTypesOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::pdl_interp::SwitchTypesOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v38[4] = *MEMORY[0x277D85DE8];
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
    *v12 = 28532;
    *(v11 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, "to", 2uLL);
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

  v15 = a2 + 64;
  (*(*a3 + 48))(a3, *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)));
  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, "(", 1uLL);
  }

  else
  {
    *v17 = 40;
    ++*(v16 + 4);
  }

  v18 = *(a2 + 40);
  if (v18)
  {
    v19 = v18 - 1;
    if (v18 == 1)
    {
      goto LABEL_26;
    }

    v20 = ((v15 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  else
  {
    v19 = -1;
    v20 = 32;
  }

  (*(*a3 + 176))(a3, *(v20 + 24));
  if (v19 != 1)
  {
    v21 = v18 - 2;
    v22 = (v20 + 56);
    do
    {
      v23 = (*(*a3 + 16))(a3);
      v24 = *(v23 + 4);
      if (*(v23 + 3) - v24 > 1uLL)
      {
        *v24 = 8236;
        *(v23 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v23, ", ", 2uLL);
      }

      v25 = *v22;
      v22 += 4;
      (*(*a3 + 176))(a3, v25);
      --v21;
    }

    while (v21);
  }

LABEL_26:
  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ")", 1uLL);
  }

  else
  {
    *v27 = 41;
    ++*(v26 + 4);
  }

  v36 = v38;
  v37 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v36, "caseValues", 10);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v36, v37);
  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = (*(*a3 + 16))(a3);
  v32 = *(v31 + 4);
  if (*(v31 + 3) - v32 > 1uLL)
  {
    *v32 = 15917;
    *(v31 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v31, "->", 2uLL);
  }

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

  (*(*a3 + 176))(a3, *(((v15 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (v36 != v38)
  {
    free(v36);
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::pdl_interp::SwitchTypesOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyAtLeastNSuccessors(a1, 1) || !mlir::OpTrait::impl::verifyOneOperand(a1, v4))
  {
    goto LABEL_13;
  }

  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (v5)
  {
    v18[0] = a1;
    if (!mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps15(v5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) || !mlir::pdl_interp::__mlir_ods_local_type_constraint_PDLInterpOps6(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14[0] = "requires attribute 'caseValues'";
    v15 = 259;
    mlir::Operation::emitOpError(a1, v14, v18);
    v7 = v19;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    if (v7)
    {
LABEL_13:
      v9 = 0;
      goto LABEL_14;
    }
  }

  if (!mlir::OpTrait::impl::verifyIsTerminator(a1, v6))
  {
    goto LABEL_13;
  }

  v8 = *(a1 + 40) - 1;
  v16 = *(*(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1)) + 16);
  v17 = v8;
  if (v8 == v16)
  {
    v9 = 1;
  }

  else
  {
    v14[0] = "expected number of cases to match the number of case values, got ";
    v15 = 259;
    mlir::Operation::emitOpError(a1, v14, v18);
    v12 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v18, &v17);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<15ul>((v12 + 1), " but expected ");
    }

    v9 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v13, &v16) + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::pdl_interp::FuncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  *&v10 = a3 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v10 + 1) = a4;
  *&v9 = a5 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(&v9 + 1) = a6;
  result = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v6, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E9E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E9E8))
  {
    qword_27FC1E9D8 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>();
    unk_27FC1E9E0 = v1;
    __cxa_guard_release(&qword_27FC1E9E8);
  }

  return qword_27FC1E9D8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::ApplyConstraintOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyConstraintOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EA10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EA10))
  {
    qword_27FC1EA00 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>();
    *algn_27FC1EA08 = v1;
    __cxa_guard_release(&qword_27FC1EA10);
  }

  return qword_27FC1EA00;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::ApplyRewriteOpGenericAdaptorBase::Properties]";
  v6 = 132;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ApplyRewriteOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

BOOL mlir::AsmParser::parseType<mlir::pdl::PDLType>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 536))(a1, &v11))
  {
    v5 = v11;
    if (*(**v11 + 24) != &mlir::detail::TypeIDResolver<mlir::pdl::PDLDialect,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
    if (!v5)
    {
      v9 = "invalid kind of type specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EA38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EA38))
  {
    qword_27FC1EA28 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>();
    unk_27FC1EA30 = v1;
    __cxa_guard_release(&qword_27FC1EA38);
  }

  return qword_27FC1EA28;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckAttributeOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EA60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EA60))
  {
    qword_27FC1EA50 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>();
    *algn_27FC1EA58 = v1;
    __cxa_guard_release(&qword_27FC1EA60);
  }

  return qword_27FC1EA50;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckOperandCountOpGenericAdaptorBase::Properties]";
  v6 = 137;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EA88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EA88))
  {
    qword_27FC1EA78 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>();
    unk_27FC1EA80 = v1;
    __cxa_guard_release(&qword_27FC1EA88);
  }

  return qword_27FC1EA78;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckOperationNameOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EAB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EAB0))
  {
    qword_27FC1EAA0 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>();
    *algn_27FC1EAA8 = v1;
    __cxa_guard_release(&qword_27FC1EAB0);
  }

  return qword_27FC1EAA0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckResultCountOpGenericAdaptorBase::Properties]";
  v6 = 136;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EAD8))
  {
    qword_27FC1EAC8 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>();
    unk_27FC1EAD0 = v1;
    __cxa_guard_release(&qword_27FC1EAD8);
  }

  return qword_27FC1EAC8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckTypeOpGenericAdaptorBase::Properties]";
  v6 = 129;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EB00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EB00))
  {
    qword_27FC1EAF0 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>();
    *algn_27FC1EAF8 = v1;
    __cxa_guard_release(&qword_27FC1EB00);
  }

  return qword_27FC1EAF0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CheckTypesOpGenericAdaptorBase::Properties]";
  v6 = 130;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CheckTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EB28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EB28))
  {
    qword_27FC1EB18 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>();
    unk_27FC1EB20 = v1;
    __cxa_guard_release(&qword_27FC1EB28);
  }

  return qword_27FC1EB18;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CreateAttributeOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EB50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EB50))
  {
    qword_27FC1EB40 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>();
    *algn_27FC1EB48 = v1;
    __cxa_guard_release(&qword_27FC1EB50);
  }

  return qword_27FC1EB40;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CreateOperationOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateOperationOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EB78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EB78))
  {
    qword_27FC1EB68 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>();
    unk_27FC1EB70 = v1;
    __cxa_guard_release(&qword_27FC1EB78);
  }

  return qword_27FC1EB68;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CreateTypeOpGenericAdaptorBase::Properties]";
  v6 = 130;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EBA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EBA0))
  {
    qword_27FC1EB90 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>();
    *algn_27FC1EB98 = v1;
    __cxa_guard_release(&qword_27FC1EBA0);
  }

  return qword_27FC1EB90;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::CreateTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EBC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EBC8))
  {
    qword_27FC1EBB8 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>();
    unk_27FC1EBC0 = v1;
    __cxa_guard_release(&qword_27FC1EBC8);
  }

  return qword_27FC1EBB8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::ExtractOpGenericAdaptorBase::Properties]";
  v6 = 127;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::ExtractOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EBF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EBF0))
  {
    qword_27FC1EBE0 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>();
    *algn_27FC1EBE8 = v1;
    __cxa_guard_release(&qword_27FC1EBF0);
  }

  return qword_27FC1EBE0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::FuncOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EC18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EC18))
  {
    qword_27FC1EC08 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>();
    unk_27FC1EC10 = v1;
    __cxa_guard_release(&qword_27FC1EC18);
  }

  return qword_27FC1EC08;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::GetAttributeOpGenericAdaptorBase::Properties]";
  v6 = 132;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EC40))
  {
    qword_27FC1EC30 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>();
    *algn_27FC1EC38 = v1;
    __cxa_guard_release(&qword_27FC1EC40);
  }

  return qword_27FC1EC30;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::GetOperandOpGenericAdaptorBase::Properties]";
  v6 = 130;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EC68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EC68))
  {
    qword_27FC1EC58 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>();
    unk_27FC1EC60 = v1;
    __cxa_guard_release(&qword_27FC1EC68);
  }

  return qword_27FC1EC58;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::GetOperandsOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetOperandsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EC90))
  {
    qword_27FC1EC80 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>();
    *algn_27FC1EC88 = v1;
    __cxa_guard_release(&qword_27FC1EC90);
  }

  return qword_27FC1EC80;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::GetResultOpGenericAdaptorBase::Properties]";
  v6 = 129;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ECB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ECB8))
  {
    qword_27FC1ECA8 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>();
    unk_27FC1ECB0 = v1;
    __cxa_guard_release(&qword_27FC1ECB8);
  }

  return qword_27FC1ECA8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::GetResultsOpGenericAdaptorBase::Properties]";
  v6 = 130;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::GetResultsOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ECE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ECE0))
  {
    qword_27FC1ECD0 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>();
    *algn_27FC1ECD8 = v1;
    __cxa_guard_release(&qword_27FC1ECE0);
  }

  return qword_27FC1ECD0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::RecordMatchOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::RecordMatchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ED08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ED08))
  {
    qword_27FC1ECF8 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>();
    unk_27FC1ED00 = v1;
    __cxa_guard_release(&qword_27FC1ED08);
  }

  return qword_27FC1ECF8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchAttributeOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchAttributeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ED30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ED30))
  {
    qword_27FC1ED20 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>();
    *algn_27FC1ED28 = v1;
    __cxa_guard_release(&qword_27FC1ED30);
  }

  return qword_27FC1ED20;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchOperandCountOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

BOOL mlir::AsmParser::parseAttribute<mlir::DenseIntElementsAttr>(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v12 = 0;
  if ((*(*a1 + 440))(a1, &v12, 0))
  {
    v5 = v12;
    if (mlir::DenseIntElementsAttr::classof(v12))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    *a2 = v6;
    v7 = 1;
    if (!v6)
    {
      v10 = "invalid kind of attribute specified";
      v11 = 259;
      (*(*a1 + 24))(v13, a1, v4, &v10);
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperandCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ED58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ED58))
  {
    qword_27FC1ED48 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>();
    unk_27FC1ED50 = v1;
    __cxa_guard_release(&qword_27FC1ED58);
  }

  return qword_27FC1ED48;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchOperationNameOpGenericAdaptorBase::Properties]";
  v6 = 139;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchOperationNameOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1ED80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1ED80))
  {
    qword_27FC1ED70 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>();
    *algn_27FC1ED78 = v1;
    __cxa_guard_release(&qword_27FC1ED80);
  }

  return qword_27FC1ED70;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchResultCountOpGenericAdaptorBase::Properties]";
  v6 = 137;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchResultCountOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EDA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EDA8))
  {
    qword_27FC1ED98 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>();
    unk_27FC1EDA0 = v1;
    __cxa_guard_release(&qword_27FC1EDA8);
  }

  return qword_27FC1ED98;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchTypeOpGenericAdaptorBase::Properties]";
  v6 = 130;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchTypeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1EDD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EDD0))
  {
    qword_27FC1EDC0 = llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>();
    *algn_27FC1EDC8 = v1;
    __cxa_guard_release(&qword_27FC1EDD0);
  }

  return qword_27FC1EDC0;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_interp::detail::SwitchTypesOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::pdl_interp::SwitchTypesOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void anonymous namespace::PDLToPDLInterpPass::~PDLToPDLInterpPass(_anonymous_namespace_::PDLToPDLInterpPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::impl::ConvertPDLToPDLInterpBase<anonymous namespace::PDLToPDLInterpPass>::getDependentDialects(int a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_286E84280;
  v4[3] = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::pdl_interp::PDLInterpDialect,void>::id, "pdl_interp", 0xAuLL, v4);
  result = std::__function::__value_func<mlir::Dialect * ()(mlir::MLIRContext *)>::~__value_func[abi:nn200100](v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void anonymous namespace::PDLToPDLInterpPass::runOnOperation(_anonymous_namespace_::PDLToPDLInterpPass *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1) + ((*(v1 + 44) >> 21) & 0x7F8) + 32 * *(v1 + 40) + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3[5];
  v11[0] = *(***(*((v3[3] & 0xFFFFFFFFFFFFFFF8) + 16) + 24) + 32);
  v11[1] = 0;
  v11[2] = v3;
  v11[3] = v4;
  v5 = *(v1 + 24);
  v6 = *(*v11[0] + 384);
  *&v14 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
  *&v13 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), &v14);
  *&v14 = &v13 + 2;
  *(&v14 + 1) = 1;
  v12 = xmmword_25D0A0640;
  v7 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v11[0], &v14, &v12);
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::FuncOp>(*(**v5 + 32));
  *&v14 = v5;
  *(&v14 + 1) = v8;
  v15 = v17;
  v16 = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = &v20;
  v19[10] = 0x100000000;
  v21 = &v23;
  v22 = 0x100000000;
  v25 = 0;
  v24 = 0;
  v26 = &mlir::detail::TypeIDResolver<void,void>::id;
  v27 = 0;
  v28 = 0;
  v9 = *(v7 + 16) & 0xFFFFFFFFFFFFFFF9 | 2;
  v10 = *(v7 + 8);
  mlir::detail::FunctionOpInterfaceTrait<mlir::pdl_interp::FuncOp>::buildWithEntryBlock(v11, &v14, "matcher", 7, v7, 0, 0);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::FuncOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FuncOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.func";
    v5[3] = 15;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

mlir::Block *anonymous namespace::PatternLowering::generateMatcher(_anonymous_namespace_::PatternLowering *this, mlir::pdl_to_pdl_interp::MatcherNode *a2, mlir::Region *a3, mlir::Block *a4)
{
  v6 = a2;
  v77[33] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    operator new();
  }

  v8 = *(this + 14);
  v67[0] = (this + 88);
  v67[1] = v8;
  *(this + 14) = v67;
  v67[2] = 0;
  v9 = *(a2 + 5);
  if (v9 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID())
  {
    *(this + 2) = a4;
    *(this + 3) = a4 + 32;
    mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(this, *(*(this + 4) + 24));
    goto LABEL_85;
  }

  v10 = *(v6 + 3);
  if (v10)
  {
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(this + 120, Matcher);
  }

  else
  {
    Matcher = *(*(this + 15) + 8 * *(this + 32) - 8);
  }

  v66 = a4;
  v12 = *(v6 + 1);
  if (v12)
  {
    v65 = ValueAt;
    if (ValueAt && *(*(*&ValueAt[1] & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::insert(this + 224, &v65);
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v65 = 0;
  }

  v63 = v6;
  v64 = 0;
  v15 = *(v6 + 5);
  if (v15 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID())
  {
    v67[5] = v65;
    if ((~v65[1].i32[0] & 7) != 0)
    {
      v27 = v65;
    }

    else
    {
      v27 = 0;
    }

    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = *&v27[1] & 7;
    if (v28 == 6)
    {
      v29 = &v27[3 * *&v27[2] + 15];
      if (!v29)
      {
LABEL_37:
        v30 = v65 + 4;
        goto LABEL_48;
      }
    }

    else
    {
      v29 = &v27[2 * v28 + 2];
    }

    v30 = (v29 + 24);
LABEL_48:
    v41 = *v30;
    v42 = *(v6 + 2);
    v43 = *(v6 + 6);
    v44 = *(v66 + 3) & 0xFFFFFFFFFFFFFFF8;
    v70 = v72;
    v71 = 0x600000000;
    if (*v42 == 21)
    {
      v45 = *(v42 + 32);
      if (v45)
      {
        v46 = *(v42 + 24);
        v47 = 8 * v45;
        do
        {
          v48 = *v46++;
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v70, v49);
          v47 -= 8;
        }

        while (v47);
      }
    }

    else if (*v42 == 20)
    {
      LODWORD(v71) = 0;
      llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v70, __src, &__src[1]);
    }

    operator new();
  }

  v16 = *(v6 + 5);
  if (v16 == mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID())
  {
    v17 = v65;
    v18 = v66;
    v68 = v6;
    v19 = *(v6 + 2);
    v61 = *(*(this + 15) + 8 * *(this + 32) - 8);
    v62 = *(v66 + 3);
    if ((*v19 & 0xFFFFFFFD) != 0x10)
    {
      v59 = v66;
      v60 = v14;
      LODWORD(v74) = 0;
      *__src = 0u;
      v75 = v77;
      v76 = 0;
      v31 = v6;
      v32 = *(v6 + 20);
      if (v32)
      {
        v33 = *(v6 + 9);
        v34 = 16 * v32;
        v35 = (v33 + 8);
        do
        {
          v37 = *(v35 - 1);
          v70 = v37;
          LODWORD(v71) = 0;
          v69 = 0;
          if ((llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Qualifier *>(__src, &v70, &v69) & 1) == 0)
          {
            v38 = llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::InsertIntoBucketImpl<mlir::pdl_to_pdl_interp::Qualifier *>(__src, &v70, v69);
            *v38 = v70;
            *(v38 + 2) = v71;
            v39 = v76;
            *(v38 + 2) = v76;
            if (v39 >= HIDWORD(v76))
            {
              llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::push_back(&v75, v37, v36);
            }

            else
            {
              v40 = v75 + 16 * v39;
              *v40 = v37;
              v40[1] = v36;
              LODWORD(v76) = v39 + 1;
            }
          }

          v35 += 2;
          v34 -= 16;
        }

        while (v34);
      }

      *(this + 2) = v59;
      *(this + 3) = v59 + 32;
      v50 = *v19;
      if (*v19 <= 14)
      {
        v6 = v31;
        if (v50 == 13)
        {
          createSwitchOp<mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(v17, v61, this, __src);
        }

        else if (*(*(*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          createSwitchOp<mlir::pdl_interp::SwitchTypesOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(v17, v61, this, __src);
        }

        else
        {
          createSwitchOp<mlir::pdl_interp::SwitchTypeOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(v17, v61, this, __src);
        }
      }

      else
      {
        v6 = v31;
        if (v50 == 15)
        {
          createSwitchOp<mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute>(v17, v61, this, __src);
        }

        else if (v50 == 17)
        {
          createSwitchOp<mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(v17, v61, this, __src);
        }

        else
        {
          createSwitchOp<mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(v17, v61, this, __src);
        }
      }

      if (v75 != v77)
      {
        free(v75);
      }

      MEMORY[0x25F891030](__src[0], 8);
      v14 = v60;
      goto LABEL_77;
    }

    v20 = *(v6 + 20);
    __src[0] = &v74;
    __src[1] = 0x1000000000;
    llvm::SmallVectorImpl<unsigned int>::append<llvm::detail::SafeIntIterator<unsigned int,false>,void>(__src, 0, v20);
    v70 = v72;
    v71 = 0xC00000000;
    if (LODWORD(__src[1]))
    {
      llvm::SmallVectorImpl<unsigned int>::operator=(&v70, __src);
    }

    if (__src[0] != &v74)
    {
      free(__src[0]);
    }

    __src[0] = &v68;
    v21 = 126 - 2 * __clz(v71);
    if (v71)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(this + 120, v61);
    if ((~*(v17 + 8) & 7) != 0)
    {
      v23 = v17;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = *(v23 + 8) & 7;
    if (v24 == 6)
    {
      v25 = v23 + 24 * *(v23 + 16) + 120;
      if (!v25)
      {
LABEL_30:
        v26 = (v17 + 32);
LABEL_63:
        if (v71)
        {
          v51 = *v26;
          mlir::OpBuilder::createBlock();
        }

        v53 = *(this + 32);
        v54 = *(*(this + 15) + 8 * v53 - 8);
        *(this + 32) = v53 - 1;
        if (*(v54 + 32) != v54 + 32)
        {
          llvm::iplist_impl<llvm::simple_ilist<mlir::Operation>,llvm::ilist_traits<mlir::Operation>>::transfer(v18 + 32, v18 + 4, v54 + 32, *(v54 + 40), (v54 + 32));
        }

        llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::erase(*(v54 + 24) & 0xFFFFFFFFFFFFFFF8, v54 + 8);
        if (v70 != v72)
        {
          free(v70);
        }

LABEL_77:
        v64 = 1;
        goto LABEL_78;
      }
    }

    else
    {
      v25 = v23 + 16 * v24 + 16;
    }

    v26 = (v25 + 24);
    goto LABEL_63;
  }

LABEL_78:
  __src[0] = this;
  __src[1] = &v66;
  v55 = *(this + 15) - 8;
  v56 = *(this + 32);
  if (*(v55 + 8 * v56) != Matcher)
  {
    do
    {
      LODWORD(v56) = v56 - 1;
    }

    while (*(v55 + 8 * v56) != Matcher);
    *(this + 32) = v56;
  }

  if (*(v6 + 3))
  {
    *(this + 32) = v56 - 1;
  }

  if (v14)
  {
    llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::remove(this + 224, &v65);
  }

LABEL_85:
  llvm::ScopedHashTableScope<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::~ScopedHashTableScope(v67);
  v57 = *MEMORY[0x277D85DE8];
  return a4;
}

uint64_t mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributePosition,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributePosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[501];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributePosition>();
    unk_27FC18FC0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributePosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributePosition]";
  v6 = 104;
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

uint64_t mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[506];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>();
    *algn_27FC18FE8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeLiteralPosition]";
  v6 = 111;
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

uint64_t mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintPosition,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[511];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ConstraintPosition>();
    unk_27FC19010 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ConstraintPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ConstraintPosition]";
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ForEachPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ForEachPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[4];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ForEachPosition>();
    *algn_27FC19038 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ForEachPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ForEachPosition]";
  v6 = 102;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[9];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandPosition>();
    unk_27FC19060 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandPosition]";
  v6 = 102;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[14];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandGroupPosition>();
    *algn_27FC19088 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandGroupPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandGroupPosition]";
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[19];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationPosition>();
    unk_27FC190B0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationPosition]";
  v6 = 104;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[24];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultPosition>();
    *algn_27FC190D8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultPosition]";
  v6 = 101;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[29];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultGroupPosition>();
    unk_27FC19100 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultGroupPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultGroupPosition]";
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[34];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypePosition>();
    *algn_27FC19128 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypePosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypePosition]";
  v6 = 99;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[39];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeLiteralPosition>();
    unk_27FC19150 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeLiteralPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeLiteralPosition]";
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UsersPosition,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UsersPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[44];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::UsersPosition>();
    *algn_27FC19178 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::UsersPosition>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::UsersPosition]";
  v6 = 100;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[49];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeAnswer>();
    unk_27FC191A0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeAnswer]";
  v6 = 102;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[54];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationNameAnswer>();
    *algn_27FC191C8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationNameAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationNameAnswer]";
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[59];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeAnswer>();
    unk_27FC191F0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeAnswer]";
  v6 = 97;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[64];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::UnsignedAnswer>();
    *algn_27FC19218 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::UnsignedAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::UnsignedAnswer]";
  v6 = 101;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::FalseAnswer>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::FalseAnswer *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 23;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::FalseAnswer>()
{
  if ((atomic_load_explicit(&qword_27FC1EDF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1EDF8))
  {
    qword_27FC1EDE8 = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::FalseAnswer>();
    unk_27FC1EDF0 = v1;
    __cxa_guard_release(&qword_27FC1EDF8);
  }

  return qword_27FC1EDE8;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::FalseAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::FalseAnswer]";
  v6 = 98;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::TrueAnswer>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TrueAnswer *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 25;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[69];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TrueAnswer>();
    unk_27FC19240 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TrueAnswer>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::TrueAnswer]";
  v6 = 97;
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[74];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ConstraintQuestion>();
    *algn_27FC19268 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ConstraintQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ConstraintQuestion]";
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

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[79];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::EqualToQuestion>();
    unk_27FC19290 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::EqualToQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::EqualToQuestion]";
  v6 = 102;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::AttributeQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::AttributeQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 15;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[84];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeQuestion>();
    *algn_27FC192B8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::AttributeQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::AttributeQuestion]";
  v6 = 104;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::IsNotNullQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::IsNotNullQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 12;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      IsNotNull = llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(IsNotNull, v4);
    }
  }

  return v0[89];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::IsNotNullQuestion>();
    unk_27FC192E0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::IsNotNullQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::IsNotNullQuestion]";
  v6 = 104;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperandCountQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandCountQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 17;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[94];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandCountQuestion>();
    *algn_27FC19308 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandCountQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandCountQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 16;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[99];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>();
    unk_27FC19330 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion]";
  v6 = 114;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::OperationNameQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationNameQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 13;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[104];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationNameQuestion>();
    *algn_27FC19358 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::OperationNameQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::OperationNameQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::ResultCountQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultCountQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 19;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[109];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultCountQuestion>();
    unk_27FC19380 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultCountQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultCountQuestion]";
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 18;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[114];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>();
    *algn_27FC193A8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion]";
  v6 = 113;
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

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::pdl_to_pdl_interp::TypeQuestion>(mlir::TypeID,llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::TypeQuestion *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void (***a1)(void, void *), unint64_t *a2)
{
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8, 3);
  *v3 = 14;
  v4 = **a1;
  if (v4)
  {
    v4((*a1)[1], v3);
  }

  return v3;
}

__guard mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[119];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeQuestion>();
    unk_27FC193D0 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::TypeQuestion>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::TypeQuestion]";
  v6 = 99;
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

void *llvm::ScopedHashTable<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::insertIntoScope(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::operator[](a1, a3);
  v8 = *(a2 + 16);
  v9 = *v7;
  result = llvm::allocate_buffer(0x20, 8uLL);
  v11 = *a4;
  result[2] = *a3;
  result[3] = v11;
  *result = v8;
  result[1] = v9;
  *v7 = result;
  *(a2 + 16) = result;
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::operator[](uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Position *>(*a1, *(a1 + 16), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 1;
  }

  v10 = v9;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Position *>(*a1, *(a1 + 16), *a2, &v10);
    v6 = *(a1 + 8);
    v5 = v10;
  }

  *(a1 + 8) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  v5[1] = 0;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Position *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Position *>(*a1, *(a1 + 16), v20, &v30);
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

uint64_t mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v15[0] = a2;
  v15[1] = a3;
  v8 = *a6;
  v13 = 0;
  v14 = v8;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v18 = 0;
  v19 = 0xFF51AFD7ED558CCDLL;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::Position *,unsigned int>(v16, 0, v16, v17, &v13, &v14);
  v12 = &v13;
  *&v16[0] = &v13;
  *(&v16[0] + 1) = v15;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*a1, a4, v9, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::pdl_to_pdl_interp::Position *,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::pdl_to_pdl_interp::Position *>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

void *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<mlir::pdl_to_pdl_interp::Position *>(uint64_t a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v9, v10, v14);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 8 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 8 - v8);
      a1 += 8 - v8;
    }
  }

  return a1;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::pdl_to_pdl_interp::OperationPosition * mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>(llvm::function_ref<void ()(mlir::pdl_to_pdl_interp::OperationPosition *)>,mlir::TypeID,decltype(nullptr),int &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *(v4 + 16) = 0;
  *v4 = &unk_286E842E8;
  *(v4 + 8) = 0;
  *(v4 + 24) = *v3;
  v5 = *v3;
  *v4 = &unk_286E842C8;
  *(v4 + 8) = v5;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v4);
  }

  return v4;
}

void mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v4 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id, *(**a2 + 32));
  if ((v5 & 1) == 0)
  {
    v11 = 1283;
    v10[2] = "pdl_interp.finalize";
    v10[3] = 19;
    v9 = 259;
    llvm::operator+(v10, &v8, v12);
    llvm::report_fatal_error(v12, 1);
  }

  v12[0] = a2;
  v12[1] = v4;
  v12[2] = v13;
  v12[3] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[8] = 4;
  v15[9] = v16;
  v15[10] = 0x100000000;
  v16[1] = v17;
  v16[2] = 0x100000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v17[4] = 0;
  v17[6] = 0;
  v6 = mlir::Operation::create(v12);
  mlir::OpBuilder::insert(a1, v6);
  mlir::OperationState::~OperationState(v12);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t anonymous namespace::PatternLowering::getValueAt(uint64_t a1, void *a2, uint64_t a3)
{
  v117 = *MEMORY[0x277D85DE8];
  v86 = a3;
  v7 = a1 + 88;
  v6 = *(a1 + 88);
  v8 = *(a1 + 104);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = (v8 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v10 = *(v6 + 16 * v9);
  if (v10 != a3)
  {
    v73 = 1;
    while (v10 != -4096)
    {
      v74 = v9 + v73++;
      v9 = v74 & (v8 - 1);
      v10 = *(v6 + 16 * v9);
      if (v10 == a3)
      {
        goto LABEL_3;
      }
    }

LABEL_5:
    v85 = 0;
    if (*(a3 + 8))
    {
      v11 = ValueAt;
      v85 = ValueAt;
      if (ValueAt)
      {
        v13 = *(ValueAt + 8) & 7;
        v14 = v13 == 7;
        if (v13 == 7)
        {
          v15 = 0;
        }

        else
        {
          v15 = ValueAt;
        }

        if (v14)
        {
          goto LABEL_12;
        }

        v18 = *(v15 + 8) & 7;
        if (v18 == 6)
        {
          v19 = v15 + 24 * *(v15 + 16) + 120;
          if (!v19)
          {
LABEL_12:
            v16 = (ValueAt + 32);
LABEL_21:
            v17 = ValueAt;
LABEL_22:
            v20 = *v16;
            v21 = *a2 + 32;
            *(a1 + 16) = *a2;
            *(a1 + 24) = v21;
            v87 = 0;
            v22 = *(a3 + 16);
            if (v22 > 5)
            {
              if (v22 > 8)
              {
                if (v22 != 9)
                {
                  if (v22 == 10)
                  {
                    if (*(*(*(v17 + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id && *(a3 + 32) == 1)
                    {
                      LODWORD(v94) = 0;
                      v17 = mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(a1, v20, &v85, &v94) - 16;
                    }

                    v26 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id;
                    v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id, *(**v20 + 32));
                    if (v37)
                    {
                      v94 = v20;
                      v95 = v36;
                      v96 = v98;
                      v97 = 0x400000000;
                      v99 = v101;
                      v100 = 0x400000000;
                      v102 = v104;
                      v103 = 0x400000000;
                      v105 = 4;
                      v106 = &v108;
                      v107 = 0x100000000;
                      v109 = &v111;
                      v110 = 0x100000000;
                      v112 = 0;
                      v113 = 0;
                      v114 = &mlir::detail::TypeIDResolver<void,void>::id;
                      v115 = 0;
                      v116 = 0;
                      mlir::pdl_interp::GetUsersOp::build(a1, &v94, v17);
                      goto LABEL_62;
                    }

                    v93 = 1283;
                    v91 = "pdl_interp.get_users";
                    v75 = 20;
                  }

                  else
                  {
                    v68 = *(a1 + 120);
                    v69 = *(a1 + 128);
                    v70 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id, *(**v20 + 32));
                    if (v71)
                    {
                      v94 = v20;
                      v95 = v70;
                      v96 = v98;
                      v97 = 0x400000000;
                      v99 = v101;
                      v100 = 0x400000000;
                      v102 = v104;
                      v103 = 0x400000000;
                      v105 = 4;
                      v106 = &v108;
                      v107 = 0x100000000;
                      v109 = &v111;
                      v110 = 0x100000000;
                      v112 = 0;
                      v113 = 0;
                      v114 = &mlir::detail::TypeIDResolver<void,void>::id;
                      v115 = 0;
                      v116 = 0;
                      v72 = *(v68 + 8 * v69 - 8);
                      mlir::pdl_interp::ForEachOp::build(a1, &v94, v17);
                    }

                    v93 = 1283;
                    v91 = "pdl_interp.foreach";
                    v75 = 18;
                  }

LABEL_83:
                  v92 = v75;
                  v89 = 259;
                  llvm::operator+(v90, &v88, &v94);
                  llvm::report_fatal_error(&v94, 1);
                }

                v54 = *(a3 + 24);
                if (*(*v54 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
                {
                  v55 = *(a3 + 24);
                }

                else
                {
                  v55 = 0;
                }

                v94 = v55;
                if (v55)
                {
                  v29 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(a1, v20, &v94);
                }

                else
                {
                  v90[0] = v54;
                  v29 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(a1, v20, v90);
                }
              }

              else
              {
                if (v22 == 6)
                {
                  v40 = *(**a1 + 384);
                  v94 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
                  v41 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v40 + 232), &v94);
                  v42 = *v41;
                  if (*(a3 + 40) == 1)
                  {
                    v94 = *v41;
                    v42 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v42 + 32), &v94);
                  }

                  v43 = *(a3 + 32);
                  Results = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultsOp>(*(**v20 + 32));
                  v94 = v20;
                  v95 = Results;
                  v96 = v98;
                  v97 = 0x400000000;
                  v99 = v101;
                  v100 = 0x400000000;
                  v102 = v104;
                  v103 = 0x400000000;
                  v105 = 4;
                  v106 = &v108;
                  v107 = 0x100000000;
                  v109 = &v111;
                  v110 = 0x100000000;
                  v112 = 0;
                  v113 = 0;
                  v114 = &mlir::detail::TypeIDResolver<void,void>::id;
                  v115 = 0;
                  v116 = 0;
                  mlir::pdl_interp::GetResultsOp::build(a1, &v94, v42, v17, v43 & 0xFFFFFFFFFFLL);
                  v45 = mlir::Operation::create(&v94);
                  mlir::OpBuilder::insert(a1, v45);
                  v46 = *(*(v45 + 6) + 16);
                  v26 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id;
                  goto LABEL_65;
                }

                if (v22 != 7)
                {
                  Attribute = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateAttributeOp>(*(**v20 + 32));
                  v94 = v20;
                  v95 = Attribute;
                  v96 = v98;
                  v97 = 0x400000000;
                  v99 = v101;
                  v100 = 0x400000000;
                  v102 = v104;
                  v103 = 0x400000000;
                  v105 = 4;
                  v106 = &v108;
                  v107 = 0x100000000;
                  v109 = &v111;
                  v110 = 0x100000000;
                  v112 = 0;
                  v113 = 0;
                  v114 = &mlir::detail::TypeIDResolver<void,void>::id;
                  v115 = 0;
                  v116 = 0;
                  mlir::pdl_interp::CreateAttributeOp::build(a1, &v94, *(a3 + 24));
                  v45 = mlir::Operation::create(&v94);
                  mlir::OpBuilder::insert(a1, v45);
                  v46 = *(*(v45 + 6) + 16);
                  v26 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id;
                  goto LABEL_65;
                }

                if (*(*(*(v17 + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
                {
                  v29 = mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(a1, v20, &v85);
                }

                else
                {
                  v29 = mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(a1, v20, &v85);
                }
              }

              goto LABEL_73;
            }

            if (v22 <= 2)
            {
              if (v22)
              {
                if (v22 == 1)
                {
                  v23 = *(**a1 + 384);
                  v94 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
                  v24 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v23 + 232), &v94);
                  v25 = *(a3 + 32);
                  v26 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id;
                  v27 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id, *(**v20 + 32));
                  if (v28)
                  {
                    v94 = v20;
                    v95 = v27;
                    v96 = v98;
                    v97 = 0x400000000;
                    v99 = v101;
                    v100 = 0x400000000;
                    v102 = v104;
                    v103 = 0x400000000;
                    v105 = 4;
                    v106 = &v108;
                    v107 = 0x100000000;
                    v109 = &v111;
                    v110 = 0x100000000;
                    v112 = 0;
                    v113 = 0;
                    v114 = &mlir::detail::TypeIDResolver<void,void>::id;
                    v115 = 0;
                    v116 = 0;
                    mlir::pdl_interp::GetOperandOp::build(a1, &v94, v24, v17, v25);
LABEL_62:
                    v45 = mlir::Operation::create(&v94);
                    mlir::OpBuilder::insert(a1, v45);
                    v46 = *(*(v45 + 6) + 16);
LABEL_65:
                    mlir::OperationState::~OperationState(&v94);
                    if (v46 == v26)
                    {
                      v67 = v45;
                    }

                    else
                    {
                      v67 = 0;
                    }

                    v11 = (v67 - 16);
                    goto LABEL_94;
                  }

                  v93 = 1283;
                  v91 = "pdl_interp.get_operand";
                  v75 = 22;
                }

                else
                {
                  v56 = *(**a1 + 384);
                  v94 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
                  v57 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v56 + 232), &v94);
                  v58 = *v57;
                  if (*(a3 + 40) == 1)
                  {
                    v94 = *v57;
                    v58 = mlir::detail::TypeUniquer::get<mlir::pdl::RangeType,mlir::Type &>(*(**v58 + 32), &v94);
                  }

                  v59 = *(a3 + 32);
                  v26 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id;
                  v60 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id, *(**v20 + 32));
                  if (v61)
                  {
                    v94 = v20;
                    v95 = v60;
                    v96 = v98;
                    v97 = 0x400000000;
                    v99 = v101;
                    v100 = 0x400000000;
                    v102 = v104;
                    v103 = 0x400000000;
                    v105 = 4;
                    v106 = &v108;
                    v107 = 0x100000000;
                    v109 = &v111;
                    v110 = 0x100000000;
                    v112 = 0;
                    v113 = 0;
                    v114 = &mlir::detail::TypeIDResolver<void,void>::id;
                    v115 = 0;
                    v116 = 0;
                    mlir::pdl_interp::GetOperandsOp::build(a1, &v94, v58, v17, v59 & 0xFFFFFFFFFFLL);
                    goto LABEL_62;
                  }

                  v93 = 1283;
                  v91 = "pdl_interp.get_operands";
                  v75 = 23;
                }

                goto LABEL_83;
              }

              v38 = *(a3 + 8);
              if (!v38 || (*(v38 + 16) - 1) > 1)
              {
LABEL_94:
                v87 = v11;
                llvm::ScopedHashTable<mlir::pdl_to_pdl_interp::Position *,mlir::Value,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::MallocAllocator>::insertIntoScope(v7, *(a1 + 112), &v86, &v87);
                goto LABEL_95;
              }

              v39 = *(**a1 + 384);
              v94 = &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id;
              v94 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v39 + 232), &v94);
              v29 = mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(a1, v20, &v94, &v85);
LABEL_73:
              v11 = (v29 - 16);
              goto LABEL_94;
            }

            if (v22 == 3)
            {
              v47 = *(**a1 + 384);
              v94 = &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id;
              v48 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v47 + 232), &v94);
              v49 = *(a3 + 32);
              v50 = *(v49 + 16);
              v51 = *(v49 + 24);
              v26 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id;
              v52 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id, *(**v20 + 32));
              if (v53)
              {
                v94 = v20;
                v95 = v52;
                v96 = v98;
                v97 = 0x400000000;
                v99 = v101;
                v100 = 0x400000000;
                v102 = v104;
                v103 = 0x400000000;
                v105 = 4;
                v106 = &v108;
                v107 = 0x100000000;
                v109 = &v111;
                v110 = 0x100000000;
                v112 = 0;
                v113 = 0;
                v114 = &mlir::detail::TypeIDResolver<void,void>::id;
                v115 = 0;
                v116 = 0;
                mlir::pdl_interp::GetAttributeOp::build(a1, &v94, v48, v17, v50, v51);
                goto LABEL_62;
              }

              v93 = 1283;
              v91 = "pdl_interp.get_attribute";
              v75 = 24;
              goto LABEL_83;
            }

            if (v22 != 4)
            {
              v63 = *(**a1 + 384);
              v94 = &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
              v64 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v63 + 232), &v94);
              v65 = *(a3 + 32);
              v66 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultOp>(*(**v20 + 32));
              v94 = v20;
              v95 = v66;
              v96 = v98;
              v97 = 0x400000000;
              v99 = v101;
              v100 = 0x400000000;
              v102 = v104;
              v103 = 0x400000000;
              v105 = 4;
              v106 = &v108;
              v107 = 0x100000000;
              v109 = &v111;
              v110 = 0x100000000;
              v112 = 0;
              v113 = 0;
              v114 = &mlir::detail::TypeIDResolver<void,void>::id;
              v115 = 0;
              v116 = 0;
              mlir::pdl_interp::GetResultOp::build(a1, &v94, v64, v17, v65);
              v45 = mlir::Operation::create(&v94);
              mlir::OpBuilder::insert(a1, v45);
              v46 = *(*(v45 + 6) + 16);
              v26 = &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id;
              goto LABEL_65;
            }

            v30 = *(a1 + 272);
            v31 = *(a1 + 288);
            if (v31)
            {
              v32 = *(a3 + 24);
              v33 = ((v32 >> 4) ^ (v32 >> 9)) & (v31 - 1);
              v34 = *(v30 + 16 * v33);
              if (v34 == v32)
              {
LABEL_37:
                v35 = v30 + 16 * v33;
LABEL_89:
                v78 = v30 + 16 * v31;
                if (v35)
                {
                  v78 = v35;
                }

                v79 = *(v78 + 8);
                v80 = *(a3 + 32);
                v81 = v79 - 24 * (v80 - 5) - 96;
                v82 = v79 - 16 * v80 - 16;
                if (v80 <= 5)
                {
                  v11 = v82;
                }

                else
                {
                  v11 = v81;
                }

                goto LABEL_94;
              }

              v76 = 1;
              while (v34 != -4096)
              {
                v77 = v33 + v76++;
                v33 = v77 & (v31 - 1);
                v34 = *(v30 + 16 * v33);
                if (v34 == v32)
                {
                  goto LABEL_37;
                }
              }
            }

            v35 = 0;
            goto LABEL_89;
          }
        }

        else
        {
          v19 = v15 + 16 * v18 + 16;
        }

        v16 = (v19 + 24);
        goto LABEL_21;
      }

      v17 = 0;
    }

    else
    {
      v17 = 0;
    }

    v11 = 0;
    v16 = (**a1 + 616);
    goto LABEL_22;
  }

LABEL_3:
  if (v9 == v8)
  {
    goto LABEL_5;
  }

  v11 = *(*(v6 + 16 * v9 + 8) + 24);
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_95:
  v83 = *MEMORY[0x277D85DE8];
  return v11;
}

_BYTE *llvm::detail::TypeSwitchBase<llvm::TypeSwitch<mlir::pdl_to_pdl_interp::MatcherNode *,void>,mlir::pdl_to_pdl_interp::MatcherNode *>::Case<anonymous namespace::PatternLowering::generateMatcher(mlir::pdl_to_pdl_interp::MatcherNode&,mlir::Region &,mlir::Block *)::$_1>(_BYTE *a1, void *a2)
{
  v34[13] = *MEMORY[0x277D85DE8];
  if ((a1[8] & 1) == 0)
  {
    v4 = *a1;
    v5 = *(*a1 + 40);
    v6 = mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID();
    if (v4 && v5 == v6)
    {
      v9 = *a2;
      v8 = a2[1];
      v10 = *(v4 + 48);
      v24 = *(v4 + 56);
      v11 = *(*a2 + 40);
      v13 = *(v11 + 40);
      v12 = *(v11 + 44);
      v25[10] = &v26;
      v25[11] = 0x800000000;
      v14 = *(((v11 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v13 + 8);
      if (v14)
      {
        v15 = v14 - 8;
      }

      else
      {
        v15 = 0;
      }

      v9[2] = v15;
      v9[3] = v15 + 32;
      v16 = *(v10 + 24);
      v17 = *v9;
      *v27 = xmmword_25D0A0640;
      *v25 = xmmword_25D0A0640;
      v18 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v17, v27, v25);
      v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::FuncOp>(*(**v16 + 32));
      v27[0] = v16;
      v27[1] = v19;
      v27[2] = &v28;
      v27[3] = 0x400000000;
      v29 = v31;
      v30 = 0x400000000;
      v31[4] = v32;
      v31[5] = 0x400000000;
      v32[8] = 4;
      v32[9] = v33;
      v32[10] = 0x100000000;
      v33[1] = v34;
      v33[2] = 0x100000000;
      v34[2] = 0;
      v34[1] = 0;
      v34[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v34[4] = 0;
      v34[6] = 0;
      v22 = *(v18 + 16) & 0xFFFFFFFFFFFFFFF9 | 2;
      v23 = *(v18 + 8);
      mlir::detail::FunctionOpInterfaceTrait<mlir::pdl_interp::FuncOp>::buildWithEntryBlock(v9, v27, "pdl_generated_rewriter", 22, v18, 0, 0);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return a1;
}

BOOL llvm::SetVector<mlir::Value,llvm::SmallVector<mlir::Value,0u>,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>>,0u>::remove(uint64_t a1, void *a2)
{
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::doFind<mlir::Value>(a1, a2);
  v5 = v4;
  if (v4)
  {
    *v4 = -8192;
    *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = &v6[v7];
    if (v7)
    {
      v9 = 8 * v7;
      while (*v6 != *a2)
      {
        ++v6;
        v9 -= 8;
        if (!v9)
        {
          v6 = v8;
          break;
        }
      }
    }

    if (v8 != v6 + 1)
    {
      memmove(v6, v6 + 1, v8 - (v6 + 1));
      LODWORD(v7) = *(a1 + 32);
    }

    *(a1 + 32) = v7 - 1;
  }

  return v5 != 0;
}

uint64_t mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[124];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ExitNode>();
    *algn_27FC193F8 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::ExitNode>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::ExitNode]";
  v6 = 95;
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

char *mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v17 = 1283;
    v16[2] = "pdl_interp.get_defining_op";
    v16[3] = 26;
    v15 = 259;
    llvm::operator+(v16, &v14, v18);
    llvm::report_fatal_error(v18, 1);
  }

  v18[0] = a2;
  v18[1] = v8;
  v18[2] = v19;
  v18[3] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  mlir::pdl_interp::GetDefiningOpOp::build(a1, v18, *a3, *a4);
  v10 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

char *mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v17 = 1283;
    v16[2] = "pdl_interp.extract";
    v16[3] = 18;
    v15 = 259;
    llvm::operator+(v16, &v14, v18);
    llvm::report_fatal_error(v18, 1);
  }

  v18[0] = a2;
  v18[1] = v8;
  v18[2] = v19;
  v18[3] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  mlir::pdl_interp::ExtractOp::build(a1, v18, *((*(*a3 + 8) & 0xFFFFFFFFFFFFFFF8) + 8), *a3, *a4);
  v10 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

char *mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id, *(**a2 + 32));
  if ((v7 & 1) == 0)
  {
    v15 = 1283;
    v14[2] = "pdl_interp.get_attribute_type";
    v14[3] = 29;
    v13 = 259;
    llvm::operator+(v14, &v12, v16);
    llvm::report_fatal_error(v16, 1);
  }

  v16[0] = a2;
  v16[1] = v6;
  v16[2] = v17;
  v16[3] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  mlir::pdl_interp::GetAttributeTypeOp::build(a1, v16, *a3);
  v8 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v8);
  if (*(*(v8 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

char *mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[8] = *MEMORY[0x277D85DE8];
  ValueType = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetValueTypeOp>(*(**a2 + 32));
  v10[0] = a2;
  v10[1] = ValueType;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::pdl_interp::GetValueTypeOp::build(a1, v10, *a3);
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    v7 = 0;
  }

  mlir::OperationState::~OperationState(v10);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

char *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id, *(**a2 + 32));
  if ((v7 & 1) == 0)
  {
    v15 = 1283;
    v14[2] = "pdl_interp.create_type";
    v14[3] = 22;
    v13 = 259;
    llvm::operator+(v14, &v12, v16);
    llvm::report_fatal_error(v16, 1);
  }

  v16[0] = a2;
  v16[1] = v6;
  v16[2] = v17;
  v16[3] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  mlir::pdl_interp::CreateTypeOp::build(a1, v16, *a3);
  v8 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v8);
  if (*(*(v8 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

char *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[8] = *MEMORY[0x277D85DE8];
  Types = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateTypesOp>(*(**a2 + 32));
  v10[0] = a2;
  v10[1] = Types;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::pdl_interp::CreateTypesOp::build(a1, v10, *a3);
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    v7 = 0;
  }

  mlir::OperationState::~OperationState(v10);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetValueTypeOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.get_value_type";
    v5[3] = 25;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.get_result";
    v5[3] = 21;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultsOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.get_results";
    v5[3] = 22;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateAttributeOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.create_attribute";
    v5[3] = 27;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateTypesOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.create_types";
    v5[3] = 23;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[129];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::BoolNode>();
    unk_27FC19420 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::BoolNode>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::BoolNode]";
  v6 = 95;
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

void mlir::OpBuilder::create<mlir::pdl_interp::CheckTypesOp,mlir::Value &,mlir::ArrayAttr,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id, *(**a2 + 32));
  if ((v13 & 1) == 0)
  {
    v19 = 1283;
    v18[2] = "pdl_interp.check_types";
    v18[3] = 22;
    v17 = 259;
    llvm::operator+(v18, &v16, v20);
    llvm::report_fatal_error(v20, 1);
  }

  v20[0] = a2;
  v20[1] = v12;
  v20[2] = v21;
  v20[3] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[8] = 4;
  v23[9] = v24;
  v23[10] = 0x100000000;
  v24[1] = v25;
  v24[2] = 0x100000000;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v25[4] = 0;
  v25[6] = 0;
  mlir::pdl_interp::CheckTypesOp::build(a1, v20, *a3, *a4, *a5, *a6);
  v14 = mlir::Operation::create(v20);
  mlir::OpBuilder::insert(a1, v14);
  mlir::OperationState::~OperationState(v20);
  v15 = *MEMORY[0x277D85DE8];
}

void mlir::OpBuilder::create<mlir::pdl_interp::CheckTypeOp,mlir::Value &,mlir::TypeAttr,mlir::Block *&,mlir::Block *&>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id, *(**a2 + 32));
  if ((v13 & 1) == 0)
  {
    v19 = 1283;
    v18[2] = "pdl_interp.check_type";
    v18[3] = 21;
    v17 = 259;
    llvm::operator+(v18, &v16, v20);
    llvm::report_fatal_error(v20, 1);
  }

  v20[0] = a2;
  v20[1] = v12;
  v20[2] = v21;
  v20[3] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[8] = 4;
  v23[9] = v24;
  v23[10] = 0x100000000;
  v24[1] = v25;
  v24[2] = 0x100000000;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v25[4] = 0;
  v25[6] = 0;
  mlir::pdl_interp::CheckTypeOp::build(a1, v20, *a3, *a4, *a5, *a6);
  v14 = mlir::Operation::create(v20);
  mlir::OpBuilder::insert(a1, v14);
  mlir::OperationState::~OperationState(v20);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CheckOperandCountOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.check_operand_count";
    v5[3] = 30;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CheckResultCountOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.check_result_count";
    v5[3] = 29;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>,mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::LookupBucketFor<mlir::pdl_to_pdl_interp::ConstraintQuestion *>(uint64_t a1, int a2, uint64_t a3, void *a4)
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

char *llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::grow(uint64_t a1, int a2)
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
          llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>,mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::ConstraintQuestion *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::ConstraintQuestion *,mlir::pdl_interp::ApplyConstraintOp>>::LookupBucketFor<mlir::pdl_to_pdl_interp::ConstraintQuestion *>(*a1, *(a1 + 16), v20, &v30);
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

uint64_t mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[134];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::SwitchNode>();
    *algn_27FC19448 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::SwitchNode>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::SwitchNode]";
  v6 = 97;
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

void createSwitchOp<mlir::pdl_interp::SwitchOperandCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(uint64_t a1, uint64_t a2, mlir::OpBuilder *a3, uint64_t a4)
{
  v37[8] = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<int>::reserve(&v27, *(a4 + 32));
  std::vector<mlir::Block *>::reserve(&v24, *(a4 + 32));
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = (*(a4 + 24) + 8);
    do
    {
      std::vector<mlir::Block *>::push_back[abi:nn200100](&v24, v10);
      LODWORD(v32[0]) = *(*(v10 - 1) + 8);
      std::vector<int>::push_back[abi:nn200100](&v27.__begin_, v32);
      v10 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_10:
      v14 = a1 + 32;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  v14 = v13 + 24;
LABEL_13:
  v15 = *v14;
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id, *(***v14 + 32));
  if ((v17 & 1) == 0)
  {
    v31 = 1283;
    v30[2] = "pdl_interp.switch_operand_count";
    v30[3] = 31;
    v29 = 259;
    llvm::operator+(v30, &v28, v32);
    llvm::report_fatal_error(v32, 1);
  }

  v32[0] = v15;
  v32[1] = v16;
  v32[2] = v33;
  v32[3] = 0x400000000;
  v33[4] = v34;
  v33[5] = 0x400000000;
  v34[4] = v35;
  v34[5] = 0x400000000;
  v35[8] = 4;
  v35[9] = v36;
  v35[10] = 0x100000000;
  v36[1] = v37;
  v36[2] = 0x100000000;
  v37[1] = 0;
  v37[2] = 0;
  v18 = v24;
  v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v37[4] = 0;
  v19 = (v25 - v24) >> 3;
  if (v25 == v24)
  {
    v20 = 0;
  }

  else
  {
    v20 = v24 | 4;
  }

  v37[6] = 0;
  I32VectorAttr = mlir::Builder::getI32VectorAttr(a3, v27.__begin_, v27.__end_ - v27.__begin_);
  mlir::pdl_interp::SwitchOperandCountOp::build(I32VectorAttr, v32, a1, I32VectorAttr, a2, v20, v19);
  v22 = mlir::Operation::create(v32);
  mlir::OpBuilder::insert(a3, v22);
  mlir::OperationState::~OperationState(v32);
  if (v18)
  {
    operator delete(v18);
  }

  if (v27.__begin_)
  {
    v27.__end_ = v27.__begin_;
    operator delete(v27.__begin_);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void createSwitchOp<mlir::pdl_interp::SwitchResultCountOp,mlir::pdl_to_pdl_interp::UnsignedAnswer,int>(uint64_t a1, uint64_t a2, mlir::OpBuilder *a3, uint64_t a4)
{
  v37[8] = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<int>::reserve(&v27, *(a4 + 32));
  std::vector<mlir::Block *>::reserve(&v24, *(a4 + 32));
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = (*(a4 + 24) + 8);
    do
    {
      std::vector<mlir::Block *>::push_back[abi:nn200100](&v24, v10);
      LODWORD(v32[0]) = *(*(v10 - 1) + 8);
      std::vector<int>::push_back[abi:nn200100](&v27.__begin_, v32);
      v10 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_10:
      v14 = a1 + 32;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  v14 = v13 + 24;
LABEL_13:
  v15 = *v14;
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchResultCountOp,void>::id, *(***v14 + 32));
  if ((v17 & 1) == 0)
  {
    v31 = 1283;
    v30[2] = "pdl_interp.switch_result_count";
    v30[3] = 30;
    v29 = 259;
    llvm::operator+(v30, &v28, v32);
    llvm::report_fatal_error(v32, 1);
  }

  v32[0] = v15;
  v32[1] = v16;
  v32[2] = v33;
  v32[3] = 0x400000000;
  v33[4] = v34;
  v33[5] = 0x400000000;
  v34[4] = v35;
  v34[5] = 0x400000000;
  v35[8] = 4;
  v35[9] = v36;
  v35[10] = 0x100000000;
  v36[1] = v37;
  v36[2] = 0x100000000;
  v37[1] = 0;
  v37[2] = 0;
  v18 = v24;
  v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v37[4] = 0;
  v19 = (v25 - v24) >> 3;
  if (v25 == v24)
  {
    v20 = 0;
  }

  else
  {
    v20 = v24 | 4;
  }

  v37[6] = 0;
  I32VectorAttr = mlir::Builder::getI32VectorAttr(a3, v27.__begin_, v27.__end_ - v27.__begin_);
  mlir::pdl_interp::SwitchResultCountOp::build(I32VectorAttr, v32, a1, I32VectorAttr, a2, v20, v19);
  v22 = mlir::Operation::create(v32);
  mlir::OpBuilder::insert(a3, v22);
  mlir::OperationState::~OperationState(v32);
  if (v18)
  {
    operator delete(v18);
  }

  if (v27.__begin_)
  {
    v27.__end_ = v27.__begin_;
    operator delete(v27.__begin_);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void createSwitchOp<mlir::pdl_interp::SwitchOperationNameOp,mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>(uint64_t a1, uint64_t a2, mlir::StringAttr **a3, uint64_t a4)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v6 = *(a4 + 32);
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::OperationName>>(v6);
  }

  v20 = a1;
  std::vector<mlir::Block *>::reserve(&v21, 0);
  if (*(a4 + 32))
  {
    std::vector<mlir::Block *>::push_back[abi:nn200100](&v21, (*(a4 + 24) + 8));
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::OperationName>>(1uLL);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16) + 120;
    if (!v9)
    {
LABEL_11:
      v10 = a1 + 32;
      goto LABEL_14;
    }
  }

  else
  {
    v9 = v7 + 16 * v8 + 16;
  }

  v10 = v9 + 24;
LABEL_14:
  v11 = *v10;
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id, *(***v10 + 32));
  if ((v13 & 1) == 0)
  {
    v27 = 1283;
    v26[2] = "pdl_interp.switch_operation_name";
    v26[3] = 32;
    v25 = 259;
    llvm::operator+(v26, &v24, v28);
    llvm::report_fatal_error(v28, 1);
  }

  v28[0] = v11;
  v28[1] = v12;
  v28[2] = v29;
  v28[3] = 0x400000000;
  v29[4] = v30;
  v29[5] = 0x400000000;
  v30[4] = v31;
  v30[5] = 0x400000000;
  v31[8] = 4;
  v31[9] = v32;
  v31[10] = 0x100000000;
  v32[1] = v33;
  v32[2] = 0x100000000;
  v33[1] = 0;
  v33[2] = 0;
  v14 = v21;
  v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v33[4] = 0;
  if (v22 == v21)
  {
    v15 = 0;
  }

  else
  {
    v15 = v21 | 4;
  }

  v33[6] = 0;
  mlir::pdl_interp::SwitchOperationNameOp::build(a3, v28, v20, 0, 0, a2, v15, (v22 - v21) >> 3);
  v16 = mlir::Operation::create(v28);
  mlir::OpBuilder::insert(a3, v16);
  mlir::OperationState::~OperationState(v28);
  if (v14)
  {
    operator delete(v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void createSwitchOp<mlir::pdl_interp::SwitchTypesOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<mlir::Attribute>::reserve(&v28, *(a4 + 32));
  std::vector<mlir::Block *>::reserve(&v25, *(a4 + 32));
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = (*(a4 + 24) + 8);
    do
    {
      std::vector<mlir::Block *>::push_back[abi:nn200100](&v25, v10);
      std::vector<mlir::Attribute>::push_back[abi:nn200100](&v28, (*(v10 - 1) + 8));
      v10 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_10:
      v14 = a1 + 32;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  v14 = v13 + 24;
LABEL_13:
  v15 = *v14;
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id, *(***v14 + 32));
  if ((v17 & 1) == 0)
  {
    v34 = 1283;
    v33[2] = "pdl_interp.switch_types";
    v33[3] = 23;
    v32 = 259;
    llvm::operator+(v33, &v31, v35);
    llvm::report_fatal_error(v35, 1);
  }

  v35[0] = v15;
  v35[1] = v16;
  v35[2] = v36;
  v35[3] = 0x400000000;
  v36[4] = v37;
  v36[5] = 0x400000000;
  v37[4] = v38;
  v37[5] = 0x400000000;
  v38[8] = 4;
  v38[9] = v39;
  v38[10] = 0x100000000;
  v39[1] = v40;
  v39[2] = 0x100000000;
  v40[1] = 0;
  v40[2] = 0;
  v40[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v40[4] = 0;
  v18 = v28;
  v19 = v25;
  v40[6] = 0;
  v20 = (v26 - v25) >> 3;
  if (v26 == v25)
  {
    v21 = 0;
  }

  else
  {
    v21 = v25 | 4;
  }

  v22 = mlir::ArrayAttr::get(*a3, v28, (v29 - v28) >> 3);
  mlir::pdl_interp::SwitchTypesOp::build(v22, v35, a1, v22, a2, v21, v20);
  v23 = mlir::Operation::create(v35);
  mlir::OpBuilder::insert(a3, v23);
  mlir::OperationState::~OperationState(v35);
  if (v19)
  {
    operator delete(v19);
  }

  if (v18)
  {
    operator delete(v18);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void createSwitchOp<mlir::pdl_interp::SwitchTypeOp,mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<mlir::Attribute>::reserve(&v28, *(a4 + 32));
  std::vector<mlir::Block *>::reserve(&v25, *(a4 + 32));
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = (*(a4 + 24) + 8);
    do
    {
      std::vector<mlir::Block *>::push_back[abi:nn200100](&v25, v10);
      std::vector<mlir::Attribute>::push_back[abi:nn200100](&v28, (*(v10 - 1) + 8));
      v10 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_10:
      v14 = a1 + 32;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  v14 = v13 + 24;
LABEL_13:
  v15 = *v14;
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id, *(***v14 + 32));
  if ((v17 & 1) == 0)
  {
    v34 = 1283;
    v33[2] = "pdl_interp.switch_type";
    v33[3] = 22;
    v32 = 259;
    llvm::operator+(v33, &v31, v35);
    llvm::report_fatal_error(v35, 1);
  }

  v35[0] = v15;
  v35[1] = v16;
  v35[2] = v36;
  v35[3] = 0x400000000;
  v36[4] = v37;
  v36[5] = 0x400000000;
  v37[4] = v38;
  v37[5] = 0x400000000;
  v38[8] = 4;
  v38[9] = v39;
  v38[10] = 0x100000000;
  v39[1] = v40;
  v39[2] = 0x100000000;
  v40[1] = 0;
  v40[2] = 0;
  v40[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v40[4] = 0;
  v18 = v28;
  v19 = v25;
  v40[6] = 0;
  v20 = (v26 - v25) >> 3;
  if (v26 == v25)
  {
    v21 = 0;
  }

  else
  {
    v21 = v25 | 4;
  }

  v22 = mlir::ArrayAttr::get(*a3, v28, (v29 - v28) >> 3);
  mlir::pdl_interp::SwitchTypeOp::build(v22, v35, a1, v22, a2, v21, v20);
  v23 = mlir::Operation::create(v35);
  mlir::OpBuilder::insert(a3, v23);
  mlir::OperationState::~OperationState(v35);
  if (v19)
  {
    operator delete(v19);
  }

  if (v18)
  {
    operator delete(v18);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void createSwitchOp<mlir::pdl_interp::SwitchAttributeOp,mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<mlir::Attribute>::reserve(&v28, *(a4 + 32));
  std::vector<mlir::Block *>::reserve(&v25, *(a4 + 32));
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 16 * v8;
    v10 = (*(a4 + 24) + 8);
    do
    {
      std::vector<mlir::Block *>::push_back[abi:nn200100](&v25, v10);
      std::vector<mlir::Attribute>::push_back[abi:nn200100](&v28, (*(v10 - 1) + 8));
      v10 += 2;
      v9 -= 16;
    }

    while (v9);
  }

  if ((~*(a1 + 8) & 7) != 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_10:
      v14 = a1 + 32;
      goto LABEL_13;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  v14 = v13 + 24;
LABEL_13:
  v15 = *v14;
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id, *(***v14 + 32));
  if ((v17 & 1) == 0)
  {
    v34 = 1283;
    v33[2] = "pdl_interp.switch_attribute";
    v33[3] = 27;
    v32 = 259;
    llvm::operator+(v33, &v31, v35);
    llvm::report_fatal_error(v35, 1);
  }

  v35[0] = v15;
  v35[1] = v16;
  v35[2] = v36;
  v35[3] = 0x400000000;
  v36[4] = v37;
  v36[5] = 0x400000000;
  v37[4] = v38;
  v37[5] = 0x400000000;
  v38[8] = 4;
  v38[9] = v39;
  v38[10] = 0x100000000;
  v39[1] = v40;
  v39[2] = 0x100000000;
  v40[1] = 0;
  v40[2] = 0;
  v40[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v40[4] = 0;
  v18 = v28;
  v19 = v25;
  v40[6] = 0;
  v20 = (v26 - v25) >> 3;
  if (v26 == v25)
  {
    v21 = 0;
  }

  else
  {
    v21 = v25 | 4;
  }

  v22 = mlir::ArrayAttr::get(*a3, v28, (v29 - v28) >> 3);
  mlir::pdl_interp::SwitchAttributeOp::build(v22, v35, a1, v22, a2, v21, v20);
  v23 = mlir::Operation::create(v35);
  mlir::OpBuilder::insert(a3, v23);
  mlir::OperationState::~OperationState(v35);
  if (v19)
  {
    operator delete(v19);
  }

  if (v18)
  {
    operator delete(v18);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<unsigned int>::append<llvm::detail::SafeIntIterator<unsigned int,false>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = a3 - a2 + v7;
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 4);
    v7 = *(a1 + 8);
  }

  v9 = a3 - v4;
  if (a3 != v4)
  {
    v10 = 0;
    v11 = vdupq_n_s64(v9 - 1);
    v12 = (*a1 + 4 * v7 + 8);
    do
    {
      v13 = vdupq_n_s64(v10);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A0500)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 2) = v4;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 1) = v4 + 1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_25D0A04F0)))).i32[1])
      {
        *v12 = v4 + 2;
        v12[1] = v4 + 3;
      }

      v10 += 4;
      LODWORD(v4) = v4 + 4;
      v12 += 4;
    }

    while (((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v10);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + v6;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v95 = *(a2 - 1);
        v96 = *v10;
        if (*(*(*(**a3 + 72) + 16 * v95) + 8) <= *(*(*(**a3 + 72) + 16 * v96) + 8))
        {
          return result;
        }

        *v10 = v95;
LABEL_176:
        *(a2 - 1) = v96;
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v103 = *(**a3 + 72);
    }

    if (v11 == 5)
    {
      v87 = *(a2 - 1);
      v88 = v10[3];
      v89 = *(**a3 + 72);
      if (*(*(v89 + 16 * v87) + 8) > *(*(v89 + 16 * v88) + 8))
      {
        v10[3] = v87;
        *(a2 - 1) = v88;
        v91 = v10[2];
        v90 = v10[3];
        v92 = *(v89 + 16 * v90);
        if (*(v92 + 8) > *(*(v89 + 16 * v91) + 8))
        {
          v10[2] = v90;
          v10[3] = v91;
          v93 = v10[1];
          if (*(v92 + 8) > *(*(v89 + 16 * v93) + 8))
          {
            v10[1] = v90;
            v10[2] = v93;
            v94 = *v10;
            if (*(v92 + 8) > *(*(v89 + 16 * v94) + 8))
            {
              *v10 = v90;
              v10[1] = v94;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v104 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v105 = *(**a3 + 72);
            v106 = 4;
            v107 = v10;
            do
            {
              v109 = *v107;
              v108 = v107[1];
              v107 = v104;
              v110 = *(v105 + 16 * v108);
              if (*(v110 + 8) > *(*(v105 + 16 * v109) + 8))
              {
                v111 = v106;
                while (1)
                {
                  *(v10 + v111) = v109;
                  v112 = v111 - 4;
                  if (v111 == 4)
                  {
                    break;
                  }

                  v109 = *(v10 + v111 - 8);
                  v111 -= 4;
                  if (*(v110 + 8) <= *(*(v105 + 16 * v109) + 8))
                  {
                    v113 = (v10 + v112);
                    goto LABEL_126;
                  }
                }

                v113 = v10;
LABEL_126:
                *v113 = v108;
              }

              v104 = v107 + 1;
              v106 += 4;
            }

            while (v107 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v150 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v151 = *(**a3 + 72);
          do
          {
            v153 = *v9;
            v152 = v9[1];
            v9 = v150;
            v154 = *(v151 + 16 * v152);
            if (*(v154 + 8) > *(*(v151 + 16 * v153) + 8))
            {
              v155 = v9;
              do
              {
                *v155 = v153;
                v153 = *(v155 - 2);
                --v155;
              }

              while (*(v154 + 8) > *(*(v151 + 16 * v153) + 8));
              *v155 = v152;
            }

            v150 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v114 = (v11 - 2) >> 1;
        v115 = *a3;
        v116 = v114;
        do
        {
          v117 = v116;
          if (v114 >= v116)
          {
            v118 = (2 * v116) | 1;
            v119 = &v10[v118];
            v120 = *v119;
            if (2 * v117 + 2 >= v11)
            {
              v121 = *(*v115 + 72);
            }

            else
            {
              v121 = *(*v115 + 72);
              if (*(*(v121 + 16 * v120) + 8) > *(*(v121 + 16 * v119[1]) + 8))
              {
                v120 = v119[1];
                ++v119;
                v118 = 2 * v117 + 2;
              }
            }

            v122 = &v10[v117];
            v123 = *v122;
            v124 = *(v121 + 16 * v123);
            if (*(*(v121 + 16 * v120) + 8) <= *(v124 + 8))
            {
              do
              {
                v125 = v119;
                *v122 = v120;
                if (v114 < v118)
                {
                  break;
                }

                v126 = (2 * v118) | 1;
                v119 = &v10[v126];
                v127 = 2 * v118 + 2;
                v120 = *v119;
                if (v127 < v11 && *(*(v121 + 16 * v120) + 8) > *(*(v121 + 16 * v119[1]) + 8))
                {
                  v120 = v119[1];
                  ++v119;
                  v126 = v127;
                }

                v122 = v125;
                v118 = v126;
              }

              while (*(*(v121 + 16 * v120) + 8) <= *(v124 + 8));
              *v125 = v123;
            }
          }

          v116 = v117 - 1;
        }

        while (v117);
        do
        {
          v128 = 0;
          v129 = *v10;
          v130 = *a3;
          v131 = v10;
          do
          {
            v132 = &v131[v128];
            v133 = v132 + 1;
            v134 = v132[1];
            result = 2 * v128;
            v135 = (2 * v128) | 1;
            v128 = 2 * v128 + 2;
            if (v128 >= v11)
            {
              v128 = v135;
            }

            else
            {
              v137 = v132[2];
              v136 = v132 + 2;
              result = v137;
              if (*(*(*(*v130 + 72) + 16 * v134) + 8) <= *(*(*(*v130 + 72) + 16 * v137) + 8))
              {
                v128 = v135;
              }

              else
              {
                LODWORD(v134) = result;
                v133 = v136;
              }
            }

            *v131 = v134;
            v131 = v133;
          }

          while (v128 <= ((v11 - 2) >> 1));
          if (v133 == --a2)
          {
            *v133 = v129;
          }

          else
          {
            *v133 = *a2;
            *a2 = v129;
            v138 = (v133 - v10 + 4) >> 2;
            v139 = v138 < 2;
            v140 = v138 - 2;
            if (!v139)
            {
              v141 = v140 >> 1;
              v142 = &v10[v141];
              v143 = *v142;
              v144 = *v133;
              v145 = *(*v130 + 72);
              v146 = *(v145 + 16 * v144);
              if (*(*(v145 + 16 * v143) + 8) > *(v146 + 8))
              {
                do
                {
                  v147 = v142;
                  *v133 = v143;
                  if (!v141)
                  {
                    break;
                  }

                  v141 = (v141 - 1) >> 1;
                  v142 = &v10[v141];
                  v143 = *v142;
                  result = *(v146 + 8);
                  v133 = v147;
                }

                while (*(*(v145 + 16 * v143) + 8) > result);
                *v147 = v144;
              }
            }
          }

          v139 = v11-- <= 2;
        }

        while (!v139);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(**a3 + 72);
    v15 = *(a2 - 1);
    v16 = *(*(v14 + 16 * v15) + 8);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(*(v14 + 16 * v17) + 8);
      v20 = *(v14 + 16 * v18);
      if (v19 <= *(v20 + 8))
      {
        if (v16 > v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(*(v14 + 16 * v25) + 8) > *(*(v14 + 16 * v26) + 8))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 > v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v29 = *(a2 - 1);
        if (*(*(v14 + 16 * v29) + 8) > *(v20 + 8))
        {
          *v12 = v29;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v30 = v12 - 1;
      v31 = *(v12 - 1);
      v32 = v10[1];
      v33 = *(*(v14 + 16 * v31) + 8);
      v34 = *(v14 + 16 * v32);
      v35 = *(a2 - 2);
      v36 = *(*(v14 + 16 * v35) + 8);
      if (v33 <= *(v34 + 8))
      {
        if (v36 > v33)
        {
          *v30 = v35;
          *(a2 - 2) = v31;
          v37 = *v30;
          v38 = v10[1];
          if (*(*(v14 + 16 * v37) + 8) > *(*(v14 + 16 * v38) + 8))
          {
            v10[1] = v37;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v36 > v33)
        {
          v10[1] = v35;
          goto LABEL_39;
        }

        v10[1] = v31;
        *v30 = v32;
        v40 = *(a2 - 2);
        if (*(*(v14 + 16 * v40) + 8) > *(v34 + 8))
        {
          *v30 = v40;
LABEL_39:
          *(a2 - 2) = v32;
        }
      }

      v43 = v12[1];
      v41 = v12 + 1;
      v42 = v43;
      v44 = v10[2];
      v45 = *(*(v14 + 16 * v43) + 8);
      v46 = *(v14 + 16 * v44);
      v47 = *(a2 - 3);
      v48 = *(*(v14 + 16 * v47) + 8);
      if (v45 <= *(v46 + 8))
      {
        if (v48 > v45)
        {
          *v41 = v47;
          *(a2 - 3) = v42;
          v49 = *v41;
          v50 = v10[2];
          if (*(*(v14 + 16 * v49) + 8) > *(*(v14 + 16 * v50) + 8))
          {
            v10[2] = v49;
            *v41 = v50;
          }
        }
      }

      else
      {
        if (v48 > v45)
        {
          v10[2] = v47;
          goto LABEL_48;
        }

        v10[2] = v42;
        *v41 = v44;
        v51 = *(a2 - 3);
        if (*(*(v14 + 16 * v51) + 8) > *(v46 + 8))
        {
          *v41 = v51;
LABEL_48:
          *(a2 - 3) = v44;
        }
      }

      v52 = *v13;
      v53 = *v30;
      v54 = *(*(v14 + 16 * v52) + 8);
      v55 = *(v14 + 16 * v53);
      v56 = *v41;
      v57 = *(v14 + 16 * v56);
      result = *(v57 + 8);
      if (v54 <= *(v55 + 8))
      {
        if (result <= v54)
        {
          goto LABEL_56;
        }

        *v13 = v56;
        *v41 = v52;
        v41 = v13;
        LODWORD(v52) = v53;
        if (*(v57 + 8) <= *(v55 + 8))
        {
          LODWORD(v52) = v56;
          goto LABEL_56;
        }
      }

      else if (result <= v54)
      {
        *v30 = v52;
        *v13 = v53;
        v30 = v13;
        LODWORD(v52) = v56;
        if (*(v57 + 8) <= *(v55 + 8))
        {
          LODWORD(v52) = v53;
LABEL_56:
          v58 = *v10;
          *v10 = v52;
          *v13 = v58;
          goto LABEL_57;
        }
      }

      *v30 = v56;
      *v41 = v53;
      goto LABEL_56;
    }

    v21 = *v10;
    v22 = *v13;
    v23 = *(*(v14 + 16 * v21) + 8);
    v24 = *(v14 + 16 * v22);
    if (v23 <= *(v24 + 8))
    {
      if (v16 > v23)
      {
        *v10 = v15;
        *(a2 - 1) = v21;
        v27 = *v10;
        v28 = *v13;
        if (*(*(v14 + 16 * v27) + 8) > *(*(v14 + 16 * v28) + 8))
        {
          *v13 = v27;
          *v10 = v28;
        }
      }

      goto LABEL_57;
    }

    if (v16 > v23)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v22;
      goto LABEL_57;
    }

    *v13 = v21;
    *v10 = v22;
    v39 = *(a2 - 1);
    if (*(*(v14 + 16 * v39) + 8) > *(v24 + 8))
    {
      *v10 = v39;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v59 = *v10;
    if (a5)
    {
      v60 = *(v14 + 16 * v59);
      v61 = *(v60 + 8);
LABEL_60:
      v62 = 0;
      do
      {
        v63 = v10[++v62];
      }

      while (*(*(v14 + 16 * v63) + 8) > v61);
      v64 = &v10[v62];
      v65 = a2;
      if (v62 == 1)
      {
        v65 = a2;
        do
        {
          if (v64 >= v65)
          {
            break;
          }

          v67 = *--v65;
        }

        while (*(*(v14 + 16 * v67) + 8) <= v61);
      }

      else
      {
        do
        {
          v66 = *--v65;
        }

        while (*(*(v14 + 16 * v66) + 8) <= v61);
      }

      if (v64 >= v65)
      {
        v75 = v64 - 1;
      }

      else
      {
        v68 = *v65;
        v69 = v63;
        v70 = v64;
        v71 = v65;
        do
        {
          *v70 = v68;
          *v71 = v69;
          v72 = *(v60 + 8);
          do
          {
            v73 = v70[1];
            ++v70;
            v69 = v73;
          }

          while (*(*(v14 + 16 * v73) + 8) > v72);
          do
          {
            v74 = *--v71;
            v68 = v74;
          }

          while (*(*(v14 + 16 * v74) + 8) <= v72);
        }

        while (v70 < v71);
        v75 = v70 - 1;
      }

      if (v75 != v10)
      {
        *v10 = *v75;
      }

      *v75 = v59;
      if (v64 < v65)
      {
        goto LABEL_81;
      }

      v10 = v75 + 1;
      if (result)
      {
        a2 = v75;
        if (!v76)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v76)
      {
LABEL_81:
        a5 = 0;
        v10 = v75 + 1;
      }
    }

    else
    {
      v60 = *(v14 + 16 * v59);
      v61 = *(v60 + 8);
      if (*(*(v14 + 16 * *(v10 - 1)) + 8) > v61)
      {
        goto LABEL_60;
      }

      if (v61 <= *(*(v14 + 16 * *(a2 - 1)) + 8))
      {
        v78 = v10 + 1;
        do
        {
          v10 = v78;
          if (v78 >= a2)
          {
            break;
          }

          ++v78;
        }

        while (v61 <= *(*(v14 + 16 * *v10) + 8));
      }

      else
      {
        do
        {
          v77 = v10[1];
          ++v10;
        }

        while (v61 <= *(*(v14 + 16 * v77) + 8));
      }

      v79 = a2;
      if (v10 < a2)
      {
        v79 = a2;
        do
        {
          v80 = *--v79;
        }

        while (v61 > *(*(v14 + 16 * v80) + 8));
      }

      if (v10 < v79)
      {
        v81 = *v10;
        v82 = *v79;
        do
        {
          *v10 = v82;
          *v79 = v81;
          v83 = *(v60 + 8);
          do
          {
            v84 = v10[1];
            ++v10;
            v81 = v84;
          }

          while (v83 <= *(*(v14 + 16 * v84) + 8));
          do
          {
            v85 = *--v79;
            v82 = v85;
          }

          while (v83 > *(*(v14 + 16 * v85) + 8));
        }

        while (v10 < v79);
      }

      v86 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v86;
      }

      a5 = 0;
      *v86 = v59;
    }
  }

  v96 = *v10;
  v97 = v10[1];
  v98 = *(**a3 + 72);
  v99 = *(*(v98 + 16 * v97) + 8);
  v100 = *(v98 + 16 * v96);
  v101 = *(a2 - 1);
  v102 = *(*(v98 + 16 * v101) + 8);
  if (v99 > *(v100 + 8))
  {
    if (v102 <= v99)
    {
      *v10 = v97;
      v10[1] = v96;
      v156 = *(a2 - 1);
      if (*(*(v98 + 16 * v156) + 8) <= *(v100 + 8))
      {
        return result;
      }

      v10[1] = v156;
    }

    else
    {
      *v10 = v101;
    }

    goto LABEL_176;
  }

  if (v102 > v99)
  {
    v10[1] = v101;
    *(a2 - 1) = v97;
    v149 = *v10;
    v148 = v10[1];
    if (*(*(v98 + 16 * v148) + 8) > *(*(v98 + 16 * v149) + 8))
    {
      *v10 = v148;
      v10[1] = v149;
    }
  }

  return result;
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, unsigned int *a3, _DWORD *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*(a5 + 16 * v5) + 8);
  v8 = *(a5 + 16 * v6);
  v9 = *a3;
  v10 = *(*(a5 + 16 * *a3) + 8);
  if (v7 <= *(v8 + 8))
  {
    if (v10 <= v7)
    {
      v6 = *a3;
      goto LABEL_14;
    }

    *a2 = v9;
    *a3 = v5;
    v11 = *a2;
    v12 = *result;
    if (*(*(a5 + 16 * v11) + 8) <= *(*(a5 + 16 * v12) + 8))
    {
      v6 = v5;
      v9 = v5;
      goto LABEL_14;
    }

    *result = v11;
    *a2 = v12;
    v6 = *a3;
  }

  else
  {
    if (v10 <= v7)
    {
      *result = v5;
      *a2 = v6;
      v9 = *a3;
      if (*(*(a5 + 16 * *a3) + 8) <= *(v8 + 8))
      {
        v6 = *a3;
        goto LABEL_14;
      }

      *a2 = v9;
    }

    else
    {
      *result = v9;
    }

    *a3 = v6;
  }

  v9 = v6;
LABEL_14:
  v13 = *a4;
  if (*(*(a5 + 16 * v13) + 8) > *(*(a5 + 16 * v6) + 8))
  {
    *a3 = v13;
    *a4 = v9;
    v14 = *a3;
    v15 = *a2;
    if (*(*(a5 + 16 * v14) + 8) > *(*(a5 + 16 * v15) + 8))
    {
      *a2 = v14;
      *a3 = v15;
      v16 = *a2;
      v17 = *result;
      if (*(*(a5 + 16 * v16) + 8) > *(*(a5 + 16 * v17) + 8))
      {
        *result = v16;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::PatternLowering::generate(mlir::pdl_to_pdl_interp::SwitchNode *,mlir::Block *,mlir::Value)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = *a1;
        v17 = a1[1];
        v18 = *(**a3 + 72);
        v19 = *(*(v18 + 16 * v17) + 8);
        v20 = *(v18 + 16 * v8);
        v21 = *(a2 - 1);
        v22 = *(*(v18 + 16 * v21) + 8);
        if (v19 <= *(v20 + 8))
        {
          if (v22 > v19)
          {
            a1[1] = v21;
            *(a2 - 1) = v17;
            v37 = *a1;
            v36 = a1[1];
            if (*(*(v18 + 16 * v36) + 8) > *(*(v18 + 16 * v37) + 8))
            {
              *a1 = v36;
              a1[1] = v37;
            }
          }

          return 1;
        }

        if (v22 > v19)
        {
          *a1 = v21;
          goto LABEL_41;
        }

        *a1 = v17;
        a1[1] = v8;
        v47 = *(a2 - 1);
        if (*(*(v18 + 16 * v47) + 8) > *(v20 + 8))
        {
          a1[1] = v47;
          goto LABEL_41;
        }

        return 1;
      case 4:
        return 1;
      case 5:
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(**a3 + 72);
        if (*(*(v11 + 16 * v9) + 8) > *(*(v11 + 16 * v10) + 8))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v13 = a1[2];
          v12 = a1[3];
          v14 = *(v11 + 16 * v12);
          if (*(v14 + 8) > *(*(v11 + 16 * v13) + 8))
          {
            a1[2] = v12;
            a1[3] = v13;
            v15 = a1[1];
            if (*(v14 + 8) > *(*(v11 + 16 * v15) + 8))
            {
              a1[1] = v12;
              a1[2] = v15;
              v16 = *a1;
              if (*(v14 + 8) > *(*(v11 + 16 * v16) + 8))
              {
                *a1 = v12;
                a1[1] = v16;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      if (*(*(*(**a3 + 72) + 16 * v7) + 8) > *(*(*(**a3 + 72) + 16 * v8) + 8))
      {
        *a1 = v7;
LABEL_41:
        *(a2 - 1) = v8;
        return 1;
      }

      return 1;
    }
  }

  v23 = a1 + 2;
  v24 = a1[2];
  v25 = a1[1];
  v26 = *a1;
  v27 = *(**a3 + 72);
  v28 = *(*(v27 + 16 * v25) + 8);
  v29 = *(v27 + 16 * v26);
  v30 = *(v27 + 16 * v24);
  v31 = *(v30 + 8);
  if (v28 <= *(v29 + 8))
  {
    if (v31 <= v28)
    {
      goto LABEL_28;
    }

    a1[1] = v24;
    *v23 = v25;
    v34 = *(v30 + 8);
    v35 = *(v29 + 8);
    v32 = a1;
    v33 = a1 + 1;
LABEL_26:
    if (v34 <= v35)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v32 = a1;
  v33 = a1 + 2;
  if (v31 <= v28)
  {
    *a1 = v25;
    a1[1] = v26;
    v34 = *(v30 + 8);
    v35 = *(v29 + 8);
    v32 = a1 + 1;
    v33 = a1 + 2;
    goto LABEL_26;
  }

LABEL_27:
  *v32 = v24;
  *v33 = v26;
LABEL_28:
  v38 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v39 = 0;
  for (i = 12; ; i += 4)
  {
    v41 = *v38;
    v42 = *v23;
    v43 = *(v27 + 16 * v41);
    if (*(v43 + 8) > *(*(v27 + 16 * v42) + 8))
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v42;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v42 = *(a1 + v44 - 8);
        v44 -= 4;
        if (*(v43 + 8) <= *(*(v27 + 16 * v42) + 8))
        {
          v46 = (a1 + v45);
          goto LABEL_36;
        }
      }

      v46 = a1;
LABEL_36:
      *v46 = v41;
      if (++v39 == 8)
      {
        break;
      }
    }

    v23 = v38++;
    if (v38 == a2)
    {
      return 1;
    }
  }

  return v38 + 1 == a2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Qualifier *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::InsertIntoBucketImpl<mlir::pdl_to_pdl_interp::Qualifier *>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Qualifier *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    JUMPOUT(0x25F891030);
  }

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

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>,mlir::pdl_to_pdl_interp::Qualifier *,unsigned int,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Qualifier *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Qualifier *,unsigned int>>::LookupBucketFor<mlir::pdl_to_pdl_interp::Qualifier *>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
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

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    v2 = this->__end_ - this->__begin_;
    std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(this, __n);
  }
}

void *std::vector<mlir::Block *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    v2 = result[1] - *result;
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Block *>>(a2);
  }

  return result;
}

void std::vector<mlir::Block *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<mlir::Block *>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Block *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::vector<int>::push_back[abi:nn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Block *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::OperationName>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *std::vector<mlir::Attribute>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    v2 = result[1] - *result;
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Attribute>>(a2);
  }

  return result;
}

void std::vector<mlir::Attribute>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<mlir::Attribute>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Attribute>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Attribute>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID()
{
  {
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>();
      mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
    }
  }

  return v0[139];
}

uint64_t llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>()
{
  {
    llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>(void)::Name = llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::SuccessNode>();
    unk_27FC19470 = v1;
  }

  return llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::pdl_to_pdl_interp::SuccessNode>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::pdl_to_pdl_interp::SuccessNode]";
  v6 = 98;
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

double mlir::Region::getOps<mlir::pdl::OperationOp>@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == a1)
  {
    goto LABEL_11;
  }

  while (v4 != a1)
  {
    v5 = v4 - 1;
    if (!v4)
    {
      v5 = 0;
    }

    if (v5[4] != v5 + 4)
    {
      break;
    }

    v4 = v4[1];
  }

  if (v4 == a1)
  {
LABEL_11:
    v7 = 0;
  }

  else
  {
    v6 = v4 - 1;
    if (!v4)
    {
      v6 = 0;
    }

    v7 = v6[5];
  }

  v14 = a1;
  *&v12 = a1;
  *(&v12 + 1) = v4;
  *&v13 = v7;
  *(&v13 + 1) = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v8 = v13;
  *a2 = v12;
  *(a2 + 16) = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  *&v12 = a1;
  *(&v12 + 1) = a1;
  *&v13 = 0;
  *(&v13 + 1) = a1;
  v14 = a1;
  v15 = mlir::detail::op_filter_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::filter;
  llvm::filter_iterator_base<mlir::Region::OpIterator,BOOL (*)(mlir::Operation &),std::forward_iterator_tag>::findNextValid(&v12);
  v9 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v9;
  result = *&v14;
  *(a2 + 96) = v14;
  v11 = v15;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v11;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::pdl::OperationOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

char *anonymous namespace::PatternLowering::generateRewriter(mlir::pdl::PatternOp,llvm::SmallVectorImpl<mlir::pdl_to_pdl_interp::Position *> &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v42[8] = *MEMORY[0x277D85DE8];
  v36 = a2;
  v3 = *(a1 + 8);
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](*a1, &v36);
  result = *v4;
  if (!*v4)
  {
    v6 = v36;
    if ((~*(v36 + 8) & 7) == 0)
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = *(v6 + 8) & 7;
      if (v7 == 6)
      {
        v8 = v6 + 24 * *(v6 + 16) + 120;
      }

      else
      {
        v8 = v6 + 16 * v7 + 16;
      }

      v9 = *(*(v8 + 48) + 16);
      if (v8)
      {
        v10 = v9 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeOp,void>::id;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v15 = *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64);
        if (v15)
        {
          v16 = *(v8 + 24);
          Attribute = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateAttributeOp>(*(**v16 + 32));
          v37[0] = v16;
          v37[1] = Attribute;
          v37[2] = v38;
          v37[3] = 0x400000000;
          v38[4] = v39;
          v38[5] = 0x400000000;
          v39[4] = v40;
          v39[5] = 0x400000000;
          v40[8] = 4;
          v40[9] = v41;
          v40[10] = 0x100000000;
          v41[1] = v42;
          v41[2] = 0x100000000;
          v42[1] = 0;
          v42[2] = 0;
          v42[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v42[4] = 0;
          v42[6] = 0;
          mlir::pdl_interp::CreateAttributeOp::build(v3, v37, v15);
          v18 = mlir::Operation::create(v37);
          mlir::OpBuilder::insert(v3, v18);
          v19 = *(*(v18 + 6) + 16);
          mlir::OperationState::~OperationState(v37);
          if (v19 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0;
          }

          result = v20 - 16;
          goto LABEL_49;
        }
      }

      else
      {
        if (v8)
        {
          v11 = v9 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeOp,void>::id;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          v37[0] = *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64);
          if (v37[0])
          {
            v14 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(v3, *(v8 + 24), v37);
            goto LABEL_30;
          }
        }

        else
        {
          if (v8)
          {
            v12 = v9 == &mlir::detail::TypeIDResolver<mlir::pdl::TypesOp,void>::id;
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
            v37[0] = *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64);
            if (v37[0])
            {
              v13 = *(v8 + 24);
              v35 = *(v8 - 8) & 0xFFFFFFFFFFFFFFF8;
              v14 = mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(v3, v13, &v35, v37);
LABEL_30:
              result = v14 - 16;
LABEL_49:
              *v4 = result;
              goto LABEL_50;
            }
          }
        }
      }
    }

    v21 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::doFind<mlir::Value>(v3 + 25, &v36);
    if (v21)
    {
      v22 = *(v21 + 8);
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a1 + 16);
    v24 = *(v23 + 8);
    if (v24 >= *(v23 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(*(a1 + 16), (v23 + 16), v24 + 1, 8);
      LODWORD(v24) = *(v23 + 8);
    }

    *(*v23 + 8 * v24) = v22;
    ++*(v23 + 8);
    v25 = **(a1 + 24);
    v26 = *(((v25 + 16 * ((*(v25 + 44) >> 23) & 1) + ((*(v25 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v25 + 40) + 8);
    if (v26)
    {
      v27 = v26 - 8;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(v36 + 8);
    if ((~*(v36 + 8) & 7) != 0)
    {
      v29 = v36;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
      goto LABEL_45;
    }

    v30 = *(v29 + 8) & 7;
    if (v30 == 6)
    {
      v31 = v29 + 24 * *(v29 + 16) + 120;
      if (!v31)
      {
LABEL_45:
        v32 = (v36 + 32);
        goto LABEL_48;
      }
    }

    else
    {
      v31 = v29 + 16 * v30 + 16;
    }

    v32 = (v31 + 24);
LABEL_48:
    v33 = *v32;
    mlir::Block::addArgument(v27);
  }

LABEL_50:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::pdl::RangeType,mlir::ArrayAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v21[8] = *MEMORY[0x277D85DE8];
  Types = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::CreateTypesOp>(*(**a2 + 32));
  v15[0] = a2;
  v15[1] = Types;
  v15[2] = &v16;
  v15[3] = 0x400000000;
  v17[0] = v18;
  v17[1] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  v9 = *a4;
  v14 = *a3;
  *mlir::OperationState::getOrAddProperties<mlir::pdl_interp::detail::CreateTypesOpGenericAdaptorBase::Properties>(v15) = v9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v17, &v14, v15);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::doFind<mlir::Value>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
    LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
    v6 = v2 - 1;
    v7 = v4 & (v2 - 1);
    v8 = *(*a1 + 16 * v7);
    if (*a2 == v8)
    {
      return v3 + 16 * v7;
    }

    v10 = 1;
    while (v8 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      v8 = *(v3 + 16 * v7);
      if (*a2 == v8)
      {
        return v3 + 16 * v7;
      }
    }
  }

  return 0;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::ApplyRewriteOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "pdl_interp.apply_rewrite";
    v5[3] = 24;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

void mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id, *(**a2 + 32));
  if ((v7 & 1) == 0)
  {
    v13 = 1283;
    v12[2] = "pdl_interp.erase";
    v12[3] = 16;
    v11 = 259;
    llvm::operator+(v12, &v10, v14);
    llvm::report_fatal_error(v14, 1);
  }

  v14[0] = a2;
  v14[1] = v6;
  v15[0] = v16;
  v15[1] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  v12[0] = *a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v15, v12, 0, v12, 1);
  v8 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v8);
  mlir::OperationState::~OperationState(v14);
  v9 = *MEMORY[0x277D85DE8];
}

char *mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[8] = *MEMORY[0x277D85DE8];
  Results = mlir::OpBuilder::getCheckRegisteredInfo<mlir::pdl_interp::GetResultsOp>(*(**a2 + 32));
  v10[0] = a2;
  v10[1] = Results;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::pdl_interp::GetResultsOp::build(a1, v10, *a3);
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v7 = 0;
  }

  mlir::OperationState::~OperationState(v10);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}