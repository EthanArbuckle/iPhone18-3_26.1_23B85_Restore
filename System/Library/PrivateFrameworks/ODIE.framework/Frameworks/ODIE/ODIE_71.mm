unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::LLVM::BrOp>::getSuccessorBlockArgument(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = a2[10];
  if (v3)
  {
    v6 = a2 + 16;
    v7 = 24;
    while (1)
    {
      v8 = a2[11];
      v9 = (v8 & 0x800000) != 0 ? a2[17] : 0;
      v16 = 0;
      v17 = a2;
      v18 = 0;
      v19 = v9;
      v20 = v22;
      v21 = 0x100000000;
      BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(&v16, a3, *(((&v6[4 * ((v8 >> 23) & 1) + 1] + ((v8 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + v7));
      v12 = v11;
      if (v20 != v22)
      {
        free(v20);
      }

      if (v12)
      {
        break;
      }

      v7 += 32;
      if (!--v3)
      {
        v14 = 0;
        goto LABEL_13;
      }
    }

    v14 = BranchSuccessorArgument;
LABEL_13:
    result = v14 | BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneSuccessor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneSuccessor>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v32[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 176))(a3, *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68))
  {
    v9 = (*(*a3 + 16))(a3);
    v10 = *(v9 + 4);
    if (*(v9 + 3) == v10)
    {
      llvm::raw_ostream::write(v9, "(", 1uLL);
    }

    else
    {
      *v10 = 40;
      ++*(v9 + 4);
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v11 = *(a2 + 68);
      v12 = *(a2 + 72);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v30 = v12;
    v31 = v11;
    mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v30);
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
    if (*(v15 + 3) == v16)
    {
      llvm::raw_ostream::write(v15, ":", 1uLL);
    }

    else
    {
      *v16 = 58;
      ++*(v15 + 4);
    }

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

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v19 = *(a2 + 68);
      if (v19)
      {
        v20 = *(a2 + 72);
        (*(*a3 + 32))(a3, *(*(v20 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v19 != 1)
        {
          v21 = v19 - 1;
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
            (*(*a3 + 32))(a3, *(v25 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v21;
          }

          while (v21);
        }
      }
    }

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
  }

  v30 = v32;
  v31 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v30, v31);
  if (v30 != v32)
  {
    free(v30);
  }

  v29 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::LLVM::BrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyOneSuccessor(a1, v4))
  {
    v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
    v17[0] = a1;
    if (mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(v5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v17))
    {
      if ((*(a1 + 46) & 0x80) != 0 && (v7 = *(a1 + 68), v7))
      {
        v8 = 0;
        v9 = *(a1 + 72) + 24;
        while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v9 + 8) & 0xFFFFFFFFFFFFFFF8, v8))
        {
          ++v8;
          v9 += 32;
          if (v7 == v8)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        v10 = *(a1 + 40);
        if (!v10)
        {
LABEL_22:
          IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v6);
          goto LABEL_21;
        }

        v11 = 0;
        while (1)
        {
          v12 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
          LODWORD(v17[0]) = 0;
          v17[1] = a1;
          v18 = 0;
          v19 = v12;
          v20 = v22;
          v21 = 0x100000000;
          v13 = mlir::detail::verifyBranchSuccessorOperands(a1, v11, v17);
          if (v20 != v22)
          {
            free(v20);
          }

          if ((v13 & 1) == 0)
          {
            break;
          }

          if (v10 == ++v11)
          {
            goto LABEL_22;
          }
        }
      }
    }
  }

  IsTerminator = 0;
LABEL_21:
  v15 = *MEMORY[0x277D85DE8];
  return IsTerminator;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 > 14)
  {
    if (a4 != 15)
    {
      if (a4 == 19)
      {
        if (*a3 != 0x53646E617265706FLL || *(a3 + 8) != 0x6953746E656D6765 || *(a3 + 11) != 0x73657A6953746E65)
        {
          goto LABEL_49;
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
          goto LABEL_49;
        }
      }

      v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96, 2);
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
      return v5 | v4;
    }

    if (*a3 != 0x6C646E75625F706FLL || *(a3 + 7) != 0x73657A69735F656CLL)
    {
      goto LABEL_49;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
LABEL_41:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  if (a4 == 6)
  {
    if (*a3 != 1920233065 || *(a3 + 4) != 28265)
    {
      goto LABEL_49;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    goto LABEL_41;
  }

  if (a4 == 13)
  {
    if (*a3 != 0x6874616D74736166 || *(a3 + 5) != 0x7367616C46687461)
    {
      goto LABEL_49;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    goto LABEL_41;
  }

  v5 = 0;
  if (a4 == 14)
  {
    if (*a3 != 0x6C646E75625F706FLL || *(a3 + 6) != 0x736761745F656C64)
    {
LABEL_49:
      LOBYTE(v4) = 0;
      v5 = 0;
      return v5 | v4;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
    goto LABEL_41;
  }

  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 > 14)
  {
    if (v5 == 15)
    {
      v18 = *v4;
      v19 = *(v4 + 7);
      if (v18 == 0x6C646E75625F706FLL && v19 == 0x73657A69735F656CLL)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v21 = *(a4 + 8), *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v21[2] == 32)
          {
            v22 = a4;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80) = v22;
      }
    }

    else
    {
      if (v5 == 19)
      {
        v10 = *v4 ^ 0x53646E617265706FLL;
        v11 = v4[1] ^ 0x6953746E656D6765;
        v12 = *(v4 + 11);
        v13 = 0x73657A6953746E65;
      }

      else
      {
        if (v5 != 21)
        {
          return result;
        }

        v10 = *v4 ^ 0x5F646E617265706FLL;
        v11 = v4[1] ^ 0x5F746E656D676573;
        v12 = *(v4 + 13);
        v13 = 0x73657A69735F746ELL;
      }

      if (v10 | v11 | v12 ^ v13)
      {
        v27 = 1;
      }

      else
      {
        v27 = a4 == 0;
      }

      if (!v27 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v28 = *(a4 + 8);
        if (*(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v28[2] == 32 && *(a4 + 16) == 2)
        {
          v29 = *(a4 + 32);
          if (v29 >= 4)
          {
            return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96), *(a4 + 24), v29 & 0xFFFFFFFFFFFFFFFCLL);
          }
        }
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 6:
        v14 = *v4;
        v15 = *(v4 + 2);
        if (v14 == 1920233065 && v15 == 28265)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v17 = a4;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v17;
        }

        break;
      case 13:
        v23 = *v4;
        v24 = *(v4 + 5);
        if (v23 == 0x6874616D74736166 && v24 == 0x7367616C46687461)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
            {
              v26 = a4;
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v26;
        }

        break;
      case 14:
        v6 = *v4;
        v7 = *(v4 + 6);
        if (v6 == 0x6C646E75625F706FLL && v7 == 0x736761745F656C64)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88) = v9;
        }

        break;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = (v5 + 64);
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v26 = 261;
    v24 = "fastmathFlags";
    v25 = 13;
    v10 = mlir::StringAttr::get(v9, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = v7[1];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v26 = 261;
    v24 = "intrin";
    v25 = 6;
    v13 = mlir::StringAttr::get(v12, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = v7[2];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v26 = 261;
    v24 = "op_bundle_sizes";
    v25 = 15;
    v16 = mlir::StringAttr::get(v15, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = v7[3];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v26 = 261;
    v24 = "op_bundle_tags";
    v25 = 14;
    v19 = mlir::StringAttr::get(v18, &v24, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (v7 + 4), 2);
  v21 = *(**v20 + 32);
  v26 = 261;
  v24 = "operandSegmentSizes";
  v25 = 19;
  v23 = mlir::StringAttr::get(v21, &v24, v22);
  mlir::NamedAttrList::push_back(a3, v23, v20);
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v5 = *a4;
    v4 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v5;
    *(a3 + 16) = v4;
    if (*a3)
    {
      return;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  *a3 = mlir::LLVM::FastmathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::LLVM::FastmathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "fastmathFlags", 0xDuLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
      {
        a5(&v32, a6);
        if (v32)
        {
          goto LABEL_32;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
        goto LABEL_5;
      }

      *a3 = v14;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "intrin", 6uLL);
  if (v16)
  {
    v14 = *(v15 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a5(&v32, a6);
        if (!v32)
        {
          goto LABEL_4;
        }

LABEL_32:
        if (v32)
        {
          v30 = 0;
          v31 = v14;
          v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34, &v30, 1);
          v23 = v34 + 24 * v35;
          v24 = *v22;
          *(v23 + 16) = *(v22 + 16);
          *v23 = v24;
          ++v35;
        }

        goto LABEL_4;
      }

      a3[1] = v14;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_sizes", 0xFuLL);
  if (v18)
  {
    v14 = *(v17 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v19 = v14[1], *(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v19[2] != 32)
      {
        a5(&v32, a6);
        if (!v32)
        {
          goto LABEL_4;
        }

        goto LABEL_32;
      }

      a3[2] = v14;
    }
  }

  v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_tags", 0xEuLL);
  if (v21)
  {
    v14 = *(v20 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v32, a6);
        if (!v32)
        {
          goto LABEL_4;
        }

        goto LABEL_32;
      }

      a3[3] = v14;
    }
  }

  v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v26 & 1) == 0 || (v27 = *(v25 + 8)) == 0) && ((v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v29 & 1) == 0) || (v27 = *(v28 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 4, 2, v27, a5, a6, "DenseI32ArrayAttr", 17))
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v29 = v31;
  v30 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v28 = 261;
    v26 = "fastmathFlags";
    v27 = 13;
    v9 = mlir::StringAttr::get(v8, &v26, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v29, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v28 = 261;
    v26 = "intrin";
    v27 = 6;
    v12 = mlir::StringAttr::get(v11, &v26, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v29, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v28 = 261;
    v26 = "op_bundle_sizes";
    v27 = 15;
    v15 = mlir::StringAttr::get(v14, &v26, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v29, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v28 = 261;
    v26 = "op_bundle_tags";
    v27 = 14;
    v18 = mlir::StringAttr::get(v17, &v26, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v29, v18, v16);
  }

  v19 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, (v6 + 4), 2);
  v20 = *(**v19 + 32);
  v28 = 261;
  v26 = "operandSegmentSizes";
  v27 = 19;
  v22 = mlir::StringAttr::get(v20, &v26, v21);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v29, v22, v19);
  if (v30)
  {
    v23 = mlir::DictionaryAttr::get(v3, v29, v30);
  }

  else
  {
    v23 = 0;
  }

  if (v29 != v31)
  {
    free(v29);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallIntrinsicOp>::hashProperties(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(*(a2 + 8));
  v5 = 0x9DDFEA08EB382D69 * ((8 * *(a2 + 8) - 0xAE502812AA7333) ^ v4);
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v17 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7))));
  v16 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = *(a2 + 36) ^ 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (8 * *(a2 + 32) + 8));
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  memset(v20, 0, sizeof(v20));
  v21 = 0xFF51AFD7ED558CCDLL;
  v19 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v19, 0, v20, &v20[3] + 8, &v18, &v17, &v16, &v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallIntrinsicOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CallIntrinsicOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::FastmathFlagsAttr>(a1, v3) || !mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 3))
  {
    goto LABEL_14;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_14:
      result = 0;
      goto LABEL_15;
    }

    if (*(v9 + 16) >= 3)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_14;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 4, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if ((*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 8, 2uLL) & 1) == 0)
  {
    goto LABEL_14;
  }

  result = 1;
LABEL_15:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallIntrinsicOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  (*(*a3 + 16))(a3, *(v6 + 8));
  (*(*a3 + 16))(a3, *(v6 + 16));
  (*(*a3 + 24))(a3, *(v6 + 24));
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 32, 2);
    (*(*a3 + 16))(a3, v8);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 32), 2);
  }

  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20810))
  {
    v1 = llvm::getTypeName<mlir::LLVM::FastmathFlagsInterface>();
    qword_27FC20808 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20810);
  }

  return qword_27FC20808;
}

uint64_t llvm::getTypeName<mlir::LLVM::FastmathFlagsInterface>()
{
  if ((atomic_load_explicit(&qword_27FC20828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20828))
  {
    qword_27FC20818 = llvm::detail::getTypeNameImpl<mlir::LLVM::FastmathFlagsInterface>();
    unk_27FC20820 = v1;
    __cxa_guard_release(&qword_27FC20828);
  }

  return qword_27FC20818;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::FastmathFlagsInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::FastmathFlagsInterface]";
  v6 = 96;
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[7] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 7);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20838))
  {
    v1 = llvm::getTypeName<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>>();
    qword_27FC20830 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20838);
  }

  return qword_27FC20830;
}

uint64_t llvm::getTypeName<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC20850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20850))
  {
    qword_27FC20840 = llvm::detail::getTypeNameImpl<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>>();
    *algn_27FC20848 = v1;
    __cxa_guard_release(&qword_27FC20850);
  }

  return qword_27FC20840;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::FastmathFlagsInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v54[12] = *MEMORY[0x277D85DE8];
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

  v9 = a2 + 64;
  (*(*a3 + 48))(a3, *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8));
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, "(", 1uLL);
  }

  else
  {
    *v11 = 40;
    ++*(v10 + 4);
  }

  v12 = *(a2 + 44);
  v13 = *(v9 + 16 * ((v12 >> 23) & 1) + 32);
  if ((v12 & 0x800000) != 0)
  {
    v14 = *(a2 + 72);
  }

  else
  {
    v14 = 0;
  }

  v54[0] = v14;
  v54[1] = v13;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, v54);
  v15 = (*(*a3 + 16))(a3);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ")", 1uLL);
  }

  else
  {
    *v16 = 41;
    ++*(v15 + 4);
  }

  v17 = v9 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (*(*(v17 + 16) + 16) || *(v17 + 24))
  {
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

    v20 = *(a2 + 44);
    v21 = v9 + 16 * ((v20 >> 23) & 1);
    v22 = *(v21 + 32);
    if ((v20 & 0x800000) != 0)
    {
      v23 = *(a2 + 72);
      v24 = (v23 + 32 * v22);
    }

    else
    {
      v23 = 0;
      v24 = (32 * v22);
    }

    v25 = *(v21 + 16);
    v26 = *(v25 + 16);
    v51 = v24;
    v52 = v25;
    v53[0] = 0;
    v53[1] = v26;
    *&v48 = v23 + 32 * v22;
    *(&v48 + 1) = v25;
    v49 = 0;
    v50 = v26;
    mlir::TypeRangeRange::TypeRangeRange<mlir::OperandRangeRange>(v54, 0, v26, &v48);
  }

  v27 = (*(*a3 + 16))(a3);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = (*(*a3 + 16))(a3);
  v30 = *(v29 + 4);
  if (*(v29 + 3) == v30)
  {
    llvm::raw_ostream::write(v29, ":", 1uLL);
  }

  else
  {
    *v30 = 58;
    ++*(v29 + 4);
  }

  v31 = (*(*a3 + 16))(a3);
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

  v33 = *(a2 + 44);
  if ((v33 & 0x800000) != 0)
  {
    v34 = *(a2 + 72);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v9 + 16 * ((v33 >> 23) & 1) + 32);
  if (*(a2 + 36))
  {
    *&v48 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v51 = &v48;
    v52 = 1;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v36 = (*(*a3 + 16))(a3);
  v37 = v36;
  v38 = *(v36 + 4);
  if (v38 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 40);
    if (!v35)
    {
      goto LABEL_44;
    }
  }

  else
  {
    *(v36 + 4) = v38 + 1;
    *v38 = 40;
    if (!v35)
    {
      goto LABEL_44;
    }
  }

  (*(*a3 + 32))(a3, *(*(v34 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v35 != 1)
  {
    v39 = v35 - 1;
    v40 = (v34 + 56);
    do
    {
      v41 = (*(*a3 + 16))(a3);
      v42 = *(v41 + 4);
      if (*(v41 + 3) - v42 > 1uLL)
      {
        *v42 = 8236;
        *(v41 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v41, ", ", 2uLL);
      }

      v43 = *v40;
      v40 += 4;
      (*(*a3 + 32))(a3, *(v43 + 8) & 0xFFFFFFFFFFFFFFF8);
      --v39;
    }

    while (v39);
  }

LABEL_44:
  v44 = *(v37 + 4);
  if (v44 >= *(v37 + 3))
  {
    llvm::raw_ostream::write(v37, 41);
  }

  else
  {
    *(v37 + 4) = v44 + 1;
    *v44 = 41;
  }

  mlir::AsmPrinter::printArrowTypeList<llvm::ArrayRef<mlir::Type> &>(a3, &v51);
  v51 = v53;
  v52 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v51, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v51, "op_bundle_sizes", 15);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v51, "intrin", 6);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v51, "op_bundle_tags", 14);
  v45 = *(v9 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (v45 && v45 == mlir::LLVM::FastmathFlagsAttr::get(*(***(a2 + 24) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v51, "fastmathFlags", 13);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v51, v52);
  if (v51 != v53)
  {
    free(v51);
  }

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::LLVM::CallIntrinsicOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_22;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v4))
  {
    goto LABEL_22;
  }

  v5 = a1 + 64;
  v6 = (a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  v7 = v6[1];
  if (!v7)
  {
    v20 = "requires attribute 'intrin'";
LABEL_20:
    v48[0] = v20;
    v49 = 259;
    mlir::Operation::emitOpError(a1, v48, &v50);
    v21 = v52;
    goto LABEL_21;
  }

  v8 = v6[2];
  if (!v8)
  {
    v20 = "requires attribute 'op_bundle_sizes'";
    goto LABEL_20;
  }

  v9 = *v6;
  v10 = v6[3];
  v50 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v7, "intrin", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v50))
  {
    goto LABEL_22;
  }

  v50 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v50))
  {
    goto LABEL_22;
  }

  v50 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v8, "op_bundle_sizes", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v50))
  {
    goto LABEL_22;
  }

  v50 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v10, "op_bundle_tags", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v50))
  {
    goto LABEL_22;
  }

  v11 = *(a1 + 44);
  v12 = (v11 >> 23) & 1;
  v13 = *(v5 + 16 * v12 + 32);
  if ((v11 & 0x800000) != 0)
  {
    v14 = *(a1 + 72);
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
    if (v13)
    {
LABEL_14:
      v15 = 0;
      v16 = v14 + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v16 + 8) & 0xFFFFFFFFFFFFFFF8, v15))
      {
        ++v15;
        v16 += 32;
        if (v13 == v15)
        {
          v17 = *(a1 + 44);
          v12 = (v17 >> 23) & 1;
          v18 = v17 & 0x800000;
          v19 = *(v5 + 16 * v12 + 32);
          goto LABEL_27;
        }
      }

      goto LABEL_22;
    }
  }

  v19 = 0;
  v18 = v11 & 0x800000;
LABEL_27:
  v25 = *(v5 + 16 * v12 + 36);
  if (v18)
  {
    v26 = *(a1 + 72);
  }

  else
  {
    v26 = 0;
  }

  v27 = v25 + v19 - v19;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "op_bundle_sizes", 0xFuLL, "op_bundle_operands", 0x12uLL, v27))
  {
    goto LABEL_22;
  }

  if (v25)
  {
    v28 = v26 + 32 * v19 + 24;
    while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v28 + 8) & 0xFFFFFFFFFFFFFFF8, v13))
    {
      LODWORD(v13) = v13 + 1;
      v28 += 32;
      if (!--v27)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_22;
  }

LABEL_34:
  LODWORD(v46) = 0;
  v29 = *(a1 + 36);
  if (v29 <= 1)
  {
    if (v29 && !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(a1 - 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      goto LABEL_22;
    }

LABEL_40:
    v32 = (v5 + 16 * ((*(a1 + 44) >> 23) & 1));
    v33 = v32[1];
    if (*(v33 + 24) < 5uLL || ((v34 = *(v33 + 16), v35 = *v34, v36 = *(v34 + 4), v35 == 1836477548) ? (v37 = v36 == 46) : (v37 = 0), !v37))
    {
      v49 = 257;
      mlir::Operation::emitOpError(a1, v48, &v50);
      if (v50)
      {
        mlir::Diagnostic::operator<<<39ul>(&v51, "intrinsic name must start with 'llvm.'");
      }

LABEL_47:
      v38 = v52;
LABEL_48:
      v22 = v38 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
      goto LABEL_23;
    }

    v39 = v32[3];
    v40 = *(v32[2] + 16);
    if (v39)
    {
      v41 = *(v39 + 16);
      if (v41)
      {
        v42 = *(v39 + 8);
        v43 = 8 * v41;
        while (*(**v42 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v42 += 8;
          v43 -= 8;
          if (!v43)
          {
            goto LABEL_56;
          }
        }

        v48[0] = "operand bundle tag must be a StringAttr";
        v49 = 259;
        mlir::Operation::emitError(&v50, a1, v48);
        goto LABEL_47;
      }
    }

    else
    {
      v41 = 0;
    }

LABEL_56:
    v46 = v41;
    v47 = v40;
    if (v40 == v41)
    {
      v22 = 1;
      goto LABEL_23;
    }

    v48[0] = "expected ";
    v49 = 259;
    mlir::Operation::emitError(&v50, a1, v48);
    v44 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v50, &v47);
    v45 = v44;
    if (*v44)
    {
      mlir::Diagnostic::operator<<<40ul>((v44 + 1), " operand bundle tags, but actually got ");
    }

    v38 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v45, &v46) + 200);
    goto LABEL_48;
  }

  v48[0] = "result group starting at #";
  v49 = 259;
  mlir::Operation::emitOpError(a1, v48, &v50);
  v30 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v50, &v46);
  v31 = v30;
  if (*v30)
  {
    mlir::Diagnostic::operator<<<37ul>((v30 + 1), " requires 0 or 1 element, but found ");
  }

  v47 = v29;
  v21 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v31, &v47) + 200);
LABEL_21:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
  if ((v21 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  v22 = 0;
LABEL_23:
  v23 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 > 11)
  {
    if (a4 <= 14)
    {
      if (a4 == 12)
      {
        if (*a3 == 0x6C6C61436C696154 && *(a3 + 8) == 1684957515)
        {
          v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
        }

        else
        {
          if (*a3 != 0x63735F7361696C61 || *(a3 + 8) != 1936027759)
          {
            goto LABEL_118;
          }

          v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88);
        }
      }

      else if (a4 == 13)
      {
        if (*a3 == 0x675F737365636361 && *(a3 + 5) == 0x7370756F72675F73)
        {
          v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
        }

        else
        {
          if (*a3 != 0x6874616D74736166 || *(a3 + 5) != 0x7367616C46687461)
          {
            goto LABEL_118;
          }

          v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128);
        }
      }

      else if (*a3 == 0x775F68636E617262 && *(a3 + 6) == 0x737468676965775FLL)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104);
      }

      else if (*a3 == 0x655F79726F6D656DLL && *(a3 + 6) == 0x737463656666655FLL)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 136);
      }

      else if (*a3 == 0x5F7361696C616F6ELL && *(a3 + 6) == 0x7365706F63735F73)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 152);
      }

      else
      {
        if (*a3 != 0x6C646E75625F706FLL || *(a3 + 6) != 0x736761745F656C64)
        {
          goto LABEL_118;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 168);
      }

      goto LABEL_128;
    }

    if (a4 == 15)
    {
      if (*a3 == 0x6C646E75625F706FLL && *(a3 + 7) == 0x73657A69735F656CLL)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 160);
      }

      else
      {
        if (*a3 != 0x6C6C61635F726176 || *(a3 + 7) != 0x657079745F65656CLL)
        {
          goto LABEL_118;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 192);
      }

      goto LABEL_128;
    }

    if (a4 == 19)
    {
      if (*a3 != 0x53646E617265706FLL || *(a3 + 8) != 0x6953746E656D6765 || *(a3 + 11) != 0x73657A6953746E65)
      {
        goto LABEL_118;
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
        goto LABEL_118;
      }
    }

    v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 208, 2);
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  if (a4 > 8)
  {
    if (a4 == 9)
    {
      if (*a3 == 0x727474615F677261 && *(a3 + 8) == 115)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96);
      }

      else if (*a3 == 0x6E69776E755F6F6ELL && *(a3 + 8) == 100)
      {
        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 144);
      }

      else
      {
        if (*a3 != 0x727474615F736572 || *(a3 + 8) != 115)
        {
          goto LABEL_118;
        }

        v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 176);
      }
    }

    else if (a4 == 10)
    {
      if (*a3 != 0x65677265766E6F63 || *(a3 + 8) != 29806)
      {
        goto LABEL_118;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120);
    }

    else
    {
      if (*a3 != 0x7465725F6C6C6977 || *(a3 + 3) != 0x6E72757465725F6CLL)
      {
        goto LABEL_118;
      }

      v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 200);
    }

    goto LABEL_128;
  }

  if (a4 == 4)
  {
    if (*a3 != 1633772148)
    {
LABEL_118:
      LOBYTE(v4) = 0;
      v5 = 0;
      return v5 | v4;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 184);
LABEL_128:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  if (a4 == 5)
  {
    if (*a3 != 1852785475 || *(a3 + 4) != 118)
    {
      goto LABEL_118;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    goto LABEL_128;
  }

  v5 = 0;
  if (a4 == 6)
  {
    if (*a3 != 1819042147 || *(a3 + 4) != 25957)
    {
      goto LABEL_118;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
    goto LABEL_128;
  }

  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 > 11)
  {
    if (v5 > 14)
    {
      if (v5 == 15)
      {
        if (*v4 == 0x6C646E75625F706FLL && *(v4 + 7) == 0x73657A69735F656CLL)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v62 = *(a4 + 8), *(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
          {
            if (v62[2] == 32)
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

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 160) = v63;
        }

        else
        {
          v38 = *v4;
          v39 = *(v4 + 7);
          if (v38 == 0x6C6C61635F726176 && v39 == 0x657079745F65656CLL)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
              {
                v41 = a4;
              }

              else
              {
                v41 = 0;
              }
            }

            else
            {
              v41 = 0;
            }

            *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 192) = v41;
          }
        }
      }

      else
      {
        if (v5 == 19)
        {
          v21 = *v4 ^ 0x53646E617265706FLL;
          v22 = v4[1] ^ 0x6953746E656D6765;
          v23 = *(v4 + 11);
          v24 = 0x73657A6953746E65;
        }

        else
        {
          if (v5 != 21)
          {
            return result;
          }

          v21 = *v4 ^ 0x5F646E617265706FLL;
          v22 = v4[1] ^ 0x5F746E656D676573;
          v23 = *(v4 + 13);
          v24 = 0x73657A69735F746ELL;
        }

        if (v21 | v22 | v23 ^ v24)
        {
          v55 = 1;
        }

        else
        {
          v55 = a4 == 0;
        }

        if (!v55 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
        {
          v56 = *(a4 + 8);
          if (*(*v56 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v56[2] == 32 && *(a4 + 16) == 2)
          {
            v57 = *(a4 + 32);
            if (v57 >= 4)
            {
              return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 208), *(a4 + 24), v57 & 0xFFFFFFFFFFFFFFFCLL);
            }
          }
        }
      }
    }

    else if (v5 == 12)
    {
      if (*v4 == 0x6C6C61436C696154 && *(v4 + 2) == 1684957515)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
          {
            v60 = a4;
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v60 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v60;
      }

      else
      {
        v27 = *v4;
        v28 = *(v4 + 2);
        if (v27 == 0x63735F7361696C61 && v28 == 1936027759)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v30 = a4;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 88) = v30;
        }
      }
    }

    else if (v5 == 13)
    {
      if (*v4 == 0x675F737365636361 && *(v4 + 5) == 0x7370756F72675F73)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80) = v64;
      }

      else
      {
        v47 = *v4;
        v48 = *(v4 + 5);
        if (v47 == 0x6874616D74736166 && v48 == 0x7367616C46687461)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
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

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 128) = v50;
        }
      }
    }

    else if (*v4 == 0x775F68636E617262 && *(v4 + 6) == 0x737468676965775FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v58 = *(a4 + 8), *(*v58 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v58[2] == 32)
        {
          v59 = a4;
        }

        else
        {
          v59 = 0;
        }
      }

      else
      {
        v59 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 104) = v59;
    }

    else if (*v4 == 0x655F79726F6D656DLL && *(v4 + 6) == 0x737463656666655FLL)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
        {
          v65 = a4;
        }

        else
        {
          v65 = 0;
        }
      }

      else
      {
        v65 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 136) = v65;
    }

    else if (*v4 == 0x5F7361696C616F6ELL && *(v4 + 6) == 0x7365706F63735F73)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v67 = a4;
        }

        else
        {
          v67 = 0;
        }
      }

      else
      {
        v67 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 152) = v67;
    }

    else
    {
      v13 = *v4;
      v14 = *(v4 + 6);
      if (v13 == 0x6C646E75625F706FLL && v14 == 0x736761745F656C64)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
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

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 168) = v16;
      }
    }
  }

  else if (v5 > 8)
  {
    if (v5 == 9)
    {
      if (*v4 == 0x727474615F677261 && *(v4 + 8) == 115)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v61 = a4;
          }

          else
          {
            v61 = 0;
          }
        }

        else
        {
          v61 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 96) = v61;
      }

      else if (*v4 == 0x6E69776E755F6F6ELL && *(v4 + 8) == 100)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v66 = a4;
          }

          else
          {
            v66 = 0;
          }
        }

        else
        {
          v66 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 144) = v66;
      }

      else
      {
        v33 = *v4;
        v34 = *(v4 + 8);
        if (v33 == 0x727474615F736572 && v34 == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v36 = a4;
            }

            else
            {
              v36 = 0;
            }
          }

          else
          {
            v36 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 176) = v36;
        }
      }
    }

    else if (v5 == 10)
    {
      v51 = *v4;
      v52 = *(v4 + 4);
      if (v51 == 0x65677265766E6F63 && v52 == 29806)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v54 = a4;
          }

          else
          {
            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 120) = v54;
      }
    }

    else
    {
      v17 = *v4;
      v18 = *(v4 + 3);
      if (v17 == 0x7465725F6C6C6977 && v18 == 0x6E72757465725F6CLL)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

        *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 200) = v20;
      }
    }
  }

  else
  {
    switch(v5)
    {
      case 4:
        if (*v4 == 1633772148)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v25 = a4;
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 184) = v25;
        }

        break;
      case 5:
        v42 = *v4;
        v43 = *(v4 + 4);
        if (v42 == 1852785475 && v43 == 118)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id)
            {
              v45 = a4;
            }

            else
            {
              v45 = 0;
            }
          }

          else
          {
            v45 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v45;
        }

        break;
      case 6:
        v6 = *v4;
        v7 = *(v4 + 2);
        if (v6 == 1819042147 && v7 == 25957)
        {
          if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
          {
            if (*(a4 + 24))
            {
              v9 = 0;
            }

            else
            {
              v9 = a4;
            }
          }

          else
          {
            v9 = 0;
          }

          *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112) = v9;
        }

        break;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = (v5 + 64);
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v68 = 261;
    v66 = "CConv";
    v67 = 5;
    v10 = mlir::StringAttr::get(v9, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = v7[1];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v68 = 261;
    v66 = "TailCallKind";
    v67 = 12;
    v13 = mlir::StringAttr::get(v12, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = v7[2];
  if (v14)
  {
    v15 = *(**v14 + 32);
    v68 = 261;
    v66 = "access_groups";
    v67 = 13;
    v16 = mlir::StringAttr::get(v15, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v16, v14);
  }

  v17 = v7[3];
  if (v17)
  {
    v18 = *(**v17 + 32);
    v68 = 261;
    v66 = "alias_scopes";
    v67 = 12;
    v19 = mlir::StringAttr::get(v18, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v19, v17);
  }

  v20 = v7[4];
  if (v20)
  {
    v21 = *(**v20 + 32);
    v68 = 261;
    v66 = "arg_attrs";
    v67 = 9;
    v22 = mlir::StringAttr::get(v21, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v22, v20);
  }

  v23 = v7[5];
  if (v23)
  {
    v24 = *(**v23 + 32);
    v68 = 261;
    v66 = "branch_weights";
    v67 = 14;
    v25 = mlir::StringAttr::get(v24, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v25, v23);
  }

  v26 = v7[6];
  if (v26)
  {
    v27 = *(**v26 + 32);
    v68 = 261;
    v66 = "callee";
    v67 = 6;
    v28 = mlir::StringAttr::get(v27, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v28, v26);
  }

  v29 = v7[7];
  if (v29)
  {
    v30 = *(**v29 + 32);
    v68 = 261;
    v66 = "convergent";
    v67 = 10;
    v31 = mlir::StringAttr::get(v30, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v31, v29);
  }

  v32 = v7[8];
  if (v32)
  {
    v33 = *(**v32 + 32);
    v68 = 261;
    v66 = "fastmathFlags";
    v67 = 13;
    v34 = mlir::StringAttr::get(v33, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v34, v32);
  }

  v35 = v7[9];
  if (v35)
  {
    v36 = *(**v35 + 32);
    v68 = 261;
    v66 = "memory_effects";
    v67 = 14;
    v37 = mlir::StringAttr::get(v36, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v37, v35);
  }

  v38 = v7[10];
  if (v38)
  {
    v39 = *(**v38 + 32);
    v68 = 261;
    v66 = "no_unwind";
    v67 = 9;
    v40 = mlir::StringAttr::get(v39, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v40, v38);
  }

  v41 = v7[11];
  if (v41)
  {
    v42 = *(**v41 + 32);
    v68 = 261;
    v66 = "noalias_scopes";
    v67 = 14;
    v43 = mlir::StringAttr::get(v42, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v43, v41);
  }

  v44 = v7[12];
  if (v44)
  {
    v45 = *(**v44 + 32);
    v68 = 261;
    v66 = "op_bundle_sizes";
    v67 = 15;
    v46 = mlir::StringAttr::get(v45, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v46, v44);
  }

  v47 = v7[13];
  if (v47)
  {
    v48 = *(**v47 + 32);
    v68 = 261;
    v66 = "op_bundle_tags";
    v67 = 14;
    v49 = mlir::StringAttr::get(v48, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v49, v47);
  }

  v50 = v7[14];
  if (v50)
  {
    v51 = *(**v50 + 32);
    v68 = 261;
    v66 = "res_attrs";
    v67 = 9;
    v52 = mlir::StringAttr::get(v51, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v52, v50);
  }

  v53 = v7[15];
  if (v53)
  {
    v54 = *(**v53 + 32);
    v68 = 261;
    v66 = "tbaa";
    v67 = 4;
    v55 = mlir::StringAttr::get(v54, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v55, v53);
  }

  v56 = v7[16];
  if (v56)
  {
    v57 = *(**v56 + 32);
    v68 = 261;
    v66 = "var_callee_type";
    v67 = 15;
    v58 = mlir::StringAttr::get(v57, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v58, v56);
  }

  v59 = v7[17];
  if (v59)
  {
    v60 = *(**v59 + 32);
    v68 = 261;
    v66 = "will_return";
    v67 = 11;
    v61 = mlir::StringAttr::get(v60, &v66, a3);
    mlir::NamedAttrList::push_back(a3, v61, v59);
  }

  v62 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (v7 + 18), 2);
  v63 = *(**v62 + 32);
  v68 = 261;
  v66 = "operandSegmentSizes";
  v67 = 19;
  v65 = mlir::StringAttr::get(v63, &v66, v64);
  mlir::NamedAttrList::push_back(a3, v65, v62);
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::verifyInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps20(v14, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v17, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v20, "alias_scopes", 12, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v26, "branch_weights", 14, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v29, "callee", 6, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v32, "convergent", 10, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v35, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(v38, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v41, "no_unwind", 9, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v44, "noalias_scopes", 14, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v47, "op_bundle_sizes", 15, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v50, "op_bundle_tags", 14, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v53, "res_attrs", 9, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v56, a4, a5))
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
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v59, "var_callee_type", 15, a4, a5))
      {
        return 0;
      }
    }
  }

  v60 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a3, *(*(a2 + 96) + 136));
  return (v61 & 1) == 0 || (v62 = v60[1]) == 0 || mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v62, "will_return", 11, a4, a5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v4;
    v5 = *(a4 + 32);
    v6 = *(a4 + 48);
    v7 = *(a4 + 80);
    *(a3 + 64) = *(a4 + 64);
    *(a3 + 80) = v7;
    *(a3 + 32) = v5;
    *(a3 + 48) = v6;
    v8 = *(a4 + 96);
    v9 = *(a4 + 112);
    v10 = *(a4 + 128);
    *(a3 + 144) = *(a4 + 144);
    *(a3 + 112) = v9;
    *(a3 + 128) = v10;
    *(a3 + 96) = v8;
  }

  else
  {
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return mlir::LLVM::CallOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v82 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v78, a6);
    if (v78)
    {
      mlir::Diagnostic::operator<<<42ul>(v79, "expected DictionaryAttr to set properties");
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
        a5(&v78, a6);
        if (v78)
        {
          goto LABEL_31;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
        goto LABEL_5;
      }

      *a3 = v14;
    }
  }

  v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "TailCallKind", 0xCuLL);
  if (v16)
  {
    v14 = *(v15 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_30;
      }

      a3[1] = v14;
    }
  }

  v18 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "access_groups", 0xDuLL);
  if (v19)
  {
    v14 = *(v18 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

LABEL_31:
        if (v78)
        {
          LODWORD(v77[0]) = 0;
          v77[1] = v14;
          v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v80, v77, 1);
          v23 = v80 + 24 * v81;
          v24 = *v22;
          *(v23 + 16) = *(v22 + 16);
          *v23 = v24;
          ++v81;
        }

        goto LABEL_4;
      }

      a3[2] = v14;
    }
  }

  v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alias_scopes", 0xCuLL);
  if (v21)
  {
    v14 = *(v20 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

LABEL_30:
        mlir::Diagnostic::operator<<<58ul>(v79, v17);
        goto LABEL_31;
      }

      a3[3] = v14;
    }
  }

  v25 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "arg_attrs", 9uLL);
  if (v26)
  {
    v27 = *(v25 + 8);
    v77[0] = v27;
    if (v27)
    {
      if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      }

      a3[4] = v27;
    }
  }

  v29 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "branch_weights", 0xEuLL);
  if (v30)
  {
    v31 = *(v29 + 8);
    v77[0] = v31;
    if (v31)
    {
      if (*(*v31 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v32 = v31[1], *(*v32 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v32[2] != 32)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_55;
      }

      a3[5] = v31;
    }
  }

  v33 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "callee", 6uLL);
  if (v34)
  {
    v35 = *(v33 + 8);
    v77[0] = v35;
    if (v35)
    {
      if (*(*v35 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id || v35[3])
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

LABEL_56:
        if (v78)
        {
          mlir::Diagnostic::operator<<<mlir::Attribute &>(v79, v77);
        }

        goto LABEL_4;
      }

      a3[6] = v35;
    }
  }

  v37 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "convergent", 0xAuLL);
  if (v38)
  {
    v39 = *(v37 + 8);
    v77[0] = v39;
    if (v39)
    {
      if (*(*v39 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_56;
      }

      a3[7] = v39;
    }
  }

  v40 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "fastmathFlags", 0xDuLL);
  if (v41)
  {
    v42 = *(v40 + 8);
    v77[0] = v42;
    if (v42)
    {
      if (*(*v42 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_56;
      }

      a3[8] = v42;
    }
  }

  v43 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "memory_effects", 0xEuLL);
  if (v44)
  {
    v45 = *(v43 + 8);
    v77[0] = v45;
    if (v45)
    {
      if (*(*v45 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::MemoryEffectsAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_55;
      }

      a3[9] = v45;
    }
  }

  v46 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "no_unwind", 9uLL);
  if (v47)
  {
    v48 = *(v46 + 8);
    v77[0] = v48;
    if (v48)
    {
      if (*(*v48 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      }

      a3[10] = v48;
    }
  }

  v49 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "noalias_scopes", 0xEuLL);
  if (v50)
  {
    v51 = *(v49 + 8);
    v77[0] = v51;
    if (v51)
    {
      if (*(*v51 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_55;
      }

      a3[11] = v51;
    }
  }

  v52 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_sizes", 0xFuLL);
  if (v53)
  {
    v54 = *(v52 + 8);
    v77[0] = v54;
    if (v54)
    {
      if (*(*v54 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v55 = v54[1], *(*v55 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v55[2] != 32)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_102;
      }

      a3[12] = v54;
    }
  }

  v56 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "op_bundle_tags", 0xEuLL);
  if (v57)
  {
    v58 = *(v56 + 8);
    v77[0] = v58;
    if (v58)
    {
      if (*(*v58 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

LABEL_55:
        mlir::Diagnostic::operator<<<60ul>(v79, v36);
        goto LABEL_56;
      }

      a3[13] = v58;
    }
  }

  v60 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "res_attrs", 9uLL);
  if (v61)
  {
    v62 = *(v60 + 8);
    v77[0] = v62;
    if (v62)
    {
      if (*(*v62 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

LABEL_39:
        mlir::Diagnostic::operator<<<55ul>(v79, v28);
        goto LABEL_56;
      }

      a3[14] = v62;
    }
  }

  v63 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "tbaa", 4uLL);
  if (v64)
  {
    v65 = *(v63 + 8);
    v77[0] = v65;
    if (v65)
    {
      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_56;
      }

      a3[15] = v65;
    }
  }

  v66 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "var_callee_type", 0xFuLL);
  if (v67)
  {
    v68 = *(v66 + 8);
    v77[0] = v68;
    if (v68)
    {
      if (*(*v68 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

LABEL_102:
        mlir::Diagnostic::operator<<<61ul>(v79, v59);
        goto LABEL_56;
      }

      a3[16] = v68;
    }
  }

  v69 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "will_return", 0xBuLL);
  if (v70)
  {
    v71 = *(v69 + 8);
    v77[0] = v71;
    if (v71)
    {
      if (*(*v71 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a5(&v78, a6);
        if (!v78)
        {
          goto LABEL_4;
        }

        goto LABEL_56;
      }

      a3[17] = v71;
    }
  }

  v72 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v73 & 1) == 0 || (v74 = *(v72 + 8)) == 0) && ((v75 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v76 & 1) == 0) || (v74 = *(v75 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 18, 2, v74, a5, a6, "DenseI32ArrayAttr", 17))
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v73[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = (v4 + 64);
  v5 = v7;
  v71 = v73;
  v72 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v70 = 261;
    v68 = "CConv";
    v69 = 5;
    v9 = mlir::StringAttr::get(v8, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v9, v5);
  }

  v10 = v6[1];
  if (v10)
  {
    v11 = *(**v10 + 32);
    v70 = 261;
    v68 = "TailCallKind";
    v69 = 12;
    v12 = mlir::StringAttr::get(v11, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v12, v10);
  }

  v13 = v6[2];
  if (v13)
  {
    v14 = *(**v13 + 32);
    v70 = 261;
    v68 = "access_groups";
    v69 = 13;
    v15 = mlir::StringAttr::get(v14, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v15, v13);
  }

  v16 = v6[3];
  if (v16)
  {
    v17 = *(**v16 + 32);
    v70 = 261;
    v68 = "alias_scopes";
    v69 = 12;
    v18 = mlir::StringAttr::get(v17, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v18, v16);
  }

  v19 = v6[4];
  if (v19)
  {
    v20 = *(**v19 + 32);
    v70 = 261;
    v68 = "arg_attrs";
    v69 = 9;
    v21 = mlir::StringAttr::get(v20, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v21, v19);
  }

  v22 = v6[5];
  if (v22)
  {
    v23 = *(**v22 + 32);
    v70 = 261;
    v68 = "branch_weights";
    v69 = 14;
    v24 = mlir::StringAttr::get(v23, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v24, v22);
  }

  v25 = v6[6];
  if (v25)
  {
    v26 = *(**v25 + 32);
    v70 = 261;
    v68 = "callee";
    v69 = 6;
    v27 = mlir::StringAttr::get(v26, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v27, v25);
  }

  v28 = v6[7];
  if (v28)
  {
    v29 = *(**v28 + 32);
    v70 = 261;
    v68 = "convergent";
    v69 = 10;
    v30 = mlir::StringAttr::get(v29, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v30, v28);
  }

  v31 = v6[8];
  if (v31)
  {
    v32 = *(**v31 + 32);
    v70 = 261;
    v68 = "fastmathFlags";
    v69 = 13;
    v33 = mlir::StringAttr::get(v32, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v33, v31);
  }

  v34 = v6[9];
  if (v34)
  {
    v35 = *(**v34 + 32);
    v70 = 261;
    v68 = "memory_effects";
    v69 = 14;
    v36 = mlir::StringAttr::get(v35, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v36, v34);
  }

  v37 = v6[10];
  if (v37)
  {
    v38 = *(**v37 + 32);
    v70 = 261;
    v68 = "no_unwind";
    v69 = 9;
    v39 = mlir::StringAttr::get(v38, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v39, v37);
  }

  v40 = v6[11];
  if (v40)
  {
    v41 = *(**v40 + 32);
    v70 = 261;
    v68 = "noalias_scopes";
    v69 = 14;
    v42 = mlir::StringAttr::get(v41, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v42, v40);
  }

  v43 = v6[12];
  if (v43)
  {
    v44 = *(**v43 + 32);
    v70 = 261;
    v68 = "op_bundle_sizes";
    v69 = 15;
    v45 = mlir::StringAttr::get(v44, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v45, v43);
  }

  v46 = v6[13];
  if (v46)
  {
    v47 = *(**v46 + 32);
    v70 = 261;
    v68 = "op_bundle_tags";
    v69 = 14;
    v48 = mlir::StringAttr::get(v47, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v48, v46);
  }

  v49 = v6[14];
  if (v49)
  {
    v50 = *(**v49 + 32);
    v70 = 261;
    v68 = "res_attrs";
    v69 = 9;
    v51 = mlir::StringAttr::get(v50, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v51, v49);
  }

  v52 = v6[15];
  if (v52)
  {
    v53 = *(**v52 + 32);
    v70 = 261;
    v68 = "tbaa";
    v69 = 4;
    v54 = mlir::StringAttr::get(v53, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v54, v52);
  }

  v55 = v6[16];
  if (v55)
  {
    v56 = *(**v55 + 32);
    v70 = 261;
    v68 = "var_callee_type";
    v69 = 15;
    v57 = mlir::StringAttr::get(v56, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v57, v55);
  }

  v58 = v6[17];
  if (v58)
  {
    v59 = *(**v58 + 32);
    v70 = 261;
    v68 = "will_return";
    v69 = 11;
    v60 = mlir::StringAttr::get(v59, &v68, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v60, v58);
  }

  v61 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, (v6 + 18), 2);
  v62 = *(**v61 + 32);
  v70 = 261;
  v68 = "operandSegmentSizes";
  v69 = 19;
  v64 = mlir::StringAttr::get(v62, &v68, v63);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v71, v64, v61);
  if (v72)
  {
    v65 = mlir::DictionaryAttr::get(v3, v71, v72);
  }

  else
  {
    v65 = 0;
  }

  if (v71 != v73)
  {
    free(v71);
  }

  v66 = *MEMORY[0x277D85DE8];
  return v65;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 80);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 80) = v6;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  result = *(a3 + 96);
  v8 = *(a3 + 112);
  v9 = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 112) = v8;
  *(a2 + 128) = v9;
  *(a2 + 96) = result;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CallOp>::hashProperties(uint64_t a1, uint64_t a2)
{
  v78[15] = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(*(a2 + 8));
  v5 = 0x9DDFEA08EB382D69 * ((8 * *(a2 + 8) - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = (8 * v7 - 0xAE502812AA7333) ^ HIDWORD(v7);
  v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ ((0x9DDFEA08EB382D69 * v9) >> 47) ^ (0x9DDFEA08EB382D69 * v9));
  v76 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v11 = HIDWORD(v8);
  v12 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
  v75 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 47));
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = (8 * v13 - 0xAE502812AA7333) ^ HIDWORD(v13);
  v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v13) ^ ((0x9DDFEA08EB382D69 * v15) >> 47) ^ (0x9DDFEA08EB382D69 * v15));
  v74 = 0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47));
  v17 = HIDWORD(v14);
  v18 = 0x9DDFEA08EB382D69 * ((8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14));
  v73 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  v21 = (8 * v19 - 0xAE502812AA7333) ^ HIDWORD(v19);
  v22 = 0x9DDFEA08EB382D69 * (HIDWORD(v19) ^ ((0x9DDFEA08EB382D69 * v21) >> 47) ^ (0x9DDFEA08EB382D69 * v21));
  v72 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
  v23 = HIDWORD(v20);
  v24 = 0x9DDFEA08EB382D69 * ((8 * v20 - 0xAE502812AA7333) ^ HIDWORD(v20));
  v71 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) ^ ((0x9DDFEA08EB382D69 * (v23 ^ (v24 >> 47) ^ v24)) >> 47));
  v25 = *(a2 + 64);
  v26 = *(a2 + 72);
  v27 = (8 * v25 - 0xAE502812AA7333) ^ HIDWORD(v25);
  v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ ((0x9DDFEA08EB382D69 * v27) >> 47) ^ (0x9DDFEA08EB382D69 * v27));
  v70 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
  v29 = HIDWORD(v26);
  v30 = 0x9DDFEA08EB382D69 * ((8 * v26 - 0xAE502812AA7333) ^ HIDWORD(v26));
  v69 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) ^ ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 47));
  v31 = *(a2 + 80);
  v32 = *(a2 + 88);
  v33 = (8 * v31 - 0xAE502812AA7333) ^ HIDWORD(v31);
  v34 = 0x9DDFEA08EB382D69 * (HIDWORD(v31) ^ ((0x9DDFEA08EB382D69 * v33) >> 47) ^ (0x9DDFEA08EB382D69 * v33));
  v68 = 0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47));
  v35 = HIDWORD(v32);
  v36 = 0x9DDFEA08EB382D69 * ((8 * v32 - 0xAE502812AA7333) ^ HIDWORD(v32));
  v67 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v36 >> 47) ^ v36)) ^ ((0x9DDFEA08EB382D69 * (v35 ^ (v36 >> 47) ^ v36)) >> 47));
  v37 = *(a2 + 96);
  v38 = *(a2 + 104);
  v39 = (8 * v37 - 0xAE502812AA7333) ^ HIDWORD(v37);
  v40 = 0x9DDFEA08EB382D69 * (HIDWORD(v37) ^ ((0x9DDFEA08EB382D69 * v39) >> 47) ^ (0x9DDFEA08EB382D69 * v39));
  v66 = 0x9DDFEA08EB382D69 * (v40 ^ (v40 >> 47));
  v41 = HIDWORD(v38);
  v42 = 0x9DDFEA08EB382D69 * ((8 * v38 - 0xAE502812AA7333) ^ HIDWORD(v38));
  v65 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v41 ^ (v42 >> 47) ^ v42)) ^ ((0x9DDFEA08EB382D69 * (v41 ^ (v42 >> 47) ^ v42)) >> 47));
  v43 = *(a2 + 112);
  v44 = *(a2 + 120);
  v45 = (8 * v43 - 0xAE502812AA7333) ^ HIDWORD(v43);
  v46 = 0x9DDFEA08EB382D69 * (HIDWORD(v43) ^ ((0x9DDFEA08EB382D69 * v45) >> 47) ^ (0x9DDFEA08EB382D69 * v45));
  v64 = 0x9DDFEA08EB382D69 * (v46 ^ (v46 >> 47));
  v47 = HIDWORD(v44);
  v48 = 0x9DDFEA08EB382D69 * ((8 * v44 - 0xAE502812AA7333) ^ HIDWORD(v44));
  v63 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v47 ^ (v48 >> 47) ^ v48)) ^ ((0x9DDFEA08EB382D69 * (v47 ^ (v48 >> 47) ^ v48)) >> 47));
  v49 = *(a2 + 128);
  v50 = *(a2 + 136);
  v51 = (8 * v49 - 0xAE502812AA7333) ^ HIDWORD(v49);
  v52 = 0x9DDFEA08EB382D69 * (HIDWORD(v49) ^ ((0x9DDFEA08EB382D69 * v51) >> 47) ^ (0x9DDFEA08EB382D69 * v51));
  v53 = 0x9DDFEA08EB382D69 * (v52 ^ (v52 >> 47));
  v54 = 0x9DDFEA08EB382D69 * ((8 * v50 - 0xAE502812AA7333) ^ HIDWORD(v50));
  v55 = 0x9DDFEA08EB382D69 * (HIDWORD(v50) ^ (v54 >> 47) ^ v54);
  v61 = 0x9DDFEA08EB382D69 * (v55 ^ (v55 >> 47));
  v62 = v53;
  v56 = *(a2 + 148) ^ 0xFF51AFD7ED558CCDLL;
  v57 = 0x9DDFEA08EB382D69 * (v56 ^ (8 * *(a2 + 144) + 8));
  memset(v78, 0, 112);
  v78[14] = 0xFF51AFD7ED558CCDLL;
  v77 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v60 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v56 ^ (v57 >> 47) ^ v57)) ^ ((0x9DDFEA08EB382D69 * (v56 ^ (v57 >> 47) ^ v57)) >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(&v77, 0, v78, &v78[7], 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47)), &v76, &v75, &v74, &v73, &v72, &v71, &v70, &v69, &v68, &v67, &v66, &v65, &v64, &v63, &v62, &v61, &v60);
  v59 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::CConvAttr>(a1, v3))
  {
    goto LABEL_40;
  }

  v16 = 0;
  if (((*(*a1 + 56))(a1, &v16) & 1) == 0)
  {
    goto LABEL_40;
  }

  v4 = v16;
  if (v16)
  {
    v5 = *(*v16 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
    {
      v4 = 0;
    }

    v3[1] = v4;
    if (v5 != &mlir::detail::TypeIDResolver<mlir::LLVM::TailCallKindAttr,void>::id)
    {
      v15 = 257;
      (*(*a1 + 16))(&v20, a1, v14);
      if (v20)
      {
        mlir::Diagnostic::operator<<<10ul>(v21, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC20D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20D38))
      {
        qword_27FC20D28 = llvm::detail::getTypeNameImpl<mlir::LLVM::TailCallKindAttr>();
        unk_27FC20D30 = v13;
        __cxa_guard_release(&qword_27FC20D38);
      }

      if (v20)
      {
        v19 = 261;
        v17 = qword_27FC20D28;
        v18 = unk_27FC20D30;
        mlir::Diagnostic::operator<<(v21, &v17);
        if (v20)
        {
          mlir::Diagnostic::operator<<<12ul>(v21, ", but got: ");
          if (v20)
          {
            LODWORD(v17) = 0;
            v18 = v16;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v17, 1);
            v7 = v22 + 24 * v23;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v23;
          }
        }
      }

      v9 = v24;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
      if (v9)
      {
        goto LABEL_40;
      }
    }
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 2) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 4) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 5) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FlatSymbolRefAttr>(a1, v3 + 6) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 7) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::FastmathFlagsAttr>(a1, v3 + 8) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::MemoryEffectsAttr>(a1, v3 + 9) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 10) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 11) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3 + 12) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 13))
  {
    goto LABEL_40;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v14[0] = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v14))
    {
LABEL_40:
      result = 0;
      goto LABEL_41;
    }

    if (*(v14[0] + 16) >= 3)
    {
      v17 = "size mismatch for operand/result_segment_size";
      v19 = 259;
      (*(*a1 + 16))(&v20, a1, &v17);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
      goto LABEL_40;
    }

    v10 = *(v14[0] + 32);
    if (v10 >= 4)
    {
      memmove(v3 + 18, *(v14[0] + 24), v10 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 14) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 15) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v3 + 16) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 17))
  {
    goto LABEL_40;
  }

  v20 = a1;
  v21[0] = v3 + 18;
  result = mlir::LLVM::CallOp::readProperties(mlir::DialectBytecodeReader &,mlir::OperationState &)::$_0::operator()(&v20) & 1;
LABEL_41:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  (*(*a3 + 24))(a3, *(v6 + 8));
  (*(*a3 + 24))(a3, *(v6 + 16));
  (*(*a3 + 24))(a3, *(v6 + 24));
  (*(*a3 + 24))(a3, *(v6 + 32));
  (*(*a3 + 24))(a3, *(v6 + 40));
  (*(*a3 + 24))(a3, *(v6 + 48));
  (*(*a3 + 24))(a3, *(v6 + 56));
  (*(*a3 + 24))(a3, *(v6 + 64));
  (*(*a3 + 24))(a3, *(v6 + 72));
  (*(*a3 + 24))(a3, *(v6 + 80));
  (*(*a3 + 24))(a3, *(v6 + 88));
  (*(*a3 + 16))(a3, *(v6 + 96));
  (*(*a3 + 24))(a3, *(v6 + 104));
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 144, 2);
    (*(*a3 + 16))(a3, v8);
  }

  (*(*a3 + 24))(a3, *(v6 + 112));
  (*(*a3 + 24))(a3, *(v6 + 120));
  (*(*a3 + 24))(a3, *(v6 + 128));
  (*(*a3 + 24))(a3, *(v6 + 136));
  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 144), 2);
  }

  return result;
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::getCallableForCallee(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 112);
  if (v2)
  {
    return v2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return *(*(a2 + 72) + 24) | 4;
  }
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = (a3 & 0xFFFFFFFFFFFFFFF8);
  if (*(v3 + 112))
  {
    *(v3 + 112) = v4;
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

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::getArgOperands(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  v4 = *(v3 + 208);
  if ((v2 & 0x800000) != 0)
  {
    v5 = *(a2 + 72);
  }

  else
  {
    v5 = 0;
  }

  return v5 + 32 * (*(v3 + 112) == 0);
}

double mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::getArgOperandsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1 + 16 * ((*(a1 + 44) >> 23) & 1);
  v3 = *(v2 + 112) == 0;
  LODWORD(v2) = *(v2 + 208);
  *a2 = a1;
  *(a2 + 8) = v3;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *InterfaceFor, uint64_t a3)
{
  v4 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v4, InterfaceFor, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

uint64_t mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::verifySymbolUses(int a1, mlir::SymbolTable *this, mlir::SymbolTableCollection *a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = this + 64;
  v6 = *(this + 11);
  v7 = this + 16 * ((v6 >> 23) & 1) + 64;
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = *(v8 + 8);
  if (*(v9 + 32) != 1)
  {
    v18 = "expected var_callee_type to be a variadic function type";
    goto LABEL_9;
  }

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v12 = *(v7 + 36);
  v13 = *(v7 + 6) == 0;
  if ((v6 & 0x800000) == 0)
  {
    if (v12 - v13 < v10)
    {
      goto LABEL_5;
    }

    v20 = 0;
    goto LABEL_14;
  }

  if (v12 - v13 >= v10)
  {
    v20 = *(this + 9);
LABEL_14:
    if (v10)
    {
      v21 = v12 == v13;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v26 = ~v13 + v12;
      v27 = v20 + 32 * v13 + 24;
      v28 = 8 * v10 - 8;
      while (1)
      {
        v29 = *v27;
        if (*v11 != (*(*v27 + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          break;
        }

        v31 = v26-- != 0;
        if (v28)
        {
          ++v11;
          v27 += 32;
          v28 -= 8;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v87 = 257;
      mlir::Operation::emitOpError(this, &v85, &v88);
      if (!v88)
      {
        goto LABEL_10;
      }

      mlir::Diagnostic::operator<<<42ul>(v89, "var_callee_type parameter type mismatch: ");
      if (!v88)
      {
        goto LABEL_10;
      }

      mlir::Diagnostic::operator<<<mlir::Type const&>(v89, v11);
      if (!v88)
      {
        goto LABEL_10;
      }

      mlir::Diagnostic::operator<<<5ul>(v89, " != ");
      v82 = *(v29 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (!v88)
      {
        goto LABEL_10;
      }

LABEL_76:
      mlir::Diagnostic::operator<<<mlir::Type>(v89, &v82);
      goto LABEL_10;
    }

LABEL_19:
    if (*(this + 9))
    {
      if ((*(this - 1) & 0xFFFFFFFFFFFFFFF8) != *(v9 + 8))
      {
        v85 = "var_callee_type return type mismatch: ";
        v87 = 259;
        mlir::Operation::emitOpError(this, &v85, &v88);
        if (!v88)
        {
          goto LABEL_10;
        }

        v22 = *(v9 + 8);
        LODWORD(v82) = 4;
        v83 = v22;
        v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v90, &v82, 1);
        v24 = v90 + 24 * v91;
        v25 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v24 = v25;
        ++v91;
        if (!v88)
        {
          goto LABEL_10;
        }

        mlir::Diagnostic::operator<<<5ul>(v89, " != ");
        v82 = *(this - 1) & 0xFFFFFFFFFFFFFFF8;
        if (!v88)
        {
          goto LABEL_10;
        }

        goto LABEL_76;
      }

LABEL_34:
      v33 = *(this + 11);
      v34 = *&v5[16 * ((v33 >> 23) & 1) + 48];
      if (v34)
      {
        v35 = *(v34 + 8);
        NearestSymbolTable = mlir::SymbolTable::getNearestSymbolTable(this, this);
        if (!NearestSymbolTable || (v37 = mlir::SymbolTableCollection::lookupSymbolIn(a3, NearestSymbolTable, v35)) == 0)
        {
          v84 = 257;
          mlir::Operation::emitOpError(this, &v82, &v88);
          if (v88)
          {
            mlir::Diagnostic::operator<<<2ul>(v89, "'");
            if (v88)
            {
              v41 = *(*(v34 + 8) + 16);
              v42 = *(*(v34 + 8) + 24);
              v87 = 261;
              v85 = v41;
              v86 = v42;
              mlir::Diagnostic::operator<<(v89, &v85);
              if (v88)
              {
                mlir::Diagnostic::operator<<<51ul>(v89, "' does not reference a symbol in the current scope");
              }
            }
          }

          goto LABEL_68;
        }

        v38 = v37;
        if (*(*(v37 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFuncOp,void>::id)
        {
          v84 = 257;
          mlir::Operation::emitOpError(this, &v82, &v88);
          if (v88)
          {
            mlir::Diagnostic::operator<<<2ul>(v89, "'");
            if (v88)
            {
              v39 = *(*(v34 + 8) + 16);
              v40 = *(*(v34 + 8) + 24);
              v87 = 261;
              v85 = v39;
              v86 = v40;
              mlir::Diagnostic::operator<<(v89, &v85);
              if (v88)
              {
                mlir::Diagnostic::operator<<<43ul>(v89, "' does not reference a valid LLVM function");
              }
            }
          }

          goto LABEL_68;
        }

        v46 = (((v37 + 64 + 16 * ((*(v37 + 44) >> 23) & 1) + ((*(v37 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v37 + 40));
        if (*v46 != v46)
        {
          v47 = mlir::Operation::getParentOfType<mlir::FunctionOpInterface>(this);
          if (v47)
          {
            v82 = *(v47 + 24);
            v88 = 0;
            v85 = &v88;
            mlir::LocationAttr::walk(&v82, llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr> mlir::LocationAttr::findInstanceOf<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>>(void)::{lambda(mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>)#1}>, &v85);
            if (v88)
            {
              v82 = *(v38 + 24);
              v88 = 0;
              v85 = &v88;
              mlir::LocationAttr::walk(&v82, llvm::function_ref<mlir::WalkResult ()(mlir::Location)>::callback_fn<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr> mlir::LocationAttr::findInstanceOf<mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>>(void)::{lambda(mlir::FusedLocWith<mlir::LLVM::DISubprogramAttr>)#1}>, &v85);
              if (v88)
              {
                if (*(**(this + 3) + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
                {
                  v87 = 257;
                  mlir::Operation::emitError(&v88, this, &v85);
                  if (v88)
                  {
                    mlir::Diagnostic::operator<<<94ul>(v89, "inlinable function call in a function with a DISubprogram location must have a debug location");
                  }

                  v48 = v92;
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v88);
                  if (v48)
                  {
                    v49 = 0;
LABEL_70:
                    result = v49 & 1;
                    goto LABEL_71;
                  }
                }
              }
            }
          }
        }

        v50 = *(*(v38 + 64 + 16 * ((*(v38 + 44) >> 23) & 1) + 168) + 8);
        if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFunctionType,void>::id)
        {
          v85 = "callee does not have a functional type: ";
          v87 = 259;
          mlir::Operation::emitOpError(this, &v85, &v88);
          if (v88)
          {
            LODWORD(v82) = 4;
            v83 = v50;
            goto LABEL_67;
          }

          goto LABEL_68;
        }

        if (*(v50 + 32) == 1)
        {
          v56 = &v5[16 * ((*(this + 11) >> 23) & 1)];
          if (!*(v56 + 16))
          {
            v87 = 257;
            mlir::Operation::emitOpError(this, &v85, &v88);
            if (v88)
            {
              mlir::Diagnostic::operator<<<50ul>(v89, "missing var_callee_type attribute for vararg call");
            }

            goto LABEL_68;
          }

          v57 = *(v50 + 24);
          v58 = *(v56 + 36);
        }

        else
        {
          v57 = *(v50 + 24);
          v58 = *&v5[16 * ((*(this + 11) >> 23) & 1) + 144];
          if (v58 != v57)
          {
            v87 = 257;
            mlir::Operation::emitOpError(this, &v85, &v88);
            if (v88)
            {
              mlir::Diagnostic::operator<<<31ul>(v89, "incorrect number of operands (");
            }

            v82 = *&v5[16 * ((*(this + 11) >> 23) & 1) + 144];
            v64 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v88, &v82);
            v60 = v64;
            if (*v64)
            {
              mlir::Diagnostic::operator<<<26ul>((v64 + 1), ") for callee (expecting: ");
            }

            goto LABEL_94;
          }

          v57 = v57;
        }

        if (v57 > v58)
        {
          v87 = 257;
          mlir::Operation::emitOpError(this, &v85, &v88);
          if (v88)
          {
            mlir::Diagnostic::operator<<<31ul>(v89, "incorrect number of operands (");
          }

          v82 = *&v5[16 * ((*(this + 11) >> 23) & 1) + 144];
          v59 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v88, &v82);
          v60 = v59;
          if (*v59)
          {
            mlir::Diagnostic::operator<<<43ul>((v59 + 1), ") for varargs callee (expecting at least: ");
          }

LABEL_94:
          LODWORD(v80) = *(v50 + 24);
          v65 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v60, &v80);
          v66 = v65;
          if (*v65)
          {
            mlir::Diagnostic::operator<<<2ul>((v65 + 1), ")");
          }

          v54 = *(v66 + 200);
          goto LABEL_69;
        }

        if (v57)
        {
          v61 = *(this + 9);
          v62 = *(v50 + 16);
          if (*v62 != (*(*(v61 + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
          {
            LODWORD(v63) = 0;
LABEL_102:
            v81 = v63;
            v87 = 257;
            mlir::Operation::emitOpError(this, &v85, &v88);
            if (v88)
            {
              mlir::Diagnostic::operator<<<35ul>(v89, "operand type mismatch for operand ");
            }

            v72 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v88, &v81);
            v73 = v72;
            v74 = *v72;
            if (*v72)
            {
              mlir::Diagnostic::operator<<<3ul>((v72 + 1), ": ");
              v74 = *v73;
              v75 = *v73 == 0;
            }

            else
            {
              v75 = 1;
            }

            v78 = v81;
            v82 = *(*(*(this + 9) + 32 * v81 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
            if (!v75)
            {
              mlir::Diagnostic::operator<<<mlir::Type>((v73 + 1), &v82);
              if (!*v73)
              {
LABEL_117:
                v54 = *(v73 + 200);
                goto LABEL_69;
              }

              mlir::Diagnostic::operator<<<5ul>((v73 + 1), " != ");
              v74 = *v73;
              v78 = v81;
            }

            v80 = *(*(v50 + 16) + 8 * v78);
            if (v74)
            {
              mlir::Diagnostic::operator<<<mlir::Type>((v73 + 1), &v80);
            }

            goto LABEL_117;
          }

          v63 = 0;
          v67 = v62 + 1;
          v68 = (v61 + 56);
          v69 = v57 - 1;
          while (v69 != v63)
          {
            v70 = *v68;
            v68 += 4;
            v71 = v67[v63++];
            if (v71 != (*(v70 + 8) & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_102;
            }
          }
        }

        if (*(this + 9))
        {
          goto LABEL_107;
        }

        v79 = *(**(v50 + 8) + 136);
        if (v79 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
        {
          v87 = 257;
          mlir::Operation::emitOpError(this, &v85, &v88);
          if (v88)
          {
            mlir::Diagnostic::operator<<<42ul>(v89, "expected function call to produce a value");
          }

          goto LABEL_68;
        }

        if (*(this + 9))
        {
LABEL_107:
          v76 = *(**(v50 + 8) + 136);
          if (v76 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
          {
            v87 = 257;
            mlir::Operation::emitOpError(this, &v85, &v88);
            if (v88)
            {
              mlir::Diagnostic::operator<<<58ul>(v89, "calling function with void result must not produce values");
            }

            goto LABEL_68;
          }

          v77 = *(this + 9);
          if (v77 >= 2)
          {
            v87 = 257;
            mlir::Operation::emitOpError(this, &v85, &v88);
            if (v88)
            {
              mlir::Diagnostic::operator<<<53ul>(v89, "expected LLVM function call to produce 0 or 1 result");
            }

            goto LABEL_68;
          }

          if (v77 && (*(this - 1) & 0xFFFFFFFFFFFFFFF8) != *(v50 + 8))
          {
            v87 = 257;
            mlir::Operation::emitOpError(this, &v85, &v88);
            if (v88)
            {
              mlir::Diagnostic::operator<<<23ul>(v89, "result type mismatch: ");
              v82 = *(this - 1) & 0xFFFFFFFFFFFFFFF8;
              if (v88)
              {
                mlir::Diagnostic::operator<<<mlir::Type>(v89, &v82);
                if (v88)
                {
                  mlir::Diagnostic::operator<<<5ul>(v89, " != ");
                  v80 = *(v50 + 8);
                  if (v88)
                  {
                    mlir::Diagnostic::operator<<<mlir::Type>(v89, &v80);
                  }
                }
              }
            }

            goto LABEL_68;
          }
        }
      }

      else
      {
        if ((v33 & 0x800000) == 0 || !*(this + 17))
        {
          v87 = 259;
          mlir::Operation::emitOpError(this, &v85, &v88);
          goto LABEL_68;
        }

        v43 = *(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v43)
        {
          v44 = *(*v43 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPointerType,void>::id;
        }

        else
        {
          v44 = 0;
        }

        if (!v44)
        {
          v85 = "indirect call expects a pointer as callee: ";
          v87 = 259;
          mlir::Operation::emitOpError(this, &v85, &v88);
          if (v88)
          {
            v45 = *(*(*(this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
            LODWORD(v82) = 4;
            v83 = v45;
LABEL_67:
            v51 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v90, &v82, 1);
            v52 = v90 + 24 * v91;
            v53 = *v51;
            *(v52 + 16) = *(v51 + 16);
            *v52 = v53;
            ++v91;
          }

LABEL_68:
          v54 = v92;
LABEL_69:
          v49 = v54 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v88);
          goto LABEL_70;
        }
      }

      v49 = 1;
      goto LABEL_70;
    }

    v32 = *(**(v9 + 8) + 136);
    if (v32 == mlir::detail::TypeIDResolver<mlir::LLVM::LLVMVoidType,void>::resolveTypeID())
    {
      goto LABEL_34;
    }

    v18 = "expected var_callee_type to return void";
LABEL_9:
    v85 = v18;
    v87 = 259;
    mlir::Operation::emitOpError(this, &v85, &v88);
LABEL_10:
    v17 = v92;
    goto LABEL_11;
  }

LABEL_5:
  v85 = "expected var_callee_type to have at most ";
  v87 = 259;
  mlir::Operation::emitOpError(this, &v85, &v88);
  v14 = &v5[16 * ((*(this + 11) >> 23) & 1)];
  v82 = (__PAIR128__(*(v14 + 36), *(v14 + 6)) - 1) >> 64;
  v15 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v88, &v82);
  v16 = v15;
  if (*v15)
  {
    mlir::Diagnostic::operator<<<12ul>((v15 + 1), " parameters");
  }

  v17 = *(v16 + 200);
LABEL_11:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v88);
  if ((v17 & 1) == 0)
  {
    goto LABEL_34;
  }

  result = 0;
LABEL_71:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::detail::BranchWeightOpInterfaceInterfaceTraits::Model<mlir::LLVM::CallOp>::setBranchWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 44);
  result = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), *(a3 + 24), *(a3 + 32) >> 2);
  *(a2 + 16 * ((v4 >> 23) & 1) + 104) = result;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::BranchWeightOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20860))
  {
    v1 = llvm::getTypeName<mlir::LLVM::BranchWeightOpInterface>();
    qword_27FC20858 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20860);
  }

  return qword_27FC20858;
}

uint64_t llvm::getTypeName<mlir::LLVM::BranchWeightOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC20878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20878))
  {
    qword_27FC20868 = llvm::detail::getTypeNameImpl<mlir::LLVM::BranchWeightOpInterface>();
    unk_27FC20870 = v1;
    __cxa_guard_release(&qword_27FC20878);
  }

  return qword_27FC20868;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::BranchWeightOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::BranchWeightOpInterface]";
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[13] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::LLVM::AccessGroupOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AccessGroupOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::LLVM::AliasAnalysisOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::AliasAnalysisOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::FastmathFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

uint64_t mlir::detail::TypeIDResolver<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC20888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20888))
  {
    v1 = llvm::getTypeName<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>>();
    qword_27FC20880 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC20888);
  }

  return qword_27FC20880;
}

uint64_t llvm::getTypeName<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC208A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC208A0))
  {
    qword_27FC20890 = llvm::detail::getTypeNameImpl<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>>();
    *algn_27FC20898 = v1;
    __cxa_guard_release(&qword_27FC208A0);
  }

  return qword_27FC20890;
}

const char *llvm::detail::getTypeNameImpl<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LLVM::BranchWeightOpInterface::Trait<Empty>]";
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

llvm::raw_ostream *llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v82 = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v8 = a2 + 64;
  v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 48);
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
    }

    else
    {
      *(v19 + 4) = v20 + 1;
      *v20 = 32;
    }
  }

  v21 = *(*(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 8) + 8);
  if (v21 > 1)
  {
    if (v21 == 3)
    {
      v22 = "notail";
      v23 = 6;
      goto LABEL_20;
    }

    if (v21 == 2)
    {
      v22 = "musttail";
      v23 = 8;
      goto LABEL_20;
    }

LABEL_18:
    v23 = 0;
    v22 = &str_2_25;
    goto LABEL_20;
  }

  if (!v21)
  {
    goto LABEL_22;
  }

  if (v21 != 1)
  {
    goto LABEL_18;
  }

  v22 = "tail";
  v23 = 4;
LABEL_20:
  v24 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v24, v22, v23);
  v25 = (*(*a3 + 16))(a3);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
    if (v9)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  *(v25 + 4) = v26 + 1;
  *v26 = 32;
LABEL_22:
  if (v9)
  {
LABEL_23:
    (*(*a3 + 88))(a3, v11, v5);
    goto LABEL_26;
  }

LABEL_25:
  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
LABEL_26:
  v27 = *(a2 + 44);
  v28 = *(v8 + 16 * ((v27 >> 23) & 1) + 144);
  if ((v27 & 0x800000) != 0)
  {
    v29 = *(a2 + 72);
  }

  else
  {
    v29 = 0;
  }

  v66 = v29 + 32 * (v9 == 0);
  v67 = (__PAIR128__(v28, v9) - 1) >> 64;
  v30 = (*(*a3 + 16))(a3);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 40);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 40;
  }

  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v66);
  v32 = (*(*a3 + 16))(a3);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 41);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 41;
  }

  v34 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 128);
  if (v34)
  {
    v35 = *(v34 + 8);
    v36 = (*(*a3 + 16))(a3);
    v37 = *(v36 + 4);
    if (*(v36 + 3) - v37 > 7uLL)
    {
      *v37 = 0x2867726172617620;
      *(v36 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v36, " vararg(", 8uLL);
    }

    (*(*a3 + 32))(a3, v35);
    v38 = (*(*a3 + 16))(a3);
    v39 = *(v38 + 4);
    if (*(v38 + 3) == v39)
    {
      llvm::raw_ostream::write(v38, ")", 1uLL);
    }

    else
    {
      *v39 = 41;
      ++*(v38 + 4);
    }
  }

  if (*(*(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 96) + 16))
  {
    v40 = (*(*a3 + 16))(a3);
    v41 = *(v40 + 4);
    if (*(v40 + 3) == v41)
    {
      llvm::raw_ostream::write(v40, " ", 1uLL);
    }

    else
    {
      *v41 = 32;
      ++*(v40 + 4);
    }

    v42 = *(a2 + 44);
    v43 = v8 + 16 * ((v42 >> 23) & 1);
    v44 = *(v43 + 144);
    if ((v42 & 0x800000) != 0)
    {
      v45 = *(a2 + 72);
      v46 = (v45 + 32 * v44);
    }

    else
    {
      v45 = 0;
      v46 = (32 * v44);
    }

    v47 = *(v43 + 96);
    v48 = *(v47 + 16);
    v77 = v46;
    v78 = v47;
    v79 = 0;
    v80 = v48;
    *&v68 = v45 + 32 * v44;
    *(&v68 + 1) = v47;
    *&v69 = 0;
    *(&v69 + 1) = v48;
    mlir::TypeRangeRange::TypeRangeRange<mlir::OperandRangeRange>(v81, 0, v48, &v68);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  processFMFAttr(&v77, *(AttrDictionary + 8), *(AttrDictionary + 16));
  v50 = *(a2 + 48);
  v52 = *(v50 + 96);
  v51 = *(v50 + 104);
  v68 = *(v52[6] + 16);
  v69 = *(v52[1] + 16);
  v70 = *(v52[16] + 16);
  v71 = *(*v52 + 16);
  v72 = *(v52[v51 - 1] + 16);
  v53 = v52[13];
  v73 = *(v52[12] + 16);
  v74 = *(v53 + 16);
  v75 = *(v52[4] + 16);
  v76 = *(v52[14] + 16);
  (*(*a3 + 192))(a3, v77, v78, &v68, 9);
  if (v77 != &v79)
  {
    free(v77);
  }

  v54 = (*(*a3 + 16))(a3);
  v55 = *(v54 + 4);
  if ((*(v54 + 3) - v55) > 2)
  {
    *(v55 + 2) = 32;
    *v55 = 14880;
    *(v54 + 4) += 3;
    if (!v9)
    {
      goto LABEL_54;
    }
  }

  else
  {
    llvm::raw_ostream::write(v54, " : ", 3uLL);
    if (!v9)
    {
LABEL_54:
      (*(*a3 + 32))(a3, *(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v56 = (*(*a3 + 16))(a3);
      v57 = *(v56 + 4);
      if (*(v56 + 3) - v57 > 1uLL)
      {
        *v57 = 8236;
        *(v56 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v56, ", ", 2uLL);
      }
    }
  }

  v58 = v67;
  if ((v66 & 0xFFFFFFFFFFFFFFF8) == 0 || v67 == 0)
  {
    v60 = 0;
  }

  else
  {
    v60 = v66 & 0xFFFFFFFFFFFFFFF8 | 4;
  }

  v61 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 32);
  v62 = *(a2 + 36);
  v63 = (a2 - 16);
  if (!v62)
  {
    v63 = 0;
  }

  v77 = v63;
  v78 = 0;
  v79 = v63;
  v80 = v62;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(&v68, &v77);
  result = mlir::call_interface_impl::printFunctionSignature(a3, v60, v58, v61, 0, v68, *(&v68 + 1), *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 112), 0, 1u);
  v65 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::Op<mlir::LLVM::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::LLVM::AccessGroupOpInterface::Trait,mlir::LLVM::AliasAnalysisOpInterface::Trait,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::CallOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    goto LABEL_66;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v4))
  {
    goto LABEL_66;
  }

  v5 = a1 + 64;
  v6 = (a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  v7 = v6[12];
  if (v7)
  {
    v50 = a1 + 64;
    v9 = *v6;
    v8 = v6[1];
    v52 = v6[3];
    v53 = v6[2];
    v10 = v6[5];
    v12 = v6[6];
    v11 = v6[7];
    v14 = v6[8];
    v13 = v6[9];
    v15 = v6[10];
    v51 = v6[11];
    v55 = v6[4];
    v56 = v6[13];
    v54 = v6[14];
    v16 = v6[16];
    v49 = v6[15];
    v57 = v6[17];
    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(v16, "var_callee_type", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(v12, "callee", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(v14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v10, "branch_weights", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(v9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps20(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(v13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v11, "convergent", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v15, "no_unwind", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(v57, "will_return", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v7, "op_bundle_sizes", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(v56, "op_bundle_tags", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v55, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(v54, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps22(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(v53, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v52, "alias_scopes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(v51, "noalias_scopes", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v62[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(v49, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v62))
    {
      goto LABEL_66;
    }

    v17 = *(a1 + 44);
    v18 = (v17 >> 23) & 1;
    v19 = *(v50 + 16 * v18 + 144);
    if ((v17 & 0x800000) != 0)
    {
      v20 = *(a1 + 72);
      if (v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v20 = 0;
      if (v19)
      {
LABEL_27:
        v21 = 0;
        v22 = v20 + 24;
        while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v22 + 8) & 0xFFFFFFFFFFFFFFF8, v21))
        {
          ++v21;
          v22 += 32;
          if (v19 == v21)
          {
            v23 = *(a1 + 44);
            v18 = (v23 >> 23) & 1;
            v24 = v23 & 0x800000;
            v25 = *(v50 + 16 * v18 + 144);
            goto LABEL_51;
          }
        }

        goto LABEL_66;
      }
    }

    v25 = 0;
    v24 = v17 & 0x800000;
LABEL_51:
    v39 = *(v50 + 16 * v18 + 148);
    if (v24)
    {
      v40 = *(a1 + 72);
    }

    else
    {
      v40 = 0;
    }

    v41 = v39 + v25 - v25;
    if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "op_bundle_sizes", 0xFuLL, "op_bundle_operands", 0x12uLL, v41))
    {
      goto LABEL_66;
    }

    if (v39)
    {
      v42 = v40 + 32 * v25 + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v42 + 8) & 0xFFFFFFFFFFFFFFF8, v19))
      {
        LODWORD(v19) = v19 + 1;
        v42 += 32;
        if (!--v41)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_66;
    }

LABEL_58:
    LODWORD(v58) = 0;
    v43 = *(a1 + 36);
    if (v43 <= 1)
    {
      if (v43 && !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(a1 - 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
      {
        goto LABEL_66;
      }

      v5 = a1 + 64;
    }

    else
    {
      v60[0] = "result group starting at #";
      v61 = 259;
      mlir::Operation::emitOpError(a1, v60, v62);
      v44 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v62, &v58);
      v45 = v44;
      if (*v44)
      {
        mlir::Diagnostic::operator<<<37ul>((v44 + 1), " requires 0 or 1 element, but found ");
      }

      v59 = v43;
      v46 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v45, &v59) + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v62);
      v5 = a1 + 64;
      if (v46)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    v60[0] = "requires attribute 'op_bundle_sizes'";
    v61 = 259;
    mlir::Operation::emitOpError(a1, v60, v62);
    v26 = v63;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v62);
    if (v26)
    {
LABEL_66:
      v35 = 0;
      goto LABEL_67;
    }
  }

  if (!mlir::LLVM::detail::verifyAccessGroupOpInterface(a1, v27) || !mlir::LLVM::detail::verifyAliasAnalysisOpInterface(a1, v28))
  {
    goto LABEL_66;
  }

  v29 = v5 + 16 * ((*(a1 + 44) >> 23) & 1);
  v30 = *(v29 + 104);
  v31 = *(*(v29 + 96) + 16);
  if (v30)
  {
    v32 = *(v30 + 16);
    if (v32)
    {
      v33 = *(v30 + 8);
      v34 = 8 * v32;
      while (*(**v33 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v33 += 8;
        v34 -= 8;
        if (!v34)
        {
          goto LABEL_41;
        }
      }

      v60[0] = "operand bundle tag must be a StringAttr";
      v61 = 259;
      mlir::Operation::emitError(v62, a1, v60);
      v38 = v63;
      goto LABEL_47;
    }
  }

  else
  {
    v32 = 0;
  }

LABEL_41:
  v58 = v32;
  v59 = v31;
  if (v31 != v32)
  {
    v60[0] = "expected ";
    v61 = 259;
    mlir::Operation::emitError(v62, a1, v60);
    v36 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v62, &v59);
    v37 = v36;
    if (*v36)
    {
      mlir::Diagnostic::operator<<<40ul>((v36 + 1), " operand bundle tags, but actually got ");
    }

    v38 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v37, &v58) + 200);
LABEL_47:
    v35 = v38 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v62);
    goto LABEL_67;
  }

  v35 = 1;
LABEL_67:
  v47 = *MEMORY[0x277D85DE8];
  return v35 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::printAssembly(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x656D616E5F6D7973)
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

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 8 && **(a3 + 16) == 0x656D616E5F6D7973)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v4;
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "sym_name";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "sym_name";
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::LLVM::ComdatOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoTerminator>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::NoRegionArguments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NoRegionArguments>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v16[4] = *MEMORY[0x277D85DE8];
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

  v9 = *&a2[4 * ((a2[11] >> 23) & 1) + 16];
  (*(*a3 + 88))(a3, *(v9 + 16), *(v9 + 24));
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

  (*(*a3 + 224))(a3, ((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10], 1, 1, 0);
  v14 = v16;
  v15 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v14, "sym_name", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, v15);
  if (v14 != v16)
  {
    free(v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyZeroOperands(a1, v5) || (mlir::OpTrait::impl::verifyNoRegionArguments(a1, v6) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *&a1[4 * ((a1[11] >> 23) & 1) + 16];
  if (v7)
  {
    v15[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15) || !mlir::LLVM::__mlir_ods_local_region_constraint_LLVMOps1(a1, ((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10], "body", 4))
    {
      goto LABEL_9;
    }

LABEL_12:
    v9 = mlir::detail::SymbolOpInterfaceTrait<mlir::LLVM::ComdatOp>::verifyTrait(a1, v8);
    goto LABEL_10;
  }

  v13 = "requires attribute 'sym_name'";
  v14 = 259;
  mlir::Operation::emitOpError(a1, &v13, v15);
  v12 = v16;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
  if ((v12 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v9 = 0;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::LLVM::ComdatOp>::verifyTrait(mlir::Operation *a1, mlir::Operation *a2)
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

uint64_t mlir::Op<mlir::LLVM::ComdatOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::NoTerminator,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::SymbolTable,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants(unsigned int *a1, mlir::Operation *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (mlir::detail::verifySymbolTable(a1, a2))
  {
    v3 = (((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10]);
    if (*v3 == v3)
    {
      goto LABEL_16;
    }

    for (i = v3[1]; i != v3; i = i[1])
    {
      v5 = i - 1;
      if (!i)
      {
        v5 = 0;
      }

      if (v5[4] != v5 + 4)
      {
        break;
      }
    }

    if (i == v3)
    {
      goto LABEL_16;
    }

    v7 = i - 1;
    if (!i)
    {
      v7 = 0;
    }

    v8 = v7[5];
    v13[0] = ((&a1[4 * ((a1[11] >> 23) & 1) + 17] + ((a1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10];
    v13[1] = i;
    v14 = v8;
    if (!v8)
    {
LABEL_16:
      v6 = 1;
    }

    else
    {
      while (*(*(v8 + 48) + 16) == &unk_27FC1FED0)
      {
        mlir::Region::OpIterator::operator++(v13);
        v8 = v14;
        if (!v14)
        {
          goto LABEL_16;
        }
      }

      v11 = "only comdat selector symbols can appear in a comdat region";
      v12 = 259;
      mlir::Operation::emitError(v15, v8, &v11);
      v6 = v16 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::printAssembly(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if (a4 != 8)
  {
    if (a4 != 6)
    {
      goto LABEL_10;
    }

    if (*a3 != 1684893539 || *(a3 + 4) != 29793)
    {
      goto LABEL_10;
    }

    v6 = *(v4 + 64);
LABEL_12:
    v7 = v6 & 0xFFFFFFFFFFFFFF00;
    return v7 | v6;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    v6 = *(v4 + 72);
    goto LABEL_12;
  }

LABEL_10:
  LOBYTE(v6) = 0;
  v7 = 0;
  return v7 | v6;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (v7 == 8)
  {
    if (*v6 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v12 = a4;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      *(v5 + 72) = v12;
    }
  }

  else if (v7 == 6)
  {
    v8 = *v6;
    v9 = *(v6 + 2);
    if (v8 == 1684893539 && v9 == 29793)
    {
      if (a4)
      {
        if (mlir::LLVM::comdat::ComdatAttr::classof(a4))
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

      *(v5 + 64) = v11;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v15 = 261;
    v13 = "comdat";
    v14 = 6;
    v9 = mlir::StringAttr::get(v8, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v15 = 261;
    v13 = "sym_name";
    v14 = 8;
    v12 = mlir::StringAttr::get(v11, &v13, a3);
    mlir::NamedAttrList::push_back(a3, v12, v10);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v23, a6);
    if (v23)
    {
      mlir::Diagnostic::operator<<<42ul>(v24, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v11 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "comdat", 6uLL);
  if (v12)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      if (!mlir::LLVM::comdat::ComdatAttr::classof(*(v11 + 8)))
      {
        a5(&v23, a6);
        if (!v23)
        {
          goto LABEL_4;
        }

        if (!v23)
        {
          goto LABEL_4;
        }

        v21 = 0;
        v22 = v13;
        goto LABEL_18;
      }

      *a3 = v13;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "sym_name", 8uLL);
  if ((v15 & 1) == 0 || (v16 = *(v14 + 8)) == 0)
  {
LABEL_20:
    result = 1;
    goto LABEL_21;
  }

  if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a3[1] = v16;
    goto LABEL_20;
  }

  a5(&v23, a6);
  if (!v23)
  {
    goto LABEL_4;
  }

  if (!v23)
  {
    goto LABEL_4;
  }

  v21 = 0;
  v22 = v16;
LABEL_18:
  v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v25, &v21, 1);
  v18 = v25 + 24 * v26;
  v19 = *v17;
  *(v18 + 16) = *(v17 + 16);
  *v18 = v19;
  ++v26;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
  result = 0;
LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v17 = "comdat";
    v18 = 6;
    v9 = mlir::StringAttr::get(v8, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v19 = 261;
    v17 = "sym_name";
    v18 = 8;
    v12 = mlir::StringAttr::get(v11, &v17, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v20, v12, v10);
  }

  v13 = v20;
  if (v21)
  {
    v14 = mlir::DictionaryAttr::get(v3, v20, v21);
    v13 = v20;
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v22)
  {
    free(v13);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ComdatSelectorOp>::hashProperties(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v10 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v5 = HIDWORD(v2);
  v6 = 0x9DDFEA08EB382D69 * ((8 * v2 - 0xAE502812AA7333) ^ HIDWORD(v2));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v13 = 0;
  v14 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v11, 0, v11, v12, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::ComdatSelectorOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::ComdatSelectorOpGenericAdaptorBase::Properties>(a2);
  v14 = 0;
  if (((*(*a1 + 48))(a1, &v14) & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = v14;
  v5 = mlir::LLVM::comdat::ComdatAttr::classof(v14) ? v4 : 0;
  *v3 = v5;
  if (v5)
  {
    goto LABEL_15;
  }

  v13[16] = 257;
  (*(*a1 + 16))(&v18, a1, v13);
  if (v18)
  {
    mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
  }

  if ((atomic_load_explicit(&qword_27FC20DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC20DB8))
  {
    qword_27FC20DA8 = llvm::detail::getTypeNameImpl<mlir::LLVM::comdat::ComdatAttr>();
    unk_27FC20DB0 = v12;
    __cxa_guard_release(&qword_27FC20DB8);
  }

  if (v18)
  {
    v17 = 261;
    v15 = qword_27FC20DA8;
    v16 = unk_27FC20DB0;
    mlir::Diagnostic::operator<<(v19, &v15);
    if (v18)
    {
      mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
      if (v18)
      {
        LODWORD(v15) = 0;
        v16 = v14;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
        v7 = v20 + 24 * v21;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v21;
      }
    }
  }

  v9 = v22;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
  if ((v9 & 1) == 0)
  {
LABEL_15:
    result = mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1);
  }

  else
  {
LABEL_14:
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::ComdatSelectorOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::LLVM::ComdatSelectorOp>::getNameAttr(uint64_t a1, uint64_t a2)
{
  result = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, unsigned int *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v20[4] = *MEMORY[0x277D85DE8];
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

  v9 = *&a2[4 * ((a2[11] >> 23) & 1) + 18];
  (*(*a3 + 88))(a3, *(v9 + 16), *(v9 + 24));
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

  v18 = *&a2[4 * ((a2[11] >> 23) & 1) + 16];
  Int = mlir::IntegerAttr::getInt(&v18);
  if (Int > 4)
  {
    v13 = 0;
    v14 = &str_2_25;
  }

  else
  {
    v13 = qword_25D0A01F0[Int];
    v14 = (&off_2799BEC10)[Int];
  }

  v15 = (*(*a3 + 16))(a3);
  llvm::raw_ostream::operator<<(v15, v14, v13);
  v18 = v20;
  v19 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v18, "sym_name", 8);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v18, "comdat", 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, v19);
  if (v18 != v20)
  {
    free(v18);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::LLVM::ComdatSelectorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::SymbolOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    goto LABEL_20;
  }

  v6 = a1 + 16 * ((*(a1 + 44) >> 23) & 1);
  v9 = *(v6 + 64);
  v7 = v6 + 64;
  v8 = v9;
  if (v9)
  {
    v10 = *(v7 + 8);
    if (v10)
    {
      v23[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(v10, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23))
      {
        goto LABEL_20;
      }

      v23[0] = a1;
      if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps23(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps23(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23))
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    v12 = "requires attribute 'sym_name'";
  }

  else
  {
    v12 = "requires attribute 'comdat'";
  }

  v21[0] = v12;
  v22 = 259;
  mlir::Operation::emitOpError(a1, v21, v23);
  v13 = v24;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
  if (v13)
  {
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

LABEL_13:
  if ((mlir::detail::verifySymbol(a1, v11) & 1) == 0)
  {
    goto LABEL_20;
  }

  v14 = *(a1 + 16);
  if (v14 && (v15 = *(v14 + 24) & 0xFFFFFFFFFFFFFFF8) != 0 && (v16 = *(v15 + 16)) != 0 && (v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(), ((*(**(v16 + 48) + 32))(*(v16 + 48), v17) & 1) == 0) && *(*(v16 + 48) + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v21[0] = "symbol's parent must have the SymbolTable trait";
    v22 = 259;
    mlir::Operation::emitOpError(a1, v21, v23);
    v18 = v24 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v23);
  }

  else
  {
    v18 = 1;
  }

LABEL_21:
  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  LOBYTE(v4) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v7 = *(a3 + 11);
      v8 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v9 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | v4;
      }

      v7 = *(a3 + 13);
      v8 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v9 = 1935635566;
    }

    v11 = v9 | 0x73657A6900000000;
    if (v8 && v7 == v11)
    {
      v4 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80, 3);
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
      return v5 | v4;
    }

    goto LABEL_31;
  }

  if (a4 == 14)
  {
    if (*a3 != 0x775F68636E617262 || *(a3 + 6) != 0x737468676965775FLL)
    {
      goto LABEL_31;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
LABEL_22:
    v5 = v4 & 0xFFFFFFFFFFFFFF00;
    return v5 | v4;
  }

  v5 = 0;
  if (a4 == 15)
  {
    if (*a3 != 0x6E6E615F706F6F6CLL || *(a3 + 7) != 0x6E6F697461746F6ELL)
    {
LABEL_31:
      LOBYTE(v4) = 0;
      v5 = 0;
      return v5 | v4;
    }

    v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
    goto LABEL_22;
  }

  return v5 | v4;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  if (v5 > 18)
  {
    if (v5 == 19)
    {
      v10 = *v4 ^ 0x53646E617265706FLL;
      v11 = v4[1] ^ 0x6953746E656D6765;
      v12 = *(v4 + 11);
      v13 = 1400139365;
    }

    else
    {
      if (v5 != 21)
      {
        return result;
      }

      v10 = *v4 ^ 0x5F646E617265706FLL;
      v11 = v4[1] ^ 0x5F746E656D676573;
      v12 = *(v4 + 13);
      v13 = 1935635566;
    }

    if (v10 | v11 | v12 ^ (v13 | 0x73657A6900000000))
    {
      v19 = 1;
    }

    else
    {
      v19 = a4 == 0;
    }

    if (!v19 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v20 = *(a4 + 8);
      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v20[2] == 32 && *(a4 + 16) == 3)
      {
        v21 = *(a4 + 32);
        if (v21 >= 4)
        {
          return memmove((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80), *(a4 + 24), v21 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (v5 == 14)
  {
    v14 = *v4;
    v15 = *(v4 + 6);
    if (v14 == 0x775F68636E617262 && v15 == 0x737468676965775FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v17 = *(a4 + 8), *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v17[2] == 32)
        {
          v18 = a4;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v18;
    }
  }

  else if (v5 == 15)
  {
    v6 = *v4;
    v7 = *(v4 + 7);
    if (v6 == 0x6E6E615F706F6F6CLL && v7 == 0x6E6F697461746F6ELL)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72) = v9;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a2 + 24) + 32);
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  if (v8)
  {
    v9 = *(**v6 + 32);
    v20 = 261;
    v18 = "branch_weights";
    v19 = 14;
    v10 = mlir::StringAttr::get(v9, &v18, a3);
    mlir::NamedAttrList::push_back(a3, v10, v6);
  }

  v11 = *(v7 + 8);
  if (v11)
  {
    v12 = *(**v11 + 32);
    v20 = 261;
    v18 = "loop_annotation";
    v19 = 15;
    v13 = mlir::StringAttr::get(v12, &v18, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, v7 + 16, 3);
  v15 = *(**v14 + 32);
  v20 = 261;
  v18 = "operandSegmentSizes";
  v19 = 19;
  v17 = mlir::StringAttr::get(v15, &v18, v16);
  mlir::NamedAttrList::push_back(a3, v17, v14);
}

double mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::initProperties(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *a3 = *a4;
    a3[1] = v5;
  }

  else
  {
    *&v4 = 0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a5(&v28, a6);
    if (v28)
    {
      mlir::Diagnostic::operator<<<42ul>(v29, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "branch_weights", 0xEuLL);
  if (v13)
  {
    v14 = *(v12 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v14[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 32)
      {
        a5(&v28, a6);
        if (v28)
        {
LABEL_20:
          if (v28)
          {
            v26 = 0;
            v27 = v14;
            v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
            v19 = v30 + 24 * v31;
            v20 = *v18;
            *(v19 + 16) = *(v18 + 16);
            *v19 = v20;
            ++v31;
          }
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
        goto LABEL_5;
      }

      *a3 = v14;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "loop_annotation", 0xFuLL);
  if (v17)
  {
    v14 = *(v16 + 8);
    if (v14)
    {
      if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id)
      {
        a5(&v28, a6);
        if (v28)
        {
          goto LABEL_20;
        }

        goto LABEL_4;
      }

      a3[1] = v14;
    }
  }

  v21 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operandSegmentSizes", 0x13uLL);
  if ((v22 & 1) == 0 || (v23 = *(v21 + 8)) == 0) && ((v24 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "operand_segment_sizes", 0x15uLL), (v25 & 1) == 0) || (v23 = *(v24 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a3 + 2, 3, v23, a5, a6, "DenseI32ArrayAttr", 17))
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v23 = v25;
  v24 = 0x300000000;
  if (v7)
  {
    v8 = *(**v5 + 32);
    v22 = 261;
    v20 = "branch_weights";
    v21 = 14;
    v9 = mlir::StringAttr::get(v8, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v9, v5);
  }

  v10 = *(v6 + 8);
  if (v10)
  {
    v11 = *(**v10 + 32);
    v22 = 261;
    v20 = "loop_annotation";
    v21 = 15;
    v12 = mlir::StringAttr::get(v11, &v20, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v12, v10);
  }

  v13 = mlir::detail::DenseArrayAttrImpl<int>::get(v3, v6 + 16, 3);
  v14 = *(**v13 + 32);
  v22 = 261;
  v20 = "operandSegmentSizes";
  v21 = 19;
  v16 = mlir::StringAttr::get(v14, &v20, v15);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v23, v16, v13);
  if (v24)
  {
    v17 = mlir::DictionaryAttr::get(v3, v23, v24);
  }

  else
  {
    v17 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

__n128 mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  *(a2 + 12) = *(a3 + 12);
  *a2 = result;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a3 + 16) == *(a2 + 16) && *(a3 + 24) == *(a2 + 24);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::CondBrOp>::hashProperties(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = HIDWORD(a2[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2[1] - 0xAE502812AA7333) ^ v4);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = *(a2 + 20);
  v7 = __ROR8__(v6 + 12, 12);
  v8 = 0x9DDFEA08EB382D69 * (a2[2] ^ v7 ^ 0xFF51AFD7ED558CCDLL);
  v11 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47))) ^ v6;
  memset(v14, 0, sizeof(v14));
  v15 = 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v13, 0, v14, &v14[3] + 8, &v12, &v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::CondBrOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::LLVM::detail::CondBrOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::LLVM::LoopAnnotationAttr>(a1, v3 + 1))
  {
    goto LABEL_12;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_12:
      result = 0;
      goto LABEL_13;
    }

    if (*(v9 + 16) >= 4)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_12;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 2, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if ((*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 4, 3uLL) & 1) == 0)
  {
    goto LABEL_12;
  }

  result = 1;
LABEL_13:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::CondBrOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  v7 = *(v5 + 64);
  v6 = v5 + 64;
  (*(*a3 + 24))(a3, v7);
  (*(*a3 + 24))(a3, *(v6 + 8));
  if ((*(*a3 + 104))(a3) <= 5)
  {
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), v6 + 16, 3);
    (*(*a3 + 16))(a3, v8);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v6 + 16), 3);
  }

  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::LLVM::CondBrOp>::getSuccessorBlockArgument(int a1, uint64_t a2, unsigned int a3)
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
      mlir::LLVM::CondBrOp::getSuccessorOperands(v15, a2, v6);
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

uint64_t mlir::LLVM::detail::BranchWeightOpInterfaceInterfaceTraits::Model<mlir::LLVM::CondBrOp>::setBranchWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 44);
  result = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a2 + 24) + 32), *(a3 + 24), *(a3 + 32) >> 2);
  *(a2 + 16 * ((v4 >> 23) & 1) + 64) = result;
  return result;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[13] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::NSuccessors<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NSuccessors<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::LLVM::BranchWeightOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LLVM::BranchWeightOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[11] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v84[4] = *MEMORY[0x277D85DE8];
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
  v9 = a2 + 64;
  if (*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)))
  {
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
    if (*(v12 + 3) - v13 > 6uLL)
    {
      *(v13 + 3) = 1937008743;
      *v13 = 1734960503;
      *(v12 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v12, "weights", 7uLL);
    }

    v14 = (*(*a3 + 16))(a3);
    v15 = *(v14 + 4);
    if (*(v14 + 3) == v15)
    {
      llvm::raw_ostream::write(v14, "(", 1uLL);
    }

    else
    {
      *v15 = 40;
      ++*(v14 + 4);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<int>,(void *)0>(a3, *(v9 + 16 * ((*(a2 + 44) >> 23) & 1)));
    v16 = (*(*a3 + 16))(a3);
    v17 = *(v16 + 4);
    if (*(v16 + 3) == v17)
    {
      llvm::raw_ostream::write(v16, ")", 1uLL);
    }

    else
    {
      *v17 = 41;
      ++*(v16 + 4);
    }
  }

  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
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

  (*(*a3 + 176))(a3, *(((v9 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (*(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 20))
  {
    v22 = (*(*a3 + 16))(a3);
    v23 = *(v22 + 4);
    if (*(v22 + 3) == v23)
    {
      llvm::raw_ostream::write(v22, "(", 1uLL);
    }

    else
    {
      *v23 = 40;
      ++*(v22 + 4);
    }

    v24 = *(a2 + 44);
    v25 = v9 + 16 * ((v24 >> 23) & 1);
    v26 = *(v25 + 16);
    v27 = *(v25 + 20);
    if ((v24 & 0x800000) != 0)
    {
      v28 = *(a2 + 72);
    }

    else
    {
      v28 = 0;
    }

    v82 = (v28 + 32 * v26);
    v83 = (v27 + v26) - v26;
    mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v82);
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
    if (*(v31 + 3) == v32)
    {
      llvm::raw_ostream::write(v31, ":", 1uLL);
    }

    else
    {
      *v32 = 58;
      ++*(v31 + 4);
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

    v35 = *(a2 + 44);
    v36 = v9 + 16 * ((v35 >> 23) & 1);
    v37 = *(v36 + 20);
    if ((v35 & 0x800000) != 0)
    {
      v38 = *(a2 + 72);
      if (v37)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v38 = 0;
      if (v37)
      {
LABEL_40:
        v39 = *(v36 + 16);
        v40 = (v37 + v39);
        v41 = v38 + 32 * v39;
        (*(*a3 + 32))(a3, *(*(v41 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v40 - v39 != 1)
        {
          v42 = ~v39 + v40;
          v43 = (v41 + 56);
          do
          {
            v44 = (*(*a3 + 16))(a3);
            v45 = *(v44 + 4);
            if (*(v44 + 3) - v45 > 1uLL)
            {
              *v45 = 8236;
              *(v44 + 4) += 2;
            }

            else
            {
              llvm::raw_ostream::write(v44, ", ", 2uLL);
            }

            v46 = *v43;
            v43 += 4;
            (*(*a3 + 32))(a3, *(v46 + 8) & 0xFFFFFFFFFFFFFFF8);
            --v42;
          }

          while (v42);
        }
      }
    }

    v47 = (*(*a3 + 16))(a3);
    v48 = *(v47 + 4);
    if (*(v47 + 3) == v48)
    {
      llvm::raw_ostream::write(v47, ")", 1uLL);
    }

    else
    {
      *v48 = 41;
      ++*(v47 + 4);
    }
  }

  v49 = (*(*a3 + 16))(a3);
  v50 = *(v49 + 4);
  if (*(v49 + 3) == v50)
  {
    llvm::raw_ostream::write(v49, ",", 1uLL);
  }

  else
  {
    *v50 = 44;
    ++*(v49 + 4);
  }

  v51 = (*(*a3 + 16))(a3);
  v52 = *(v51 + 4);
  if (v52 >= *(v51 + 3))
  {
    llvm::raw_ostream::write(v51, 32);
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 32;
  }

  (*(*a3 + 176))(a3, *(((v9 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 56));
  if (!*(v9 + 16 * ((*(a2 + 44) >> 23) & 1) + 24))
  {
    goto LABEL_81;
  }

  v53 = (*(*a3 + 16))(a3);
  v54 = *(v53 + 4);
  if (*(v53 + 3) == v54)
  {
    llvm::raw_ostream::write(v53, "(", 1uLL);
  }

  else
  {
    *v54 = 40;
    ++*(v53 + 4);
  }

  v55 = *(a2 + 44);
  v56 = (v9 + 16 * ((v55 >> 23) & 1));
  v57 = (v56[5] + v56[4]);
  v58 = v56[6];
  if ((v55 & 0x800000) != 0)
  {
    v59 = *(a2 + 72);
  }

  else
  {
    v59 = 0;
  }

  v82 = (v59 + 32 * v57);
  v83 = (v58 + v57) - v57;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v82);
  v60 = (*(*a3 + 16))(a3);
  v61 = *(v60 + 4);
  if (v61 >= *(v60 + 3))
  {
    llvm::raw_ostream::write(v60, 32);
  }

  else
  {
    *(v60 + 4) = v61 + 1;
    *v61 = 32;
  }

  v62 = (*(*a3 + 16))(a3);
  v63 = *(v62 + 4);
  if (*(v62 + 3) == v63)
  {
    llvm::raw_ostream::write(v62, ":", 1uLL);
  }

  else
  {
    *v63 = 58;
    ++*(v62 + 4);
  }

  v64 = (*(*a3 + 16))(a3);
  v65 = *(v64 + 4);
  if (v65 >= *(v64 + 3))
  {
    llvm::raw_ostream::write(v64, 32);
  }

  else
  {
    *(v64 + 4) = v65 + 1;
    *v65 = 32;
  }

  v66 = *(a2 + 44);
  v67 = (v9 + 16 * ((v66 >> 23) & 1));
  v68 = v67[6];
  if ((v66 & 0x800000) != 0)
  {
    v69 = *(a2 + 72);
    if (v68)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v69 = 0;
    if (v68)
    {
LABEL_72:
      v70 = (v67[5] + v67[4]);
      v71 = (v68 + v70);
      v72 = v69 + 32 * v70;
      (*(*a3 + 32))(a3, *(*(v72 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v71 - v70 != 1)
      {
        v73 = ~v70 + v71;
        v74 = (v72 + 56);
        do
        {
          v75 = (*(*a3 + 16))(a3);
          v76 = *(v75 + 4);
          if (*(v75 + 3) - v76 > 1uLL)
          {
            *v76 = 8236;
            *(v75 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v75, ", ", 2uLL);
          }

          v77 = *v74;
          v74 += 4;
          (*(*a3 + 32))(a3, *(v77 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v73;
        }

        while (v73);
      }
    }
  }

  v78 = (*(*a3 + 16))(a3);
  v79 = *(v78 + 4);
  if (*(v78 + 3) == v79)
  {
    llvm::raw_ostream::write(v78, ")", 1uLL);
  }

  else
  {
    *v79 = 41;
    ++*(v78 + 4);
  }

LABEL_81:
  v82 = v84;
  v83 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v82, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v82, "branch_weights", 14);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v82, v83);
  if (v82 != v84)
  {
    free(v82);
  }

  v81 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::LLVM::CondBrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::LLVM::BranchWeightOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v46[25] = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyNSuccessors(a1, 2) || !mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1))
  {
    goto LABEL_39;
  }

  v4 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7uLL, v4))
  {
    goto LABEL_39;
  }

  v5 = a1 + 64;
  v6 = a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1);
  v7 = *v6;
  v8 = *(v6 + 8);
  v45 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(v7, "branch_weights", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45))
  {
    goto LABEL_39;
  }

  v45 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(v8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v45))
  {
    goto LABEL_39;
  }

  v9 = *(a1 + 44);
  v10 = (v9 >> 23) & 1;
  v11 = *(v5 + 16 * v10 + 16);
  if ((v9 & 0x800000) != 0)
  {
    v12 = *(a1 + 72);
    if (v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (v11)
    {
LABEL_12:
      v13 = 0;
      v14 = v12 + 24;
      while (1)
      {
        v15 = (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8);
        v42 = v13;
        if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v15[2] != 1)
        {
          v41 = 261;
          v40[0] = "operand";
          v40[1] = 7;
          mlir::Operation::emitOpError(a1, v40, &v45);
          if (v45)
          {
            mlir::Diagnostic::operator<<<3ul>(v46, " #");
          }

          v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v45, &v42);
          v17 = v16;
          if (*v16)
          {
            mlir::Diagnostic::operator<<<42ul>((v16 + 1), " must be 1-bit signless integer, but got ");
            if (*v17)
            {
              v43 = 4;
              v44 = v15;
              v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v43, 1);
              v19 = v17[3] + 24 * *(v17 + 8);
              v20 = *v18;
              *(v19 + 16) = *(v18 + 16);
              *v19 = v20;
              ++*(v17 + 8);
            }
          }

          v21 = *(v17 + 200);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
          if (v21)
          {
            goto LABEL_39;
          }
        }

        ++v13;
        v14 += 32;
        if (v11 == v13)
        {
          v22 = *(a1 + 44);
          v10 = (v22 >> 23) & 1;
          v23 = v22 & 0x800000;
          v5 = a1 + 64;
          v24 = *(a1 + 64 + 16 * v10 + 16);
          goto LABEL_26;
        }
      }
    }
  }

  v24 = 0;
  v23 = v9 & 0x800000;
LABEL_26:
  v25 = *(v5 + 16 * v10 + 20);
  if (v23)
  {
    v26 = *(a1 + 72);
    if (v25)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v26 = 0;
    if (v25)
    {
LABEL_28:
      v27 = v25 + v24 - v24;
      v28 = v26 + 32 * v24 + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v28 + 8) & 0xFFFFFFFFFFFFFFF8, v11))
      {
        LODWORD(v11) = v11 + 1;
        v28 += 32;
        if (!--v27)
        {
          v29 = *(a1 + 44);
          v10 = (v29 >> 23) & 1;
          v23 = v29 & 0x800000;
          v30 = v5 + 16 * v10;
          v24 = *(v30 + 16);
          v25 = *(v30 + 20);
          goto LABEL_32;
        }
      }

      goto LABEL_39;
    }
  }

LABEL_32:
  v31 = *(v5 + 16 * v10 + 24);
  if (v23)
  {
    v32 = *(a1 + 72);
    if (v31)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v32 = 0;
    if (v31)
    {
LABEL_34:
      v33 = v24 + v25;
      v34 = (v31 + v33) - v33;
      v35 = v32 + 32 * v33 + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps9(a1, *(*v35 + 8) & 0xFFFFFFFFFFFFFFF8, v11))
      {
        LODWORD(v11) = v11 + 1;
        v35 += 32;
        if (!--v34)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_39;
    }
  }

LABEL_37:
  if ((mlir::detail::BranchOpInterfaceTrait<mlir::LLVM::CondBrOp>::verifyTrait(a1) & 1) == 0)
  {
LABEL_39:
    IsTerminator = 0;
    goto LABEL_40;
  }

  IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v36);
LABEL_40:
  v38 = *MEMORY[0x277D85DE8];
  return IsTerminator;
}

uint64_t mlir::detail::BranchOpInterfaceTrait<mlir::LLVM::CondBrOp>::verifyTrait(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      mlir::LLVM::CondBrOp::getSuccessorOperands(v7, a1, v3);
      v4 = mlir::detail::verifyBranchSuccessorOperands(a1, v3, v7);
      if (v8 != v9)
      {
        free(v8);
      }

      if ((v4 & 1) == 0)
      {
        break;
      }

      if (v1 == ++v3)
      {
        goto LABEL_7;
      }
    }

    result = 0;
  }

  else
  {
LABEL_7:
    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::printAssembly(uint64_t a1, mlir::Operation *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1970037110 && v6 == 101)
    {
      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = a4;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "value";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v13[25] = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "value", 5uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        *a3 = v10;
      }
    }

    result = 1;
  }

  else
  {
    a5(&v12, a6);
    if (v12)
    {
      mlir::Diagnostic::operator<<<42ul>(v13, "expected DictionaryAttr to set properties");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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
    v11[0] = "value";
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ConstantOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5 < 8)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v5 & 0xFFFFFFFFFFFFFFFBLL);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v22[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, "(", 1uLL);
  }

  else
  {
    *v8 = 40;
    ++*(v7 + 4);
  }

  (*(*a3 + 40))(a3, *(a2 + 2 * ((*(a2 + 11) >> 23) & 1) + 8));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ")", 1uLL);
  }

  else
  {
    *v10 = 41;
    ++*(v9 + 4);
  }

  v20 = v22;
  v21 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v20, "value", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v20, v21);
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

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
    ++*(v14 + 4);
  }

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

  if (*(a2 + 9))
  {
    v18 = (a2 - 16);
  }

  else
  {
    v18 = 0;
  }

  (*(*a3 + 32))(a3, *(v18 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v20 != v22)
  {
    free(v20);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::LLVM::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::ConstantLike>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    goto LABEL_17;
  }

  v6 = (a1 + 64);
  if (!*(a1 + 2 * ((*(a1 + 11) >> 23) & 1) + 8))
  {
    v73[0] = "requires attribute 'value'";
    v74 = 259;
    mlir::Operation::emitOpError(a1, v73, &v75);
    v13 = v77;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
    if ((v13 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (*(a1 + 9))
  {
    v7 = (a1 - 16);
  }

  else
  {
    v7 = 0;
  }

  if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(v7 + 1) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    goto LABEL_17;
  }

LABEL_10:
  v8 = *&v6[4 * ((*(a1 + 11) >> 23) & 1)];
  v9 = *v8;
  v10 = *(*v8 + 136);
  v11 = *(a1 - 1) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(*v11 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    if (v12 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id && *(v11 + 16) == v8[3])
    {
      v17 = *(v11 + 8);
      if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v17[2] & 0x3FFFFFFF) == 8)
      {
        goto LABEL_119;
      }
    }

    v74 = 257;
    mlir::Operation::emitOpError(a1, v73, &v75);
    if (v75)
    {
      mlir::Diagnostic::operator<<<24ul>(v76, "expected array type of ");
    }

    v72 = v8[3];
    v18 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v75, &v72);
    v19 = v18;
    if (*v18)
    {
      mlir::Diagnostic::operator<<<37ul>((v18 + 1), " i8 elements for the string constant");
    }

    v20 = *(v19 + 200);
    goto LABEL_115;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMStructType,void>::id)
  {
    if (v10 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v34 = *(v11 + 24);
      if (v34)
      {
        v35 = (v11 + 16);
        v36 = *(v11 + 28) >> 3;
      }

      else
      {
        v35 = (v11 + 8);
        v36 = v34 >> 2;
      }

      v42 = v36;
      if (v8[2] != v36)
      {
        v74 = 257;
        mlir::Operation::emitOpError(a1, v73, &v75);
        if (v75)
        {
          mlir::Diagnostic::operator<<<34ul>(v76, "expected array attribute of size ");
        }

        v72 = v42;
        v57 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v75, &v72);
        goto LABEL_86;
      }

      if (!v36)
      {
        goto LABEL_119;
      }

      v43 = *v35;
      v44 = 8 * v36;
      v45 = *v35;
      while (1)
      {
        v46 = *v45;
        v47 = **v45;
        if (*(v47 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
        {
          v48 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
          if (!mlir::detail::InterfaceMap::lookup(v47 + 8, v48))
          {
            v49 = *(*v46 + 136);
            if (v49 != mlir::detail::TypeIDResolver<mlir::LLVM::LLVMPPCFP128Type,void>::resolveTypeID())
            {
              break;
            }
          }
        }

        ++v45;
        v44 -= 8;
        if (!v44)
        {
          v50 = 0;
          while (1)
          {
            v51 = *(v8[1] + 8 * v50);
            v52 = *v51;
            v53 = *(*v51 + 136);
            if (v53 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v53 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
            {
              break;
            }

            v55 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
            v56 = mlir::detail::InterfaceMap::lookup(v52 + 8, v55);
            if (v43[v50] != (*v56)(v56, v51))
            {
              v72 = v50;
              v74 = 257;
              mlir::Operation::emitOpError(a1, v73, &v75);
              if (v75)
              {
                mlir::Diagnostic::operator<<<25ul>(v76, "struct element at index ");
              }

              v68 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v75, &v72);
              v69 = v68;
              if (*v68)
              {
                mlir::Diagnostic::operator<<<18ul>((v68 + 1), " is of wrong type");
              }

              v58 = *(v69 + 200);
              goto LABEL_111;
            }

            if (v42 == ++v50)
            {
              goto LABEL_119;
            }
          }

          v74 = 257;
          mlir::Operation::emitOpError(a1, v73, &v75);
          if (v75)
          {
            mlir::Diagnostic::operator<<<82ul>(v76, "expected struct element attribute types to be floating point type or integer type");
          }

          v58 = v77;
LABEL_111:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
          v14 = v58 ^ 1;
          goto LABEL_18;
        }
      }

      v74 = 257;
      mlir::Operation::emitOpError(a1, v73, &v75);
      if (v75)
      {
        mlir::Diagnostic::operator<<<72ul>(v76, "expected struct element types to be floating point type or integer type");
      }
    }

    else
    {
      v74 = 257;
      mlir::Operation::emitOpError(a1, v73, &v75);
      if (v75)
      {
        mlir::Diagnostic::operator<<<47ul>(v76, "expected array attribute for a struct constant");
      }
    }

LABEL_114:
    v20 = v77;
    goto LABEL_115;
  }

  if (v11 && v12 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMTargetExtType,void>::id)
  {
    v74 = 257;
    mlir::Operation::emitOpError(a1, v73, &v75);
    if (v75)
    {
      mlir::Diagnostic::operator<<<40ul>(v76, "does not support target extension type.");
    }

    goto LABEL_114;
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (v12 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_119;
    }

    v74 = 257;
    mlir::Operation::emitOpError(a1, v73, &v75);
    if (v75)
    {
      mlir::Diagnostic::operator<<<22ul>(v76, "expected integer type");
    }

    goto LABEL_114;
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(&v75, (v8 + 2));
    v37 = v75;
    llvm::APFloat::Storage::~Storage(&v75);
    v38 = *(v37 + 12);
    LODWORD(v72) = v38;
    v39 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type const,llvm::CastInfo<mlir::FloatType,mlir::Type const,void>>::doCastIfPossible((*(a1 - 1) & 0xFFFFFFFFFFFFFFF8));
    if (v39 && (v38 = *((*v40)(v40, v39) + 12), v38 != v72))
    {
      v74 = 257;
      mlir::Operation::emitOpError(a1, v73, &v75);
      if (v75)
      {
        mlir::Diagnostic::operator<<<30ul>(v76, "expected float type of width ");
      }
    }

    else
    {
      v41 = (*(a1 - 1) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v41[2] & 0x3FFFFFFF) == v38)
      {
        goto LABEL_119;
      }

      v74 = 257;
      mlir::Operation::emitOpError(a1, v73, &v75);
      if (v75)
      {
        mlir::Diagnostic::operator<<<32ul>(v76, "expected integer type of width ");
      }
    }

    v58 = *(mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v75, &v72) + 200);
    goto LABEL_111;
  }

  v21 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v9 + 8, v21) && *(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v74 = 257;
    mlir::Operation::emitOpError(a1, v73, &v75);
    if (v75)
    {
      mlir::Diagnostic::operator<<<60ul>(v76, "only supports integer, float, string or elements attributes");
    }

    goto LABEL_114;
  }

  v22 = (*(a1 - 1) & 0xFFFFFFFFFFFFFFF8);
  v23 = *(*v22 + 136);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id)
  {
LABEL_47:
    v31 = *&v6[4 * ((*(a1 + 11) >> 23) & 1)];
    v32 = *(*v31 + 136);
    v33 = v32 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v33 && (v31[24] & 1) != 0)
    {
      goto LABEL_119;
    }

    v74 = 257;
    mlir::Operation::emitOpError(a1, v73, &v75);
    if (v75)
    {
      mlir::Diagnostic::operator<<<48ul>(v76, "scalable vector type requires a splat attribute");
    }

    goto LABEL_114;
  }

  v24 = *(*v22 + 136);
  while (v24 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v26 = v22[4];
    v27 = v22[5];
    v28 = &v26[v27];
    v29 = memchr(v26, 1, v27);
    if (v29)
    {
      v30 = v29 == v28;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      goto LABEL_47;
    }

    v25 = 3;
LABEL_46:
    v22 = v22[v25];
    v24 = *(*v22 + 136);
    if (v24 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id)
    {
      goto LABEL_47;
    }
  }

  v25 = 1;
  if (v24 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
  {
    goto LABEL_46;
  }

  if (v23 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v23 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMArrayType,void>::id && v23 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
  {
    v74 = 257;
    mlir::Operation::emitOpError(a1, v73, &v75);
    if (v75)
    {
      mlir::Diagnostic::operator<<<30ul>(v76, "expected vector or array type");
    }

    goto LABEL_114;
  }

  v59 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*&v6[4 * ((*(a1 + 11) >> 23) & 1)]);
  if (v59)
  {
    v61 = (*(v60 + 16))(v60, v59);
    v63 = (*(v62 + 24))(v62, v61);
    if (v64)
    {
      v65 = 8 * v64;
      v66 = 1;
      do
      {
        v67 = *v63++;
        v66 *= v67;
        v65 -= 8;
      }

      while (v65);
    }

    else
    {
      v66 = 1;
    }
  }

  else
  {
    v66 = *(*&v6[4 * ((*(a1 + 11) >> 23) & 1)] + 16);
  }

  v72 = v66;
  if (getNumElements((*(a1 - 1) & 0xFFFFFFFFFFFFFFF8)) == v66)
  {
LABEL_119:
    v14 = 1;
    goto LABEL_18;
  }

  v74 = 257;
  mlir::Operation::emitOpError(a1, v73, &v75);
  if (v75)
  {
    mlir::Diagnostic::operator<<<57ul>(v76, "type and attribute have a different number of elements: ");
    v70 = v75;
    NumElements = getNumElements((*(a1 - 1) & 0xFFFFFFFFFFFFFFF8));
    if (v70)
    {
      mlir::Diagnostic::append<long long>(v76, &NumElements);
      if (v75)
      {
        mlir::Diagnostic::operator<<<6ul>(v76, " vs. ");
      }
    }
  }

  else
  {
    NumElements = getNumElements((*(a1 - 1) & 0xFFFFFFFFFFFFFFF8));
  }

  v57 = mlir::InFlightDiagnostic::operator<<<long long &>(&v75, &v72);
LABEL_86:
  v20 = *(v57 + 200);
LABEL_115:
  v14 = v20 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractElementOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractElementOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractElementOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractElementOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractElementOp>::printAssembly(uint64_t a1, mlir::Operation *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractElementOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractElementOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractElementOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractElementOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::ExtractElementOp>::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::LLVM::ExtractElementOp::inferReturnTypes(a4, a5, &v18))
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
      v22 = "llvm.extractelement";
      v23 = 19;
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

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::LLVM::ExtractElementOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v27[4] = *MEMORY[0x277D85DE8];
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

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, "[", 1uLL);
  }

  else
  {
    *v10 = 91;
    ++*(v9 + 4);
  }

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 56));
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

  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ":", 1uLL);
  }

  else
  {
    *v14 = 58;
    ++*(v13 + 4);
  }

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

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v17 = (*(*a3 + 16))(a3);
  v18 = *(v17 + 4);
  if (*(v17 + 3) == v18)
  {
    llvm::raw_ostream::write(v17, "]", 1uLL);
  }

  else
  {
    *v18 = 93;
    ++*(v17 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v27, 0);
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

  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ":", 1uLL);
  }

  else
  {
    *v23 = 58;
    ++*(v22 + 4);
  }

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

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::LLVM::ExtractElementOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 2) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps12(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps4(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && (*(a1 + 36) ? (v5 = a1 - 16) : (v5 = 0), mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0)))
  {
    v6 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v7 = *(*v6 + 136);
    v8 = v7 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id;
    v9 = 24;
    if (v8)
    {
      v9 = 8;
    }

    v10 = *(v6 + v9);
    if (*(a1 + 36))
    {
      v11 = a1 - 16;
    }

    else
    {
      v11 = 0;
    }

    if ((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8) == v10)
    {
      v12 = 1;
    }

    else
    {
      v15 = "failed to verify that result type matches vector element type";
      v16 = 259;
      mlir::Operation::emitOpError(a1, &v15, v17);
      v12 = v17[200] ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v17);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v5 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
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

void mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

void mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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

void mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
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

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::ExtractValueOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_48;
  }

  v7 = a2 + 64;
  v8 = *(v5 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v5 + 24 * *(v5 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
      goto LABEL_48;
    }

    v11 = *(v9 + 168);
  }

  else
  {
    v12 = v5 + 16 * v8;
    v10 = v12 + 16;
    v11 = *(v12 + 64);
  }

  if (*(v11 + 16) == &unk_27FC1FEE8)
  {
    v32 = *(v10 + 16 * ((*(v10 + 44) >> 23) & 1) + 64);
    v33 = *(v32 + 24);
    v34 = *(v32 + 32);
    v43 = a5;
    v44 = v46;
    v45 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v44, v33, &v33[v34 & 0xFFFFFFFFFFFFFFF8]);
    v35 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1));
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v44, *(v35 + 24), (*(v35 + 24) + (*(v35 + 32) & 0xFFFFFFFFFFFFFFF8)));
    *(v7 + 16 * ((*(a2 + 44) >> 23) & 1)) = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(a2 + 24) + 32), v44, v45);
    v36 = *(a2 + 72);
    v37 = *(*(v10 + 72) + 24);
    v38 = v36[1];
    if (v38)
    {
      v39 = *v36;
      *v38 = *v36;
      if (v39)
      {
        *(v39 + 8) = v36[1];
      }
    }

    v36[3] = v37;
    v40 = *v37;
    *v36 = *v37;
    v36[1] = v37;
    if (v40)
    {
      *(v40 + 8) = v36;
    }

    *v37 = v36;
    v13 = (a2 - 16) | 4;
    if (v44 != v46)
    {
      free(v44);
    }

    goto LABEL_44;
  }

  if (*(*(v10 + 48) + 16) != &unk_27FC1FF80)
  {
LABEL_48:
    result = 0;
    goto LABEL_49;
  }

  v43 = a5;
  v13 = 0;
  while (1)
  {
    v14 = *(v7 + 16 * ((*(a2 + 44) >> 23) & 1));
    v16 = *(v14 + 24);
    v15 = *(v14 + 32);
    v17 = v15 >> 3;
    v18 = *(v10 + 16 * ((*(v10 + 44) >> 23) & 1) + 64);
    v20 = *(v18 + 24);
    v19 = *(v18 + 32);
    if (v15 >> 3 == v19 >> 3 && !memcmp(v16, *(v18 + 24), v15 & 0xFFFFFFFFFFFFFFF8))
    {
      break;
    }

    v21 = v19 >> 3;
    if (v19 >> 3 >= v17)
    {
      LODWORD(v22) = v17;
    }

    else
    {
      v22 = v19 >> 3;
    }

    if (v17 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v17;
    }

    if (v21 >= v22)
    {
      v21 = v22;
    }

    if (v23 == v21 && !memcmp(v16, v20, 8 * v23))
    {
      goto LABEL_44;
    }

    v24 = *(a2 + 72);
    v25 = *(*(v10 + 72) + 24);
    v26 = v24[1];
    if (v26)
    {
      v27 = *v24;
      *v26 = *v24;
      if (v27)
      {
        *(v27 + 8) = v24[1];
      }
    }

    v24[3] = v25;
    v28 = *v25;
    *v24 = *v25;
    v24[1] = v25;
    if (v28)
    {
      *(v28 + 8) = v24;
    }

    *v25 = v24;
    v29 = *(*(v10 + 72) + 24);
    if ((~*(v29 + 8) & 7) == 0)
    {
      v29 = 0;
    }

    if (v29)
    {
      v30 = *(v29 + 8) & 7;
      if (v30 == 6)
      {
        v31 = v29 + 24 * *(v29 + 16);
        v10 = v31 + 120;
        if (v31 == -120)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v10 = v29 + 16 * v30 + 16;
      }

      v13 = (a2 - 16) | 4;
      if (*(*(v10 + 48) + 16) == &unk_27FC1FF80)
      {
        continue;
      }
    }

LABEL_36:
    v13 = (a2 - 16) | 4;
    goto LABEL_44;
  }

  v13 = *(*(v10 + 72) + 56) | 4;
LABEL_44:
  if (v13 < 8)
  {
    goto LABEL_48;
  }

  if (a2 - 16 != (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(v43, v13);
  }

  result = 1;
LABEL_49:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v21[4] = *MEMORY[0x277D85DE8];
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
  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a3, *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64));
  v19 = v21;
  v20 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v19, "position", 8);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, v20);
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

  if (v19 != v21)
  {
    free(v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::Op<mlir::LLVM::ExtractValueOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    goto LABEL_12;
  }

  v6 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (!v6)
  {
    v26[0] = "requires attribute 'position'";
    v27 = 259;
    mlir::Operation::emitOpError(a1, v26, &v31);
    v11 = v35;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    if ((v11 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    LOBYTE(ValueElementType) = 0;
    goto LABEL_13;
  }

  v31 = a1;
  if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMOps25(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v31) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps13(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7))
  {
    goto LABEL_12;
  }

  v7 = *(a1 + 36) ? a1 - 16 : 0;
  if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMOps10(a1, *(v7 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
  {
    goto LABEL_12;
  }

LABEL_15:
  v25 = a1;
  v28 = &v25;
  ValueElementType = getInsertExtractValueElementType(llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::StringRef)>::callback_fn<mlir::LLVM::ExtractValueOp::verify(void)::$_0>, &v28, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(a1 + 80) + 24), *(*(a1 + 80) + 32) >> 3);
  if (ValueElementType)
  {
    if (*(v25 + 9))
    {
      v12 = v25 - 16;
    }

    else
    {
      v12 = 0;
    }

    if (ValueElementType == (*(v12 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      LOBYTE(ValueElementType) = 1;
    }

    else
    {
      v27 = 257;
      mlir::Operation::emitOpError(v25, v26, &v31);
      if (v31)
      {
        mlir::Diagnostic::operator<<<32ul>(v32, "Type mismatch: extracting from ");
        if (v31)
        {
          v13 = *(*(*(v25 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
          v29 = 4;
          v30 = v13;
          v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v29, 1);
          v15 = v33 + 24 * v34;
          v16 = *v14;
          *(v15 + 16) = *(v14 + 16);
          *v15 = v16;
          ++v34;
          if (v31)
          {
            mlir::Diagnostic::operator<<<17ul>(v32, " should produce ");
            if (v31)
            {
              v29 = 4;
              v30 = ValueElementType;
              v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v29, 1);
              v18 = v33 + 24 * v34;
              v19 = *v17;
              *(v18 + 16) = *(v17 + 16);
              *v18 = v19;
              ++v34;
              if (v31)
              {
                mlir::Diagnostic::operator<<<22ul>(v32, " but this op returns ");
                if (v31)
                {
                  v20 = v25 - 16;
                  if (!*(v25 + 9))
                  {
                    v20 = 0;
                  }

                  v21 = *(v20 + 1) & 0xFFFFFFFFFFFFFFF8;
                  v29 = 4;
                  v30 = v21;
                  v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v29, 1);
                  v23 = v33 + 24 * v34;
                  v24 = *v22;
                  *(v23 + 16) = *(v22 + 16);
                  *v23 = v24;
                  ++v34;
                }
              }
            }
          }
        }
      }

      LOBYTE(ValueElementType) = v35 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
    }
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return ValueElementType & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::FAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::FAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::FAddOp>::foldHook()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[3] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL mlir::RegisteredOperationName::Model<mlir::LLVM::FAddOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::FAddOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::FAddOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::FAddOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::LLVM::FAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::LLVM::FastmathFlagsInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::FAddOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x6874616D74736166 ? (v4 = *(a3 + 5) == 0x7367616C46687461) : (v4 = 0), v4))
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

void mlir::RegisteredOperationName::Model<mlir::LLVM::FAddOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 13)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 5);
    if (v5 == 0x6874616D74736166 && v6 == 0x7367616C46687461)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::LLVM::FastmathFlagsAttr,void>::id)
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