float mlir::placement::RegionCall::getExecutionCost(uint64_t *a1)
{
  v2 = *a1;
  if (!*(*a1 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*a1, "callee", 6), (v4 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v2 + 56, "callee", 6uLL);
  }

  if (InherentAttr && (*(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? (v5 = 0) : (v5 = InherentAttr), (AttrDictionary = v5) != 0))
  {
    v6 = InherentAttr;
    mlir::SymbolRefAttr::getNestedReferences(&AttrDictionary);
    if (v7)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  ParentOp = *a1;
  do
  {
    ParentOp = *(ParentOp + 2);
    if (!ParentOp)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(ParentOp);
    if (!ParentOp)
    {
      break;
    }
  }

  while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
  mlir::SymbolTable::lookupSymbolIn(ParentOp, v6);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v12 = *(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v10 + 16 * v11), *(*(*(*a1 + 48) + 96) + 8)) + 8);
  v13 = 0.0;
  if (v12)
  {
    if (v12 == 1)
    {
      return 0.0008;
    }

    return v13;
  }

  v15 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    goto LABEL_36;
  }

  v16 = *(v15 + 68);
  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = 0;
  v18 = *(v15 + 72);
  do
  {
    v20 = (*(*(v18 + 32 * v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v20)
    {
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
    }

    else
    {
      v21 = 0;
    }

    AttrDictionary = v20;
    v42 = v21;
    if (!mlir::ShapedType::hasRank(&AttrDictionary))
    {
      goto LABEL_24;
    }

    Shape = mlir::ShapedType::getShape(&AttrDictionary);
    if (v23)
    {
      v24 = 8 * v23;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_34;
        }
      }

LABEL_24:
      v19 = 128.0;
      goto LABEL_25;
    }

LABEL_34:
    ElementType = mlir::ShapedType::getElementType(&AttrDictionary);
    v25 = mlir::Type::getIntOrFloatBitWidth(&ElementType) >> 3;
    v26 = mlir::ShapedType::getShape(&AttrDictionary);
    v19 = (v25 * mlir::ShapedType::getNumElements(v26, v27)) * 0.0039062;
LABEL_25:
    v13 = v13 + (v19 / 1080000000.0);
    ++v17;
  }

  while (v17 != v16);
  v15 = *a1;
LABEL_36:
  v28 = *(v15 + 36);
  v29 = v15 - 16;
  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      v33 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v33)
      {
        v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
      }

      else
      {
        v34 = 0;
      }

      AttrDictionary = v33;
      v42 = v34;
      if (mlir::ShapedType::hasRank(&AttrDictionary))
      {
        v35 = mlir::ShapedType::getShape(&AttrDictionary);
        if (!v36)
        {
LABEL_51:
          ElementType = mlir::ShapedType::getElementType(&AttrDictionary);
          v38 = mlir::Type::getIntOrFloatBitWidth(&ElementType) >> 3;
          v39 = mlir::ShapedType::getShape(&AttrDictionary);
          v32 = (v38 * mlir::ShapedType::getNumElements(v39, v40)) * 0.0039062;
          goto LABEL_42;
        }

        v37 = 8 * v36;
        while (*v35 != 0x8000000000000000)
        {
          ++v35;
          v37 -= 8;
          if (!v37)
          {
            goto LABEL_51;
          }
        }
      }

      v32 = 128.0;
LABEL_42:
      v13 = v13 + (v32 / 1080000000.0);
    }
  }

  return v13;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ANEIOCast>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::ANEIOCast>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::ANEIOCast>::getEffects;
  {
    v5 = v2;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::foldSingleResultHook<mlir::placement::ANEIOCast>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 48);
  v17[1] = *(a1 + 56);
  v17[2] = v8;
  v18 = 1;
  v9 = *(a1 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a1 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  mlir::RegionRange::RegionRange(v19, v11, v10);
  v19[2] = a2;
  v19[3] = a3;
  v17[0] = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v17);
  if (!DefiningOp)
  {
    return 0;
  }

  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id)
  {
    return 0;
  }

  v13 = *(*(DefiningOp + 72) + 24);
  if ((*(a1 - 8) ^ *(v13 + 8)) >= 8 || v13 < 8)
  {
    return 0;
  }

  if (a1 - 16 != (v13 & 0xFFFFFFFFFFFFFFF8))
  {
    v14 = v13 | 4;
    v15 = *(a4 + 8);
    if (v15 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v15) = v14;
    ++*(a4 + 8);
  }

  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v35;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v29 = v1;
    v36 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v1 = v29;
    a1 = v36;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v30 = v1;
    v37 = a1;
    v24 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>();
    v2 = v24;
    v1 = v30;
    a1 = v37;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v31 = v1;
    v38 = a1;
    v25 = v2;
    v20 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v3 = v20;
    v2 = v25;
    v1 = v31;
    a1 = v38;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v32 = v1;
    v39 = a1;
    v26 = v2;
    v17 = v4;
    v21 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v17;
    v3 = v21;
    v2 = v26;
    v1 = v32;
    a1 = v39;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v34 = v1;
    v41 = a1;
    v28 = v2;
    v19 = v4;
    v23 = v3;
    v14 = v6;
    v16 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v6 = v14;
    v5 = v16;
    v4 = v19;
    v3 = v23;
    v2 = v28;
    v1 = v34;
    a1 = v41;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::placement::ANEIOCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::placement::ANEIOCast>,mlir::OpTrait::OneResult<mlir::placement::ANEIOCast>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::placement::ANEIOCast>,mlir::OpTrait::ZeroSuccessors<mlir::placement::ANEIOCast>,mlir::OpTrait::OneOperand<mlir::placement::ANEIOCast>,mlir::OpTrait::OpInvariants<mlir::placement::ANEIOCast>,mlir::MemoryEffectOpInterface::Trait<mlir::placement::ANEIOCast>>(a1, a2))
  {
    v5 = a1;
    return mlir::placement::ANEIOCast::verify(&v5);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::placement::ANEIOCast>,mlir::OpTrait::OneResult<mlir::placement::ANEIOCast>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::placement::ANEIOCast>,mlir::OpTrait::ZeroSuccessors<mlir::placement::ANEIOCast>,mlir::OpTrait::OneOperand<mlir::placement::ANEIOCast>,mlir::OpTrait::OpInvariants<mlir::placement::ANEIOCast>,mlir::MemoryEffectOpInterface::Trait<mlir::placement::ANEIOCast>>(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && mlir::placement::__mlir_ods_local_type_constraint_PlacementOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    if (*(a1 + 36))
    {
      v6 = a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
    return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps1(a1, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::HostTypeCast>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

  return 0;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>(uint64_t a1)
{
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v35;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v29 = v1;
    v36 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v1 = v29;
    a1 = v36;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v30 = v1;
    v37 = a1;
    v24 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::affine::AffineReadOpInterface::Trait,mlir::affine::AffineMapAccessInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::MemoryEffectOpInterface::Trait>();
    v2 = v24;
    v1 = v30;
    a1 = v37;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v31 = v1;
    v38 = a1;
    v25 = v2;
    v20 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v3 = v20;
    v2 = v25;
    v1 = v31;
    a1 = v38;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v32 = v1;
    v39 = a1;
    v26 = v2;
    v17 = v4;
    v21 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v17;
    v3 = v21;
    v2 = v26;
    v1 = v32;
    a1 = v39;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
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
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v34 = v1;
    v41 = a1;
    v28 = v2;
    v19 = v4;
    v23 = v3;
    v14 = v6;
    v16 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>();
    v6 = v14;
    v5 = v16;
    v4 = v19;
    v3 = v23;
    v2 = v28;
    v1 = v34;
    a1 = v41;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HostTypeConversion<Empty>]";
  v6 = 90;
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

uint64_t mlir::Op<mlir::placement::HostTypeCast,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyOneResult(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  if (*(a1 + 9))
  {
    v6 = a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  return 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.memref_to_tensor", 0x1A, a2, &mlir::detail::TypeIDResolver<mlir::placement::MemrefToTensor,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_286893620;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::~Model(uint64_t a1)
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

BOOL mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::MemrefToTensor>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::getEffects;
  {
    v5 = v2;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::placement::MemrefToTensor>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::placement::MemrefToTensor::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::TypeRange::TypeRange(&v16, v18, v19);
    mlir::TypeRange::TypeRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "placement.memref_to_tensor";
      v17 = 26;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::foldSingleResultHook<mlir::placement::MemrefToTensor>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v16[0] = a1;
  v16[1] = v8;
  v16[2] = v9;
  v17 = 1;
  v10 = *(a1 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((a1 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::RegionRange::RegionRange(v18, v12, v11);
  v18[2] = a2;
  v18[3] = a3;
  v13 = mlir::placement::MemrefToTensor::fold(v16);
  if (v13 < 8 || a1 - 16 == (v13 & ((v13 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v13 > 7;
  }

  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a4 + 8 * v14) = v13;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::placement::MemrefToTensor,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, (mlir::placement::MemrefToTensor::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    v8 = a1;
    v6 = mlir::placement::MemrefToTensor::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.region_call", 0x15, a2, &mlir::detail::TypeIDResolver<mlir::placement::RegionCall,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_2868936E8;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::RegionCall>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>::verifySymbolUses;
  {
    v5 = v2;
    mlir::OpInterface<mlir::SymbolUserOpInterface,mlir::detail::SymbolUserOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>::getExecutionCost;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::ExecutionCostOpInterfaceInterfaceTraits::Model<mlir::placement::RegionCall>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>(uint64_t a1)
{
  {
    v44 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v44;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v37 = v1;
    v45 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v1 = v37;
    a1 = v45;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v38 = v1;
    v46 = a1;
    v31 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v2 = v31;
    v1 = v38;
    a1 = v46;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v39 = v1;
    v47 = a1;
    v32 = v2;
    v26 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::anec::ZinIrUnitInfoInterface::Trait,mlir::anec::PlistGeneratorInterface::Trait,mlir::anec::ANECompilerVerifierInterface::Trait,mlir::anec::VerifyAttributesWithFamilyInterface::Trait,mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)0>::Impl,mlir::ExecutionCostOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::anec::InferReturnTypesInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v3 = v26;
    v2 = v32;
    v1 = v39;
    a1 = v47;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v40 = v1;
    v48 = a1;
    v33 = v2;
    v22 = v4;
    v27 = v3;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v4 = v22;
    v3 = v27;
    v2 = v33;
    v1 = v40;
    a1 = v48;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v41 = v1;
    v49 = a1;
    v34 = v2;
    v23 = v4;
    v28 = v3;
    v19 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v19;
    v4 = v23;
    v3 = v28;
    v2 = v34;
    v1 = v41;
    a1 = v49;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v42 = v1;
    v50 = a1;
    v35 = v2;
    v24 = v4;
    v29 = v3;
    v17 = v6;
    v20 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait>();
    v6 = v17;
    v5 = v20;
    v4 = v24;
    v3 = v29;
    v2 = v35;
    v1 = v42;
    a1 = v50;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v43 = v1;
    v51 = a1;
    v36 = v2;
    v25 = v4;
    v30 = v3;
    v18 = v6;
    v21 = v5;
    v16 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>();
    v7 = v16;
    v6 = v18;
    v5 = v21;
    v4 = v25;
    v3 = v30;
    v2 = v36;
    v1 = v43;
    a1 = v51;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || mlir::detail::TypeIDResolver<mlir::ExecutionCostOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ExecutionCostOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::placement::RegionCall,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::RegionOp,mlir::SymbolUserOpInterface::Trait,mlir::ExecutionCostOpInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    v6 = a1;
    v4 = mlir::placement::RegionCall::verifyInvariantsImpl(&v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.replaced_ops", 0x16, a2, &mlir::detail::TypeIDResolver<mlir::placement::ReplacedOps,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_2868937B0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOps>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v9 = 261;
  v8[0] = "sym_name";
  v8[1] = 8;
  v7 = mlir::StringAttr::get(Context, v8, v6);
  mlir::Operation::setAttr(a2, v7, a3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x800404C0E4D0CuLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgumentTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::TypeAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getInputs(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResultTypes(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::TypeAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::getResults(&AttrDictionary);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getArgAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 32), **(*(this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getResAttrsAttr(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v4 + 16 * v5), *(*(*(this + 6) + 96) + 24));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xE004091171B8EuLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::verifyBody;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::verifyType;
  v2[5] = mlir::detail::InterfaceMap::lookup<mlir::SymbolOpInterface>(a1);
  v2[6] = mlir::detail::InterfaceMap::lookup<mlir::CallableOpInterface>(a1);
  {
    mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::getFunctionType(int a1, mlir::Operation *this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v4 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v4 + 16 * v5 - 16), *(*(*(this + 6) + 96) + 8));
  return mlir::TypeAttr::getValue(&AttrDictionary);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::placement::ReplacedOps>::cloneTypeWith(int a1, mlir::Operation *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v12 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v12 + 16 * v13 - 16), *(*(*(this + 6) + 96) + 8));
  AttrDictionary = mlir::TypeAttr::getValue(&AttrDictionary);
  return mlir::FunctionType::clone(&AttrDictionary, a3, a4, a5, a6);
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::placement::ReplacedOps>::verifyBody(mlir::Operation **a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (((&v2[4 * ((v2[11] >> 23) & 1) + 17] + ((v2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
  if (*v3 == v3)
  {
    return 1;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v2);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), *(*(*(*a1 + 6) + 96) + 8));
  AttrDictionary = mlir::TypeAttr::getValue(&AttrDictionary);
  Inputs = mlir::FunctionType::getInputs(&AttrDictionary);
  v9 = v8;
  v10 = *(((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 + 48;
  v12 = *(v11 + 48);
  if (((*(v13 + 8) - v12) >> 3) != v8)
  {
    v51[0] = "entry block must have ";
    v52 = 259;
    mlir::OpState::emitOpError(a1, v51, &AttrDictionary);
    if (AttrDictionary)
    {
      LODWORD(v53) = 5;
      *(&v53 + 1) = v9;
      if (v58 >= v59)
      {
        if (v57 > &v53 || v57 + 24 * v58 <= &v53)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v17 = v57 + 24 * v58;
      v18 = v53;
      *(v17 + 2) = v54;
      *v17 = v18;
      v19 = ++v58;
      if (AttrDictionary)
      {
        LODWORD(v53) = 3;
        *(&v53 + 1) = " arguments to match function signature";
        v54 = 38;
        if (v19 >= v59)
        {
          if (v57 > &v53 || v57 + 24 * v19 <= &v53)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v20 = v57 + 24 * v58;
        v21 = v53;
        *(v20 + 2) = v54;
        *v20 = v21;
        ++v58;
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v66 != 1)
    {
      return v16;
    }

    if (v65 != &v66)
    {
      free(v65);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v64;
      v24 = __p;
      if (v64 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v64 = v22;
      operator delete(v24);
    }

    v25 = v61;
    if (v61)
    {
      v26 = v62;
      v27 = v61;
      if (v62 != v61)
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
        v27 = v61;
      }

      v62 = v25;
      operator delete(v27);
    }

    v49 = v57;
    if (v57 == v60)
    {
      return v16;
    }

LABEL_61:
    free(v49);
    return v16;
  }

  if (!v8)
  {
    return 1;
  }

  v14 = 0;
  while (1)
  {
    v15 = *(*(v12 + 8 * v14) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*Inputs != v15)
    {
      break;
    }

    ++v14;
    ++Inputs;
    if (v8 == v14)
    {
      return 1;
    }
  }

  v30 = Inputs;
  v51[0] = "type of entry block argument #";
  v52 = 259;
  mlir::OpState::emitOpError(a1, v51, &AttrDictionary);
  if (AttrDictionary)
  {
    LODWORD(v53) = 5;
    *(&v53 + 1) = v14;
    if (v58 >= v59)
    {
      if (v57 > &v53 || v57 + 24 * v58 <= &v53)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31 = v57 + 24 * v58;
    v32 = v53;
    *(v31 + 2) = v54;
    *v31 = v32;
    ++v58;
    if (AttrDictionary)
    {
      mlir::Diagnostic::operator<<(&v56, 40);
      if (AttrDictionary)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v53, v15);
        if (v58 >= v59)
        {
          if (v57 > &v53 || v57 + 24 * v58 <= &v53)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v33 = v57 + 24 * v58;
        v34 = v53;
        *(v33 + 2) = v54;
        *v33 = v34;
        v35 = ++v58;
        if (AttrDictionary)
        {
          LODWORD(v53) = 3;
          *(&v53 + 1) = ") must match the type of the corresponding argument in ";
          v54 = 55;
          if (v35 >= v59)
          {
            if (v57 > &v53 || v57 + 24 * v35 <= &v53)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v36 = v57 + 24 * v58;
          v37 = v53;
          *(v36 + 2) = v54;
          *v36 = v37;
          ++v58;
        }
      }
    }
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, "function signature(");
  mlir::InFlightDiagnostic::append<mlir::Type const&>(v38, v30);
  if (*v39)
  {
    v40 = v39;
    mlir::Diagnostic::operator<<((v39 + 1), 41);
    v39 = v40;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v66)
  {
    if (v65 != &v66)
    {
      free(v65);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v64;
      v43 = __p;
      if (v64 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v64 = v41;
      operator delete(v43);
    }

    v44 = v61;
    if (v61)
    {
      v45 = v62;
      v46 = v61;
      if (v62 != v61)
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
        v46 = v61;
      }

      v62 = v44;
      operator delete(v46);
    }

    v49 = v57;
    if (v57 != v60)
    {
      goto LABEL_61;
    }
  }

  return v16;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>(uint64_t a1)
{
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>();
    a1 = v54;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v46 = v1;
    v55 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>();
    v1 = v46;
    a1 = v55;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v47 = v1;
    v56 = a1;
    v39 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v2 = v39;
    v1 = v47;
    a1 = v56;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v48 = v1;
    v57 = a1;
    v33 = v3;
    v40 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v3 = v33;
    v2 = v40;
    v1 = v48;
    a1 = v57;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v49 = v1;
    v58 = a1;
    v34 = v3;
    v41 = v2;
    v28 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v4 = v28;
    v3 = v34;
    v2 = v41;
    v1 = v49;
    a1 = v58;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v50 = v1;
    v59 = a1;
    v35 = v3;
    v42 = v2;
    v24 = v5;
    v29 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v24;
    v4 = v29;
    v3 = v35;
    v2 = v42;
    v1 = v50;
    a1 = v59;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v51 = v1;
    v60 = a1;
    v36 = v3;
    v43 = v2;
    v25 = v5;
    v30 = v4;
    v21 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v6 = v21;
    v5 = v25;
    v4 = v30;
    v3 = v36;
    v2 = v43;
    v1 = v51;
    a1 = v60;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v53 = v1;
    v62 = a1;
    v38 = v3;
    v45 = v2;
    v27 = v5;
    v32 = v4;
    v20 = v7;
    v23 = v6;
    v18 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v8 = v18;
    v7 = v20;
    v6 = v23;
    v5 = v27;
    v4 = v32;
    v3 = v38;
    v2 = v45;
    v1 = v53;
    a1 = v62;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::placement::ReplacedOps,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::placement::ReplacedOps::print(&v7, a3);
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::placement::ReplacedOps>,mlir::OpTrait::ZeroResults<mlir::placement::ReplacedOps>,mlir::OpTrait::ZeroSuccessors<mlir::placement::ReplacedOps>,mlir::OpTrait::ZeroOperands<mlir::placement::ReplacedOps>,mlir::OpTrait::OpInvariants<mlir::placement::ReplacedOps>,mlir::SymbolOpInterface::Trait<mlir::placement::ReplacedOps>,mlir::CallableOpInterface::Trait<mlir::placement::ReplacedOps>,mlir::FunctionOpInterface::Trait<mlir::placement::ReplacedOps>,mlir::OpTrait::IsIsolatedFromAbove<mlir::placement::ReplacedOps>>(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyOneRegion(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5) && (v9 = a1, mlir::placement::ReplacedOps::verifyInvariantsImpl(&v9)) && mlir::detail::SymbolOpInterfaceTrait<mlir::mpsx::ANEOp>::verifyTrait(a1, v6))
  {
    v7 = mlir::function_interface_impl::verifyTrait<mlir::placement::ReplacedOps>(a1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::function_interface_impl::verifyTrait<mlir::placement::ReplacedOps>(mlir::Operation *a1)
{
  v144 = *MEMORY[0x277D85DE8];
  v130 = a1;
  v133[0] = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::DictionaryAttr::getValue(v133);
  v133[0] = mlir::Operation::getAttrDictionary(a1);
  v3 = mlir::DictionaryAttr::getValue(v133);
  v5 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), **(*(a1 + 6) + 96));
  if (v5)
  {
    v6 = *(*v5 + 136);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v8 = v6 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id ? v5 : 0;
    v129 = v8;
    if (v7)
    {
      v133[0] = mlir::Operation::getAttrDictionary(a1);
      v25 = mlir::DictionaryAttr::getValue(v133);
      v133[0] = mlir::Operation::getAttrDictionary(v130);
      v26 = mlir::DictionaryAttr::getValue(v133);
      v133[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v25, (v26 + 16 * v27 - 16), *(*(*(v130 + 6) + 96) + 8));
      v133[0] = mlir::TypeAttr::getValue(v133);
      mlir::FunctionType::getInputs(v133);
      v29 = v28;
      mlir::ArrayAttr::getValue(&v129);
      if (v30 != v29)
      {
        v128 = 257;
        mlir::OpState::emitOpError(&v130, v127, v133);
        if (v133[0])
        {
          LODWORD(v131) = 3;
          *(&v131 + 1) = "expects argument attribute array to have the same number of elements as the number of function arguments, got ";
          v132 = 110;
          if (v135 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v135 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v57 = v134 + 24 * v135;
          v58 = v131;
          *(v57 + 2) = v132;
          *v57 = v58;
          ++v135;
        }

        mlir::ArrayAttr::getValue(&v129);
        if (v133[0])
        {
          LODWORD(v131) = 5;
          *(&v131 + 1) = v59;
          if (v135 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v135 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v60 = v134 + 24 * v135;
          v61 = v131;
          *(v60 + 2) = v132;
          *v60 = v61;
          ++v135;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v133, ", but expected ");
        if (*v62)
        {
          v63 = *(v62 + 24);
          LODWORD(v131) = 5;
          *(&v131 + 1) = v29;
          v64 = *(v62 + 32);
          if (v64 >= *(v62 + 36))
          {
            if (v63 > &v131 || v63 + 24 * v64 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v65 = v63 + 24 * *(v62 + 32);
          v66 = v131;
          *(v65 + 16) = v132;
          *v65 = v66;
          ++*(v62 + 32);
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
        if (v133[0])
        {
          mlir::InFlightDiagnostic::report(v133);
        }

        if (v143 == 1)
        {
          if (v142 != &v143)
          {
            free(v142);
          }

          v67 = __p;
          if (__p)
          {
            v68 = v141;
            v69 = __p;
            if (v141 != __p)
            {
              do
              {
                v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
              }

              while (v68 != v67);
              v69 = __p;
            }

            v141 = v67;
            operator delete(v69);
          }

          v20 = v138;
          if (!v138)
          {
            goto LABEL_196;
          }

          v70 = v139;
          v22 = v138;
          if (v139 == v138)
          {
            goto LABEL_195;
          }

          do
          {
            v72 = *--v70;
            v71 = v72;
            *v70 = 0;
            if (v72)
            {
              MEMORY[0x259C63150](v71, 0x1000C8077774924);
            }
          }

          while (v70 != v20);
          goto LABEL_194;
        }

        return v16;
      }

      if (v29)
      {
        v31 = 0;
        while (1)
        {
          v32 = *(mlir::ArrayAttr::getValue(&v129) + 8 * v31);
          if (!v32)
          {
            v126 = 0;
LABEL_149:
            v128 = 257;
            mlir::OpState::emitOpError(&v130, v127, v133);
            if (v133[0])
            {
              LODWORD(v131) = 3;
              v132 = 71;
              if (v135 >= v136)
              {
                if (v134 > &v131 || v134 + 24 * v135 <= &v131)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v101 = v134 + 24 * v135;
              v102 = v131;
              *(v101 + 2) = v132;
              *v101 = v102;
              ++v135;
            }

            v103 = mlir::ArrayAttr::getValue(&v129);
            if (v133[0])
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v131, *(v103 + 8 * v31));
              if (v135 >= v136)
              {
                if (v134 > &v131 || v134 + 24 * v135 <= &v131)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v104 = v134 + 24 * v135;
              v105 = v131;
              *(v104 + 2) = v132;
              *v104 = v105;
              ++v135;
            }

            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v106);
            if (v133[0])
            {
              mlir::InFlightDiagnostic::report(v133);
            }

            if (v143 != 1)
            {
              return v16;
            }

            if (v142 != &v143)
            {
              free(v142);
            }

            v107 = __p;
            if (__p)
            {
              v108 = v141;
              v109 = __p;
              if (v141 != __p)
              {
                do
                {
                  v108 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v108 - 1);
                }

                while (v108 != v107);
                v109 = __p;
              }

              v141 = v107;
              operator delete(v109);
            }

            v20 = v138;
            if (!v138)
            {
              goto LABEL_196;
            }

            v110 = v139;
            v22 = v138;
            if (v139 == v138)
            {
              goto LABEL_195;
            }

            do
            {
              v112 = *--v110;
              v111 = v112;
              *v110 = 0;
              if (v112)
              {
                MEMORY[0x259C63150](v111, 0x1000C8077774924);
              }
            }

            while (v110 != v20);
            goto LABEL_194;
          }

          if (*(*v32 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
          {
            v32 = 0;
          }

          v126 = v32;
          if (!v32)
          {
            goto LABEL_149;
          }

          v33 = mlir::DictionaryAttr::begin(&v126);
          v34 = mlir::DictionaryAttr::end(&v126);
          if (v33 != v34)
          {
            break;
          }

LABEL_45:
          if (++v31 == v29)
          {
            goto LABEL_6;
          }
        }

        v35 = v34;
        while (1)
        {
          v131 = *v33;
          v133[0] = mlir::NamedAttribute::getName(&v131);
          v36 = mlir::StringAttr::getValue(v133);
          if (!v37)
          {
            break;
          }

          v38 = v36;
          v39 = memchr(v36, 46, v37);
          if (!v39 || v39 - v38 == -1)
          {
            break;
          }

          NameDialect = mlir::NamedAttribute::getNameDialect(&v131);
          if (NameDialect && ((*(*NameDialect + 80))(NameDialect, v130, 0, v31, v131, *(&v131 + 1)) & 1) == 0)
          {
            return 0;
          }

          if (++v33 == v35)
          {
            goto LABEL_45;
          }
        }

        v127[0] = "arguments may only have dialect attributes";
        v128 = 259;
        mlir::OpState::emitOpError(&v130, v127, v133);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
        if (v133[0])
        {
          mlir::InFlightDiagnostic::report(v133);
        }

        if (v143 != 1)
        {
          return v16;
        }

        if (v142 != &v143)
        {
          free(v142);
        }

        v89 = __p;
        if (__p)
        {
          v90 = v141;
          v91 = __p;
          if (v141 != __p)
          {
            do
            {
              v90 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v90 - 1);
            }

            while (v90 != v89);
            v91 = __p;
          }

          v141 = v89;
          operator delete(v91);
        }

        v20 = v138;
        if (!v138)
        {
          goto LABEL_196;
        }

        v92 = v139;
        v22 = v138;
        if (v139 == v138)
        {
          goto LABEL_195;
        }

        do
        {
          v94 = *--v92;
          v93 = v94;
          *v92 = 0;
          if (v94)
          {
            MEMORY[0x259C63150](v93, 0x1000C8077774924);
          }
        }

        while (v92 != v20);
        goto LABEL_194;
      }
    }
  }

LABEL_6:
  v133[0] = mlir::Operation::getAttrDictionary(v130);
  v9 = mlir::DictionaryAttr::getValue(v133);
  v133[0] = mlir::Operation::getAttrDictionary(v130);
  v10 = mlir::DictionaryAttr::getValue(v133);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v9 + 32), (v10 + 16 * v11), *(*(*(v130 + 6) + 96) + 24));
  if (v12)
  {
    v13 = *(*v12 + 136);
    v14 = v13 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id;
    v15 = v13 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id ? v12 : 0;
    v129 = v15;
    if (v14)
    {
      v133[0] = mlir::Operation::getAttrDictionary(v130);
      v41 = mlir::DictionaryAttr::getValue(v133);
      v133[0] = mlir::Operation::getAttrDictionary(v130);
      v42 = mlir::DictionaryAttr::getValue(v133);
      v133[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v41, (v42 + 16 * v43 - 16), *(*(*(v130 + 6) + 96) + 8));
      v133[0] = mlir::TypeAttr::getValue(v133);
      mlir::FunctionType::getResults(v133);
      v45 = v44;
      mlir::ArrayAttr::getValue(&v129);
      if (v46 != v45)
      {
        v128 = 257;
        mlir::OpState::emitOpError(&v130, v127, v133);
        if (v133[0])
        {
          LODWORD(v131) = 3;
          *(&v131 + 1) = "expects result attribute array to have the same number of elements as the number of function results, got ";
          v132 = 106;
          if (v135 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v135 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v73 = v134 + 24 * v135;
          v74 = v131;
          *(v73 + 2) = v132;
          *v73 = v74;
          ++v135;
        }

        mlir::ArrayAttr::getValue(&v129);
        if (v133[0])
        {
          LODWORD(v131) = 5;
          *(&v131 + 1) = v75;
          if (v135 >= v136)
          {
            if (v134 > &v131 || v134 + 24 * v135 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v76 = v134 + 24 * v135;
          v77 = v131;
          *(v76 + 2) = v132;
          *v76 = v77;
          ++v135;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v133, ", but expected ");
        if (*v78)
        {
          v79 = *(v78 + 24);
          LODWORD(v131) = 5;
          *(&v131 + 1) = v45;
          v80 = *(v78 + 32);
          if (v80 >= *(v78 + 36))
          {
            if (v79 > &v131 || v79 + 24 * v80 <= &v131)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v81 = v79 + 24 * *(v78 + 32);
          v82 = v131;
          *(v81 + 16) = v132;
          *v81 = v82;
          ++*(v78 + 32);
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v78);
        if (v133[0])
        {
          mlir::InFlightDiagnostic::report(v133);
        }

        if (v143 == 1)
        {
          if (v142 != &v143)
          {
            free(v142);
          }

          v83 = __p;
          if (__p)
          {
            v84 = v141;
            v85 = __p;
            if (v141 != __p)
            {
              do
              {
                v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
              }

              while (v84 != v83);
              v85 = __p;
            }

            v141 = v83;
            operator delete(v85);
          }

          v20 = v138;
          if (!v138)
          {
            goto LABEL_196;
          }

          v86 = v139;
          v22 = v138;
          if (v139 == v138)
          {
            goto LABEL_195;
          }

          do
          {
            v88 = *--v86;
            v87 = v88;
            *v86 = 0;
            if (v88)
            {
              MEMORY[0x259C63150](v87, 0x1000C8077774924);
            }
          }

          while (v86 != v20);
          goto LABEL_194;
        }

        return v16;
      }

      if (v45)
      {
        v47 = 0;
        while (1)
        {
          v48 = *(mlir::ArrayAttr::getValue(&v129) + 8 * v47);
          if (!v48)
          {
            v126 = 0;
LABEL_172:
            v128 = 257;
            mlir::OpState::emitOpError(&v130, v127, v133);
            if (v133[0])
            {
              LODWORD(v131) = 3;
              v132 = 69;
              if (v135 >= v136)
              {
                if (v134 > &v131 || v134 + 24 * v135 <= &v131)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v113 = v134 + 24 * v135;
              v114 = v131;
              *(v113 + 2) = v132;
              *v113 = v114;
              ++v135;
            }

            v115 = mlir::ArrayAttr::getValue(&v129);
            if (v133[0])
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v131, *(v115 + 8 * v47));
              if (v135 >= v136)
              {
                if (v134 > &v131 || v134 + 24 * v135 <= &v131)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v116 = v134 + 24 * v135;
              v117 = v131;
              *(v116 + 2) = v132;
              *v116 = v117;
              ++v135;
            }

            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v118);
            if (v133[0])
            {
              mlir::InFlightDiagnostic::report(v133);
            }

            if (v143 != 1)
            {
              return v16;
            }

            if (v142 != &v143)
            {
              free(v142);
            }

            v119 = __p;
            if (__p)
            {
              v120 = v141;
              v121 = __p;
              if (v141 != __p)
              {
                do
                {
                  v120 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v120 - 1);
                }

                while (v120 != v119);
                v121 = __p;
              }

              v141 = v119;
              operator delete(v121);
            }

            v20 = v138;
            if (!v138)
            {
              goto LABEL_196;
            }

            v122 = v139;
            v22 = v138;
            if (v139 == v138)
            {
              goto LABEL_195;
            }

            do
            {
              v124 = *--v122;
              v123 = v124;
              *v122 = 0;
              if (v124)
              {
                MEMORY[0x259C63150](v123, 0x1000C8077774924);
              }
            }

            while (v122 != v20);
            goto LABEL_194;
          }

          if (*(*v48 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
          {
            v48 = 0;
          }

          v126 = v48;
          if (!v48)
          {
            goto LABEL_172;
          }

          v49 = mlir::DictionaryAttr::begin(&v126);
          v50 = mlir::DictionaryAttr::end(&v126);
          if (v49 != v50)
          {
            break;
          }

LABEL_63:
          if (++v47 == v45)
          {
            goto LABEL_11;
          }
        }

        v51 = v50;
        while (1)
        {
          v131 = *v49;
          v133[0] = mlir::NamedAttribute::getName(&v131);
          v52 = mlir::StringAttr::getValue(v133);
          if (!v53)
          {
            break;
          }

          v54 = v52;
          v55 = memchr(v52, 46, v53);
          if (!v55 || v55 - v54 == -1)
          {
            break;
          }

          v56 = mlir::NamedAttribute::getNameDialect(&v131);
          if (v56 && ((*(*v56 + 88))(v56, v130, 0, v47, v131, *(&v131 + 1)) & 1) == 0)
          {
            return 0;
          }

          if (++v49 == v51)
          {
            goto LABEL_63;
          }
        }

        v127[0] = "results may only have dialect attributes";
        v128 = 259;
        mlir::OpState::emitOpError(&v130, v127, v133);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
        if (v133[0])
        {
          mlir::InFlightDiagnostic::report(v133);
        }

        if (v143 != 1)
        {
          return v16;
        }

        if (v142 != &v143)
        {
          free(v142);
        }

        v95 = __p;
        if (__p)
        {
          v96 = v141;
          v97 = __p;
          if (v141 != __p)
          {
            do
            {
              v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
            }

            while (v96 != v95);
            v97 = __p;
          }

          v141 = v95;
          operator delete(v97);
        }

        v20 = v138;
        if (!v138)
        {
          goto LABEL_196;
        }

        v98 = v139;
        v22 = v138;
        if (v139 == v138)
        {
          goto LABEL_195;
        }

        do
        {
          v100 = *--v98;
          v99 = v100;
          *v98 = 0;
          if (v100)
          {
            MEMORY[0x259C63150](v99, 0x1000C8077774924);
          }
        }

        while (v98 != v20);
        goto LABEL_194;
      }
    }
  }

LABEL_11:
  if ((*(v130 + 11) & 0x7FFFFF) == 1)
  {
    return mlir::detail::FunctionOpInterfaceTrait<mlir::placement::ReplacedOps>::verifyBody(&v130);
  }

  v127[0] = "expects one region";
  v128 = 259;
  mlir::OpState::emitOpError(&v130, v127, v133);
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v133);
  if (v133[0])
  {
    mlir::InFlightDiagnostic::report(v133);
  }

  if (v143 == 1)
  {
    if (v142 != &v143)
    {
      free(v142);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v141;
      v19 = __p;
      if (v141 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v141 = v17;
      operator delete(v19);
    }

    v20 = v138;
    if (!v138)
    {
      goto LABEL_196;
    }

    v21 = v139;
    v22 = v138;
    if (v139 == v138)
    {
LABEL_195:
      v139 = v20;
      operator delete(v22);
LABEL_196:
      if (v134 != &v137)
      {
        free(v134);
      }

      return v16;
    }

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
LABEL_194:
    v22 = v138;
    goto LABEL_195;
  }

  return v16;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::ReplacedOpsLiveOuts,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::ReplacedOpsLiveOuts>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StartTimer>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

  return 0;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>(uint64_t a1)
{
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v27;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v22 = v1;
    v28 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v1 = v22;
    a1 = v28;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v23 = v1;
    v29 = a1;
    v18 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>();
    v2 = v18;
    v1 = v23;
    a1 = v29;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v24 = v1;
    v30 = a1;
    v15 = v3;
    v19 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v3 = v15;
    v2 = v19;
    v1 = v24;
    a1 = v30;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::SymbolOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v26 = v1;
    v32 = a1;
    v17 = v3;
    v21 = v2;
    v12 = v5;
    v14 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v12;
    v4 = v14;
    v3 = v17;
    v2 = v21;
    v1 = v26;
    a1 = v32;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl<Empty>]";
  v6 = 126;
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

BOOL mlir::Op<mlir::placement::StartTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::placement::TimerHandleType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v8 = a1;
    return mlir::placement::StartTimer::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::StopTimer>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

  return 0;
}

uint64_t mlir::Op<mlir::placement::StopTimer,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyZeroResults(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v6 = mlir::placement::__mlir_ods_local_type_constraint_PlacementOps7(a1, *(*(*(a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "placement.tensor_to_memref", 0x1A, a2, &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_286893AD0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::~Model(uint64_t a1)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::foldHook()
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::hasTrait(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v6, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  v6 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))();
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::placement::TensorToMemref>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "this operation does not support properties");
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

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::getEffects;
  {
    v5 = v2;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::placement::TensorToMemref>::refineReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  if (mlir::placement::TensorToMemref::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v18))
  {
    mlir::TypeRange::TypeRange(&v16, v18, v19);
    mlir::TypeRange::TypeRange(v15, *a11, *(a11 + 8));
    {
      v13 = 1;
    }

    else
    {
      v16 = "placement.tensor_to_memref";
      v17 = 26;
      v13 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v16, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v13 = 0;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v13;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::TensorToMemref>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>();
    v3 = v41;
    v2 = v49;
    v1 = v58;
    a1 = v68;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v59 = v1;
    v69 = a1;
    v42 = v3;
    v50 = v2;
    v35 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>();
    v5 = v30;
    v4 = v36;
    v3 = v43;
    v2 = v51;
    v1 = v60;
    a1 = v70;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v61 = v1;
    v71 = a1;
    v44 = v3;
    v52 = v2;
    v31 = v5;
    v37 = v4;
    v26 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::RangeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpTrait::HostTypeConversion>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::HostTypeConversion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HostTypeConversion>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v64 = v1;
    v74 = a1;
    v47 = v3;
    v55 = v2;
    v34 = v5;
    v40 = v4;
    v25 = v7;
    v29 = v6;
    v20 = v9;
    v22 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v20;
    v8 = v22;
    v7 = v25;
    v6 = v29;
    v5 = v34;
    v4 = v40;
    v3 = v47;
    v2 = v55;
    v1 = v64;
    a1 = v74;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::placement::TensorToMemref,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (v8 = a1, (mlir::placement::TensorToMemref::verifyInvariantsImpl(&v8) & 1) != 0))
  {
    v8 = a1;
    v6 = mlir::placement::TensorToMemref::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void mlir::Dialect::addAttribute<mlir::placement::RegionTypeAttr>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::placement::RegionTypeAttr,mlir::Attribute,mlir::placement::detail::RegionTypeAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement14RegionTypeAttrES2_NSD_6detail21RegionTypeAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement14RegionTypeAttrES2_NSC_6detail21RegionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v21 = "placement.region_type";
  v22 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, &v10);
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

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement14RegionTypeAttrES2_NSC_6detail21RegionTypeAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v9[1] = Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v13[1] = v9;
  v12 = v2;
  v5 = 0x9DDFEA08EB382D69 * (((8 * v2) | 4) ^ v2 ^ 0xFF51AFD7ED558CCDLL);
  v6 = 0x9DDFEA08EB382D69 * (v2 ^ 0xFF51AFD7ED558CCDLL ^ (v5 >> 47) ^ v5);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((v6 >> 47) ^ v6), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

void mlir::Dialect::addType<mlir::placement::TimerHandleType>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = v13;
  v12 = 0x300000000;
  v14[0] = mlir::detail::StorageUserBase<mlir::placement::TimerHandleType,mlir::Type,mlir::placement::detail::TimerHandleTypeStorage,mlir::detail::TypeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v15 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v16 = _ZN4llvm12function_refIFvN4mlir4TypeENS0_IFvNS1_9AttributeEEEENS0_IFvS2_EEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement15TimerHandleTypeES2_NSD_6detail22TimerHandleTypeStorageENSB_11TypeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S5_S7_E_EEvlS2_S5_S7_;
  v17 = &v9;
  v18 = _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement15TimerHandleTypeES2_NSC_6detail22TimerHandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_;
  v19 = &v8;
  v20 = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
  v21 = "placement.timer";
  v22 = 15;
  mlir::Dialect::addType(a1, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, &v10);
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

uint64_t _ZN4llvm12function_refIFN4mlir4TypeES2_NS_8ArrayRefINS1_9AttributeEEENS3_IS2_EEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9placement15TimerHandleTypeES2_NSC_6detail22TimerHandleTypeStorageENSA_11TypeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S5_S6_E_EES2_lS2_S5_S6_(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a2 + 8);
  Context = mlir::Type::getContext(&v7);
  TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
  v8[1] = &Context;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_;
  v13[1] = v8;
  v12 = v2;
  v4 = HIDWORD(v2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * v2 + 8) ^ v4);
  v10[0] = &v12;
  v10[1] = v13;
  v11 = &v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(int **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 16;
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
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  *(Slow + 8) = v2;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(*(v6 + 1), Slow);
  }

  return Slow;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, void *a2)
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
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *Slow = 0;
  Slow[1] = v2;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], Slow);
  }

  return Slow;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::placement::anonymous namespace::inferMemrefTensorOpReturnTypes<mlir::placement::MemrefToTensorAdaptor>(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::{lambda(mlir::Type)#1}::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = mlir::UnrankedTensorType::get(a2);
  v4 = *(v2 + 8);
  if (v4 >= *(v2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v2 + 8 * v4) = v3;
  ++*(v2 + 8);
  return 1;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::placement::ReplacedOps::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v11, a3, a4);
  mlir::TypeRange::TypeRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

BOOL ODIE::Compiler::resolveImport(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v102 = *MEMORY[0x277D85DE8];
  v68 = a1;
  mlir::ODIE::Compiler::CoreML::ImportOp::getPath(&v68, &__src);
  if (v67)
  {
    if (!__src)
    {
      memset(&__dst, 0, sizeof(__dst));
      goto LABEL_130;
    }

    v5 = __len;
    if (__len > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_186;
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = __len;
    if (__len)
    {
      memmove(&__dst, __src, __len);
      __dst.__r_.__value_.__s.__data_[v5] = 0;
      if (v67)
      {
        goto LABEL_130;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      if (v67)
      {
        goto LABEL_130;
      }
    }
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 0;
    __dst.__r_.__value_.__s.__data_[0] = 0;
  }

  v69[0] = v68;
  v70[0] = mlir::ODIE::Compiler::CoreML::ImportOp::getToImport(v69);
  *v82 = mlir::SymbolRefAttr::getRootReference(v70);
  Value = mlir::StringAttr::getValue(v82);
  if (Value)
  {
    v8 = v7;
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_186;
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memmove(&__p, Value, v7);
    }

    __p.__r_.__value_.__s.__data_[v8] = 0;
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
  }

  v85.__pn_ = __p;
  NestedReferences = mlir::SymbolRefAttr::getNestedReferences(v70);
  if (v10)
  {
    v11 = NestedReferences;
    for (i = 8 * v10; i; i -= 8)
    {
      *v82 = *v11;
      __p.__r_.__value_.__r.__words[0] = mlir::SymbolRefAttr::getRootReference(v82);
      v13 = mlir::StringAttr::getValue(&__p);
      if (!v13)
      {
        memset(&__p, 0, sizeof(__p));
LABEL_33:
        if (std::__fs::filesystem::path::__filename(&v85).__size_)
        {
          std::string::push_back(&v85.__pn_, 47);
        }

        goto LABEL_35;
      }

      v15 = v14;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_186;
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      *(&__p.__r_.__value_.__s + 23) = v14;
      if (v14)
      {
        memmove(&__p, v13, v14);
        __p.__r_.__value_.__s.__data_[v15] = 0;
        v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_29:
          if (!v16 || __p.__r_.__value_.__s.__data_[0] != 47)
          {
            goto LABEL_33;
          }

          goto LABEL_46;
        }
      }

      else
      {
        __p.__r_.__value_.__s.__data_[0] = 0;
        v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }
      }

      if (!__p.__r_.__value_.__l.__size_ || *__p.__r_.__value_.__l.__data_ != 47)
      {
        goto LABEL_33;
      }

LABEL_46:
      if (SHIBYTE(v85.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        *v85.__pn_.__r_.__value_.__l.__data_ = 0;
        v85.__pn_.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v85.__pn_.__r_.__value_.__s.__data_[0] = 0;
        *(&v85.__pn_.__r_.__value_.__s + 23) = 0;
      }

LABEL_35:
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append[abi:nn200100]<char const*,0>(&v85.__pn_, p_p, (p_p + size));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v11;
    }
  }

  v71[0] = &v85;
  v71[1] = v69;
  if (!a3)
  {
LABEL_53:
    std::__fs::filesystem::__current_path(&v84, 0);
    v20 = std::__fs::filesystem::path::__root_directory(&v84);
    if (v20.__size_ <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v20.__size_ >= 0x17)
      {
        operator new();
      }

      *(&__p.__r_.__value_.__s + 23) = v20.__size_;
      if (v20.__size_)
      {
        memmove(&__p, v20.__data_, v20.__size_);
      }

      __p.__r_.__value_.__s.__data_[v20.__size_] = 0;
      *&v87 = *(&__p.__r_.__value_.__l + 2);
      *v86 = *&__p.__r_.__value_.__l.__data_;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21.__data_ = v86;
      }

      else
      {
        v21.__data_ = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21.__size_ = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21.__size_ = __p.__r_.__value_.__l.__size_;
      }

      if (std::__fs::filesystem::path::__compare(&v84, v21))
      {
        while (1)
        {
          resolveImportFile(mlir::ODIE::Compiler::CoreML::ImportOp,llvm::ArrayRef<std::__fs::filesystem::path>)::$_0::operator()(&__p, v71, &v84);
          if (v90 == 1)
          {
            break;
          }

          v23 = std::__fs::filesystem::path::__parent_path(&v84);
          if (v23.__size_ > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_186;
          }

          if (v23.__size_ >= 0x17)
          {
            operator new();
          }

          *(&__p.__r_.__value_.__s + 23) = v23.__size_;
          if (v23.__size_)
          {
            memmove(&__p, v23.__data_, v23.__size_);
          }

          __p.__r_.__value_.__s.__data_[v23.__size_] = 0;
          *v82 = __p.__r_.__value_.__l.__size_;
          v24 = __p.__r_.__value_.__r.__words[0];
          *&v82[7] = *(&__p.__r_.__value_.__r.__words[1] + 7);
          v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v84.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__pn_.__r_.__value_.__l.__data_);
          }

          v84.__pn_.__r_.__value_.__r.__words[0] = v24;
          v84.__pn_.__r_.__value_.__l.__size_ = *v82;
          *(&v84.__pn_.__r_.__value_.__r.__words[1] + 7) = *&v82[7];
          *(&v84.__pn_.__r_.__value_.__s + 23) = v25;
          if ((SBYTE7(v87) & 0x80u) == 0)
          {
            v22.__data_ = v86;
          }

          else
          {
            v22.__data_ = v86[0];
          }

          if ((SBYTE7(v87) & 0x80u) == 0)
          {
            v22.__size_ = BYTE7(v87);
          }

          else
          {
            v22.__size_ = v86[1];
          }

          if (!std::__fs::filesystem::path::__compare(&v84, v22))
          {
            goto LABEL_83;
          }
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          *v82 = __p;
          v82[24] = 1;
          if (SBYTE7(v87) < 0)
          {
            goto LABEL_108;
          }

LABEL_120:
          if (SHIBYTE(v84.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_109:
            operator delete(v84.__pn_.__r_.__value_.__l.__data_);
            if (SHIBYTE(v85.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_110;
            }

            goto LABEL_122;
          }

LABEL_121:
          if (SHIBYTE(v85.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_110;
          }

          goto LABEL_122;
        }

        v60 = __p.__r_.__value_.__r.__words[0];
        std::string::__init_copy_ctor_external(v82, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        v82[24] = 1;
        operator delete(v60);
        if ((SBYTE7(v87) & 0x80000000) == 0)
        {
          goto LABEL_120;
        }
      }

      else
      {
LABEL_83:
        mlir::emitError(*(v69[0] + 3), &__p);
        if (!__p.__r_.__value_.__r.__words[0])
        {
          goto LABEL_91;
        }

        *v82 = 3;
        *&v82[8] = "could not resolve this import to an existing, readable file : ";
        *&v82[16] = 62;
        if (v91 >= v92)
        {
          if (v90 > v82 || v90 + 24 * v91 <= v82)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v26 = v90 + 24 * v91;
        v27 = *v82;
        *(v26 + 2) = *&v82[16];
        *v26 = v27;
        ++v91;
        if (__p.__r_.__value_.__r.__words[0])
        {
          mlir::Diagnostic::operator<<(&__p.__r_.__value_.__r.__words[1], v69[0]);
          v82[0] = 0;
          v82[24] = 0;
          if (__p.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&__p);
          }
        }

        else
        {
LABEL_91:
          v82[0] = 0;
          v82[24] = 0;
        }

        if (v101[0] == 1)
        {
          if (v100 != v101)
          {
            free(v100);
          }

          v28 = v98;
          if (v98)
          {
            v29 = v99;
            v30 = v98;
            if (v99 != v98)
            {
              do
              {
                v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
              }

              while (v29 != v28);
              v30 = v98;
            }

            v99 = v28;
            operator delete(v30);
          }

          v31 = v96;
          if (v96)
          {
            v32 = v97;
            v33 = v96;
            if (v97 != v96)
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
              v33 = v96;
            }

            v97 = v31;
            operator delete(v33);
          }

          if (v90 != v93)
          {
            free(v90);
          }
        }

        if ((SBYTE7(v87) & 0x80000000) == 0)
        {
          goto LABEL_120;
        }
      }

LABEL_108:
      operator delete(v86[0]);
      if (SHIBYTE(v84.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_109;
      }

      goto LABEL_121;
    }

LABEL_186:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v19 = 24 * a3;
  while (1)
  {
    resolveImportFile(mlir::ODIE::Compiler::CoreML::ImportOp,llvm::ArrayRef<std::__fs::filesystem::path>)::$_0::operator()(&__p, v71, a2);
    if (v90 == 1)
    {
      break;
    }

    a2 += 24;
    v19 -= 24;
    if (!v19)
    {
      goto LABEL_53;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v38 = __p.__r_.__value_.__r.__words[0];
    std::string::__init_copy_ctor_external(v82, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v82[24] = 1;
    operator delete(v38);
    if (SHIBYTE(v85.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_110:
      operator delete(v85.__pn_.__r_.__value_.__l.__data_);
      v36 = v82[24];
      v37 = v82[24];
      if (v82[24] != 1)
      {
        goto LABEL_111;
      }

      goto LABEL_123;
    }
  }

  else
  {
    *v82 = __p;
    v82[24] = 1;
    if (SHIBYTE(v85.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_110;
    }
  }

LABEL_122:
  v36 = v82[24];
  v37 = v82[24];
  if (v82[24] != 1)
  {
LABEL_111:
    if ((v37 & 1) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_127;
  }

LABEL_123:
  if ((v82[23] & 0x80000000) == 0)
  {
    __p = *v82;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_125;
  }

  std::string::__init_copy_ctor_external(&__p, *v82, *&v82[8]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_125:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_126:
  __dst = __p;
  if ((v82[24] & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_127:
  if ((v82[23] & 0x80000000) != 0)
  {
    operator delete(*v82);
  }

LABEL_129:
  if (!v36)
  {
    v50 = 0;
    goto LABEL_190;
  }

LABEL_130:
  LOWORD(v91) = 260;
  __p.__r_.__value_.__r.__words[0] = &__dst;
  llvm::MemoryBuffer::getFile(&__p, 0, 1, 0, 0, v80);
  if ((v81 & 1) == 0)
  {
    v45 = v80[0];
    v80[0] = 0;
    llvm::MemoryBufferRef::MemoryBufferRef(&__p, v45);
    isBytecode = mlir::isBytecode(&__p);
    v47 = v68;
    if (isBytecode)
    {
      llvm::MemoryBufferRef::MemoryBufferRef(&v63, v45);
      v79 = v47;
      *v86 = 0u;
      v87 = 0u;
      v88[0] = v88;
      v88[1] = v88;
      memset(&v88[2], 0, 24);
      do
      {
        v48 = v47[2];
        if (!v48)
        {
          break;
        }

        ParentOp = mlir::Block::getParentOp(v48);
        v47 = ParentOp;
        if (!ParentOp)
        {
          break;
        }
      }

      while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v75 = 0;
      v73 = 0u;
      *v74 = 0u;
      *v71 = 0u;
      *v72 = 0u;
      __p.__r_.__value_.__r.__words[0] = &unk_286893B98;
      __p.__r_.__value_.__l.__size_ = &v79;
      v90 = &__p;
      mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement();
    }

    llvm::MemoryBufferRef::MemoryBufferRef(&v85, v45);
    v59 = *&v85.__pn_.__r_.__value_.__l.__data_;
    memset(v82, 0, sizeof(v82));
    v83[0] = v83;
    v83[1] = v83;
    memset(&v83[2], 0, 24);
    __p.__r_.__value_.__r.__words[0] = mlir::Attribute::getContext((v47 + 3));
    __p.__r_.__value_.__s.__data_[8] = 1;
    v90 = 0;
    __p.__r_.__value_.__r.__words[2] = 0;
    v91 = 0;
    v93[0] = 0;
    v93[1] = v94;
    v93[2] = 0x600000000;
    v94[6] = &v95;
    v94[7] = 0x600000000;
    mlir::parseSourceString(v59, *(&v59 + 1), v82, &__p, "", 0, 0);
    mlir::ParserConfig::~ParserConfig(&__p);
  }

  mlir::emitError(v68[3], &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    *v82 = 3;
    *&v82[8] = "opening file ";
    *&v82[16] = 13;
    if (v91 >= v92)
    {
      if (v90 > v82 || v90 + 24 * v91 <= v82)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v39 = v90 + 24 * v91;
    v40 = *v82;
    *(v39 + 2) = *&v82[16];
    *v39 = v40;
    ++v91;
    if (__p.__r_.__value_.__r.__words[0])
    {
      LOWORD(v83[0]) = 260;
      *v82 = &__dst;
      mlir::Diagnostic::operator<<(&__p.__r_.__value_.__l.__size_, v82);
      if (__p.__r_.__value_.__r.__words[0])
      {
        *v82 = 3;
        *&v82[8] = " failed: ";
        *&v82[16] = 9;
        if (v91 >= v92)
        {
          if (v90 > v82 || v90 + 24 * v91 <= v82)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v41 = v90 + 24 * v91;
        v42 = *v82;
        *(v41 + 2) = *&v82[16];
        *v41 = v42;
        ++v91;
      }
    }
  }

  if (v81)
  {
    v44 = v80[0];
    v43 = v80[1];
  }

  else
  {
    v43 = std::system_category();
    v44 = 0;
  }

  v84.__pn_.__r_.__value_.__r.__words[0] = v44;
  v84.__pn_.__r_.__value_.__l.__size_ = v43;
  std::error_code::message(&v85.__pn_, &v84);
  if (__p.__r_.__value_.__r.__words[0])
  {
    LOWORD(v83[0]) = 260;
    *v82 = &v85;
    mlir::Diagnostic::operator<<(&__p.__r_.__value_.__l.__size_, v82);
  }

  v50 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
  if (SHIBYTE(v85.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__pn_.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    mlir::InFlightDiagnostic::report(&__p);
  }

  if (v101[0] == 1)
  {
    if (v100 != v101)
    {
      free(v100);
    }

    v51 = v98;
    if (v98)
    {
      v52 = v99;
      v53 = v98;
      if (v99 != v98)
      {
        do
        {
          v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
        }

        while (v52 != v51);
        v53 = v98;
      }

      v99 = v51;
      operator delete(v53);
    }

    v54 = v96;
    if (v96)
    {
      v55 = v97;
      v56 = v96;
      if (v97 != v96)
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
        v56 = v96;
      }

      v97 = v54;
      operator delete(v56);
    }

    if (v90 != v93)
    {
      free(v90);
    }
  }

  if ((v81 & 1) == 0)
  {
    v61 = v80[0];
    v80[0] = 0;
    if (v61)
    {
      (*(*v61 + 8))(v61);
    }
  }

LABEL_190:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v50;
}

void resolveImportFile(mlir::ODIE::Compiler::CoreML::ImportOp,llvm::ArrayRef<std::__fs::filesystem::path>)::$_0::operator()(std::__fs::filesystem::path *a1, uint64_t a2, uint64_t a3)
{
  v62 = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  __ec.__val_ = 0;
  v6 = std::system_category();
  __ec.__cat_ = v6;
  v7 = *a2;
  memset(&__replacement, 0, sizeof(__replacement));
  std::string::append[abi:nn200100]<char const*,0>(&__replacement.__pn_, "mlir", "");
  v8 = std::__fs::filesystem::path::replace_extension(v7, &__replacement);
  if (SHIBYTE(v8->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, v8->__pn_.__r_.__value_.__l.__data_, v8->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = *&v8->__pn_.__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v8->__pn_.__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v9;
  }

  v10 = *a2;
  memset(&v47, 0, sizeof(v47));
  std::string::append[abi:nn200100]<char const*,0>(&v47.__pn_, "mlirbc", "");
  v11 = std::__fs::filesystem::path::replace_extension(v10, &v47);
  if ((SHIBYTE(v11->__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v12 = *&v11->__pn_.__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v11->__pn_.__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v12;
    if ((SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  std::string::__init_copy_ctor_external(&v61, v11->__pn_.__r_.__value_.__l.__data_, v11->__pn_.__r_.__value_.__l.__size_);
  if (SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_6:
    operator delete(v47.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_7:
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::operator/[abi:nn200100](&v60, a3, &__replacement);
  std::__fs::filesystem::__status(&__replacement, &__ec);
  v13 = v47.__pn_.__r_.__value_.__s.__data_[0];
  if (v47.__pn_.__r_.__value_.__s.__data_[0])
  {
    __ec.__val_ = 0;
    __ec.__cat_ = v6;
  }

  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    if (!v13)
    {
      goto LABEL_27;
    }
  }

  else if (!v47.__pn_.__r_.__value_.__s.__data_[0])
  {
    goto LABEL_27;
  }

  if (v13 == 255)
  {
    goto LABEL_27;
  }

  std::__fs::filesystem::operator/[abi:nn200100](&v60, a3, &v47);
  if ((SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    __replacement = v47;
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  std::string::__init_copy_ctor_external(&__replacement.__pn_, v47.__pn_.__r_.__value_.__l.__data_, v47.__pn_.__r_.__value_.__l.__size_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_20:
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_21:
  __p = __replacement;
  *(&__replacement.__pn_.__r_.__value_.__s + 23) = 0;
  __replacement.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__pn_.__r_.__value_.__l.__data_);
    if (!__ec.__val_)
    {
      goto LABEL_27;
    }

LABEL_39:
    mlir::emitWarning(*(**(a2 + 8) + 24), &__replacement);
    if (__replacement.__pn_.__r_.__value_.__r.__words[0])
    {
      LODWORD(v47.__pn_.__r_.__value_.__l.__data_) = 3;
      v47.__pn_.__r_.__value_.__l.__size_ = "while checking ";
      v47.__pn_.__r_.__value_.__r.__words[2] = 15;
      if (v51 >= v52)
      {
        if (v50 > &v47 || v50 + 24 * v51 <= &v47)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v16 = v50 + 24 * v51;
      v17 = *&v47.__pn_.__r_.__value_.__l.__data_;
      *(v16 + 2) = *(&v47.__pn_.__r_.__value_.__l + 2);
      *v16 = v17;
      ++v51;
      if (__replacement.__pn_.__r_.__value_.__r.__words[0])
      {
        v48 = 260;
        v47.__pn_.__r_.__value_.__r.__words[0] = &__p;
        mlir::Diagnostic::operator<<(&__replacement.__pn_.__r_.__value_.__l.__size_, &v47);
        if (__replacement.__pn_.__r_.__value_.__r.__words[0])
        {
          LODWORD(v47.__pn_.__r_.__value_.__l.__data_) = 3;
          v47.__pn_.__r_.__value_.__l.__size_ = " for existence: ";
          v47.__pn_.__r_.__value_.__r.__words[2] = 16;
          if (v51 >= v52)
          {
            if (v50 > &v47 || v50 + 24 * v51 <= &v47)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v50 + 24 * v51;
          v19 = *&v47.__pn_.__r_.__value_.__l.__data_;
          *(v18 + 2) = *(&v47.__pn_.__r_.__value_.__l + 2);
          *v18 = v19;
          ++v51;
        }
      }
    }

    std::error_code::message(&v44, &__ec);
    if (__replacement.__pn_.__r_.__value_.__r.__words[0])
    {
      v48 = 260;
      v47.__pn_.__r_.__value_.__r.__words[0] = &v44;
      mlir::Diagnostic::operator<<(&__replacement.__pn_.__r_.__value_.__l.__size_, &v47);
    }

    a1->__pn_.__r_.__value_.__s.__data_[0] = 0;
    a1[1].__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (__replacement.__pn_.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&__replacement);
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
      }

      v20 = v56;
      if (v56)
      {
        v21 = v57;
        v22 = v56;
        if (v57 != v56)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = v56;
        }

        v57 = v20;
        operator delete(v22);
      }

      v23 = v54;
      if (v54)
      {
        v24 = v55;
        v25 = v54;
        if (v55 != v54)
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
          v25 = v54;
        }

        v55 = v23;
        operator delete(v25);
      }

      if (v50 != v53)
      {
        free(v50);
      }
    }

    v15 = 0;
    goto LABEL_72;
  }

  if (__ec.__val_)
  {
    goto LABEL_39;
  }

LABEL_27:
  std::__fs::filesystem::operator/[abi:nn200100](&v61, a3, &__replacement);
  std::__fs::filesystem::__status(&__replacement, &__ec);
  v14 = v47.__pn_.__r_.__value_.__s.__data_[0];
  if (v47.__pn_.__r_.__value_.__s.__data_[0])
  {
    __ec.__val_ = 0;
    __ec.__cat_ = v6;
  }

  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
  }

  v15 = 1;
  if (!v14 || v14 == 255)
  {
    goto LABEL_72;
  }

  std::__fs::filesystem::operator/[abi:nn200100](&v61, a3, &v47);
  if ((SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    __replacement = v47;
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  std::string::__init_copy_ctor_external(&__replacement.__pn_, v47.__pn_.__r_.__value_.__l.__data_, v47.__pn_.__r_.__value_.__l.__size_);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_35:
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_36:
  __p = __replacement;
  *(&__replacement.__pn_.__r_.__value_.__s + 23) = 0;
  __replacement.__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__pn_.__r_.__value_.__l.__data_);
  }

  if (__ec.__val_)
  {
    goto LABEL_39;
  }

LABEL_72:
  if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_77:
    operator delete(v60.__r_.__value_.__l.__data_);
    if (!v15)
    {
      goto LABEL_118;
    }

    goto LABEL_78;
  }

  operator delete(v61.__r_.__value_.__l.__data_);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_77;
  }

LABEL_74:
  if (!v15)
  {
    goto LABEL_118;
  }

LABEL_78:
  size = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__pn_.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    a1->__pn_.__r_.__value_.__s.__data_[0] = 0;
    a1[1].__pn_.__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_118;
  }

  memset(&__replacement, 0, sizeof(__replacement));
  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  std::string::append[abi:nn200100]<char const*,0>(&__replacement.__pn_, &p_p->__pn_, (&p_p->__pn_ + size));
  std::__fs::filesystem::__status(&__replacement, &__ec);
  v30 = WORD2(v60.__r_.__value_.__r.__words[0]);
  if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    if ((v30 & 0x100) == 0)
    {
LABEL_86:
      mlir::emitWarning(*(**(a2 + 8) + 24), &__replacement);
      if (__replacement.__pn_.__r_.__value_.__r.__words[0] && (LOWORD(v61.__r_.__value_.__r.__words[1]) = 260, v60.__r_.__value_.__r.__words[0] = &__p, mlir::Diagnostic::operator<<(&__replacement.__pn_.__r_.__value_.__l.__size_, &v60), __replacement.__pn_.__r_.__value_.__r.__words[0]))
      {
        LODWORD(v60.__r_.__value_.__l.__data_) = 3;
        v60.__r_.__value_.__l.__size_ = " is not readable by this user";
        v60.__r_.__value_.__r.__words[2] = 29;
        if (v51 >= v52)
        {
          if (v50 > &v60 || v50 + 24 * v51 <= &v60)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v50 + 24 * v51;
        v32 = *&v60.__r_.__value_.__l.__data_;
        *(v31 + 2) = *(&v60.__r_.__value_.__l + 2);
        *v31 = v32;
        ++v51;
        v33 = __replacement.__pn_.__r_.__value_.__r.__words[0];
        a1->__pn_.__r_.__value_.__s.__data_[0] = 0;
        a1[1].__pn_.__r_.__value_.__s.__data_[0] = 0;
        if (v33)
        {
          mlir::InFlightDiagnostic::report(&__replacement);
        }
      }

      else
      {
        a1->__pn_.__r_.__value_.__s.__data_[0] = 0;
        a1[1].__pn_.__r_.__value_.__s.__data_[0] = 0;
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

        if (v50 != v53)
        {
          free(v50);
        }
      }

      goto LABEL_118;
    }
  }

  else if ((v60.__r_.__value_.__r.__words[0] & 0x10000000000) == 0)
  {
    goto LABEL_86;
  }

  memset(&__replacement, 0, sizeof(__replacement));
  v34 = SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &__p;
  }

  else
  {
    v35 = __p.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = __p.__pn_.__r_.__value_.__l.__size_;
  }

  std::string::append[abi:nn200100]<char const*,0>(&__replacement.__pn_, &v35->__pn_, (&v35->__pn_ + v34));
  *a1 = __replacement;
  a1[1].__pn_.__r_.__value_.__s.__data_[0] = 1;
LABEL_118:
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }
}

mlir::Block *mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(uint64_t a1)
{
  while (1)
  {
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }

    result = mlir::Block::getParentOp(result);
    if (!result)
    {
      return result;
    }

    a1 = result;
    if (mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(result))
    {
      if (*(a1 + 47) && (InherentAttr = mlir::Operation::getInherentAttr(a1, "sym_name", 8), (v4 & 1) != 0))
      {
        if (InherentAttr)
        {
          goto LABEL_9;
        }
      }

      else if (mlir::DictionaryAttr::contains(a1 + 56, "sym_name", 8uLL))
      {
LABEL_9:
        mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
        return a1;
      }
    }
  }
}

uint64_t llvm::MapVector<mlir::SymbolOpInterface,llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>,llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolOpInterface,llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>>,0u>>::try_emplace<llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>&>(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v12 = *a2;
  v13 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>,mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::try_emplace<unsigned int>(a1, &v12, &v13, &v14);
  if (v15 != 1)
  {
    return *(a1 + 24) + 80 * *(v14 + 16);
  }

  v6 = *(a1 + 32);
  *(v14 + 16) = v6;
  *&v12 = a2;
  if (v6 >= *(a1 + 36))
  {
    llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolOpInterface,llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::SymbolOpInterface const&>,std::tuple<llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>&>>();
  }

  v7 = *(a1 + 24) + 80 * v6;
  *v7 = *a2;
  *(v7 + 16) = v7 + 32;
  *(v7 + 24) = 0x600000000;
  v8 = *(a3 + 8);
  if (v7 + 16 != a3 && v8 != 0)
  {
    if (v8 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy((v7 + 32), *a3, 8 * *(a3 + 8));
    *(v7 + 24) = v8;
  }

  v11 = *(a1 + 32) + 1;
  *(a1 + 32) = v11;
  return *(a1 + 24) + 80 * v11 - 80;
}

uint64_t llvm::MapVector<mlir::SymbolOpInterface,llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>,llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>,llvm::SmallVector<std::pair<mlir::SymbolOpInterface,llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>>,0u>>::operator[](uint64_t a1, __int128 *a2)
{
  v21[7] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14[0] = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>,mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::try_emplace<unsigned int>(a1, &v13, v14, &v11);
  v4 = v11;
  if (v12)
  {
    v5 = *(a1 + 24);
    v15 = v17;
    v16 = 0x600000000;
    v18 = *a2;
    v19 = v21;
    v20 = 0x600000000;
    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 36))
    {
      if (v5 > &v18 || v5 + 80 * v6 <= &v18)
      {
        llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolOpInterface,llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>>,false>::grow();
      }

      llvm::SmallVectorTemplateBase<std::pair<mlir::SymbolOpInterface,llvm::SmallVector<mlir::FlatSymbolRefAttr,6u>>,false>::grow();
    }

    v7 = v5 + 80 * *(a1 + 32);
    *v7 = v18;
    *(v7 + 24) = 0x600000000;
    *(v7 + 16) = v7 + 32;
    v8 = v7 + 16;
    if (v20)
    {
      llvm::SmallVectorImpl<unsigned long>::operator=(v8, &v19);
    }

    ++*(a1 + 32);
    if (v19 != v21)
    {
      free(v19);
    }

    if (v15 != v17)
    {
      free(v15);
    }

    v9 = *(a1 + 32) - 1;
    *(v4 + 16) = v9;
  }

  else
  {
    v9 = *(v11 + 16);
  }

  return *(a1 + 24) + 80 * v9 + 16;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEE3__0NS2_13SymbolRefAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISJ_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSG_E_NS_9allocatorISU_EEFNSL_INSM_ISG_SN_EEEESG_EE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286893B98;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEE3__0NS2_13SymbolRefAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISJ_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSG_E_NS_9allocatorISU_EEFNSL_INSM_ISG_SN_EEEESG_EEclEOSG_(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*(**a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v20 = **(a1 + 8);
    v21 = v4;
    v22 = mlir::ODIE::Compiler::CoreML::ImportOp::getToImport(&v20);
    RootReference = mlir::SymbolRefAttr::getRootReference(&v22);
    if (RootReference != *(v20 + 16 * ((*(v20 + 44) >> 23) & 1) + 72))
    {
      v7 = mlir::SymbolRefAttr::getRootReference(&v21);
      if (v7 == *(v20 + 16 * ((*(v20 + 44) >> 23) & 1) + 72))
      {
        v19 = mlir::ODIE::Compiler::CoreML::ImportOp::getToImport(&v20);
        NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v19);
        v9 = mlir::SymbolRefAttr::getNestedReferences(&v19);
        v11 = (v9 + 8 * v10);
        v22 = v24;
        v23 = 0x600000000;
        if (((v11 - NestedReferences) >> 3) >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = 0;
        if (v11 != NestedReferences)
        {
          memcpy(v22, NestedReferences, v11 - NestedReferences);
          v12 = v23;
        }

        LODWORD(v23) = v12 + ((v11 - NestedReferences) >> 3);
        v13 = mlir::SymbolRefAttr::getNestedReferences(&v21);
        v14 = mlir::SymbolRefAttr::getNestedReferences(&v21);
        v16 = (v14 + 8 * v15);
        v17 = v23;
        if (v23 + ((v16 - v13) >> 3) > HIDWORD(v23))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v16 != v13)
        {
          memcpy(v22 + 8 * v23, v13, v16 - v13);
          v17 = v23;
        }

        LODWORD(v23) = v17 + ((v16 - v13) >> 3);
        v18 = mlir::SymbolRefAttr::getRootReference(&v19);
        v4 = mlir::SymbolRefAttr::get(v18, v22, v23);
        if (v22 != v24)
        {
          free(v22);
        }
      }

      else
      {
        v4 = v21;
      }
    }

    *a3 = v4;
    v5 = 1;
    *(a3 + 8) = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20AttrTypeReplacerBaseINS2_16AttrTypeReplacerEE14addReplacementIZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEE3__0NS2_13SymbolRefAttrENS2_9AttributeESF_EENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NS_8optionalINS_4pairISJ_NS2_10WalkResultEEEEEEEvE4typeEOT_EUlSG_E_NS_9allocatorISU_EEFNSL_INSM_ISG_SN_EEEESG_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEE3$_0NS_13SymbolRefAttrENS_9AttributeESC_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSE_8optionalINSE_4pairISH_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSD_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEE3$_0NS_13SymbolRefAttrENS_9AttributeESC_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSE_8optionalINSE_4pairISH_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSD_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEE3$_0NS_13SymbolRefAttrENS_9AttributeESC_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSE_8optionalINSE_4pairISH_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSD_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20AttrTypeReplacerBaseINS_16AttrTypeReplacerEE14addReplacementIZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEE3$_0NS_13SymbolRefAttrENS_9AttributeESC_EENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Entsr3stdE16is_convertible_vIT2_NSE_8optionalINSE_4pairISH_NS_10WalkResultEEEEEEEvE4typeEOT_EUlSD_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<readBytecodeImport(mlir::ODIE::Compiler::CoreML::ImportOp,llvm::MemoryBufferRef)::$_1>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a2;
  mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::replaceElementsIn();
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3__1clEPNS2_9OperationEEUlNS2_13SymbolRefAttrEE_SE_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFNS2_10WalkResultESG_EE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286893C18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3__1clEPNS2_9OperationEEUlNS2_13SymbolRefAttrEE_SE_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFNS2_10WalkResultESG_EEclEOSG_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 1;
  }

  v7 = *a2;
  if (!isSymbolExpectedInImport(v3, **(a1 + 8)))
  {
    return 1;
  }

  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::operator[](*(a1 + 16), &v7);
  v6 = *(v5 + 8);
  if (v6 > 9)
  {
    return 1;
  }

  if (v6 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v5 + 8 * v6) = *(**(a1 + 24) + 24);
  ++*(v5 + 8);
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3__1clEPNS2_9OperationEEUlNS2_13SymbolRefAttrEE_SE_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSG_E_NS_9allocatorISP_EEFNS2_10WalkResultESG_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir14AttrTypeWalker7addWalkIZZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3$_1clEPNS_9OperationEEUlNS_13SymbolRefAttrEE_SB_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir14AttrTypeWalker7addWalkIZZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3$_1clEPNS_9OperationEEUlNS_13SymbolRefAttrEE_SB_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir14AttrTypeWalker7addWalkIZZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3$_1clEPNS_9OperationEEUlNS_13SymbolRefAttrEE_SB_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir14AttrTypeWalker7addWalkIZZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3$_1clEPNS_9OperationEEUlNS_13SymbolRefAttrEE_SB_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSD_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t isSymbolExpectedInImport(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = a1;
  v18 = mlir::ODIE::Compiler::CoreML::ImportOp::getToImport(&v19);
  RootReference = mlir::SymbolRefAttr::getRootReference(&v20);
  if (RootReference == *(v19 + 16 * ((*(v19 + 44) >> 23) & 1) + 72))
  {
    return 1;
  }

  v5 = mlir::SymbolRefAttr::getRootReference(&v18);
  if (v5 != mlir::SymbolRefAttr::getRootReference(&v20))
  {
    return 0;
  }

  mlir::SymbolRefAttr::getNestedReferences(&v20);
  v7 = v6;
  mlir::SymbolRefAttr::getNestedReferences(&v18);
  if (v7 < v8)
  {
    return 0;
  }

  NestedReferences = mlir::SymbolRefAttr::getNestedReferences(&v18);
  v11 = v10;
  v12 = mlir::SymbolRefAttr::getNestedReferences(&v20);
  if (v11)
  {
    v13 = 8 * v11 - 8;
    do
    {
      v15 = *NestedReferences++;
      v14 = v15;
      v16 = *v12++;
      v17 = v14 == v16;
      v3 = v14 == v16;
      v17 = !v17 || v13 == 0;
      v13 -= 8;
    }

    while (!v17);
    return v3;
  }

  return 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 104 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v10 = 0;
    v11 = 1;
    while (v6 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == -8192;
      }

      if (v12)
      {
        v10 = v5;
      }

      v13 = v4 + v11++;
      v4 = v13 & v3;
      v5 = *a1 + 104 * (v13 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
      }
    }

    if (v10)
    {
      v5 = v10;
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v14 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v14 = a2;
LABEL_24:
    v15 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::LookupBucketFor<mlir::SymbolRefAttr>(v15, v14, &v16);
    a1 = v15;
    a2 = v14;
    v5 = v16;
    ++*(v15 + 8);
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
  v9 = *a2;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 88) = 0u;
  *v5 = v9;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0xA00000000;
  return v5 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::LookupBucketFor<mlir::SymbolRefAttr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 104 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
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
        v7 = (v4 + 104 * (v13 & v5));
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

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(104 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::moveFromOldBuckets(a1, v4, &v4[13 * v3]);

    llvm::deallocate_buffer(v4, (104 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 104 * v10 - 104;
    if (v11 < 0x68)
    {
      v12 = result;
LABEL_14:
      v16 = &result[13 * v10];
      do
      {
        *v12 = -4096;
        v12 += 13;
      }

      while (v12 != v16);
      return result;
    }

    v13 = v11 / 0x68 + 1;
    v12 = &result[13 * (v13 & 0x7FFFFFFFFFFFFFELL)];
    v14 = result;
    v15 = v13 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v14 = -4096;
      v14[13] = -4096;
      v14 += 26;
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 104 * v6 - 104;
    if (v8 < 0x68)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[13 * v6];
      do
      {
        *v9 = -4096;
        v9 += 13;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x68 + 1;
    v9 = &v7[13 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[13] = -4096;
      v11 += 26;
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
        v15 = *(a1 + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = (*a1 + 104 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -8192;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = (*a1 + 104 * (v23 & v15));
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v17 = v20;
          }
        }

LABEL_14:
        *v17 = v14;
        v17[1] = v17 + 3;
        v17[2] = 0xA00000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<unsigned long>::operator=((v17 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != v4 + 3)
        {
          free(v19);
        }
      }

      v4 += 13;
    }

    while (v4 != a3);
  }
}

__n128 _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3__1clEPNS2_9OperationEENKUlNS2_5ValueEE_clESE_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSI_E_NS_9allocatorISR_EEFNS2_10WalkResultESI_EE7__cloneEPNS0_6__baseISV_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286893C98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3__1clEPNS2_9OperationEENKUlNS2_5ValueEE_clESE_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSI_E_NS_9allocatorISR_EEFNS2_10WalkResultESI_EEclEOSI_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(**a2 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 1;
  }

  v8 = *a2;
  if (!isSymbolExpectedInImport(v3, **(a1 + 8)))
  {
    return 1;
  }

  v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>,mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseMapPair<mlir::SymbolRefAttr,BoundedVector<mlir::Location,10ul>>>::operator[](*(a1 + 16), &v8);
  Loc = mlir::Value::getLoc(*(a1 + 24));
  v7 = *(v5 + 8);
  if (v7 > 9)
  {
    return 1;
  }

  if (v7 >= *(v5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v5 + 8 * v7) = Loc;
  ++*(v5 + 8);
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir14AttrTypeWalker7addWalkIZZZL18readBytecodeImportNS2_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3__1clEPNS2_9OperationEENKUlNS2_5ValueEE_clESE_EUlNS2_13SymbolRefAttrEE_SG_NS2_9AttributeEvEENS_9enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSI_E_NS_9allocatorISR_EEFNS2_10WalkResultESI_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir14AttrTypeWalker7addWalkIZZZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3$_1clEPNS_9OperationEENKUlNS_5ValueEE_clESB_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSF_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir14AttrTypeWalker7addWalkIZZZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3$_1clEPNS_9OperationEENKUlNS_5ValueEE_clESB_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSF_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir14AttrTypeWalker7addWalkIZZZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3$_1clEPNS_9OperationEENKUlNS_5ValueEE_clESB_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSF_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir14AttrTypeWalker7addWalkIZZZL18readBytecodeImportNS_4ODIE8Compiler6CoreML8ImportOpEN4llvm15MemoryBufferRefEENK3$_1clEPNS_9OperationEENKUlNS_5ValueEE_clESB_EUlNS_13SymbolRefAttrEE_SD_NS_9AttributeEvEENSt3__19enable_ifIXoontsr3stdE9is_same_vIT0_T1_Esr3stdE9is_same_vIT2_vEEvE4typeEOT_EUlSF_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZL18readBytecodeImportNS1_4ODIE8Compiler6CoreML8ImportOpENS_15MemoryBufferRefEE3__4NS1_17SymbolOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(void ***a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    if (*(a2 + 47) && (result = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v5 & 1) != 0))
    {
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = mlir::DictionaryAttr::contains(a2 + 56, "sym_name", 8uLL);
      if (!result)
      {
        return result;
      }
    }

    result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v6 = result;
    if (a2 && *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
    {
      v7 = **a1;
      v8 = v7[2];
      v9 = v7[1];
      v10 = 32 * (v8 - v9) - 1;
      if (v8 == v9)
      {
        v10 = 0;
      }

      v11 = v7[5] + v7[4];
      if (v10 == v11)
      {
        result = std::deque<mlir::SymbolOpInterface>::__add_back_capacity(v7);
        v9 = v7[1];
        v11 = v7[5] + v7[4];
      }

      v12 = (*(v9 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11);
      *v12 = a2;
      v12[1] = v6;
      ++v7[5];
    }
  }

  return result;
}

void *std::deque<mlir::SymbolOpInterface>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>,mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
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
        *(v9 + 16) = *a3;
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
    llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::grow(result, v5);
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

_OWORD *llvm::DenseMap<mlir::SymbolOpInterface,unsigned int,llvm::DenseMapInfo<mlir::SymbolOpInterface,void>,llvm::detail::DenseMapPair<mlir::SymbolOpInterface,unsigned int>>::grow(uint64_t a1, int a2)
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
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (result + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_25736B1E0;
        *(v17 + 24) = xmmword_25736B1E0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v27 = *(a1 + 16) - 1;
              v28 = v27 & ((v26 >> 4) ^ (v26 >> 9));
              v25 = *a1 + 24 * v28;
              v29 = *v25;
              if (v26 != *v25)
              {
                v30 = 0;
                v31 = 1;
                while (v29 != -4096)
                {
                  if (v30)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v29 == -8192;
                  }

                  if (v32)
                  {
                    v30 = v25;
                  }

                  v33 = v28 + v31++;
                  v28 = v33 & v27;
                  v25 = *a1 + 24 * (v33 & v27);
                  v29 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v30)
                {
                  v25 = v30;
                }
              }

LABEL_26:
              *v25 = *v20;
              *(v25 + 16) = *(v20 + 4);
              ++*(a1 + 8);
            }

            v20 = (v20 + 24);
          }

          while (v20 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = (result + 24 * v10);
    do
    {
      *v12 = xmmword_25736B1E0;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_21:
      v24 = (result + 24 * v13);
      do
      {
        *v15 = xmmword_25736B1E0;
        v15 = (v15 + 24);
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = (result + 24 * (v21 & 0x1FFFFFFFFFFFFFFELL));
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = xmmword_25736B1E0;
      *(v22 + 24) = xmmword_25736B1E0;
      v22 += 3;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,mlir::ODIE::Compiler::CoreML::detail::ImportableOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
    v24 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v24);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v23 = ReferencedDialect;
      mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,mlir::ODIE::Compiler::CoreML::detail::ImportableOpInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v23;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,void>::resolveTypeID(void)::id;
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = v3;
    v21 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::CallableOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::FunctionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>>();
    v3 = v20;
    a1 = v21;
    v4 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,void>::resolveTypeID(void)::id;
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    if (!v6)
    {
      goto LABEL_23;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v14 = v7[1];
    if (v14)
    {
      return v14;
    }
  }

LABEL_23:
  v16 = *(v3 + 24);
  v17 = *(a1 + 48);
  {
    v22 = v17;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroResults<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroSuccessors<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::ZeroOperands<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::OpInvariants<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::BytecodeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::SymbolOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::CallableOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::FunctionOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::OpAsmOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>,mlir::ODIE::Compiler::CoreML::ImportableOpInterface::Trait<mlir::ODIE::Compiler::CoreML::GraphOp>>();
    v17 = v22;
  }

  v18 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,void>::resolveTypeID(void)::id;
  v19 = *(*v16 + 104);

  return v19(v16, v18, v17);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::SymbolRefAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseSetPair<mlir::SymbolRefAttr>>,mlir::SymbolRefAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::SymbolRefAttr,void>,llvm::detail::DenseSetPair<mlir::SymbolRefAttr>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE0ENS1_15ForwardIteratorEZL18readBytecodeImportNS1_4ODIE8Compiler6CoreML8ImportOpENS_15MemoryBufferRefEE3__6NS1_17SymbolOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result)
  {
    if (*(a2 + 47) && (result = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v5 & 1) != 0))
    {
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = mlir::DictionaryAttr::contains(a2 + 56, "sym_name", 8uLL);
      if (!result)
      {
        return result;
      }
    }

    result = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v6 = result;
    if (a2 && a2 != ***a1)
    {
      v7 = *(*a1 + 8);
      v8 = v7[2];
      v9 = v7[1];
      v10 = 32 * (v8 - v9) - 1;
      if (v8 == v9)
      {
        v10 = 0;
      }

      v11 = v7[5] + v7[4];
      if (v10 == v11)
      {
        result = std::deque<mlir::SymbolOpInterface>::__add_back_capacity(v7);
        v9 = v7[1];
        v11 = v7[5] + v7[4];
      }

      v12 = (*(v9 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11);
      *v12 = a2;
      v12[1] = v6;
      ++v7[5];
    }
  }

  return result;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZL14readTextImportNS1_4ODIE8Compiler6CoreML8ImportOpENS_15MemoryBufferRefEE3__0NSD_21ImportableOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,mlir::ODIE::Compiler::CoreML::detail::ImportableOpInterfaceInterfaceTraits>::getInterfaceFor(a2) && a2)
  {
    v3[0] = a2;
    v3[1] = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ImportableOpInterface,mlir::ODIE::Compiler::CoreML::detail::ImportableOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    if ((mlir::ODIE::Compiler::CoreML::ImportableOpInterface::canBeImported(v3) & 1) == 0)
    {
      mlir::Operation::erase(v3[0]);
    }
  }
}

void mlir::ODIE::Compiler::CoreML::Specializer::~Specializer(mlir::ODIE::Compiler::CoreML::Specializer *this)
{
  if (*(this + 10))
  {
    v2 = *(this + 12);
    if (v2)
    {
      v3 = 24 * v2;
      v4 = *(this + 4);
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v4 += 3;
        v3 -= 24;
        if (!v3)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v4 = *(this + 4);
    }

    v5 = *(this + 4) + 24 * v2;
    while (v4 != v5)
    {
      v6 = v4[1];
      v7 = *(v6 + 2);
      if (!v7 || !mlir::Block::getParentOp(v7))
      {
        mlir::Operation::erase(v6);
      }

      do
      {
        v4 += 3;
      }

      while (v4 != v5 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_6:
  std::deque<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>::~deque[abi:nn200100](this + 104);
  llvm::deallocate_buffer(*(this + 10), (16 * *(this + 24)));
}

BOOL mlir::ODIE::Compiler::CoreML::Specializer::specializeFrom(mlir::ODIE::Compiler::CoreML::Specializer *this, mlir::Operation *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (v4 == a2 || (mlir::Operation::isProperAncestor(v4, a2) & 1) != 0)
  {
    v23[0] = this;
    mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::Specializer::specializeFrom(mlir::Operation *)::$_0>, v23, 1);
    do
    {
      v5 = *(this + 18);
      if (!v5)
      {
        return 1;
      }

      v6 = *(this + 14);
      v7 = *(this + 17);
      v8 = (*(v6 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      *(this + 17) = ++v7;
      *(this + 18) = v5 - 1;
      if (v7 >= 0x200)
      {
        operator delete(*v6);
        *(this + 14) += 8;
        *(this + 17) -= 256;
      }
    }

    while ((mlir::ODIE::Compiler::CoreML::Specializer::specializeBinding(this, v9, v10) & 1) != 0);
    return 0;
  }

  else
  {
    v21 = "expected the specialization entrypoint to be within the provided module";
    v22 = 259;
    mlir::Operation::emitError(v23, a2, &v21);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v29;
        v14 = __p;
        if (v29 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v29 = v12;
        operator delete(v14);
      }

      v15 = v26;
      if (v26)
      {
        v16 = v27;
        v17 = v26;
        if (v27 != v26)
        {
          do
          {
            v19 = *--v16;
            v18 = v19;
            *v16 = 0;
            if (v19)
            {
              MEMORY[0x259C63150](v18, 0x1000C8077774924);
            }
          }

          while (v16 != v15);
          v17 = v26;
        }

        v27 = v15;
        operator delete(v17);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }
  }

  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::Specializer::specializeBinding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v50 = a3;
  SymbolRef = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getSymbolRef(&v50);
  if (SymbolRef)
  {
    v48 = 0uLL;
    v51 = &v48;
    v52 = a1;
    p_SymbolRef = &SymbolRef;
    v5 = mlir::detail::walk<mlir::ForwardIterator>(*a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::Specializer::specializeBinding(mlir::ODIE::Compiler::CoreML::PendingSpecialization)::$_1>, &v51, 0);
    if (v48)
    {
      BindingAbsolute = mlir::ODIE::Compiler::CoreML::Specializer::makeBindingAbsolute(v5, v48, *(*(&v48 + 1) + 48), v50);
      v47 = BindingAbsolute;
      if (v50 != BindingAbsolute)
      {
        v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::operator[](a1 + 80, &v50);
        BindingAbsolute = v47;
        *v7 = v47;
      }

      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      if (v9)
      {
        v10 = v9 - 1;
        v11 = ((BindingAbsolute >> 4) ^ (BindingAbsolute >> 9)) & v10;
        v12 = *(v8 + 24 * v11);
        if (BindingAbsolute == v12)
        {
          return 1;
        }

        v36 = a1;
        v37 = 1;
        while (1)
        {
          a1 = v36;
          if (v12 == -4096)
          {
            break;
          }

          v38 = v11 + v37++;
          v11 = v38 & v10;
          v12 = *(v8 + 24 * v11);
          v13 = 1;
          if (BindingAbsolute == v12)
          {
            return v13;
          }
        }
      }

      v39 = llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::operator[](a1 + 56, &v47);
      *v39 = v48;
      v46[0] = 0;
      v46[1] = 0;
      v46[2] = 0x1000000000;
      v45 = 0;
      v43 = 0u;
      *v44 = 0u;
      *v41 = 0u;
      *v42 = 0u;
      v51 = &unk_286893D98;
      v52 = v46;
      v54 = &v51;
      mlir::detail::AttrTypeReplacerBase<mlir::AttrTypeReplacer>::addReplacement();
    }

    mlir::emitError(a2, &v51);
    if (v51)
    {
      LODWORD(v41[0]) = 3;
      v41[1] = "could not resolve referred-to symbol: ";
      v42[0] = 38;
      if (v55 >= v56)
      {
        if (v54 > v41 || &v54[3 * v55] <= v41)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = &v54[3 * v55];
      v27 = *v41;
      v26[2] = v42[0];
      *v26 = v27;
      ++v55;
      if (v51)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(v41, SymbolRef);
        if (v55 >= v56)
        {
          if (v54 > v41 || &v54[3 * v55] <= v41)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v28 = &v54[3 * v55];
        v29 = *v41;
        v28[2] = v42[0];
        *v28 = v29;
        ++v55;
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v61;
        v32 = __p;
        if (v61 != __p)
        {
          do
          {
            v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v61 = v30;
        operator delete(v32);
      }

      v21 = v58;
      if (!v58)
      {
        goto LABEL_52;
      }

      v33 = v59;
      v23 = v58;
      if (v59 == v58)
      {
LABEL_51:
        v59 = v21;
        operator delete(v23);
LABEL_52:
        if (v54 != &v57)
        {
          free(v54);
        }

        return v13;
      }

      do
      {
        v35 = *--v33;
        v34 = v35;
        *v33 = 0;
        if (v35)
        {
          MEMORY[0x259C63150](v34, 0x1000C8077774924);
        }
      }

      while (v33 != v21);
LABEL_50:
      v23 = v58;
      goto LABEL_51;
    }
  }

  else
  {
    mlir::emitError(a2, &v51);
    if (v51)
    {
      LODWORD(v41[0]) = 3;
      v41[1] = "could not lookup the concrete symbol for this binding: ";
      v42[0] = 55;
      if (v55 >= v56)
      {
        if (v54 > v41 || &v54[3 * v55] <= v41)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v14 = &v54[3 * v55];
      v15 = *v41;
      v14[2] = v42[0];
      *v14 = v15;
      ++v55;
      if (v51)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(v41, v50);
        if (v55 >= v56)
        {
          if (v54 > v41 || &v54[3 * v55] <= v41)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = &v54[3 * v55];
        v17 = *v41;
        v16[2] = v42[0];
        *v16 = v17;
        ++v55;
      }
    }

    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v61;
        v20 = __p;
        if (v61 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v61 = v18;
        operator delete(v20);
      }

      v21 = v58;
      if (!v58)
      {
        goto LABEL_52;
      }

      v22 = v59;
      v23 = v58;
      if (v59 == v58)
      {
        goto LABEL_51;
      }

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
      goto LABEL_50;
    }
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::Specializer::specializeFrom(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[15];
  v7 = a1[14];
  v8 = 32 * (v6 - v7) - 1;
  if (v6 == v7)
  {
    v8 = 0;
  }

  v9 = a1[18] + a1[17];
  if (v8 == v9)
  {
    std::deque<mlir::SymbolOpInterface>::__add_back_capacity(a1 + 13);
    v7 = a1[14];
    v9 = a1[18] + a1[17];
  }

  v10 = (*(v7 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9);
  *v10 = a2;
  v10[1] = a3;
  v11 = a1[18];
  v12 = __CFADD__(v11, 1);
  v13 = v11 + 1;
  a1[18] = v13;
  if (v12)
  {
    return 1;
  }

  while (1)
  {
    v15 = a1[14];
    v16 = a1[17];
    v17 = (*(v15 + ((v16 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    a1[17] = ++v16;
    a1[18] = v13 - 1;
    if (v16 >= 0x200)
    {
      operator delete(*v15);
      a1[14] += 8;
      a1[17] -= 256;
    }

    if ((mlir::ODIE::Compiler::CoreML::Specializer::specializeBinding(a1, v18, v19) & 1) == 0)
    {
      break;
    }

    v13 = a1[18];
    if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::Specializer::lookupSpecialization@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(result + 96);
  if (v3)
  {
    v4 = *(result + 80);
    v5 = v3 - 1;
    v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v4 + 16 * v6);
    if (v7 == a2)
    {
LABEL_3:
      v8 = *(v4 + 16 * v6 + 8);
      if (v8)
      {
        a2 = v8;
      }
    }

    else
    {
      v16 = 1;
      while (v7 != -4096)
      {
        v17 = v6 + v16++;
        v6 = v17 & v5;
        v7 = *(v4 + 16 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v9 = *(result + 32);
  v10 = *(result + 48);
  if (v10)
  {
    v11 = ((a2 >> 4) ^ (a2 >> 9)) & (v10 - 1);
    v12 = (v9 + 24 * v11);
    v13 = *v12;
    if (a2 == *v12)
    {
      goto LABEL_12;
    }

    v14 = 1;
    while (v13 != -4096)
    {
      v15 = v11 + v14++;
      v11 = v15 & (v10 - 1);
      v12 = (v9 + 24 * v11);
      v13 = *v12;
      if (a2 == *v12)
      {
        goto LABEL_12;
      }
    }
  }

  v12 = (v9 + 24 * v10);
LABEL_12:
  if (v12 == (v9 + 24 * v10))
  {
    *a3 = 0;
    a3[16] = 0;
  }

  else
  {
    *a3 = *(v12 + 1);
    a3[16] = 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::Specializer::lookupOriginal@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(result + 96);
  if (v3)
  {
    v4 = *(result + 80);
    v5 = v3 - 1;
    v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v7 = *(v4 + 16 * v6);
    if (v7 == a2)
    {
LABEL_3:
      v8 = *(v4 + 16 * v6 + 8);
      if (v8)
      {
        a2 = v8;
      }
    }

    else
    {
      v16 = 1;
      while (v7 != -4096)
      {
        v17 = v6 + v16++;
        v6 = v17 & v5;
        v7 = *(v4 + 16 * v6);
        if (v7 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v9 = *(result + 56);
  v10 = *(result + 72);
  if (v10)
  {
    v11 = ((a2 >> 4) ^ (a2 >> 9)) & (v10 - 1);
    v12 = (v9 + 24 * v11);
    v13 = *v12;
    if (a2 == *v12)
    {
      goto LABEL_12;
    }

    v14 = 1;
    while (v13 != -4096)
    {
      v15 = v11 + v14++;
      v11 = v15 & (v10 - 1);
      v12 = (v9 + 24 * v11);
      v13 = *v12;
      if (a2 == *v12)
      {
        goto LABEL_12;
      }
    }
  }

  v12 = (v9 + 24 * v10);
LABEL_12:
  if (v12 == (v9 + 24 * v10))
  {
    *a3 = 0;
    a3[16] = 0;
  }

  else
  {
    *a3 = *(v12 + 1);
    a3[16] = 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::Specializer::lookupAbsoluteBinding(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v3 + 16 * v5);
    if (v6 == a2)
    {
      return *(v3 + 16 * v5 + 8);
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a2)
      {
        return *(v3 + 16 * v5 + 8);
      }
    }
  }

  return 0;
}

void *mlir::ODIE::Compiler::CoreML::Specializer::makeBindingAbsolute(uint64_t a1, mlir::Block *a2, uint64_t a3, uint64_t a4)
{
  v39[6] = *MEMORY[0x277D85DE8];
  v36 = a4;
  v37 = v39;
  v38 = 0x600000000;
  v34 = a2;
  v35 = a3;
  if (a2)
  {
    do
    {
      NameAttr = mlir::SymbolOpInterface::getNameAttr(&v34);
      mlir::StringAttr::getValue(&NameAttr);
      if (!v4)
      {
        break;
      }

      v5 = mlir::SymbolOpInterface::getNameAttr(&v34);
      v6 = mlir::SymbolRefAttr::get(v5);
      if (v38 >= HIDWORD(v38))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v37 + v38) = v6;
      LODWORD(v38) = v38 + 1;
      v34 = mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(v34);
      v35 = v7;
    }

    while (v34);
    v8 = v37;
    v9 = v37 + 8 * v38 - 8;
    if (v38)
    {
      v10 = v9 > v37;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = v37 + 8;
      do
      {
        v12 = *(v11 - 1);
        *(v11 - 1) = *v9;
        *v9 = v12;
        v9 -= 8;
        v13 = v11 >= v9;
        v11 += 8;
      }

      while (!v13);
      v8 = v37;
    }
  }

  else
  {
    v8 = v39;
  }

  RootReference = mlir::SymbolRefAttr::getRootReference(v8);
  v15 = mlir::SymbolRefAttr::get(RootReference, v37 + 2, v38 - 1);
  v16 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v15);
  v17 = v16;
  if (!v16)
  {
    goto LABEL_30;
  }

  v18 = *v16;
  {
    mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
    v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (v21)
    {
      goto LABEL_20;
    }

LABEL_30:
    v28 = 0;
    goto LABEL_31;
  }

  v19 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  if (!v21)
  {
    goto LABEL_30;
  }

LABEL_20:
  v22 = v20;
  v23 = v21;
  do
  {
    v24 = v23 >> 1;
    v25 = &v22[2 * (v23 >> 1)];
    v27 = *v25;
    v26 = v25 + 2;
    v23 += ~(v23 >> 1);
    if (v27 < v19)
    {
      v22 = v26;
    }

    else
    {
      v23 = v24;
    }
  }

  while (v23);
  if (v22 == &v20[2 * v21] || *v22 != v19)
  {
    goto LABEL_30;
  }

  v28 = v22[1];
LABEL_31:
  Binds = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getBinds(&v36);
  result = mlir::ODIE::Compiler::CoreML::ParamBindAttr::get(v17, v28, Binds, v30);
  if (v37 != v39)
  {
    v32 = result;
    free(v37);
    return v32;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamBindAttr>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
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
      v5 = (*a1 + 16 * (v12 & v3));
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
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::LookupBucketFor<mlir::Dialect const*>(v14, v13, &v15);
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
  v5[1] = 0;
  return v5 + 1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>,mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,llvm::DenseMapInfo<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>,llvm::detail::DenseMapPair<mlir::ODIE::Compiler::CoreML::ParamBindAttr,mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface>>::operator[](uint64_t a1, void *a2)
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

    v10 = 0;
    v11 = 1;
    while (v6 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == -8192;
      }

      if (v12)
      {
        v10 = v5;
      }

      v13 = v4 + v11++;
      v4 = v13 & v3;
      v5 = (*a1 + 24 * (v13 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v10)
    {
      v5 = v10;
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v14 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v14 = a2;
LABEL_24:
    v15 = a1;
    llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(v15, v14, &v16);
    a1 = v15;
    a2 = v14;
    v5 = v16;
    ++*(v15 + 8);
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
  v9 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  *v5 = v9;
  return v5 + 1;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::ODIE::Compiler::CoreML::Specializer::specializeFrom(mlir::Operation *)::$_0>(uint64_t *a1, mlir::Operation *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = this;
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v7[0] = &unk_286893D18;
  v7[1] = v2;
  v7[2] = &v4;
  v8 = v7;
  *(&v5[0] + 1) = std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__emplace_back_slow_path<std::function<mlir::WalkResult ()(mlir::Attribute)>>(v5, v7);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))();
  }

  mlir::AttrTypeWalker::walkImpl(v5, AttrDictionary, 1);
  mlir::AttrTypeWalker::~AttrTypeWalker(v5);
}