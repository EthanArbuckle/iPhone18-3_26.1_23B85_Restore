void llvm::ReversePostOrderTraversal<mlir::Block *,llvm::GraphTraits<mlir::Block *>>::Initialize(uint64_t a1, mlir::Block **a2)
{
  v12[40] = *MEMORY[0x277D85DE8];
  llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>::po_iterator(&v9, *a2);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6[0] = 0;
  memset(v5, 0, sizeof(v5));
  v2 = v5 + 8;
  v3 = v5 + 8;
  v4 = 8;
  v6[1] = v7 + 8;
  DWORD1(v7[0]) = 8;
  std::copy[abi:nn200100]<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(&v9, &v2);
  if (v6[1] != v7 + 8)
  {
    free(v6[1]);
  }

  if (v3 != v2)
  {
    free(v3);
  }

  if (v11 != v12)
  {
    free(v11);
  }

  if (v10 != v9)
  {
    free(v10);
  }
}

uint64_t std::copy[abi:nn200100]<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(const void **a1, uint64_t a2)
{
  v22[41] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v14, &v16, a1);
  v17 = v19;
  v18 = 0x800000000;
  if (&v14 != a1)
  {
    v4 = *(a1 + 26);
    if (v4)
    {
      if (v4 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v19, a1[12], 40 * *(a1 + 26));
      LODWORD(v18) = v4;
    }
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, a2);
  v11 = v13;
  v12 = 0x800000000;
  if (&v8 != a2)
  {
    v5 = *(a2 + 104);
    if (v5)
    {
      if (v5 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v13, *(a2 + 96), 40 * *(a2 + 104));
      LODWORD(v12) = v5;
    }
  }

  std::__copy[abi:nn200100]<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(&v14, &v8);
  v6 = v22[40];
  if (v21 != v22)
  {
    free(v21);
  }

  if (v20 != v19[40])
  {
    free(v20);
  }

  if (v11 != v13)
  {
    free(v11);
  }

  if (v9 != v8)
  {
    free(v9);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  if (v15 != v14)
  {
    free(v15);
  }

  return v6;
}

void std::__copy[abi:nn200100]<llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(uint64_t a1, uint64_t a2)
{
  v13[40] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v9, &v11, 8, a1);
  v12[0] = v13;
  v12[1] = 0x800000000;
  if (*(a1 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v12, (a1 + 96));
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v4, &v6, 8, a2);
  v7[0] = v8;
  v7[1] = 0x800000000;
  if (*(a2 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v7, (a2 + 96));
  }

  std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>,0>(&v9, &v4);
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  if (v5 != v4)
  {
    free(v5);
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  if (v10 != v9)
  {
    free(v10);
  }
}

void std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,llvm::po_iterator<mlir::Block *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>,0>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v9 = v8;
  v64[40] = *MEMORY[0x277D85DE8];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v49, &v51, v2);
  v52 = v54;
  v53 = 0x800000000;
  if (&v49 != v7)
  {
    v10 = *(v7 + 26);
    if (v10)
    {
      if (v10 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v54, *(v7 + 12), 40 * *(v7 + 26));
      LODWORD(v53) = v10;
    }
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v44, &v46, 8, v6);
  v47[0] = v48;
  v47[1] = 0x800000000;
  if (*(v6 + 104))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v47, (v6 + 96));
  }

  std::__unwrap_range[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>>(&v49, &v44, &v55);
  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  if (v45 != v44)
  {
    free(v45);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  if (v50 != v49)
  {
    free(v50);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v34, &v36, 8, &v55);
  v37[0] = v38;
  v37[1] = 0x800000000;
  if (v58)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v37, &v57);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v29, &v31, 8, &v60);
  v32[0] = v33;
  v32[1] = 0x800000000;
  if (v63)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v32, &v62);
  }

  std::__copy_impl::operator()[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,std::back_insert_iterator<llvm::SmallVector<mlir::Block *,8u>>>(&v34, &v29, v4, &v39);
  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  if (v30 != v29)
  {
    free(v30);
  }

  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (v35 != v34)
  {
    free(v35);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v19, &v21, 8, v7);
  v22[0] = v23;
  v22[1] = 0x800000000;
  if (*(v7 + 26))
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v22, v7 + 12);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v14, &v16, 8, &v39);
  v17[0] = v18;
  v17[1] = 0x800000000;
  if (v42)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v17, &v41);
  }

  std::__rewrap_range[abi:nn200100]<llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>,llvm::po_iterator<mlir::Region *,llvm::SmallPtrSet<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Region *>>>(&v19, &v14, &v24);
  v11 = v43[40];
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(v9, (v9 + 32), 8, &v24);
  *(v12 + 96) = v9 + 112;
  v13 = v12 + 96;
  *(v13 + 8) = 0x800000000;
  if (v27)
  {
    llvm::SmallVectorImpl<std::tuple<mlir::Block *,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>>::operator=(v13, &v26);
  }

  *(v9 + 432) = v11;
  if (v26 != &v28)
  {
    free(v26);
  }

  if (v25 != v24)
  {
    free(v25);
  }

  if (v17[0] != v18)
  {
    free(v17[0]);
  }

  if (v15 != v14)
  {
    free(v15);
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  if (v20 != v19)
  {
    free(v20);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v40 != v39)
  {
    free(v40);
  }

  if (v62 != v64)
  {
    free(v62);
  }

  if (v61 != v60)
  {
    free(v61);
  }

  if (v57 != &v59)
  {
    free(v57);
  }

  if (v56 != v55)
  {
    free(v56);
  }
}

uint64_t mlir::LocalAliasAnalysis::aliasImpl(uint64_t a1, mlir::Block **a2, mlir::Block **a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = a3;
  if (a2 == a3)
  {
    return 3;
  }

  v20 = 0;
  v21 = 0;
  v25[0] = 0;
  v25[40] = 0;
  v24[0] = 0;
  v24[40] = 0;
  v18 = 0;
  v19 = 0;
  v17 = &v19;
  v23 = a2;
  DefiningOp = mlir::Value::getDefiningOp(&v23);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::Attribute>::match(&v17, DefiningOp))
  {
    v17 = &v18;
    v23 = a3;
    v7 = mlir::Value::getDefiningOp(&v23);
    if (!v7 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v17, v7) & 1) == 0)
    {
      v8 = v24;
      v9 = &v20;
      v10 = a3;
      return (getAllocEffectFor(v10, v8, v9) & 1) == 0;
    }

    return 1;
  }

  v17 = &v18;
  v23 = a3;
  v11 = mlir::Value::getDefiningOp(&v23);
  if (v11 && mlir::detail::constant_op_binder<mlir::Attribute>::match(&v17, v11))
  {
    v8 = v25;
    v9 = &v21;
    v10 = a2;
    return (getAllocEffectFor(v10, v8, v9) & 1) == 0;
  }

  AllocEffectFor = getAllocEffectFor(a2, v25, &v21);
  v13 = getAllocEffectFor(a3, v24, &v20);
  if (((AllocEffectFor ^ v13) & 1) == 0)
  {
    return (AllocEffectFor & 1) == 0;
  }

  if (v13)
  {
    v22 = a2;
    v14 = v20;
    if (!v20)
    {
      return 1;
    }
  }

  else
  {
    v14 = v21;
    if (!v21)
    {
      return 1;
    }
  }

  v15 = *(mlir::Value::getParentRegion(&v22) + 2);
  if (mlir::Operation::isProperAncestor(v15, v14))
  {
    return 0;
  }

  if (v15 == v14)
  {
    if (v22)
    {
      if ((v22[1] & 7) == 7)
      {
        ParentBlock = mlir::Value::getParentBlock(&v22);
        if (mlir::Block::isEntryBlock(ParentBlock))
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

uint64_t getAllocEffectFor(mlir::Block **this, uint64_t a2, mlir::Block **a3)
{
  v23[20] = *MEMORY[0x277D85DE8];
  if (!this || (this[1] & 7) != 7)
  {
    Owner = mlir::detail::OpResultImpl::getOwner(this);
    InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(Owner);
    if (!InterfaceFor)
    {
      goto LABEL_4;
    }

LABEL_6:
    if (!Owner)
    {
      v16 = 0;
      v17 = 0;
      return 0;
    }

    v16 = Owner;
    v17 = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(Owner);
    v18 = this;
    v21 = v23;
    v22 = 0x400000000;
    mlir::MemoryEffectOpInterface::getEffects(&v16, &v21);
    v8 = llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>(&v21, &v18);
    if (v8 == (v21 + 40 * v22))
    {
      v9 = 0;
      v11 = 0;
      if (v21 == v23)
      {
LABEL_12:
        *a2 = v9;
        v12 = *v20;
        *(a2 + 1) = v19;
        *(a2 + 17) = v12;
        *(a2 + 32) = *&v20[15];
        *(a2 + 40) = v11;
        if (!v11)
        {
          return 0;
        }

        v13 = *(*(a2 + 8) + 8);
        {
          if (v13 == mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id)
          {
LABEL_15:
            ParentOp = mlir::Operation::getParentWithTrait<mlir::OpTrait::AutomaticAllocationScope>(Owner);
LABEL_16:
            *a3 = ParentOp;
            return 1;
          }
        }

        else
        {
          AllocaScopeInliner::matchAndRewrite(mlir::memref::AllocaScopeOp,mlir::PatternRewriter &)const::{lambda(mlir::Operation *)#1}::operator()();
          if (v13 == mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id)
          {
            goto LABEL_15;
          }
        }

        do
        {
          ParentOp = *(Owner + 16);
          if (!ParentOp)
          {
            break;
          }

          ParentOp = mlir::Block::getParentOp(ParentOp);
          if (!ParentOp)
          {
            break;
          }

          Owner = ParentOp;
          ParentOp = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
          if (ParentOp)
          {
            mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(Owner);
            ParentOp = Owner;
          }
        }

        while (!ParentOp);
        goto LABEL_16;
      }
    }

    else
    {
      v9 = *v8;
      v10 = *(v8 + 17);
      v19 = *(v8 + 1);
      *v20 = v10;
      *&v20[15] = v8[4];
      v11 = 1;
      if (v21 == v23)
      {
        goto LABEL_12;
      }
    }

    free(v21);
    goto LABEL_12;
  }

  Owner = mlir::Block::getParentOp(this[2]);
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(Owner);
  if (InterfaceFor)
  {
    goto LABEL_6;
  }

LABEL_4:
  v16 = 0;
  v17 = InterfaceFor;
  return 0;
}

uint64_t mlir::LocalAliasAnalysis::alias(uint64_t a1, mlir::detail::OpResultImpl *a2, mlir::detail::OpResultImpl *a3)
{
  v10[8] = *MEMORY[0x277D85DE8];
  if (a2 != a3)
  {
    v9[0] = v10;
    v9[1] = 0x800000000;
    v6 = &v8;
    v7 = 0x800000000;
    v4[0] = 0;
    v4[1] = 0;
    v5 = 0;
    collectUnderlyingAddressValues(a2, 10, v4, v9);
    llvm::deallocate_buffer(v4[0], (8 * v5));
  }

  return 3;
}

uint64_t mlir::LocalAliasAnalysis::getModRef(uint64_t a1, uint64_t a2, mlir::detail::OpResultImpl *a3)
{
  v26[5] = *MEMORY[0x277D85DE8];
  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 3;
  }

  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v22 = 0;
    InterfaceFor = 0;
    return 3;
  }

  v22 = a2;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!a2)
  {
    return 3;
  }

  v24 = v26;
  v25 = 0x100000000;
  mlir::MemoryEffectOpInterface::getEffects(&v22, &v24);
  v7 = v24;
  if (!v25)
  {
    v6 = 0;
    if (v24 != v26)
    {
      goto LABEL_47;
    }

    return v6;
  }

  v6 = 0;
  v8 = 40 * v25;
  while (1)
  {
    v21 = *v7;
    if (_ZN4llvm3isaIN4mlir13MemoryEffects8AllocateENS2_4FreeEJEPNS2_6EffectEEEbRKT2_(&v21))
    {
      goto LABEL_17;
    }

    v10 = v7[2];
    v11 = v10 & 6;
    if (v10 >= 8 && v11 != 0)
    {
      v15 = v10 & 0xFFFFFFFFFFFFFFF8;
      if (v11 != 2 || v15 == 0)
      {
        if (v11 == 4)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v15;
        }

        if (!v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v18 = *(v15 + 24);
        if (!v18)
        {
          goto LABEL_24;
        }
      }

      if (!mlir::LocalAliasAnalysis::alias(a1, v18, a3))
      {
        goto LABEL_17;
      }
    }

LABEL_24:
    v13 = **v7;
    {
      break;
    }

    if (v13 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v6 = v14 | v6;
    if (v6 == 3)
    {
      goto LABEL_46;
    }

LABEL_17:
    v7 += 5;
    v8 -= 40;
    if (!v8)
    {
      goto LABEL_46;
    }
  }

  v20 = v13;
  mlir::MemoryEffectOpInterface::onlyHasEffect<mlir::MemoryEffects::Read>();
  if (v20 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v6 = v9 | v6;
  if (v6 != 3)
  {
    goto LABEL_17;
  }

LABEL_46:
  v7 = v24;
  if (v24 != v26)
  {
LABEL_47:
    free(v7);
  }

  return v6;
}

BOOL _ZN4llvm3isaIN4mlir13MemoryEffects8AllocateENS2_4FreeEJEPNS2_6EffectEEEbRKT2_(uint64_t **a1)
{
  v1 = **a1;
  {
    v4 = v1;
    v5 = a1;
    llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>();
    a1 = v5;
    if (v4 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (v1 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
  {
    return 1;
  }

LABEL_3:
  v2 = **a1;
  {
    v6 = v2;
    mlir::MemoryEffects::Free::Free();
    v2 = v6;
  }

  return v2 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id;
}

void collectUnderlyingAddressValues(mlir::detail::OpResultImpl *a1, int a2, uint64_t a3, uint64_t a4)
{
  v38[3] = *MEMORY[0x277D85DE8];
  v29 = a1;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, &v29, &v34);
  if (v36 != 1)
  {
    return;
  }

  if (!a2)
  {
    v8 = v29;
    goto LABEL_10;
  }

  v7 = (a2 - 1);
  v8 = v29;
  if (v29 && (*(v29 + 1) & 7) == 7)
  {
    v9 = *(v29 + 2);
    v10 = *(v29 + 6);
    if (mlir::Block::isEntryBlock(v9))
    {
      Parent = mlir::Block::getParent(v9);
      v12 = *(Parent + 16);
      if (!mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v12) || !v12)
      {
        goto LABEL_10;
      }

      InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v12);
      v24 = v12;
      v25 = Parent;
      v26 = v8;
      v27 = v10;
      goto LABEL_42;
    }

    v32 = *v9;
    v33 = mlir::PredecessorIterator::unwrap;
    if (!v32)
    {
      return;
    }

    while (1)
    {
      v18 = v33();
      Terminator = mlir::Block::getTerminator(v18);
      if (!mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator))
      {
        v30 = 0;
        v31 = 0;
        goto LABEL_10;
      }

      if (!Terminator)
      {
        v30 = 0;
        v31 = 0;
        goto LABEL_10;
      }

      v20 = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator);
      v30 = Terminator;
      v31 = v20;
      SuccessorIndex = mlir::PredecessorIterator::getSuccessorIndex(&v32);
      mlir::BranchOpInterface::getSuccessorOperands(&v30, SuccessorIndex);
      if (v10 < v34)
      {
        break;
      }

      v22 = *(mlir::MutableOperandRange::operator[](&v35, v10 - v34) + 24);
      v23 = v37;
      if (v37 != v38)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (!v22)
      {
        goto LABEL_10;
      }

      collectUnderlyingAddressValues(v22, v7, a3, a4);
      v32 = *v32;
      if (!v32)
      {
        return;
      }
    }

    v22 = 0;
    v23 = v37;
    if (v37 == v38)
    {
      goto LABEL_26;
    }

LABEL_25:
    free(v23);
    goto LABEL_26;
  }

  Owner = mlir::detail::OpResultImpl::getOwner(v29);
  if (mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor(Owner))
  {
    if (Owner)
    {
      v16 = mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor(Owner);
      v34 = Owner;
      v35 = v16;
      ViewSource = mlir::ViewLikeOpInterface::getViewSource(&v34);
      collectUnderlyingAddressValues(ViewSource, v7, a3, a4);
      return;
    }

    v34 = 0;
    v35 = 0;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  if (!mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(Owner))
  {
    Owner = 0;
    goto LABEL_36;
  }

  if (!Owner)
  {
LABEL_36:
    InterfaceFor = 0;
    goto LABEL_37;
  }

  InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(Owner);
LABEL_37:
  if (Owner)
  {
    v28 = *(v8 + 1);
    if ((v28 & 7) == 6)
    {
      v27 = *(v8 + 4) + 6;
    }

    else
    {
      v27 = v28 & 7;
    }

    v24 = Owner;
    v25 = 0;
    v26 = v8;
LABEL_42:
    collectUnderlyingAddressValues(v24, InterfaceFor, v25, v26, v27, v7, a3, a4);
    return;
  }

LABEL_10:
  v14 = *(a4 + 8);
  if (v14 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a4 + 8 * v14) = v8;
  ++*(a4 + 8);
}

uint64_t collectUnderlyingAddressValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v31[0] = a1;
  v31[1] = a2;
  v29 = a3;
  v30 = a4;
  v28 = a5;
  v27[0] = v31;
  v27[1] = &v29;
  v27[2] = a8;
  v27[3] = &v30;
  v27[4] = &v28;
  result = collectUnderlyingAddressValues(mlir::RegionBranchOpInterface,mlir::Region *,mlir::Value,unsigned int,unsigned int,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>> &,llvm::SmallVectorImpl<mlir::Value> &)::$_0::operator()(v27, 0);
  if ((result & 0x100000000) != 0)
  {
    v13 = result;
    EntrySuccessorOperands = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v31, a3);
    result = collectUnderlyingAddressValues(*(EntrySuccessorOperands + 32 * v13 + 24), a6, a7, a8);
  }

  v15 = *(v31[0] + 44);
  if ((v15 & 0x7FFFFF) != 0)
  {
    v16 = ((v31[0] + 16 * ((v15 >> 23) & 1) + ((v15 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v31[0] + 40);
    v24 = v16 + 24 * (v15 & 0x7FFFFF);
    while (1)
    {
      result = collectUnderlyingAddressValues(mlir::RegionBranchOpInterface,mlir::Region *,mlir::Value,unsigned int,unsigned int,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>> &,llvm::SmallVectorImpl<mlir::Value> &)::$_0::operator()(v27, v16);
      if ((result & 0x100000000) != 0)
      {
        v17 = *(v16 + 8);
        if (v17 != v16)
        {
          break;
        }
      }

LABEL_5:
      v16 += 24;
      if (v16 == v24)
      {
        return result;
      }
    }

    v18 = result;
    while (1)
    {
      v19 = v17 ? (v17 - 8) : 0;
      Terminator = mlir::Block::getTerminator(v19);
      if (!mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator))
      {
        break;
      }

      if (Terminator)
      {
        InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator);
        v25 = Terminator;
        v26 = InterfaceFor;
        mlir::RegionBranchTerminatorOpInterface::getMutableSuccessorOperands(&v25, a3);
        v22 = mlir::MutableOperandRange::operator mlir::OperandRange(v32);
        if (v33 != v34)
        {
          free(v33);
        }

        result = collectUnderlyingAddressValues(*(v22 + 32 * v18 + 24), a6, a7, a8);
        v17 = *(v17 + 8);
        if (v17 == v16)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
LABEL_9:
        result = mlir::Block::getNumSuccessors(v19);
        if (result)
        {
          v23 = *(a8 + 8);
          if (v23 >= *(a8 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a8 + 8 * v23) = v30;
          ++*(a8 + 8);
          return result;
        }

        v17 = *(v17 + 8);
        if (v17 == v16)
        {
          goto LABEL_5;
        }
      }
    }

    v25 = 0;
    v26 = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t collectUnderlyingAddressValues(mlir::RegionBranchOpInterface,mlir::Region *,mlir::Value,unsigned int,unsigned int,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>> &,llvm::SmallVectorImpl<mlir::Value> &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v31[6] = *MEMORY[0x277D85DE8];
  v29 = v31;
  v30 = 0x200000000;
  mlir::RegionBranchOpInterface::getSuccessorRegions(*a1, a2, &v29);
  if (!v30)
  {
LABEL_5:
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_31;
  }

  v3 = **(a1 + 8);
  v4 = (v29 + 16);
  v5 = 24 * v30;
  while (*(v4 - 2) != v3)
  {
    v4 += 3;
    v5 -= 24;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v10 = *(v4 - 1);
  v9 = *v4;
  v27 = v10;
  v28 = v9;
  if (!v9)
  {
    goto LABEL_29;
  }

  v11 = mlir::ValueRange::dereference_iterator(&v27, 0);
  if (!v3)
  {
    if (v11 && (*(v11 + 8) & 7) == 6)
    {
      v17 = *(v11 + 16) + 6;
    }

    else
    {
      v17 = *(v11 + 8) & 7;
    }

    v18 = mlir::ValueRange::dereference_iterator(&v27, v28 - 1);
    if (v18 && (*(v18 + 8) & 7) == 6)
    {
      v19 = **(a1 + 32);
      v15 = v19 - v17;
      if (v19 < v17 || *(v18 + 16) + 6 < v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = **(a1 + 32);
      v15 = v21 - v17;
      if (v21 < v17 || (*(v18 + 8) & 7u) < v21)
      {
        goto LABEL_29;
      }
    }

LABEL_24:
    v6 = v15 & 0xFFFFFF00;
    v8 = v15;
    v7 = 0x100000000;
    goto LABEL_31;
  }

  v12 = *(v11 + 24);
  v13 = *(mlir::ValueRange::dereference_iterator(&v27, v28 - 1) + 24);
  v14 = **(a1 + 32);
  v15 = v14 - v12;
  if (v14 >= v12 && v13 >= v14)
  {
    goto LABEL_24;
  }

LABEL_29:
  v23 = *(a1 + 16);
  v24 = **(a1 + 24);
  v25 = *(v23 + 8);
  if (v25 >= *(v23 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  *(*v23 + 8 * v25) = v24;
  ++*(v23 + 8);
LABEL_31:
  if (v29 != v31)
  {
    free(v29);
  }

  return v7 | v8 | v6;
}

void mlir::dataflow::ConstantValue::print(mlir::dataflow::ConstantValue *this, llvm::raw_ostream *a2)
{
  if (*(this + 8))
  {
    if (*this)
    {
      v8 = *this;
      mlir::Attribute::print(&v8, a2);
      return;
    }

    v7 = *(a2 + 4);
    if ((*(a2 + 3) - v7) <= 8)
    {
      v4 = a2;
      v5 = "<UNKNOWN>";
      v6 = 9;

LABEL_7:
      llvm::raw_ostream::write(v4, v5, v6);
      return;
    }

    *(v7 + 8) = 62;
    *v7 = *"<UNKNOWN>";
    *(a2 + 4) += 9;
  }

  else
  {
    v3 = *(a2 + 4);
    if (*(a2 + 3) - v3 <= 0xEuLL)
    {
      v4 = a2;
      v5 = "<UNINITIALIZED>";
      v6 = 15;

      goto LABEL_7;
    }

    qmemcpy(v3, "<UNINITIALIZED>", 15);
    *(a2 + 4) += 15;
  }
}

uint64_t mlir::dataflow::SparseConstantPropagation::visitOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = a5;
  v43[8] = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 44);
  if ((v9 & 0x7FFFFF) != 0)
  {
    mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::setAllToEntryStates(a1, a5, a6);
    return 1;
  }

  v41 = v43;
  v42 = 0x800000000;
  if ((v9 & 0x800000) != 0 && *(a2 + 68) >= 9u)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v11 = 8 * a4;
    while (*(*a3 + 176) == 1)
    {
      if (v42 >= HIDWORD(v42))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v41 + v42) = *(*a3 + 168);
      LODWORD(v42) = v42 + 1;
      a3 += 8;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_52;
  }

LABEL_13:
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v12 = *(a2 + 72);
    v13 = *(a2 + 68);
    v38 = v40;
    v39 = 0x800000000;
    if (v13 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v13)
    {
      v14 = v40;
      v15 = v13;
      v16 = (v12 + 24);
      do
      {
        v17 = *v16;
        v16 += 4;
        *v14++ = v17;
        --v15;
      }

      while (v15);
      v18 = v39;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    LODWORD(v13) = 0;
    v18 = 0;
    v38 = v40;
    HIDWORD(v39) = 8;
  }

  LODWORD(v39) = v18 + v13;
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  v35 = v37;
  v36 = 0x800000000;
  if (*(a2 + 36) >= 9u)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if ((mlir::Operation::fold(a2, v41, v42, &v35) & 1) == 0)
  {
    goto LABEL_47;
  }

  if (!v36)
  {
    mlir::ValueRange::ValueRange(&v33, v38, v39);
    mlir::Operation::setOperands(a2, v33, v34);
    mlir::Operation::setAttrs(a2, AttrDictionary);
LABEL_47:
    mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::setAllToEntryStates(a1, v7, a6);
    goto LABEL_48;
  }

  if (a6)
  {
    v20 = v35;
    v21 = 8 * v36 - 8;
    v22 = 8 * a6 - 8;
    while (1)
    {
      v23 = *v7;
      if ((*v20 & 4) != 0)
      {
        v24 = 0;
      }

      else
      {
        v24 = *v20 & 0xFFFFFFFFFFFFFFF8;
      }

      if (!v24)
      {
        v29 = (*(*a1 + 56))(a1);
        mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::join(a1, v23, v29);
        goto LABEL_43;
      }

      v25 = *(a2 + 48);
      if (*(v25 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v33 = *(v25 + 8);
        ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v33);
        v27 = *(v23 + 176);
        if (v27 == 1)
        {
LABEL_32:
          v28 = *(v23 + 168);
          if (v28 == v24)
          {
            LODWORD(v33) = *(v23 + 177);
            *(&v33 + 3) = *(v23 + 180);
            ReferencedDialect = *(v23 + 184);
            v24 = v28;
            if (v28 != *(v23 + 168))
            {
              goto LABEL_41;
            }
          }

          else
          {
            v24 = 0;
            ReferencedDialect = 0;
            if (*(v23 + 168))
            {
              goto LABEL_41;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        ReferencedDialect = *(v25 + 24);
        v27 = *(v23 + 176);
        if (v27 == 1)
        {
          goto LABEL_32;
        }
      }

      if (!v27 || v24 != *(v23 + 168))
      {
LABEL_41:
        *(v23 + 168) = v24;
        v30 = 1;
        *(v23 + 176) = 1;
        *(v23 + 177) = v33;
        *(v23 + 180) = *(&v33 + 3);
        *(v23 + 184) = ReferencedDialect;
        goto LABEL_42;
      }

LABEL_39:
      v30 = 0;
LABEL_42:
      mlir::DataFlowAnalysis::propagateIfChanged(a1, v23, v30);
LABEL_43:
      if (v22)
      {
        ++v7;
        ++v20;
        v31 = v21;
        v21 -= 8;
        v22 -= 8;
        if (v31)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_48:
  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

LABEL_52:
  if (v41 != v43)
  {
    free(v41);
  }

  return 1;
}

uint64_t mlir::dataflow::SparseConstantPropagation::setToEntryState(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 176) != 1)
  {
    if (!*(a2 + 176) || *(a2 + 168))
    {
      goto LABEL_6;
    }

LABEL_8:
    v2 = 0;
    return mlir::DataFlowAnalysis::propagateIfChanged(a1, a2, v2);
  }

  if (!*(a2 + 168))
  {
    goto LABEL_8;
  }

LABEL_6:
  *(a2 + 168) = 0;
  v2 = 1;
  *(a2 + 176) = 1;
  *(a2 + 177) = *v4;
  *(a2 + 180) = *&v4[3];
  *(a2 + 184) = 0;
  return mlir::DataFlowAnalysis::propagateIfChanged(a1, a2, v2);
}

void mlir::dataflow::SparseConstantPropagation::~SparseConstantPropagation(mlir::dataflow::SparseConstantPropagation *this)
{
  mlir::DataFlowAnalysis::~DataFlowAnalysis(this);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::dataflow::SparseForwardDataFlowAnalysis<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>>::visitNonControlFlowArguments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, unsigned int a6)
{
  v10 = a6;
  if (a5 >= a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = a5;
  }

  mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::setAllToEntryStates(a1, a4, v11);
  v12 = *(a3 + 16) + v10;

  return mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::setAllToEntryStates(a1, &a4[v12], a5 - v12);
}

uint64_t mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>,mlir::Value>(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = a2 & 0xFFFFFFFFFFFFFFFCLL | 2;
  {
    v4 = a1;
    mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>,mlir::Value>();
    a1 = v4;
  }

  v5[0] = v2;
  v5[1] = mlir::detail::TypeIDResolver<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>,void>::resolveTypeID(void)::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::operator[](a1 + 128, v5);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a2[1];
    v4 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * *a2) | (v3 >> 4) ^ (v3 >> 9));
    v5 = v2 - 1;
    v6 = (v2 - 1) & ((v4 >> 31) ^ v4);
    v7 = (*a1 + 24 * v6);
    v9 = *v7;
    v8 = v7[1];
    if (*a2 == *v7 && v3 == v8)
    {
      return v7 + 2;
    }

    v13 = 0;
    v14 = 1;
    while (v9 != -4096 || v8 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8 == -8192;
      }

      if (v15 && v9 == -8192)
      {
        v13 = v7;
      }

      v17 = v6 + v14++;
      v6 = v17 & v5;
      v7 = (*a1 + 24 * (v17 & v5));
      v9 = *v7;
      v8 = v7[1];
      if (*a2 == *v7 && v3 == v8)
      {
        return v7 + 2;
      }
    }

    if (v13)
    {
      v7 = v13;
    }
  }

  else
  {
    v7 = 0;
  }

  v21 = v7;
  v12 = *(a1 + 8);
  if (4 * v12 + 4 >= 3 * v2)
  {
    v19 = a2;
    v2 *= 2;
    goto LABEL_35;
  }

  if (v2 + ~v12 - *(a1 + 12) <= v2 >> 3)
  {
    v19 = a2;
LABEL_35:
    v20 = a1;
    llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::LookupBucketFor<std::pair<mlir::LatticeAnchor,mlir::TypeID>>(v20, v19, &v21);
    a1 = v20;
    a2 = v19;
    v7 = v21;
    ++*(v20 + 8);
    if (*v7 != -4096)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(a1 + 8) = v12 + 1;
  if (*v7 != -4096)
  {
LABEL_13:
    --*(a1 + 12);
    goto LABEL_14;
  }

LABEL_12:
  if (v7[1] != -4096)
  {
    goto LABEL_13;
  }

LABEL_14:
  *v7 = *a2;
  v7[1] = a2[1];
  v7[2] = 0;
  return v7 + 2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::LookupBucketFor<std::pair<mlir::LatticeAnchor,mlir::TypeID>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * *a2) | (v6 >> 4) ^ (v6 >> 9));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 24 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (v5 == *v11 && v6 == v12)
    {
      result = 1;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v13 != -4096 || v12 != -4096)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == -8192;
        }

        if (v18 && v13 == -8192)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 24 * (v20 & v9));
        v13 = *v11;
        v12 = v11[1];
        if (v5 == *v11 && v6 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }

      *a3 = v11;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
LABEL_9:
    *a3 = v11;
  }

  return result;
}

int64x2_t *llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

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
      v18 = (result + 24 * v11);
      v19 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      do
      {
        *v13 = v19;
        v13 = (v13 + 24);
      }

      while (v13 != v18);
      return result;
    }

    v14 = v12 / 0x18 + 1;
    v13 = (result + 24 * (v14 & 0x1FFFFFFFFFFFFFFELL));
    v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v16 = result;
    v17 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v16 = v15;
      *(v16 + 24) = v15;
      v16 += 3;
      v17 -= 2;
    }

    while (v17);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = 24 * v6 - 24;
    if (v8 < 0x18)
    {
      v9 = *result;
LABEL_7:
      v14 = (v7 + 24 * v6);
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      do
      {
        *v9 = v15;
        v9 = (v9 + 24);
      }

      while (v9 != v14);
      goto LABEL_9;
    }

    v10 = v8 / 0x18 + 1;
    v9 = (v7 + 24 * (v10 & 0x1FFFFFFFFFFFFFFELL));
    v11 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v12 = *result;
    v13 = v10 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v12 = v11;
      *(v12 + 24) = v11;
      v12 += 3;
      v13 -= 2;
    }

    while (v13);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v16 = *v4;
      v17 = v4[1];
      if ((*v4 != -4096 || v17 != -4096) && (v16 != -8192 || v17 != -8192))
      {
        v18 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * v16) | (v17 >> 4) ^ (v17 >> 9));
        v19 = (v18 >> 31) ^ v18;
        v20 = *(v5 + 16) - 1;
        v21 = v20 & v19;
        v22 = (*v5 + 24 * v21);
        v23 = *v22;
        v24 = v22[1];
        if (v16 != *v22 || v17 != v24)
        {
          v28 = 0;
          v29 = 1;
          while (v23 != -4096 || v24 != -4096)
          {
            if (v28)
            {
              v30 = 0;
            }

            else
            {
              v30 = v24 == -8192;
            }

            if (v30 && v23 == -8192)
            {
              v28 = v22;
            }

            v32 = v21 + v29++;
            v21 = v32 & v20;
            v22 = (*v5 + 24 * (v32 & v20));
            v23 = *v22;
            v24 = v22[1];
            if (v16 == *v22 && v17 == v24)
            {
              goto LABEL_21;
            }
          }

          if (v28)
          {
            v22 = v28;
          }
        }

LABEL_21:
        *v22 = v16;
        v26 = v4[1];
        v27 = v4[2];
        v4[2] = 0;
        v22[1] = v26;
        v22[2] = v27;
        ++*(v5 + 8);
        result = v4[2];
        v4[2] = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      v4 += 3;
    }

    while (v4 != a3);
  }

  return result;
}

void mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>::~Lattice(mlir::AnalysisState *this)
{
  *this = &unk_286893088;
  v2 = *(this + 15);
  if (v2 != this + 136)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != *(this + 7))
  {
    free(v3);
  }

  mlir::AnalysisState::~AnalysisState(this);
}

{
  *this = &unk_286893088;
  v2 = *(this + 15);
  if (v2 != this + 136)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != *(this + 7))
  {
    free(v3);
  }

  mlir::AnalysisState::~AnalysisState(this);
}

void sub_256E43E90()
{

  JUMPOUT(0x259C63180);
}

void mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>::print(uint64_t a1, llvm::raw_ostream *this)
{
  if (*(a1 + 176))
  {
    if (*(a1 + 168))
    {
      v8 = *(a1 + 168);
      mlir::Attribute::print(&v8, this);
      return;
    }

    v7 = *(this + 4);
    if ((*(this + 3) - v7) <= 8)
    {
      v4 = this;
      v5 = "<UNKNOWN>";
      v6 = 9;

LABEL_7:
      llvm::raw_ostream::write(v4, v5, v6);
      return;
    }

    *(v7 + 8) = 62;
    *v7 = *"<UNKNOWN>";
    *(this + 4) += 9;
  }

  else
  {
    v3 = *(this + 4);
    if (*(this + 3) - v3 <= 0xEuLL)
    {
      v4 = this;
      v5 = "<UNINITIALIZED>";
      v6 = 15;

      goto LABEL_7;
    }

    qmemcpy(v3, "<UNINITIALIZED>", 15);
    *(this + 4) += 15;
  }
}

uint64_t mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>::join(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = *(a2 + 176);
    if (v3)
    {
      if (v2 != v3 || (v4 = *(a1 + 168), v4 != *(a2 + 168)))
      {
        v5 = 0;
        v4 = 0;
        v6 = 1;
        if (v2 != 1)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v4 = *(a1 + 168);
    }

    a2 = a1;
    v6 = *(a1 + 176);
  }

  else
  {
    v4 = *(a2 + 168);
    v6 = *(a2 + 176);
  }

  *v8 = *(a2 + 177);
  *&v8[3] = *(a2 + 180);
  v5 = *(a2 + 184);
  if (v6 != v2)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v6)
  {
    if (v4 == *(a1 + 168))
    {
      return 0;
    }

    goto LABEL_16;
  }

LABEL_14:
  if (v6 == v2)
  {
    return 0;
  }

LABEL_16:
  *(a1 + 168) = v4;
  *(a1 + 176) = v6;
  *(a1 + 177) = *v8;
  *(a1 + 180) = *&v8[3];
  *(a1 + 184) = v5;
  return 1;
}

uint64_t mlir::dataflow::Executable::setToLive(mlir::dataflow::Executable *this)
{
  if (*(this + 56))
  {
    return 0;
  }

  result = 1;
  *(this + 56) = 1;
  return result;
}

void *mlir::dataflow::Executable::print(void *this, llvm::raw_ostream *a2)
{
  if (*(this + 56))
  {
    v2 = "live";
  }

  else
  {
    v2 = "dead";
  }

  v3 = *(a2 + 4);
  if (*(a2 + 3) - v3 <= 3uLL)
  {
    return llvm::raw_ostream::write(a2, v2, 4uLL);
  }

  *v3 = *v2;
  *(a2 + 4) += 4;
  return this;
}

void mlir::dataflow::Executable::onUpdate(mlir::dataflow::Executable *this, mlir::DataFlowSolver *a2)
{
  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(this + 5);
    v6 = *(a2 + 6);
    v7 = 16 * v4;
    do
    {
      v8 = *(a2 + 3);
      v9 = *(a2 + 2);
      v10 = *v5;
      if (v8 == v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = 32 * (v8 - v9) - 1;
      }

      v12 = *(a2 + 5) + v6;
      if (v11 == v12)
      {
        v52 = *v5;
        std::deque<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>::__add_back_capacity(a2 + 1);
        v10 = v52;
        v9 = *(a2 + 2);
        v12 = *(a2 + 6) + *(a2 + 5);
      }

      *(*(v9 + ((v12 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v12) = v10;
      v6 = *(a2 + 6) + 1;
      *(a2 + 6) = v6;
      ++v5;
      v7 -= 16;
    }

    while (v7);
  }

  v13 = *(this + 1);
  v14 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  if ((v13 & 3) == 1)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v15 = 0;
  }

  if (v15 < 8)
  {
    if ((v13 & 3) == 0 && v14 != 0)
    {
      v28 = *(v14 + 8);
      {
        if (v28 != mlir::detail::TypeIDResolver<mlir::dataflow::CFGEdge,void>::resolveTypeID(void)::id)
        {
          return;
        }
      }

      else
      {
        mlir::dataflow::Executable::onUpdate();
        if (v28 != mlir::detail::TypeIDResolver<mlir::dataflow::CFGEdge,void>::resolveTypeID(void)::id)
        {
          return;
        }
      }

      v29 = *(this + 34);
      if (v29)
      {
        v30 = *(this + 16);
        v31 = *(a2 + 6);
        v32 = 8 * v29;
        do
        {
          v34 = *(a2 + 3);
          v35 = *(a2 + 2);
          v36 = *v30;
          v37 = *(v14 + 24);
          if (v34 == v35)
          {
            v38 = 0;
          }

          else
          {
            v38 = 32 * (v34 - v35) - 1;
          }

          v39 = v31 + *(a2 + 5);
          if (v38 == v39)
          {
            std::deque<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>::__add_back_capacity(a2 + 1);
            v35 = *(a2 + 2);
            v39 = *(a2 + 6) + *(a2 + 5);
          }

          v33 = (*(v35 + ((v39 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v39);
          *v33 = v37 | 4;
          v33[1] = v36;
          v31 = *(a2 + 6) + 1;
          *(a2 + 6) = v31;
          ++v30;
          v32 -= 8;
        }

        while (v32);
      }
    }
  }

  else if ((v15 & 4) != 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFFFF8;
    if ((v15 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v17 = *(this + 34);
      if (v17)
      {
        v18 = *(this + 16);
        v19 = *(a2 + 6);
        v20 = 8 * v17;
        do
        {
          v22 = *(a2 + 3);
          v23 = *(a2 + 2);
          v24 = *v18;
          if (v22 == v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = 32 * (v22 - v23) - 1;
          }

          v26 = v19 + *(a2 + 5);
          if (v25 == v26)
          {
            std::deque<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>::__add_back_capacity(a2 + 1);
            v23 = *(a2 + 2);
            v26 = *(a2 + 6) + *(a2 + 5);
          }

          v21 = (*(v23 + ((v26 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v26);
          *v21 = v15;
          v21[1] = v24;
          v19 = *(a2 + 6) + 1;
          *(a2 + 6) = v19;
          ++v18;
          v20 -= 8;
        }

        while (v20);
        v40 = *(this + 34);
        if (v40)
        {
          v41 = v16 + 32;
          if (*(v16 + 40) != v16 + 32)
          {
            v42 = *(this + 16);
            v43 = &v42[v40];
            do
            {
              v44 = *(v16 + 40);
              if (v44 != v41)
              {
                v45 = *v42;
                do
                {
                  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v44);
                  v48 = *(a2 + 3);
                  v49 = *(a2 + 2);
                  v50 = 32 * (v48 - v49) - 1;
                  if (v48 == v49)
                  {
                    v50 = 0;
                  }

                  v51 = *(a2 + 6) + *(a2 + 5);
                  if (v50 == v51)
                  {
                    std::deque<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>::__add_back_capacity(a2 + 1);
                    v49 = *(a2 + 2);
                    v51 = *(a2 + 6) + *(a2 + 5);
                  }

                  v46 = (*(v49 + ((v51 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v51);
                  *v46 = ValuePtr;
                  v46[1] = v45;
                  ++*(a2 + 6);
                  v44 = *(v44 + 8);
                }

                while (v44 != v41);
              }

              ++v42;
            }

            while (v42 != v43);
          }
        }
      }
    }
  }
}

void *mlir::dataflow::PredecessorState::print(void *this, llvm::raw_ostream *a2)
{
  v3 = this;
  if (*(this + 56) != 1)
  {
LABEL_4:
    v5 = *(a2 + 4);
    if (*(a2 + 3) - v5 <= 0xDuLL)
    {
      goto LABEL_5;
    }

LABEL_8:
    qmemcpy(v5, "predecessors:\n", 14);
    *(a2 + 4) += 14;
    if (!*(v3 + 34))
    {
      return this;
    }

LABEL_9:
    v6 = *v3[16];
    v7 = *(a2 + 4);
    if (*(a2 + 3) - v7 > 1uLL)
    {
      *v7 = 8224;
      *(a2 + 4) += 2;
      v8 = a2;
    }

    else
    {
      v8 = llvm::raw_ostream::write(a2, "  ", 2uLL);
    }

    mlir::OpPrintingFlags::OpPrintingFlags(v10);
    v9 = mlir::OpPrintingFlags::useLocalScope(v10);
    mlir::Operation::print(v6, v8, v9);
  }

  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) <= 5)
  {
    this = llvm::raw_ostream::write(a2, "(all) ", 6uLL);
    goto LABEL_4;
  }

  *(v4 + 4) = 8233;
  *v4 = 1819042088;
  *(a2 + 4) += 6;
  v5 = *(a2 + 4);
  if (*(a2 + 3) - v5 > 0xDuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  this = llvm::raw_ostream::write(a2, "predecessors:\n", 0xEuLL);
  if (*(v3 + 34))
  {
    goto LABEL_9;
  }

  return this;
}

uint64_t mlir::dataflow::PredecessorState::join(mlir::dataflow::PredecessorState *this, mlir::Operation *a2)
{
  v5 = *(this + 8);
  v6 = *(this + 9);
  v4 = (this + 64);
  if (v6 != v5)
  {
    goto LABEL_2;
  }

  v9 = *(this + 21);
  if (v9)
  {
    v10 = 8 * v9;
    v11 = v5;
    while (*v11 != a2)
    {
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  if (v9 < *(this + 20))
  {
    *(this + 21) = v9 + 1;
    v5[v9] = a2;
  }

  else
  {
LABEL_2:
    llvm::SmallPtrSetImplBase::insert_imp_big(v4, a2);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(this + 34);
  if (v12 >= *(this + 35))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(this + 16) + 8 * v12) = a2;
  ++*(this + 34);
  return 1;
}

uint64_t mlir::dataflow::PredecessorState::join(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v8 = (a1 + 64);
  if (v10 != v9)
  {
    goto LABEL_2;
  }

  v13 = *(a1 + 84);
  if (!v13)
  {
LABEL_9:
    if (v13 < *(a1 + 80))
    {
      *(a1 + 84) = v13 + 1;
      v9[v13] = a2;
      goto LABEL_11;
    }

LABEL_2:
    llvm::SmallPtrSetImplBase::insert_imp_big(v8, a2);
    if ((v11 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v16 = *(a1 + 136);
    if (v16 >= *(a1 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a1 + 128) + 8 * v16) = a2;
    ++*(a1 + 136);
    v12 = 1;
    if (!a4)
    {
      return v12;
    }

    goto LABEL_13;
  }

  v14 = 8 * v13;
  v15 = v9;
  while (*v15 != a2)
  {
    ++v15;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

LABEL_3:
  v12 = 0;
  if (!a4)
  {
    return v12;
  }

LABEL_13:
  v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::ValueRange,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::ValueRange>>,mlir::Operation *,mlir::ValueRange,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::ValueRange>>::operator[](a1 + 176, &v24);
  v18 = v17;
  if (v17[1] == a4)
  {
    v19 = 0;
    v27 = *v17;
    v28 = 0;
    v25 = a3;
    v26 = 0;
    while (1)
    {
      v20 = mlir::ValueRange::dereference_iterator(&v27, v19);
      if (v20 != mlir::ValueRange::dereference_iterator(&v25, v26))
      {
        break;
      }

      v19 = v28 + 1;
      v28 = v19;
      v21 = ++v26;
      if (v19 == a4 || v21 == a4)
      {
        if (v19 == a4 && v21 == a4)
        {
          return v12;
        }

        break;
      }
    }
  }

  *v18 = a3;
  v18[1] = a4;
  return 1;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,mlir::ValueRange,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::ValueRange>>,mlir::Operation *,mlir::ValueRange,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,mlir::ValueRange>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 24 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + 24 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>,mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::pair<mlir::Operation *,mlir::MemoryEffects::Effect *>>>::LookupBucketFor<mlir::Operation *>(v13, v12, &v15);
    a1 = v13;
    a2 = v12;
    v14 = *(v13 + 8);
    v4 = v15;
    *(a1 + 8) = v14 + 1;
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  mlir::ValueRange::ValueRange(v4 + 1, 0, 0);
  return v4 + 1;
}

void mlir::dataflow::CFGEdge::getLoc(mlir::Block **this)
{
  v6[2] = *MEMORY[0x277D85DE8];
  Parent = mlir::Block::getParent(this[2]);
  Context = mlir::Region::getContext(Parent);
  v4 = mlir::Block::getParent(this[2]);
  v6[0] = mlir::Region::getLoc(v4);
  v5 = mlir::Block::getParent(this[3]);
  v6[1] = mlir::Region::getLoc(v5);
  mlir::FusedLoc::get(v6, 2, 0, Context);
}

void *mlir::dataflow::CFGEdge::print(mlir::Block **this, llvm::raw_ostream *a2)
{
  mlir::Block::print(this[2], a2);
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 5)
  {
    *(v4 + 4) = 2592;
    *v4 = 1043144714;
    *(a2 + 4) += 6;
    v5 = this[3];
    v6 = a2;
  }

  else
  {
    llvm::raw_ostream::write(a2, "\n -> \n", 6uLL);
    v5 = this[3];
    v6 = a2;
  }

  return mlir::Block::print(v5, v6);
}

void mlir::dataflow::DeadCodeAnalysis::DeadCodeAnalysis(mlir::dataflow::DeadCodeAnalysis *this, mlir::DataFlowSolver *a2)
{
  v2 = mlir::DataFlowAnalysis::DataFlowAnalysis(this, a2);
  *v2 = &unk_286892B20;
  v2[3] = 0;
  v2[4] = 0;
  *(v2 + 10) = 0;
  {
    mlir::dataflow::Executable::onUpdate();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

uint64_t mlir::dataflow::DeadCodeAnalysis::initialize(mlir::dataflow::DeadCodeAnalysis *this, mlir::Operation *a2)
{
  v4 = *(a2 + 11);
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = (((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v6 = 24 * (v4 & 0x7FFFFF);
    do
    {
      if (v5 != *v5)
      {
        v8 = v5[1];
        if (v8)
        {
          v9 = v8 - 8;
        }

        else
        {
          v9 = 0;
        }

        v10 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(this + 1), v9);
        if (*(v10 + 56))
        {
          v7 = 0;
        }

        else
        {
          v7 = 1;
          *(v10 + 56) = 1;
        }

        mlir::DataFlowAnalysis::propagateIfChanged(this, v10, v7);
      }

      v5 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  *(this + 2) = a2;
  v12[0] = this;
  v12[1] = &v13;
  v13 = a2;
  mlir::SymbolTable::walkSymbolTables(a2, *(a2 + 2) == 0, llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<mlir::dataflow::DeadCodeAnalysis::initializeSymbolCallables(mlir::Operation *)::$_0>, v12);
  return mlir::dataflow::DeadCodeAnalysis::initializeRecursively(this, a2);
}

uint64_t mlir::dataflow::DeadCodeAnalysis::initializeSymbolCallables(mlir::dataflow::DeadCodeAnalysis *this, mlir::Operation *a2)
{
  v4 = a2;
  *(this + 2) = a2;
  v3[0] = this;
  v3[1] = &v4;
  return mlir::SymbolTable::walkSymbolTables(a2, *(a2 + 2) == 0, llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<mlir::dataflow::DeadCodeAnalysis::initializeSymbolCallables(mlir::Operation *)::$_0>, v3);
}

uint64_t mlir::dataflow::DeadCodeAnalysis::initializeRecursively(mlir::dataflow::DeadCodeAnalysis *this, uint64_t a2)
{
  if ((*(a2 + 44) & 0x7FFFFF) != 0 || *(a2 + 40))
  {
    goto LABEL_10;
  }

  v4 = *(a2 + 16);
  if (v4)
  {
    ParentOp = mlir::Block::getParentOp(v4);
    if (!mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
    {
LABEL_7:
      if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    ParentOp = 0;
    if (!mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(0))
    {
      goto LABEL_7;
    }
  }

  if (mlir::Block::getTerminator(*(a2 + 16)) == a2)
  {
LABEL_10:
    v6 = *(a2 + 16);
    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(this + 1), v6);
    v8 = *(v7 + 64);
    if (*(v7 + 72) != v8)
    {
      goto LABEL_12;
    }

    v18 = *(v7 + 84);
    if (v18)
    {
      v19 = 8 * v18;
      v20 = *(v7 + 64);
      while (*v20 != this)
      {
        ++v20;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_29;
        }
      }

LABEL_15:
      if (((*(*this + 24))(this, a2 & 0xFFFFFFFFFFFFFFFBLL) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

LABEL_29:
    if (v18 < *(v7 + 80))
    {
      *(v7 + 84) = v18 + 1;
      *(v8 + 8 * v18) = this;
      v10 = *(v7 + 136);
      if (v10 >= *(v7 + 140))
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_12:
      llvm::SmallPtrSetImplBase::insert_imp_big((v7 + 64), this);
      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }

      v10 = *(v7 + 136);
      if (v10 >= *(v7 + 140))
      {
LABEL_31:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    *(*(v7 + 128) + 8 * v10) = this;
    ++*(v7 + 136);
    goto LABEL_15;
  }

LABEL_9:
  if (mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    goto LABEL_10;
  }

LABEL_16:
  v11 = *(a2 + 44);
  if ((v11 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v12 = (((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  v13 = (v12 + 24 * (v11 & 0x7FFFFF));
  while (1)
  {
    mlir::Region::OpIterator::OpIterator(&v23, v12, 0);
    mlir::Region::OpIterator::OpIterator(&v21, v12, 1);
    v15 = v24;
    v16 = v22;
    if (v24 != v22)
    {
      break;
    }

LABEL_18:
    v12 = (v12 + 24);
    result = 1;
    if (v12 == v13)
    {
      return result;
    }
  }

  while (1)
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v15);
    if ((mlir::dataflow::DeadCodeAnalysis::initializeRecursively(this, ValuePtr) & 1) == 0)
    {
      return 0;
    }

    mlir::Region::OpIterator::operator++(&v23);
    v15 = v24;
    if (v24 == v16)
    {
      goto LABEL_18;
    }
  }
}

uint64_t mlir::dataflow::DeadCodeAnalysis::markEdgeLive(mlir::dataflow::DeadCodeAnalysis *this, mlir::Block *a2, mlir::Block *a3)
{
  v9 = a3;
  v10 = a2;
  v4 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(this + 1), a3);
  if (*(v4 + 56))
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    *(v4 + 56) = 1;
  }

  mlir::DataFlowAnalysis::propagateIfChanged(this, v4, v5);
  v6 = mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>((*(this + 1) + 120), 0, 0, &v10, &v9);
  v7 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::dataflow::CFGEdge *>(*(this + 1), v6);
  if (*(v7 + 56))
  {
    return mlir::DataFlowAnalysis::propagateIfChanged(this, v7, 0);
  }

  *(v7 + 56) = 1;
  return mlir::DataFlowAnalysis::propagateIfChanged(this, v7, 1);
}

uint64_t mlir::dataflow::DeadCodeAnalysis::markEntryBlocksLive(uint64_t this, mlir::Operation *a2)
{
  v2 = *(a2 + 11);
  if ((v2 & 0x7FFFFF) != 0)
  {
    v3 = this;
    v4 = (((a2 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v5 = 24 * (v2 & 0x7FFFFF);
    do
    {
      if (v4 != *v4)
      {
        v7 = v4[1];
        if (v7)
        {
          v8 = v7 - 8;
        }

        else
        {
          v8 = 0;
        }

        v9 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(v3 + 8), v8);
        if (*(v9 + 56))
        {
          v6 = 0;
        }

        else
        {
          v6 = 1;
          *(v9 + 56) = 1;
        }

        this = mlir::DataFlowAnalysis::propagateIfChanged(v3, v9, v6);
      }

      v4 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return this;
}

uint64_t mlir::dataflow::DeadCodeAnalysis::visit(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    return 1;
  }

  v3 = a2 & 0xFFFFFFFFFFFFFFF8;
  if (*(mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(a1[1], *((a2 & 0xFFFFFFFFFFFFFFF8) + 16)) + 56) != 1)
  {
    return 1;
  }

  if (mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v3))
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
    if (v3)
    {
      mlir::dataflow::DeadCodeAnalysis::visitCallOperation(a1, v3, InterfaceFor);
    }
  }

  if ((*(v3 + 44) & 0x7FFFFF) != 0)
  {
    if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v3) && (v5 = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v3), v3))
    {
      mlir::dataflow::DeadCodeAnalysis::visitRegionBranchOperation(a1, v3, v5);
    }

    else if (mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v3) && (mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v3), v3))
    {
      v8 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(a1[1], v3);
      mlir::DataFlowAnalysis::addDependency(a1, v8, v3);
      if (*(v8 + 56) != 1 || *(v8 + 136))
      {
        v9 = *(v3 + 44);
        if ((v9 & 0x7FFFFF) != 0)
        {
          v10 = (((v3 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40));
          v11 = 24 * (v9 & 0x7FFFFF);
          do
          {
            if (v10 != *v10)
            {
              v13 = v10[1];
              if (v13)
              {
                v14 = v13 - 8;
              }

              else
              {
                v14 = 0;
              }

              v15 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(a1[1], v14);
              if (*(v15 + 56))
              {
                v12 = 0;
              }

              else
              {
                v12 = 1;
                *(v15 + 56) = 1;
              }

              mlir::DataFlowAnalysis::propagateIfChanged(a1, v15, v12);
            }

            v10 += 3;
            v11 -= 24;
          }

          while (v11);
        }
      }
    }

    else
    {
      v19 = *(v3 + 44);
      if ((v19 & 0x7FFFFF) != 0)
      {
        v20 = (((v3 + 16 * ((v19 >> 23) & 1) + ((v19 >> 21) & 0x7F8) + 64) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40));
        v21 = 24 * (v19 & 0x7FFFFF);
        do
        {
          if (v20 != *v20)
          {
            v23 = v20[1];
            if (v23)
            {
              v24 = v23 - 8;
            }

            else
            {
              v24 = 0;
            }

            v25 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(a1[1], v24);
            if (*(v25 + 56))
            {
              v22 = 0;
            }

            else
            {
              v22 = 1;
              *(v25 + 56) = 1;
            }

            mlir::DataFlowAnalysis::propagateIfChanged(a1, v25, v22);
          }

          v20 += 3;
          v21 -= 24;
        }

        while (v21);
      }
    }
  }

  if (!*(v3 + 40))
  {
    v6 = *(v3 + 16);
    if (v6)
    {
      ParentOp = mlir::Block::getParentOp(v6);
      if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
      {
        goto LABEL_32;
      }
    }

    else
    {
      ParentOp = 0;
      if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(0))
      {
        goto LABEL_32;
      }
    }

    if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
    {
      goto LABEL_54;
    }

LABEL_32:
    if (mlir::Block::getTerminator(*(v3 + 16)) != v3)
    {
      goto LABEL_54;
    }

    v16 = *(v3 + 16);
    if (v16)
    {
      v17 = mlir::Block::getParentOp(v16);
      if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v17) && v17)
      {
        v18 = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v17);
        mlir::dataflow::DeadCodeAnalysis::visitRegionTerminator(a1, v3, v17, v18);
        goto LABEL_54;
      }
    }

    else
    {
      mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(0);
    }

    v26 = *(v3 + 16);
    if (v26)
    {
      v27 = mlir::Block::getParentOp(v26);
      if (mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v27) && v27)
      {
        mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v27);
        mlir::dataflow::DeadCodeAnalysis::visitCallableTerminator(a1, v3, v27);
      }
    }

    else
    {
      mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(0);
    }

LABEL_54:
    if (!*(v3 + 40))
    {
      return 1;
    }
  }

  if (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v3) && (v28 = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v3), v3))
  {
    mlir::dataflow::DeadCodeAnalysis::visitBranchOperation(a1, v3, v28);
  }

  else
  {
    mlir::SuccessorRange::SuccessorRange(&v37, v3);
    v30 = v38;
    if (v38)
    {
      v31 = (v37 + 24);
      do
      {
        while (1)
        {
          v32 = *v31;
          v37 = *(v3 + 16);
          v39 = v32;
          v33 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(a1[1], v32);
          if (*(v33 + 56))
          {
            v34 = 0;
          }

          else
          {
            v34 = 1;
            *(v33 + 56) = 1;
          }

          mlir::DataFlowAnalysis::propagateIfChanged(a1, v33, v34);
          v35 = mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>((a1[1] + 120), 0, 0, &v37, &v39);
          v36 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::dataflow::CFGEdge *>(a1[1], v35);
          if (*(v36 + 56))
          {
            break;
          }

          *(v36 + 56) = 1;
          mlir::DataFlowAnalysis::propagateIfChanged(a1, v36, 1);
          v31 += 4;
          if (!--v30)
          {
            return 1;
          }
        }

        mlir::DataFlowAnalysis::propagateIfChanged(a1, v36, 0);
        v31 += 4;
        --v30;
      }

      while (v30);
    }
  }

  return 1;
}

uint64_t mlir::dataflow::DeadCodeAnalysis::visitCallOperation(uint64_t a1, void *a2, void *a3)
{
  v22[0] = a2;
  v22[1] = a3;
  v4 = mlir::CallOpInterface::resolveCallableInTable(v22, a1 + 24);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  if (!mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v4))
  {
    goto LABEL_17;
  }

  if (*(v5 + 47) && (InherentAttr = mlir::Operation::getInherentAttr(v5, "sym_name", 8), (v7 & 1) != 0))
  {
    if (!InherentAttr)
    {
      goto LABEL_17;
    }
  }

  else if (!mlir::DictionaryAttr::contains(v5 + 56, "sym_name", 8uLL))
  {
LABEL_17:
    v15 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(a1 + 8), v22[0]);
    v16 = *(v15 + 56);
    *(v15 + 56) = 0;
    return mlir::DataFlowAnalysis::propagateIfChanged(a1, v15, v16);
  }

  v8 = *(a1 + 16);
  if (v8 != v5 && !mlir::Operation::isProperAncestor(v8, v5))
  {
    goto LABEL_17;
  }

  if (mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v5))
  {
    InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    v23 = v5;
    v24 = InterfaceFor;
    if (!mlir::CallableOpInterface::getCallableRegion(&v23))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v10 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(a1 + 8), v5);
  v11 = v22[0];
  v12 = *(v10 + 64);
  if (*(v10 + 72) == v12)
  {
    v18 = *(v10 + 84);
    if (v18)
    {
      v19 = 8 * v18;
      v20 = *(v10 + 64);
      while (*v20 != v22[0])
      {
        ++v20;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_16;
    }

LABEL_22:
    if (v18 < *(v10 + 80))
    {
      *(v10 + 84) = v18 + 1;
      *(v12 + 8 * v18) = v11;
      goto LABEL_24;
    }
  }

  llvm::SmallPtrSetImplBase::insert_imp_big((v10 + 64), v22[0]);
  if (v13)
  {
LABEL_24:
    v21 = *(v10 + 136);
    if (v21 >= *(v10 + 140))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v10 + 128) + 8 * v21) = v11;
    ++*(v10 + 136);
    v14 = 1;
    return mlir::DataFlowAnalysis::propagateIfChanged(a1, v10, v14);
  }

LABEL_16:
  v14 = 0;
  return mlir::DataFlowAnalysis::propagateIfChanged(a1, v10, v14);
}

void mlir::dataflow::DeadCodeAnalysis::visitRegionBranchOperation(uint64_t *a1, char *a2, char *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v13[0] = a2;
  v13[1] = a3;
  mlir::dataflow::DeadCodeAnalysis::getOperandValues(a1, a2, &v17);
  if (v20 != 1)
  {
    return;
  }

  v14 = v16;
  v15 = 0x200000000;
  mlir::RegionBranchOpInterface::getEntrySuccessorRegions(v13, v17, v18, &v14);
  v4 = v14;
  if (!v15)
  {
    goto LABEL_15;
  }

  v5 = (v14 + 24 * v15);
  do
  {
    if (*v4)
    {
      v9 = *(*v4 + 8);
      if (v9)
      {
        v10 = v9 - 8;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10 | 4;
      v12 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::ProgramPoint>(a1[1], v10 | 4);
      if (*(v12 + 56))
      {
LABEL_4:
        v6 = 0;
        goto LABEL_5;
      }
    }

    else
    {
      v11 = v13[0] & 0xFFFFFFFFFFFFFFFBLL;
      v12 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::ProgramPoint>(a1[1], v13[0] & 0xFFFFFFFFFFFFFFFBLL);
      if (*(v12 + 56))
      {
        goto LABEL_4;
      }
    }

    v6 = 1;
    *(v12 + 56) = 1;
LABEL_5:
    mlir::DataFlowAnalysis::propagateIfChanged(a1, v12, v6);
    v7 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::ProgramPoint>(a1[1], v11);
    v8 = mlir::dataflow::PredecessorState::join(v7, v13[0], v4[1], v4[2]);
    mlir::DataFlowAnalysis::propagateIfChanged(a1, v7, v8);
    v4 += 3;
  }

  while (v4 != v5);
  v4 = v14;
LABEL_15:
  if (v4 != v16)
  {
    free(v4);
  }

  if ((v20 & 1) != 0 && v17 != &v19)
  {
    free(v17);
  }
}

void mlir::dataflow::DeadCodeAnalysis::visitRegionTerminator(uint64_t *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v24[0] = a3;
  v24[1] = a4;
  mlir::dataflow::DeadCodeAnalysis::getOperandValues(a1, a2, &v28);
  if (v31 != 1)
  {
    return;
  }

  v25 = v27;
  v26 = 0x200000000;
  if (!mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v22 = 0;
    v23 = 0;
    goto LABEL_6;
  }

  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v22 = a2;
  v23 = InterfaceFor;
  if (!a2)
  {
LABEL_6:
    v7 = *(a2 + 2);
    if (v7)
    {
      Parent = mlir::Block::getParent(v7);
    }

    else
    {
      Parent = 0;
    }

    mlir::RegionBranchOpInterface::getSuccessorRegions(v24, Parent, &v25);
    v9 = v25;
    v10 = v26;
    if (!v26)
    {
      goto LABEL_29;
    }

LABEL_14:
    v11 = &v9[3 * v10];
    do
    {
      v15 = *v9;
      if (*v9)
      {
        v16 = *(v15 + 8);
        if (v16)
        {
          v17 = v16 - 8;
        }

        else
        {
          v17 = 0;
        }

        v18 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(a1[1], v17);
        if (*(v18 + 56))
        {
          v19 = 0;
        }

        else
        {
          v19 = 1;
          *(v18 + 56) = 1;
        }

        mlir::DataFlowAnalysis::propagateIfChanged(a1, v18, v19);
        v20 = *(v15 + 8);
        if (v20)
        {
          v21 = v20 - 8;
        }

        else
        {
          v21 = 0;
        }

        v12 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Block *>(a1[1], v21);
      }

      else
      {
        v12 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(a1[1], v24[0]);
      }

      v13 = v12;
      v14 = mlir::dataflow::PredecessorState::join(v12, a2, v9[1], v9[2]);
      mlir::DataFlowAnalysis::propagateIfChanged(a1, v13, v14);
      v9 += 3;
    }

    while (v9 != v11);
    v9 = v25;
    goto LABEL_29;
  }

  mlir::RegionBranchTerminatorOpInterface::getSuccessorRegions(&v22, v28, v29, &v25);
  v9 = v25;
  v10 = v26;
  if (v26)
  {
    goto LABEL_14;
  }

LABEL_29:
  if (v9 != v27)
  {
    free(v9);
  }

  if ((v31 & 1) != 0 && v28 != &v30)
  {
    free(v28);
  }
}

uint64_t mlir::dataflow::DeadCodeAnalysis::visitCallableTerminator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(a1 + 8), a3);
  mlir::DataFlowAnalysis::addDependency(a1, v5, a2 & 0xFFFFFFFFFFFFFFFBLL);
  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  v7 = *(v5 + 136);
  if (v7)
  {
    v8 = *(v5 + 128);
    if (result)
    {
      v9 = &v8[v7];
      while (1)
      {
        v10 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(a1 + 8), *v8);
        v11 = *(v10 + 64);
        if (*(v10 + 72) == v11)
        {
          v14 = *(v10 + 84);
          if (v14)
          {
            v15 = 8 * v14;
            v16 = *(v10 + 64);
            while (*v16 != a2)
            {
              ++v16;
              v15 -= 8;
              if (!v15)
              {
                goto LABEL_16;
              }
            }

            goto LABEL_6;
          }

LABEL_16:
          if (v14 < *(v10 + 80))
          {
            *(v10 + 84) = v14 + 1;
            *(v11 + 8 * v14) = a2;
            v13 = *(v10 + 136);
            if (v13 >= *(v10 + 140))
            {
LABEL_18:
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            goto LABEL_10;
          }
        }

        llvm::SmallPtrSetImplBase::insert_imp_big((v10 + 64), a2);
        if (v12)
        {
          v13 = *(v10 + 136);
          if (v13 >= *(v10 + 140))
          {
            goto LABEL_18;
          }

LABEL_10:
          *(*(v10 + 128) + 8 * v13) = a2;
          ++*(v10 + 136);
          result = mlir::DataFlowAnalysis::propagateIfChanged(a1, v10, 1);
          if (++v8 == v9)
          {
            return result;
          }
        }

        else
        {
LABEL_6:
          result = mlir::DataFlowAnalysis::propagateIfChanged(a1, v10, 0);
          if (++v8 == v9)
          {
            return result;
          }
        }
      }
    }

    v17 = 8 * v7;
    do
    {
      v18 = *v8++;
      v19 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(a1 + 8), v18);
      v20 = *(v19 + 56);
      *(v19 + 56) = 0;
      result = mlir::DataFlowAnalysis::propagateIfChanged(a1, v19, v20);
      v17 -= 8;
    }

    while (v17);
  }

  return result;
}

void mlir::dataflow::DeadCodeAnalysis::visitBranchOperation(uint64_t *a1, Operation *a2, Operation *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v17[0] = a2;
  v17[1] = a3;
  mlir::dataflow::DeadCodeAnalysis::getOperandValues(a1, a2, &v21);
  if (v24 == 1)
  {
    SuccessorForOperands = mlir::BranchOpInterface::getSuccessorForOperands(v17, v21, v22);
    if (SuccessorForOperands)
    {
      v18 = *(v17[0] + 2);
      v20 = SuccessorForOperands;
      v5 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(a1[1], SuccessorForOperands);
      if (*(v5 + 56))
      {
        v6 = 0;
      }

      else
      {
        v6 = 1;
        *(v5 + 56) = 1;
      }

      mlir::DataFlowAnalysis::propagateIfChanged(a1, v5, v6);
      v14 = mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>((a1[1] + 120), 0, 0, &v18, &v20);
      v15 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::dataflow::CFGEdge *>(a1[1], v14);
      if (*(v15 + 56))
      {
        v16 = 0;
      }

      else
      {
        v16 = 1;
        *(v15 + 56) = 1;
      }

      mlir::DataFlowAnalysis::propagateIfChanged(a1, v15, v16);
    }

    else
    {
      mlir::SuccessorRange::SuccessorRange(&v18, v17[0]);
      v7 = v19;
      if (v19)
      {
        v8 = (v18 + 24);
        do
        {
          while (1)
          {
            v9 = *v8;
            v18 = *(v17[0] + 2);
            v20 = v9;
            v10 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(a1[1], v9);
            if (*(v10 + 56))
            {
              v11 = 0;
            }

            else
            {
              v11 = 1;
              *(v10 + 56) = 1;
            }

            mlir::DataFlowAnalysis::propagateIfChanged(a1, v10, v11);
            v12 = mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>((a1[1] + 120), 0, 0, &v18, &v20);
            v13 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::dataflow::CFGEdge *>(a1[1], v12);
            if (*(v13 + 56))
            {
              break;
            }

            *(v13 + 56) = 1;
            mlir::DataFlowAnalysis::propagateIfChanged(a1, v13, 1);
            v8 += 4;
            if (!--v7)
            {
              goto LABEL_19;
            }
          }

          mlir::DataFlowAnalysis::propagateIfChanged(a1, v13, 0);
          v8 += 4;
          --v7;
        }

        while (v7);
      }
    }
  }

LABEL_19:
  if (v24 == 1 && v21 != &v23)
  {
    free(v21);
  }
}

void mlir::dataflow::DeadCodeAnalysis::getOperandValues(mlir::dataflow::DeadCodeAnalysis *this@<X0>, mlir::Operation *a2@<X1>, uint64_t a3@<X8>)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v12 = this;
  __src = v15;
  v14 = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 17);
    if (v4 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v4)
    {
      v5 = v4;
      v6 = (*(a2 + 9) + 24);
      while (1)
      {
        v7 = llvm::function_ref<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue> const* ()(mlir::Value)>::callback_fn<mlir::dataflow::DeadCodeAnalysis::getOperandValues(mlir::Operation *)::$_0>(&v12, *v6);
        if (*(v7 + 176) != 1)
        {
          break;
        }

        if (v14 >= HIDWORD(v14))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(__src + v14) = *(v7 + 168);
        v8 = v14 + 1;
        LODWORD(v14) = v14 + 1;
        v6 += 4;
        if (!--v5)
        {
          goto LABEL_12;
        }
      }

      v9 = 0;
      *a3 = 0;
      goto LABEL_17;
    }
  }

  v8 = v14;
LABEL_12:
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  v9 = 1;
  if (!v8 || &__src == a3)
  {
LABEL_17:
    *(a3 + 64) = v9;
    v11 = __src;
    if (__src == v15)
    {
      return;
    }

    goto LABEL_18;
  }

  if (__src == v15)
  {
    if (v8 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy((a3 + 16), __src, 8 * v8);
    *(a3 + 8) = v8;
  }

  else
  {
    *a3 = __src;
    v10 = HIDWORD(v14);
    *(a3 + 8) = v8;
    *(a3 + 12) = v10;
    __src = v15;
    HIDWORD(v14) = 0;
  }

  LODWORD(v14) = 0;
  *(a3 + 64) = 1;
  v11 = __src;
  if (__src != v15)
  {
LABEL_18:
    free(v11);
  }
}

void mlir::dataflow::Executable::~Executable(mlir::dataflow::Executable *this)
{
  *this = &unk_286892B50;
  v2 = *(this + 16);
  if (v2 != this + 144)
  {
    free(v2);
  }

  v3 = *(this + 9);
  if (v3 != *(this + 8))
  {
    free(v3);
  }

  mlir::AnalysisState::~AnalysisState(this);
}

{
  *this = &unk_286892B50;
  v2 = *(this + 16);
  if (v2 != this + 144)
  {
    free(v2);
  }

  v3 = *(this + 9);
  if (v3 != *(this + 8))
  {
    free(v3);
  }

  mlir::AnalysisState::~AnalysisState(this);
}

void sub_256E46198()
{

  JUMPOUT(0x259C63180);
}

void mlir::dataflow::PredecessorState::~PredecessorState(llvm **this)
{
  *this = &unk_286892B98;
  llvm::deallocate_buffer(this[22], (24 * *(this + 48)));
}

{
  *this = &unk_286892B98;
  llvm::deallocate_buffer(this[22], (24 * *(this + 48)));
}

void sub_256E4620C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 16);
  if (v13 != (v12 + 144))
  {
    free(v13);
  }

  v14 = *(v12 + 9);
  if (v14 != *(v12 + 8))
  {
    free(v14);
  }

  mlir::AnalysisState::~AnalysisState(v12);
}

void sub_256E46298()
{
  v1 = *(v0 + 16);
  if (v1 != (v0 + 144))
  {
    free(v1);
  }

  v2 = *(v0 + 9);
  if (v2 != *(v0 + 8))
  {
    free(v2);
  }

  mlir::AnalysisState::~AnalysisState(v0);
}

void sub_256E462C4()
{

  JUMPOUT(0x259C63180);
}

void mlir::dataflow::CFGEdge::~CFGEdge(mlir::dataflow::CFGEdge *this)
{
  mlir::GenericLatticeAnchor::~GenericLatticeAnchor(this);

  JUMPOUT(0x259C63180);
}

void mlir::dataflow::DeadCodeAnalysis::~DeadCodeAnalysis(mlir::dataflow::DeadCodeAnalysis *this)
{
  *this = &unk_286892B20;
  v2 = *(this + 10);
  v3 = *(this + 3);
  if (v2)
  {
    v4 = (v3 + 8);
    v5 = 16 * v2;
    do
    {
      if ((*(v4 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          llvm::deallocate_buffer(*(v6 + 8), (16 * *(v6 + 24)));
        }
      }

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
    v3 = *(this + 3);
    v7 = (16 * *(this + 10));
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

{
  *this = &unk_286892B20;
  v2 = *(this + 10);
  v3 = *(this + 3);
  if (v2)
  {
    v4 = (v3 + 8);
    v5 = 16 * v2;
    do
    {
      if ((*(v4 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          llvm::deallocate_buffer(*(v6 + 8), (16 * *(v6 + 24)));
        }
      }

      v4 += 2;
      v5 -= 16;
    }

    while (v5);
    v3 = *(this + 3);
    v7 = (16 * *(this + 10));
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

void sub_256E463F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  mlir::DataFlowAnalysis::~DataFlowAnalysis(v16);
}

void sub_256E464E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  mlir::DataFlowAnalysis::~DataFlowAnalysis(v16);

  JUMPOUT(0x259C63180);
}

const char *llvm::getTypeName<mlir::dataflow::CFGEdge>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::dataflow::CFGEdge]";
  v6 = 73;
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

uint64_t mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = a2 & 0xFFFFFFFFFFFFFFF8 | 5;
  {
    v4 = a1;
    mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>();
    a1 = v4;
  }

  v5[0] = v2;
  v5[1] = mlir::detail::TypeIDResolver<mlir::dataflow::Executable,void>::resolveTypeID(void)::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::operator[](a1 + 128, v5);
  if (!result)
  {
    operator new();
  }

  return result;
}

const char *llvm::getTypeName<mlir::dataflow::Executable>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::dataflow::Executable]";
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

uint64_t mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = a2 & 0xFFFFFFFFFFFFFFF8 | 1;
  {
    v4 = a1;
    mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>();
    a1 = v4;
  }

  v5[0] = v2;
  v5[1] = mlir::detail::TypeIDResolver<mlir::dataflow::PredecessorState,void>::resolveTypeID(void)::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::operator[](a1 + 128, v5);
  if (!result)
  {
    operator new();
  }

  return result;
}

const char *llvm::getTypeName<mlir::dataflow::PredecessorState>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::dataflow::PredecessorState]";
  v6 = 82;
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

void llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<mlir::dataflow::DeadCodeAnalysis::initializeSymbolCallables(mlir::Operation *)::$_0>(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v6 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  v7 = *(v6 + 1);
  if (v7)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + 32;
  v10 = *(v8 + 40);
  if (v10 != v8 + 32)
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
      if (mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr))
      {
        break;
      }

      v10 = *(v10 + 8);
    }

    while (v10 != v9);
  }

  if (v10 != v9)
  {
    v12 = 0;
    while (1)
    {
      v13 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
      InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v13);
      __p = v13;
      v30 = InterfaceFor;
      if (!mlir::CallableOpInterface::getCallableRegion(&__p))
      {
        goto LABEL_25;
      }

      v15 = __p;
      InherentAttr = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(__p);
      if (!InherentAttr)
      {
        goto LABEL_15;
      }

      if (*(v15 + 47))
      {
        InherentAttr = mlir::Operation::getInherentAttr(v15, "sym_name", 8);
        if (v17)
        {
          break;
        }
      }

      if (mlir::DictionaryAttr::contains((v15 + 7), "sym_name", 8uLL))
      {
LABEL_17:
        v18 = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v15);
        v32 = v15;
        v33 = v18;
        if (v15)
        {
          if ((mlir::SymbolOpInterface::isPublic(&v32) & 1) != 0 || (a3 & 1) == 0 && mlir::SymbolOpInterface::isNested(&v32))
          {
            v19 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(v5 + 8), __p);
            v20 = *(v19 + 56);
            *(v19 + 56) = 0;
            mlir::DataFlowAnalysis::propagateIfChanged(v5, v19, v20);
          }

          v12 = 1;
        }

        goto LABEL_25;
      }

      v32 = 0;
      v33 = 0;
      do
      {
LABEL_25:
        v10 = *(v10 + 8);
        if (v10 == v9)
        {
          break;
        }

        v21 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
      }

      while (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v21));
      if (v10 == v9)
      {
        if (v12)
        {
          mlir::SymbolTable::getSymbolUses(v6, &__p);
          if (v31)
          {
            v22 = __p;
            v23 = v30;
            while (v22 != v23)
            {
              if (!mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(*v22))
              {
                v24 = mlir::SymbolTableCollection::lookupSymbolIn(v5 + 24, **(a1 + 8), v22[1]);
                v25 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(v5 + 8), v24);
                v26 = *(v25 + 56);
                *(v25 + 56) = 0;
                mlir::DataFlowAnalysis::propagateIfChanged(v5, v25, v26);
              }

              v22 += 2;
            }
          }

          else
          {
            v27 = **(a1 + 8);
            v28 = v5;
            v32 = &v28;
            mlir::detail::walk<mlir::ForwardIterator>(v27, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_8dataflow16DeadCodeAnalysis25initializeSymbolCallablesES3_ENK3__0clES3_bEUlNS1_19CallableOpInterfaceEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v32, 1);
          }

          if (v31 == 1 && __p)
          {
            v30 = __p;
            operator delete(__p);
          }
        }

        return;
      }
    }

    if (InherentAttr)
    {
      goto LABEL_17;
    }

LABEL_15:
    v32 = 0;
    v33 = InherentAttr;
    goto LABEL_25;
  }
}

uint64_t _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_8dataflow16DeadCodeAnalysis25initializeSymbolCallablesES3_ENK3__0clES3_bEUlNS1_19CallableOpInterfaceEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  result = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (result && a2)
  {
    mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    v5 = **a1;
    v6 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(v5 + 8), a2);
    v7 = *(v6 + 56);
    *(v6 + 56) = 0;

    return mlir::DataFlowAnalysis::propagateIfChanged(v5, v6, v7);
  }

  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  {
    v11 = a4;
    v12 = a1;
    v8 = a3;
    v9 = a5;
    v10 = a2;
    mlir::dataflow::Executable::onUpdate();
    a2 = v10;
    a4 = v11;
    a3 = v8;
    a5 = v9;
    a1 = v12;
  }

  v16[0] = a2;
  v16[1] = a3;
  v5 = *a5;
  v15[0] = *a4;
  v15[1] = v5;
  v6 = 0xBF58476D1CE4E5B9 * ((v5 >> 4) ^ (v5 >> 9) | (((LODWORD(v15[0]) >> 4) ^ (LODWORD(v15[0]) >> 9)) << 32));
  v14 = v15;
  v13[0] = v15;
  v13[1] = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::dataflow::CFGEdge,void>::resolveTypeID(void)::id, (v6 >> 31) ^ v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::dataflow::CFGEdge * mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>(llvm::function_ref<void ()(mlir::dataflow::CFGEdge *)>,mlir::TypeID,mlir::Block *&,mlir::Block *&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::dataflow::CFGEdge * mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>(llvm::function_ref<void ()(mlir::dataflow::CFGEdge *)>,mlir::TypeID,mlir::Block *&,mlir::Block *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
}

uint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::dataflow::CFGEdge * mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>(llvm::function_ref<void ()(mlir::dataflow::CFGEdge *)>,mlir::TypeID,mlir::Block *&,mlir::Block *&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v4 = mlir::GenericLatticeAnchorBase<mlir::dataflow::CFGEdge,std::pair<mlir::Block *,mlir::Block *>>::construct<std::pair<mlir::Block *,mlir::Block *>>(a2, *a1);
  v5 = v3;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), v3, v4);
  }

  return v5;
}

__n128 mlir::GenericLatticeAnchorBase<mlir::dataflow::CFGEdge,std::pair<mlir::Block *,mlir::Block *>>::construct<std::pair<mlir::Block *,mlir::Block *>>(unint64_t *a1, __n128 *a2)
{
  a1[10] += 32;
  v3 = *a1;
  v4 = a1[1];
  Slow = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = Slow + 32;
  if (v3)
  {
    v7 = v6 > v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = a2;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a1, 32, 32, 3);
    a2 = v10;
    {
      goto LABEL_6;
    }

LABEL_8:
    v12 = a2;
    v11 = Slow;
    mlir::dataflow::Executable::onUpdate();
    Slow = v11;
    a2 = v12;
    goto LABEL_6;
  }

  *a1 = v6;
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = mlir::detail::TypeIDResolver<mlir::dataflow::CFGEdge,void>::resolveTypeID(void)::id;
  *Slow = &unk_286892C58;
  *(Slow + 8) = v8;
  result = *a2;
  *(Slow + 16) = *a2;
  *Slow = &unk_286892BE0;
  return result;
}

uint64_t mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::dataflow::CFGEdge *>(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  {
    v4 = a1;
    mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>();
    a1 = v4;
  }

  v5[0] = v2;
  v5[1] = mlir::detail::TypeIDResolver<mlir::dataflow::Executable,void>::resolveTypeID(void)::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::operator[](a1 + 128, v5);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t llvm::function_ref<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue> const* ()(mlir::Value)>::callback_fn<mlir::dataflow::DeadCodeAnalysis::getOperandValues(mlir::Operation *)::$_0>(char **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>,mlir::Value>(*(*a1 + 1), a2);
  v4 = *(v3 + 56);
  if (*(v3 + 64) == v4)
  {
    v8 = *(v3 + 76);
    if (v8)
    {
      v9 = 8 * v8;
      v10 = *(v3 + 56);
      while (*v10 != v2)
      {
        ++v10;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_10;
        }
      }

      return v3;
    }

LABEL_10:
    if (v8 < *(v3 + 72))
    {
      *(v3 + 76) = v8 + 1;
      *(v4 + 8 * v8) = v2;
      v6 = *(v3 + 128);
      if (v6 < *(v3 + 132))
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  llvm::SmallPtrSetImplBase::insert_imp_big((v3 + 56), v2);
  if (v5)
  {
    v6 = *(v3 + 128);
    if (v6 < *(v3 + 132))
    {
LABEL_4:
      *(*(v3 + 120) + 8 * v6) = v2;
      ++*(v3 + 128);
      return v3;
    }

LABEL_12:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return v3;
}

uint64_t mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::ProgramPoint>(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = a2 & 0xFFFFFFFFFFFFFFFCLL | 1;
  {
    v4 = a1;
    mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>();
    a1 = v4;
  }

  v5[0] = v2;
  v5[1] = mlir::detail::TypeIDResolver<mlir::dataflow::Executable,void>::resolveTypeID(void)::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::operator[](a1 + 128, v5);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::ProgramPoint>(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = a2 & 0xFFFFFFFFFFFFFFFCLL | 1;
  {
    v4 = a1;
    mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>();
    a1 = v4;
  }

  v5[0] = v2;
  v5[1] = mlir::detail::TypeIDResolver<mlir::dataflow::PredecessorState,void>::resolveTypeID(void)::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::operator[](a1 + 128, v5);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Block *>(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = a2 & 0xFFFFFFFFFFFFFFF8 | 5;
  {
    v4 = a1;
    mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>();
    a1 = v4;
  }

  v5[0] = v2;
  v5[1] = mlir::detail::TypeIDResolver<mlir::dataflow::PredecessorState,void>::resolveTypeID(void)::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::operator[](a1 + 128, v5);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::initialize(mlir::dataflow::AbstractDenseForwardDataFlowAnalysis *this, mlir::Operation *a2)
{
  if (((*(*this + 56))(this) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 11);
  if ((v4 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v5 = ((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
  v6 = v5 + 24 * (v4 & 0x7FFFFF);
  while (2)
  {
    for (i = *(v5 + 8); i != v5; i = *(i + 8))
    {
      if (i)
      {
        v8 = (i - 8);
      }

      else
      {
        v8 = 0;
      }

      mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visitBlock(this, v8);
      v9 = (v8 + 32);
      for (j = *(v8 + 5); j != v9; j = j[1])
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
        if (((*(*this + 16))(this, ValuePtr) & 1) == 0)
        {
          return 0;
        }
      }
    }

    v5 += 24;
    result = 1;
    if (v5 != v6)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visitBlock(mlir::dataflow::AbstractDenseForwardDataFlowAnalysis *this, mlir::Block *a2)
{
  v2 = a2;
  v29 = a2;
  v4 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(this + 1), a2);
  result = mlir::DataFlowAnalysis::addDependency(this, v4, v2 | 4);
  if (*(v4 + 56) == 1)
  {
    v6 = (*(*this + 40))(this, v2 & 0xFFFFFFFFFFFFFFF8 | 5);
    result = mlir::Block::isEntryBlock(v2);
    if (result)
    {
      ParentOp = mlir::Block::getParentOp(v2);
      if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
      {
        v27 = 0;
        InterfaceFor = 0;
        goto LABEL_12;
      }

      if (!ParentOp)
      {
        v27 = 0;
        InterfaceFor = 0;
        goto LABEL_12;
      }

      v27 = ParentOp;
      InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
      CallableRegion = mlir::CallableOpInterface::getCallableRegion(&v27);
      if (CallableRegion != mlir::Block::getParent(v2))
      {
LABEL_12:
        v16 = mlir::Block::getParentOp(v2);
        if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v16) && v16)
        {
          v17 = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v16);
          return mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visitRegionBranchOperation(this, v2 | 4, v16, v17, v6);
        }

        return (*(*this + 48))(this, v6);
      }

      v18 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(this + 1), v27);
      result = mlir::DataFlowAnalysis::addDependency(this, v18, v2 | 4);
      if (*(v18 + 56) != 1 || (**(this + 1) & 1) == 0)
      {
        return (*(*this + 48))(this, v6);
      }

      v19 = *(v18 + 136);
      if (v19)
      {
        v20 = *(v18 + 128);
        v21 = 8 * v19;
        do
        {
          v25 = *v20;
          v26 = *(*v20 + 16);
          if (*(v26 + 40) == *v20)
          {
            v22 = v26 & 0xFFFFFFFFFFFFFFF8 | 5;
          }

          else
          {
            v22 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*v25) | 1;
          }

          v23 = (*(*this + 40))(this, v22);
          mlir::DataFlowAnalysis::addDependency(this, v23, v2 | 4);
          v24 = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v25);
          result = (*(*this + 72))(this, v25, v24, 0, v23, v6);
          v20 += 8;
          v21 -= 8;
        }

        while (v21);
      }
    }

    else
    {
      while (1)
      {
        v2 = *v2;
        if (!v2)
        {
          break;
        }

        v27 = mlir::PredecessorIterator::unwrap(v2);
        v8 = v29;
        v9 = mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>((*(this + 1) + 120), 0, 0, &v27, &v29);
        v10 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::dataflow::CFGEdge *>(*(this + 1), v9);
        result = mlir::DataFlowAnalysis::addDependency(this, v10, v8 | 4);
        if (*(v10 + 56) == 1)
        {
          v11 = v29;
          Terminator = mlir::Block::getTerminator(v27);
          v13 = (*(*this + 40))(this, Terminator & 0xFFFFFFFFFFFFFFF8 | 1);
          mlir::DataFlowAnalysis::addDependency(this, v13, v11 | 4);
          v14 = (*(*v6 + 32))(v6, v13);
          result = mlir::DataFlowAnalysis::propagateIfChanged(this, v6, v14);
        }
      }
    }
  }

  return result;
}

uint64_t mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visit(mlir::dataflow::AbstractDenseForwardDataFlowAnalysis *a1, uint64_t a2)
{
  v3 = a2;
  v4 = (a2 & 0xFFFFFFFFFFFFFFF8);
  if ((v3 & 4) != 0 || !v4)
  {
    mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visitBlock(a1, v4);
    return 1;
  }

  else
  {
    v5 = *(*a1 + 56);

    return v5();
  }
}

uint64_t mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visitCallOperation(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v23 = a3;
  InterfaceFor = mlir::CallOpInterface::resolveCallable(&v22);
  v9 = InterfaceFor;
  if (InterfaceFor)
  {
    if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor))
    {
      v9 = 0;
      v20 = 0;
      v21 = 0;
      v10 = a1[1];
      if (*v10 != 1)
      {
        return (*(*a1 + 72))(a1, v22, v23, 2, a4, a5);
      }

      goto LABEL_5;
    }

    InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
  }

  v20 = v9;
  v21 = InterfaceFor;
  v10 = a1[1];
  if (*v10 != 1)
  {
    return (*(*a1 + 72))(a1, v22, v23, 2, a4, a5);
  }

LABEL_5:
  if (!v9)
  {
    goto LABEL_8;
  }

  if (!mlir::CallableOpInterface::getCallableRegion(&v20))
  {
    return (*(*a1 + 72))(a1, v22, v23, 2, a4, a5);
  }

  v10 = a1[1];
LABEL_8:
  v11 = v22;
  v12 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(v10, v22);
  result = mlir::DataFlowAnalysis::addDependency(a1, v12, v11 & 0xFFFFFFFFFFFFFFFBLL);
  if ((*(v12 + 56) & 1) == 0)
  {
    return (*(*a1 + 48))(a1, a5);
  }

  v14 = *(v12 + 136);
  if (v14)
  {
    v15 = *(v12 + 128);
    v16 = 8 * v14;
    do
    {
      v17 = *v15++;
      v18 = v22;
      v19 = (*(*a1 + 40))(a1, v17 & 0xFFFFFFFFFFFFFFF8 | 1);
      mlir::DataFlowAnalysis::addDependency(a1, v19, v18 & 0xFFFFFFFFFFFFFFFBLL);
      result = (*(*a1 + 72))(a1, v22, v23, 1, v19, a5);
      v16 -= 8;
    }

    while (v16);
  }

  return result;
}

uint64_t mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::getLatticeFor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 40))(a1, a3);
  mlir::DataFlowAnalysis::addDependency(a1, v5, a2);
  return v5;
}

uint64_t mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::processOperation(mlir::dataflow::AbstractDenseForwardDataFlowAnalysis *this, uint64_t a2)
{
  v4 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(this + 1), *(a2 + 16));
  mlir::DataFlowAnalysis::addDependency(this, v4, a2 & 0xFFFFFFFFFFFFFFFBLL);
  if (*(v4 + 56) != 1)
  {
    return 1;
  }

  v5 = (*(*this + 40))(this, a2 & 0xFFFFFFFFFFFFFFF8 | 1);
  v6 = *(a2 + 16);
  if (*(v6 + 40) == a2)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  else
  {
    v7 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*a2) | 1;
  }

  v8 = (*(*this + 40))(this, v7);
  mlir::DataFlowAnalysis::addDependency(this, v8, a2 & 0xFFFFFFFFFFFFFFFBLL);
  if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    if (a2)
    {
      mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visitRegionBranchOperation(this, a2 & 0xFFFFFFFFFFFFFFFBLL, a2, InterfaceFor, v5);
      return 1;
    }
  }

  if (mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2) && (v11 = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2), a2))
  {
    mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visitCallOperation(this, a2, v11, v8, v5);
    return 1;
  }

  else
  {
    v12 = *(*this + 32);

    return v12(this, a2, v8, v5);
  }
}

uint64_t mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visitRegionBranchOperation(uint64_t *a1, uint64_t a2, mlir::Block *a3, uint64_t a4, uint64_t a5)
{
  v9 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::ProgramPoint>(a1[1], a2);
  v31 = a2;
  result = mlir::DataFlowAnalysis::addDependency(a1, v9, a2);
  v11 = *(v9 + 136);
  if (v11)
  {
    v12 = 0;
    v13 = *(v9 + 128);
    v14 = (v31 & 4) == 0;
    if ((v31 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      v14 = 1;
    }

    v30 = v14;
    for (i = 8 * v11; i; i -= 8)
    {
      v18 = *v13;
      if (*v13 == a3)
      {
        v24 = v18[2];
        if (*(v24 + 5) == a3)
        {
          v26 = (*(*a1 + 40))(a1, v24 & 0xFFFFFFFFFFFFFFF8 | 5);
        }

        else
        {
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*v18);
          v26 = (*(*a1 + 40))(a1, ValuePtr | 1);
        }

        v19 = v26;
        mlir::DataFlowAnalysis::addDependency(a1, v26, v31);
        v23 = 0;
        v22 = 0;
        if (v30)
        {
LABEL_14:
          ParentOp = v18[2];
          if (ParentOp)
          {
            ParentOp = mlir::Block::getParentOp(ParentOp);
          }

          if (v18 == a3 || ParentOp == a3)
          {
            result = (*(*a1 + 64))(a1, a3, a4, v23 | v22 | (v12 << 8), 0, v19, a5);
          }

          else
          {
            v28 = (*(*a5 + 32))(a5, v19);
            result = mlir::DataFlowAnalysis::propagateIfChanged(a1, a5, v28);
          }

          goto LABEL_6;
        }
      }

      else
      {
        v19 = (*(*a1 + 40))(a1, v18 & 0xFFFFFFFFFFFFFFF8 | 1);
        mlir::DataFlowAnalysis::addDependency(a1, v19, v31);
        Parent = mlir::Block::getParent(v18[2]);
        RegionNumber = mlir::Region::getRegionNumber(Parent);
        v12 = RegionNumber >> 8;
        v22 = RegionNumber;
        v23 = 0x100000000;
        if (v30)
        {
          goto LABEL_14;
        }
      }

      v16 = mlir::Block::getParent((v31 & 0xFFFFFFFFFFFFFFF8));
      v17 = mlir::Region::getRegionNumber(v16);
      result = (*(*a1 + 64))(a1, a3, a4, v23 | v22 | (v12 << 8), v17 | 0x100000000, v19, a5);
LABEL_6:
      ++v13;
    }
  }

  return result;
}

uint64_t mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::initialize(mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis *this, mlir::Operation *a2)
{
  if (((*(*this + 56))(this) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 11);
  if ((v4 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v5 = ((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
  v6 = v5 + 24 * (v4 & 0x7FFFFF);
  do
  {
    for (i = *(v5 + 8); i != v5; i = *(i + 8))
    {
      if (i)
      {
        v8 = i - 8;
      }

      else
      {
        v8 = 0;
      }

      mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visitBlock(this, v8);
      v9 = (v8 + 32);
      v10 = (v8 + 32);
      while (1)
      {
        v10 = *v10;
        if (v10 == v9)
        {
          break;
        }

        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
        if (((*(*this + 16))(this, ValuePtr) & 1) == 0)
        {
          return 0;
        }
      }
    }

    v5 += 24;
    result = 1;
  }

  while (v5 != v6);
  return result;
}

void mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visitBlock(mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis *this, uint64_t a2)
{
  v35 = a2;
  v4 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(this + 1), a2);
  mlir::DataFlowAnalysis::addDependency(this, v4, a2 | 4);
  if (*(v4 + 56) != 1)
  {
    return;
  }

  v5 = (*(*this + 40))(this, a2 & 0xFFFFFFFFFFFFFFF8 | 5);
  v6 = *(a2 + 32);
  if (v6 == (a2 + 32))
  {
    goto LABEL_8;
  }

  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v6);
  {
    v8 = *(ValuePtr + 48);
    if (v8[2] != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v34 = ValuePtr;
    v8 = *(v34 + 48);
    if (v8[2] != &mlir::detail::TypeIDResolver<void,void>::id)
    {
LABEL_5:
      if (!(*(*v8 + 4))(v8, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        goto LABEL_8;
      }
    }
  }

  Terminator = mlir::Block::getTerminator(a2);
  if (!Terminator || !mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator))
  {
    mlir::SuccessorRange::SuccessorRange(&v36, v35);
    v11 = InterfaceFor;
    if (InterfaceFor)
    {
      v12 = (v36 + 24);
      do
      {
        v36 = *v12;
        v16 = v35;
        v17 = mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>((*(this + 1) + 120), 0, 0, &v35, &v36);
        v18 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::dataflow::CFGEdge *>(*(this + 1), v17);
        mlir::DataFlowAnalysis::addDependency(this, v18, v16 | 4);
        if (*(v18 + 56) == 1)
        {
          v19 = v35;
          if (*(v36 + 32) == v36 + 32)
          {
            v13 = v36 & 0xFFFFFFFFFFFFFFF8 | 5;
          }

          else
          {
            v13 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v36 + 40)) | 1;
          }

          v14 = (*(*this + 40))(this, v13);
          mlir::DataFlowAnalysis::addDependency(this, v14, v19 | 4);
          v15 = (*(*v5 + 40))(v5, v14);
          mlir::DataFlowAnalysis::propagateIfChanged(this, v5, v15);
        }

        v12 += 4;
        --v11;
      }

      while (v11);
    }

    return;
  }

LABEL_8:
  ParentOp = mlir::Block::getParentOp(v35);
  if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
  {
    v36 = 0;
    InterfaceFor = 0;
    goto LABEL_22;
  }

  if (!ParentOp)
  {
    v36 = 0;
    InterfaceFor = 0;
    goto LABEL_22;
  }

  v36 = ParentOp;
  InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
  CallableRegion = mlir::CallableOpInterface::getCallableRegion(&v36);
  if (CallableRegion != mlir::Block::getParent(v35))
  {
LABEL_22:
    v21 = mlir::Block::getParentOp(v35);
    if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v21) && v21)
    {
      v22 = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v21);
      Parent = mlir::Block::getParent(v35);
      mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visitRegionBranchOperation(this, v35 | 4, v21, v22, Parent, v5);
      return;
    }

    goto LABEL_34;
  }

  v23 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(this + 1), v36);
  mlir::DataFlowAnalysis::addDependency(this, v23, v35 | 4);
  if (*(v23 + 56) != 1 || (**(this + 1) & 1) == 0)
  {
LABEL_34:
    (*(*this + 48))(this, v5);
    return;
  }

  v24 = *(v23 + 136);
  if (v24)
  {
    v25 = *(v23 + 128);
    v26 = 8 * v24;
    do
    {
      v30 = *v25;
      v31 = *(*v25 + 8);
      v32 = *(*v25 + 16);
      if (v31 == v32 + 32)
      {
        v27 = v32 & 0xFFFFFFFFFFFFFFF8 | 5;
      }

      else
      {
        v27 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v31) | 1;
      }

      v28 = (*(*this + 40))(this, v27);
      mlir::DataFlowAnalysis::addDependency(this, v28, v35 | 4);
      v29 = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(v30);
      (*(*this + 72))(this, v30, v29, 1, v28, v5);
      ++v25;
      v26 -= 8;
    }

    while (v26);
  }
}

uint64_t mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visit(mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis *a1, uint64_t a2)
{
  v3 = a2;
  v4 = a2 & 0xFFFFFFFFFFFFFFF8;
  if ((v3 & 4) != 0 || !v4)
  {
    mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visitBlock(a1, v4);
    return 1;
  }

  else
  {
    v5 = *(*a1 + 56);

    return v5();
  }
}

uint64_t mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visitCallOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v20 = a3;
  InterfaceFor = mlir::CallOpInterface::resolveCallableInTable(&v19, *(a1 + 16));
  v9 = InterfaceFor;
  if (InterfaceFor)
  {
    if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor))
    {
      v9 = 0;
      v17 = 0;
      v18 = 0;
      if (**(a1 + 8) != 1)
      {
        return (*(*a1 + 72))(a1, v19, v20, 2, a4, a5);
      }

      goto LABEL_5;
    }

    InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
  }

  v17 = v9;
  v18 = InterfaceFor;
  if (**(a1 + 8) != 1)
  {
    return (*(*a1 + 72))(a1, v19, v20, 2, a4, a5);
  }

LABEL_5:
  if (!v9)
  {
    return (*(*a1 + 48))(a1, a5);
  }

  if (!mlir::CallableOpInterface::getCallableRegion(&v17))
  {
    return (*(*a1 + 72))(a1, v19, v20, 2, a4, a5);
  }

  CallableRegion = mlir::CallableOpInterface::getCallableRegion(&v17);
  if (*CallableRegion == CallableRegion)
  {
    return (*(*a1 + 72))(a1, v19, v20, 2, a4, a5);
  }

  if (!v17)
  {
    return (*(*a1 + 48))(a1, a5);
  }

  v11 = *(mlir::CallableOpInterface::getCallableRegion(&v17) + 8);
  if (v11)
  {
    v12 = v11 - 8;
  }

  else
  {
    v12 = 0;
  }

  if (*(v12 + 32) == v12 + 32)
  {
    ValuePtr = v12 | 4;
  }

  else
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v12 + 40));
  }

  v15 = v19;
  v16 = (*(*a1 + 40))(a1, ValuePtr & 0xFFFFFFFFFFFFFFFCLL | 1);
  mlir::DataFlowAnalysis::addDependency(a1, v16, v15 & 0xFFFFFFFFFFFFFFFBLL);
  return (*(*a1 + 72))(a1, v19, v20, 0, v16, a5);
}

uint64_t mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::getLatticeFor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 40))(a1, a3);
  mlir::DataFlowAnalysis::addDependency(a1, v5, a2);
  return v5;
}

uint64_t mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::processOperation(mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis *this, uint64_t a2)
{
  v4 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(this + 1), *(a2 + 16));
  mlir::DataFlowAnalysis::addDependency(this, v4, a2 & 0xFFFFFFFFFFFFFFFBLL);
  if (*(v4 + 56) != 1)
  {
    return 1;
  }

  v5 = (*(*this + 40))(this, a2 & 0xFFFFFFFFFFFFFFF8 | 1);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v6 == v7 + 32)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  else
  {
    v8 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v6) | 1;
  }

  v9 = (*(*this + 40))(this, v8);
  mlir::DataFlowAnalysis::addDependency(this, v9, a2 & 0xFFFFFFFFFFFFFFFBLL);
  if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    if (a2)
    {
      mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visitRegionBranchOperation(this, a2 & 0xFFFFFFFFFFFFFFFBLL, a2, InterfaceFor, 0, v5);
      return 1;
    }
  }

  if (mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2) && (v12 = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2), a2))
  {
    mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visitCallOperation(this, a2, v12, v9, v5);
    return 1;
  }

  else
  {
    v13 = *(*this + 32);

    return v13(this, a2, v9, v5);
  }
}

void mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visitRegionBranchOperation(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[6] = *MEMORY[0x277D85DE8];
  v21 = a3;
  v22 = a4;
  v23 = v25;
  v24 = 0x200000000;
  mlir::RegionBranchOpInterface::getSuccessorRegions(&v21, a5, &v23);
  v10 = v23;
  if (!v24)
  {
    goto LABEL_17;
  }

  v11 = 24 * v24;
  do
  {
    v16 = *v10;
    if (!*v10 || *v16 == v16)
    {
      v12 = *(v21 + 8);
      v13 = *(v21 + 16);
      if (v12 != v13 + 32)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }

    v17 = v16[1];
    if (v17)
    {
      v18 = v17 - 8;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v20 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(a1[1], v18);
    mlir::DataFlowAnalysis::addDependency(a1, v20, a2);
    if (*(v20 + 56) == 1)
    {
      v13 = v19;
      if (*(v19 + 32) != v19 + 32)
      {
        v12 = *(v19 + 40);
LABEL_4:
        v14 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v12) | 1;
LABEL_5:
        v15 = (*(*a1 + 40))(a1, v14);
        mlir::DataFlowAnalysis::addDependency(a1, v15, a2);
        (*(*a1 + 64))(a1, v21, v22, a5, *v10, v15, a6);
        goto LABEL_6;
      }

LABEL_15:
      v14 = v13 & 0xFFFFFFFFFFFFFFF8 | 5;
      goto LABEL_5;
    }

LABEL_6:
    v10 += 3;
    v11 -= 24;
  }

  while (v11);
  v10 = v23;
LABEL_17:
  if (v10 != v25)
  {
    free(v10);
  }
}

uint64_t mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visitRegionBranchControlFlowTransfer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(*a7 + 40))(a7, a6);

  return mlir::DataFlowAnalysis::propagateIfChanged(a1, a7, v9);
}

uint64_t mlir::dataflow::AbstractDenseBackwardDataFlowAnalysis::visitCallControlFlowTransfer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(*a6 + 40))(a6, a5);
  result = mlir::DataFlowAnalysis::propagateIfChanged(a1, a6, v9);
  if (a4 == 2)
  {
    v11 = *(*a1 + 48);

    return v11(a1, a6);
  }

  return result;
}

uint64_t mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visitRegionBranchControlFlowTransfer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(*a7 + 32))(a7, a6);

  return mlir::DataFlowAnalysis::propagateIfChanged(a1, a7, v9);
}

uint64_t mlir::dataflow::AbstractDenseForwardDataFlowAnalysis::visitCallControlFlowTransfer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(*a6 + 32))(a6, a5);
  result = mlir::DataFlowAnalysis::propagateIfChanged(a1, a6, v9);
  if (a4 == 2)
  {
    v11 = *(*a1 + 48);

    return v11(a1, a6);
  }

  return result;
}

uint64_t mlir::dataflow::IntegerValueRangeLattice::onUpdate(mlir::dataflow::IntegerValueRangeLattice *this, mlir::DataFlowSolver *a2)
{
  mlir::dataflow::AbstractSparseLattice::onUpdate(this, a2);
  mlir::ConstantIntRanges::getConstantValue(this + 168, &v15);
  v14 = *(this + 1) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Lattice<mlir::dataflow::ConstantValue>,mlir::Value>(a2, v14);
  v5 = v4;
  if ((v17 & 1) == 0)
  {
    if (*(v4 + 176) == 1)
    {
      if (*(v4 + 168))
      {
        v9 = 0;
      }

      else
      {
        LODWORD(v18) = *(v4 + 177);
        *(&v18 + 3) = *(v4 + 180);
        v9 = *(v4 + 184);
        if (!*(v4 + 168))
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v9 = 0;
      if (*(v4 + 176) && !*(v4 + 168))
      {
        goto LABEL_19;
      }
    }

    *(v4 + 168) = 0;
    *(v4 + 176) = 1;
    *(v4 + 177) = v18;
    *(v4 + 180) = *(&v18 + 3);
    *(v4 + 184) = v9;
    result = mlir::DataFlowSolver::propagateIfChanged(a2, v4, 1);
    if (v17 != 1)
    {
      return result;
    }

    goto LABEL_26;
  }

  DefiningOp = mlir::Value::getDefiningOp(&v14);
  if (DefiningOp)
  {
    v7 = *(DefiningOp + 48);
    if (*(v7 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
LABEL_4:
      ReferencedDialect = *(v7 + 24);
      goto LABEL_13;
    }
  }

  else
  {
    ParentBlock = mlir::Value::getParentBlock(&v14);
    v7 = *(mlir::Block::getParentOp(ParentBlock) + 48);
    if (*(v7 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      goto LABEL_4;
    }
  }

  v18 = *(v7 + 8);
  ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v18);
LABEL_13:
  v11 = mlir::IntegerAttr::get(*(v14 + 8) & 0xFFFFFFFFFFFFFFF8, &v15);
  if (*(v5 + 176) != 1)
  {
    if (!*(v5 + 176) || v11 != *(v5 + 168))
    {
      goto LABEL_25;
    }

LABEL_19:
    result = mlir::DataFlowSolver::propagateIfChanged(a2, v5, 0);
    if (v17 != 1)
    {
      return result;
    }

    goto LABEL_26;
  }

  v12 = *(v5 + 168);
  if (v12 == v11)
  {
    LODWORD(v18) = *(v5 + 177);
    *(&v18 + 3) = *(v5 + 180);
    ReferencedDialect = *(v5 + 184);
    v11 = v12;
    if (v12 == *(v5 + 168))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = 0;
    ReferencedDialect = 0;
    if (!*(v5 + 168))
    {
      goto LABEL_19;
    }
  }

LABEL_25:
  *(v5 + 168) = v11;
  *(v5 + 176) = 1;
  *(v5 + 177) = v18;
  *(v5 + 180) = *(&v18 + 3);
  *(v5 + 184) = ReferencedDialect;
  result = mlir::DataFlowSolver::propagateIfChanged(a2, v5, 1);
  if (v17 != 1)
  {
    return result;
  }

LABEL_26:
  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      return MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::dataflow::IntegerRangeAnalysis::visitOperation(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  v27[9] = *MEMORY[0x277D85DE8];
  v24[0] = a5;
  v24[1] = a6;
  if (!mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v22 = 0;
    InterfaceFor = 0;
LABEL_18:
    mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::setAllToEntryStates(a1, a5, a6);
    return 1;
  }

  if (!a2)
  {
    v22 = 0;
    InterfaceFor = 0;
    goto LABEL_18;
  }

  v22 = a2;
  InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v25 = v27;
  v26 = 0x100000000;
  if (a4 >= 2)
  {
    llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow();
  }

  if (a4)
  {
    v12 = v27;
    v13 = 8 * a4;
    do
    {
      v14 = *a3++;
      *v12 = 0;
      v12[64] = 0;
      std::__optional_storage_base<mlir::ConstantIntRanges,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<mlir::ConstantIntRanges,false> const&>(v12, (v14 + 168));
      v12 += 72;
      v13 -= 8;
    }

    while (v13);
    v15 = v26;
    v16 = v25;
  }

  else
  {
    v15 = 0;
    v16 = v27;
  }

  LODWORD(v26) = v15 + a4;
  v21[0] = v24;
  v21[1] = a1;
  mlir::InferIntRangeInterface::inferResultRangesFromOptional(&v22, v16, (v15 + a4), llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::dataflow::IntegerRangeAnalysis::visitOperation(mlir::Operation *,llvm::ArrayRef<mlir::dataflow::IntegerValueRangeLattice const*>,llvm::ArrayRef<mlir::dataflow::IntegerValueRangeLattice*>)::$_1>, v21);
  v17 = v25;
  if (v26)
  {
    v18 = -72 * v26;
    v19 = v25 + 72 * v26 - 72;
    do
    {
      v19 = (std::__optional_destruct_base<mlir::ConstantIntRanges,false>::~__optional_destruct_base[abi:nn200100](v19) - 72);
      v18 += 72;
    }

    while (v18);
    v17 = v25;
  }

  if (v17 != v27)
  {
    free(v17);
  }

  return 1;
}

void mlir::dataflow::IntegerRangeAnalysis::visitNonControlFlowArguments(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5, unint64_t a6)
{
  v82 = *MEMORY[0x277D85DE8];
  v72[0] = a4;
  v72[1] = a5;
  v71 = a2;
  if (mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    if (a2)
    {
      InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
    }

    else
    {
      InterfaceFor = 0;
    }

    v69 = a2;
    v70 = InterfaceFor;
    if (a2)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v14 = *(a2 + 72);
        v15 = *(a2 + 68);
        v73 = &v75;
        v74 = 0x100000000;
        if (v15 >= 2)
        {
          llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow();
        }

        if (v15)
        {
          v15 = 1;
          v16 = &v75;
          v17 = (v14 + 24);
          v18 = 1;
          do
          {
            v19 = *v17;
            v17 += 4;
            LatticeElementFor = mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::getLatticeElementFor(a1, v71 & 0xFFFFFFFFFFFFFFFBLL, v19);
            *v16 = 0;
            *(v16 + 64) = 0;
            std::__optional_storage_base<mlir::ConstantIntRanges,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<mlir::ConstantIntRanges,false> const&>(v16, (LatticeElementFor + 168));
            v16 += 9;
            --v18;
          }

          while (v18);
          v21 = v74;
          v22 = v73;
        }

        else
        {
          v21 = 0;
          v22 = &v75;
        }
      }

      else
      {
        v15 = 0;
        v21 = 0;
        v22 = &v75;
        v73 = &v75;
        HIDWORD(v74) = 1;
      }

      LODWORD(v74) = v21 + v15;
      v53 = a3;
      v54 = v72;
      v55 = a1;
      mlir::InferIntRangeInterface::inferResultRangesFromOptional(&v69, v22, v21 + v15, llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::dataflow::IntegerRangeAnalysis::visitNonControlFlowArguments(mlir::Operation *,mlir::RegionSuccessor const&,llvm::ArrayRef<mlir::dataflow::IntegerValueRangeLattice *>,unsigned int)::$_1>, &v53);
      v23 = v73;
      if (v74)
      {
        v24 = -72 * v74;
        v25 = &v73[9 * v74 - 9];
        do
        {
          v25 = (std::__optional_destruct_base<mlir::ConstantIntRanges,false>::~__optional_destruct_base[abi:nn200100](v25) - 72);
          v24 += 72;
        }

        while (v24);
        v23 = v73;
      }

      if (v23 != &v75)
      {
        free(v23);
      }

      return;
    }
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v69 = a1;
  v70 = &v71;
  if (!mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v67 = 0;
    v68 = 0;
    goto LABEL_36;
  }

  if (!a2)
  {
    v67 = 0;
    v68 = 0;
    goto LABEL_36;
  }

  v67 = a2;
  v68 = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  mlir::LoopLikeOpInterface::getLoopInductionVars(&v73, &v67);
  if ((v81 & 1) == 0)
  {
LABEL_36:
    if (a5 >= a6)
    {
      v31 = a6;
    }

    else
    {
      v31 = a5;
    }

    mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::setAllToEntryStates(a1, a4, v31);
    mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::setAllToEntryStates(a1, &a4[a3[2] + a6], a5 - (a3[2] + a6));
    return;
  }

  v26 = v74;
  if (v74 != 1)
  {
    v27 = 0;
    v28 = 0;
    if (v73 == &v75)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v27 = *v73 & 0xFFFFFFFFFFFFFF00;
  v28 = *v73;
  if (v73 != &v75)
  {
LABEL_31:
    free(v73);
  }

LABEL_32:
  if (v26 != 1)
  {
    goto LABEL_36;
  }

  mlir::LoopLikeOpInterface::getLoopLowerBounds(&v73, &v67);
  if (v81 == 1)
  {
    if (v74 == 1)
    {
      v29 = *v73;
      a6 = *v73 >> 8;
      v30 = 1;
    }

    else
    {
      v30 = 0;
      LOBYTE(v29) = 0;
    }

    if (v73 != &v75)
    {
      free(v73);
    }
  }

  else
  {
    LOBYTE(v29) = 0;
    v30 = 0;
  }

  v32 = v28 | v27;
  v33 = v29 | (a6 << 8);
  mlir::LoopLikeOpInterface::getLoopUpperBounds(&v73, &v67);
  if (v81 == 1)
  {
    if (v74 == 1)
    {
      v34 = *v73;
      v28 = *v73 >> 8;
      v35 = 1;
    }

    else
    {
      v35 = 0;
      LOBYTE(v34) = 0;
    }

    if (v73 != &v75)
    {
      free(v73);
    }
  }

  else
  {
    LOBYTE(v34) = 0;
    v35 = 0;
  }

  v36 = v34 | (v28 << 8);
  mlir::LoopLikeOpInterface::getLoopSteps(&v73, &v67);
  if (v81 == 1)
  {
    if (v74 == 1)
    {
      v37 = *v73;
      v6 = *v73 >> 8;
      v38 = 1;
    }

    else
    {
      v38 = 0;
      LOBYTE(v37) = 0;
    }

    if (v73 != &v75)
    {
      free(v73);
    }
  }

  else
  {
    LOBYTE(v37) = 0;
    v38 = 0;
  }

  mlir::dataflow::IntegerRangeAnalysis::visitNonControlFlowArguments(mlir::Operation *,mlir::RegionSuccessor const&,llvm::ArrayRef<mlir::dataflow::IntegerValueRangeLattice *>,unsigned int)::$_2::operator()(&v65, &v69, v33, v30, *(v32 + 8) & 0xFFFFFFFFFFFFFFF8, 0);
  mlir::dataflow::IntegerRangeAnalysis::visitNonControlFlowArguments(mlir::Operation *,mlir::RegionSuccessor const&,llvm::ArrayRef<mlir::dataflow::IntegerValueRangeLattice *>,unsigned int)::$_2::operator()(&v63, &v69, v36, v35, *(v32 + 8) & 0xFFFFFFFFFFFFFFF8, 1);
  mlir::dataflow::IntegerRangeAnalysis::visitNonControlFlowArguments(mlir::Operation *,mlir::RegionSuccessor const&,llvm::ArrayRef<mlir::dataflow::IntegerValueRangeLattice *>,unsigned int)::$_2::operator()(&v61, &v69, v37 | (v6 << 8), v38, *(v32 + 8) & 0xFFFFFFFFFFFFFFF8, 1);
  if (v62 >= 0x41)
  {
    v39 = (v61 + 8 * ((v62 - 1) >> 6));
  }

  else
  {
    v39 = &v61;
  }

  if ((*v39 >> (v62 - 1)))
  {
    v40 = v66;
    v41 = v65;
    v65 = v63;
    v66 = v64;
    v63 = v41;
    v64 = v40;
  }

  else
  {
    llvm::APInt::operator-=(&v63, 1uLL);
  }

  if ((llvm::APInt::compareSigned(&v63, &v65) & 0x80000000) == 0)
  {
    v42 = (*(*a1 + 56))(a1, v32);
    mlir::ConstantIntRanges::fromSigned(&v65, &v63, v43, &v53);
    v46 = v54;
    if (v54 > 0x40)
    {
      llvm::APInt::initSlowCase(&v45, &v53);
    }

    v45 = v53;
    v48 = v56;
    if (v56 > 0x40)
    {
      llvm::APInt::initSlowCase(&v47, &v55);
    }

    v47 = v55;
    v50 = v58;
    if (v58 > 0x40)
    {
      llvm::APInt::initSlowCase(&v49, &v57);
    }

    v49 = v57;
    v52 = v60;
    if (v60 > 0x40)
    {
      llvm::APInt::initSlowCase(&v51, &v59);
    }

    v51 = v59;
    LODWORD(v74) = v46;
    v73 = v45;
    v76 = v48;
    v75 = v47;
    v46 = 0;
    v48 = 0;
    v78 = v50;
    v77 = v49;
    v80 = v60;
    v79 = v59;
    v50 = 0;
    v52 = 0;
    v81 = 1;
    v44 = mlir::dataflow::Lattice<mlir::IntegerValueRange>::join(v42, &v73);
    mlir::DataFlowAnalysis::propagateIfChanged(a1, v42, v44);
    if (v81 == 1)
    {
      if (v80 >= 0x41 && v79)
      {
        MEMORY[0x259C63150](v79, 0x1000C8000313F17);
      }

      if (v78 >= 0x41 && v77)
      {
        MEMORY[0x259C63150](v77, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x259C63150](v75, 0x1000C8000313F17);
      }

      if (v74 >= 0x41 && v73)
      {
        MEMORY[0x259C63150](v73, 0x1000C8000313F17);
      }
    }

    if (v60 >= 0x41 && v59)
    {
      MEMORY[0x259C63150](v59, 0x1000C8000313F17);
    }

    if (v58 >= 0x41 && v57)
    {
      MEMORY[0x259C63150](v57, 0x1000C8000313F17);
    }

    if (v56 >= 0x41 && v55)
    {
      MEMORY[0x259C63150](v55, 0x1000C8000313F17);
    }

    if (v54 >= 0x41 && v53)
    {
      MEMORY[0x259C63150](v53, 0x1000C8000313F17);
    }
  }

  if (v62 >= 0x41 && v61)
  {
    MEMORY[0x259C63150](v61, 0x1000C8000313F17);
  }

  if (v64 >= 0x41 && v63)
  {
    MEMORY[0x259C63150](v63, 0x1000C8000313F17);
  }

  if (v66 >= 0x41 && v65)
  {
    MEMORY[0x259C63150](v65, 0x1000C8000313F17);
  }
}

uint64_t *mlir::dataflow::IntegerRangeAnalysis::visitNonControlFlowArguments(mlir::Operation *,mlir::RegionSuccessor const&,llvm::ArrayRef<mlir::dataflow::IntegerValueRangeLattice *>,unsigned int)::$_2::operator()(llvm::APInt *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v11 = *a2;
  result = mlir::ConstantIntRanges::getStorageBitwidth(a5);
  v13 = result;
  if ((a4 & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((a3 & 4) == 0)
  {
    v14 = a3 & 0xFFFFFFFFFFFFFFF8;
    if ((a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v15 = *(*v14 + 136);
      if (v15 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v14 = 0;
      }

      v22 = v14;
      if (v15 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        return mlir::IntegerAttr::getValue(&v22, a1);
      }
    }

    goto LABEL_16;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFF8) == 0 || (result = mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::getLatticeElementFor(v11, **(a2 + 8) & 0xFFFFFFFFFFFFFFFBLL, a3 & 0xFFFFFFFFFFFFFFF8)) == 0 || *(result + 232) != 1)
  {
LABEL_16:
    *(a1 + 2) = v13;
    if (a6)
    {
      if (v13 > 0x40)
      {
        llvm::APInt::initSlowCase(a1);
      }

      v19 = 0xFFFFFFFFFFFFFFFFLL >> -v13;
      if (!v13)
      {
        v19 = 0;
      }

      *a1 = v19;
      v20 = *a1 & ~(1 << (v13 - 1));
    }

    else
    {
      if (v13 > 0x40)
      {
        llvm::APInt::initSlowCase(a1);
      }

      *a1 = 0;
      v20 = (1 << (v13 - 1)) | *a1;
    }

    goto LABEL_25;
  }

  v16 = (result + 21);
  if (a6)
  {
    result = mlir::ConstantIntRanges::smax(v16);
    v17 = result;
    v18 = *(result + 2);
    *(a1 + 2) = v18;
    if (v18 > 0x40)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = mlir::ConstantIntRanges::smin(v16);
    v17 = result;
    v21 = *(result + 2);
    *(a1 + 2) = v21;
    if (v21 > 0x40)
    {
LABEL_13:

      llvm::APInt::initSlowCase(a1, v17);
    }
  }

  v20 = *v17;
LABEL_25:
  *a1 = v20;
  return result;
}

uint64_t mlir::dataflow::Lattice<mlir::IntegerValueRange>::join(uint64_t a1, const mlir::ConstantIntRanges *a2)
{
  if (*(a1 + 232))
  {
    if (*(a2 + 64))
    {
      mlir::ConstantIntRanges::rangeUnion(a1 + 168, a2, &v18);
      v10 = v19;
      v9 = v18;
      v12 = v21;
      v11 = v20;
      v14 = v23;
      v13 = v22;
      v16 = v25;
      v15 = v24;
      v17 = 1;
      v3 = 1;
      v4 = *(a1 + 232);
      if (v4 == 1)
      {
        goto LABEL_17;
      }

LABEL_10:
      if (v3 == v4)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    LOBYTE(v9) = 0;
    v17 = 0;
    std::__optional_storage_base<mlir::ConstantIntRanges,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<mlir::ConstantIntRanges,false> const&>(&v9, (a1 + 168));
    v3 = v17;
    v4 = *(a1 + 232);
    if (v17 != v4 || v17 == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
    v17 = 0;
    std::__optional_storage_base<mlir::ConstantIntRanges,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<mlir::ConstantIntRanges,false> const&>(&v9, a2);
    v3 = v17;
    v4 = *(a1 + 232);
    if (v17 != v4 || v17 == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_17:
  if (mlir::ConstantIntRanges::operator==(&v9, (a1 + 168)))
  {
LABEL_18:
    v6 = 0;
    if (v17 == 1)
    {
      goto LABEL_19;
    }

    return v6;
  }

LABEL_11:
  std::__optional_storage_base<mlir::ConstantIntRanges,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<mlir::ConstantIntRanges,false> const&>((a1 + 168), &v9);
  v6 = 1;
  if (v17 != 1)
  {
    return v6;
  }

LABEL_19:
  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

  if (v14 >= 0x41 && v13)
  {
    MEMORY[0x259C63150](v13, 0x1000C8000313F17);
  }

  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  if (v10 < 0x41 || !v9)
  {
    return v6;
  }

  MEMORY[0x259C63150](v9, 0x1000C8000313F17);
  return v6;
}

void mlir::dataflow::IntegerValueRangeLattice::~IntegerValueRangeLattice(mlir::dataflow::IntegerValueRangeLattice *this)
{
  *this = &unk_286892E90;
  std::__optional_destruct_base<mlir::ConstantIntRanges,false>::~__optional_destruct_base[abi:nn200100](this + 168);
  *this = &unk_286893088;
  v2 = *(this + 15);
  if (v2 != this + 136)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != *(this + 7))
  {
    free(v3);
  }

  mlir::AnalysisState::~AnalysisState(this);
}

{
  *this = &unk_286892E90;
  std::__optional_destruct_base<mlir::ConstantIntRanges,false>::~__optional_destruct_base[abi:nn200100](this + 168);
  *this = &unk_286893088;
  v2 = *(this + 15);
  if (v2 != this + 136)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != *(this + 7))
  {
    free(v3);
  }

  mlir::AnalysisState::~AnalysisState(this);
}

void sub_256E4A0D4()
{

  JUMPOUT(0x259C63180);
}

llvm::raw_ostream *mlir::dataflow::Lattice<mlir::IntegerValueRange>::print(uint64_t a1, llvm::raw_ostream *this)
{
  if (*(a1 + 232) == 1)
  {
    return mlir::operator<<(this, a1 + 168);
  }

  else
  {
    return llvm::operator<<(this);
  }
}

void mlir::dataflow::IntegerRangeAnalysis::~IntegerRangeAnalysis(mlir::dataflow::IntegerRangeAnalysis *this)
{
  mlir::DataFlowAnalysis::~DataFlowAnalysis(this);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::dataflow::IntegerRangeAnalysis::setToEntryState(mlir::dataflow::IntegerRangeAnalysis *this, mlir::dataflow::IntegerValueRangeLattice *a2)
{
  mlir::IntegerValueRange::getMaxRange(*(a2 + 1) & 0xFFFFFFFFFFFFFFFCLL, &v6);
  v4 = mlir::dataflow::Lattice<mlir::IntegerValueRange>::join(a2, &v6);
  result = mlir::DataFlowAnalysis::propagateIfChanged(this, a2, v4);
  if (v14 == 1)
  {
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
        result = MEMORY[0x259C63150](v10, 0x1000C8000313F17);
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
        return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor();
    v18 = v23;
  }

  v19 = v4[125];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::InferIntRangeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::InferIntRangeInterface]";
  v6 = 78;
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

uint64_t std::__optional_storage_base<mlir::ConstantIntRanges,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<mlir::ConstantIntRanges,false> const&>(uint64_t this, llvm::APInt *a2)
{
  if (*(a2 + 64) == 1)
  {
    v2 = *(a2 + 2);
    *(this + 8) = v2;
    if (v2 > 0x40)
    {
      llvm::APInt::initSlowCase(this, a2);
    }

    *this = *a2;
    v3 = *(a2 + 6);
    *(this + 24) = v3;
    if (v3 > 0x40)
    {
      llvm::APInt::initSlowCase((this + 16), (a2 + 16));
    }

    *(this + 16) = *(a2 + 2);
    v4 = *(a2 + 10);
    *(this + 40) = v4;
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase((this + 32), (a2 + 32));
    }

    *(this + 32) = *(a2 + 4);
    v5 = *(a2 + 14);
    *(this + 56) = v5;
    if (v5 > 0x40)
    {
      llvm::APInt::initSlowCase((this + 48), (a2 + 48));
    }

    *(this + 48) = *(a2 + 6);
    *(this + 64) = 1;
  }

  return this;
}

uint64_t std::__optional_destruct_base<mlir::ConstantIntRanges,false>::~__optional_destruct_base[abi:nn200100](uint64_t result)
{
  if (*(result + 64) == 1)
  {
    if (*(result + 56) >= 0x41u && *(result + 48))
    {
      v1 = result;
      MEMORY[0x259C63150](*(result + 48), 0x1000C8000313F17);
      result = v1;
    }

    if (*(result + 40) >= 0x41u && *(result + 32))
    {
      v2 = result;
      MEMORY[0x259C63150](*(result + 32), 0x1000C8000313F17);
      result = v2;
    }

    if (*(result + 24) >= 0x41u && *(result + 16))
    {
      v3 = result;
      MEMORY[0x259C63150](*(result + 16), 0x1000C8000313F17);
      result = v3;
    }

    if (*(result + 8) >= 0x41u)
    {
      if (*result)
      {
        v4 = result;
        MEMORY[0x259C63150](*result, 0x1000C8000313F17);
        return v4;
      }
    }
  }

  return result;
}

void mlir::dataflow::Lattice<mlir::IntegerValueRange>::~Lattice(mlir::AnalysisState *a1)
{
  *a1 = &unk_286892E90;
  std::__optional_destruct_base<mlir::ConstantIntRanges,false>::~__optional_destruct_base[abi:nn200100](a1 + 168);
  *a1 = &unk_286893088;
  v2 = *(a1 + 15);
  if (v2 != (a1 + 136))
  {
    free(v2);
  }

  v3 = *(a1 + 8);
  if (v3 != *(a1 + 7))
  {
    free(v3);
  }

  mlir::AnalysisState::~AnalysisState(a1);
}

{
  *a1 = &unk_286892E90;
  std::__optional_destruct_base<mlir::ConstantIntRanges,false>::~__optional_destruct_base[abi:nn200100](a1 + 168);
  *a1 = &unk_286893088;
  v2 = *(a1 + 15);
  if (v2 != (a1 + 136))
  {
    free(v2);
  }

  v3 = *(a1 + 8);
  if (v3 != *(a1 + 7))
  {
    free(v3);
  }

  mlir::AnalysisState::~AnalysisState(a1);
}

void sub_256E4A984()
{

  JUMPOUT(0x259C63180);
}

unsigned int *std::__optional_storage_base<mlir::ConstantIntRanges,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<mlir::ConstantIntRanges,false> const&>(unsigned int *this, llvm::APInt *a2)
{
  v3 = this;
  if (*(this + 64) == *(a2 + 64))
  {
    if (!*(this + 64))
    {
      return this;
    }

    if (this[2] > 0x40 || *(a2 + 2) > 0x40u)
    {
      this = llvm::APInt::assignSlowCase(this, a2);
      if (v3[6] > 0x40)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *this = *a2;
      this[2] = *(a2 + 2);
      if (this[6] > 0x40)
      {
        goto LABEL_20;
      }
    }

    if (*(a2 + 6) <= 0x40u)
    {
      *(v3 + 2) = *(a2 + 2);
      v3[6] = *(a2 + 6);
      if (v3[10] > 0x40)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

LABEL_20:
    this = llvm::APInt::assignSlowCase(v3 + 4, (a2 + 16));
    if (v3[10] > 0x40)
    {
      goto LABEL_24;
    }

LABEL_21:
    if (*(a2 + 10) <= 0x40u)
    {
      *(v3 + 4) = *(a2 + 4);
      v3[10] = *(a2 + 10);
      if (v3[14] > 0x40)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

LABEL_24:
    this = llvm::APInt::assignSlowCase(v3 + 8, (a2 + 32));
    if (v3[14] > 0x40)
    {
LABEL_28:

      return llvm::APInt::assignSlowCase(v3 + 12, (a2 + 48));
    }

LABEL_25:
    if (*(a2 + 14) <= 0x40u)
    {
      *(v3 + 6) = *(a2 + 6);
      v3[14] = *(a2 + 14);
      return this;
    }

    goto LABEL_28;
  }

  if (*(this + 64))
  {

    return std::__optional_destruct_base<mlir::ConstantIntRanges,false>::reset[abi:nn200100](this);
  }

  else
  {
    v4 = *(a2 + 2);
    this[2] = v4;
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(this, a2);
    }

    *this = *a2;
    v5 = *(a2 + 6);
    this[6] = v5;
    if (v5 > 0x40)
    {
      llvm::APInt::initSlowCase((this + 4), (a2 + 16));
    }

    *(this + 2) = *(a2 + 2);
    v6 = *(a2 + 10);
    this[10] = v6;
    if (v6 > 0x40)
    {
      llvm::APInt::initSlowCase((this + 8), (a2 + 32));
    }

    *(this + 4) = *(a2 + 4);
    v7 = *(a2 + 14);
    this[14] = v7;
    if (v7 > 0x40)
    {
      llvm::APInt::initSlowCase((this + 12), (a2 + 48));
    }

    *(this + 6) = *(a2 + 6);
    *(this + 64) = 1;
  }

  return this;
}

uint64_t std::__optional_destruct_base<mlir::ConstantIntRanges,false>::reset[abi:nn200100](uint64_t result)
{
  if (*(result + 64) == 1)
  {
    v1 = result;
    if (*(result + 56) >= 0x41u)
    {
      result = *(result + 48);
      if (result)
      {
        result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
      }
    }

    if (*(v1 + 40) >= 0x41u)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
      }
    }

    if (*(v1 + 24) >= 0x41u)
    {
      result = *(v1 + 16);
      if (result)
      {
        result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
      }
    }

    if (*(v1 + 8) >= 0x41u)
    {
      result = *v1;
      if (*v1)
      {
        result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
      }
    }

    *(v1 + 64) = 0;
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::dataflow::IntegerRangeAnalysis::visitOperation(mlir::Operation *,llvm::ArrayRef<mlir::dataflow::IntegerValueRangeLattice const*>,llvm::ArrayRef<mlir::dataflow::IntegerValueRangeLattice*>)::$_1>(uint64_t result, uint64_t a2, const mlir::ConstantIntRanges *a3)
{
  if ((~*(a2 + 8) & 7) != 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v6 = *(result + 8);
    v7 = *(v3 + 8) & 7;
    if (v7 == 6)
    {
      v7 = (*(v3 + 16) + 6);
    }

    v8 = *(**result + 8 * v7);
    LOBYTE(v23) = 0;
    v31 = 0;
    std::__optional_storage_base<mlir::ConstantIntRanges,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<mlir::ConstantIntRanges,false> const&>(&v23, (v8 + 168));
    v9 = mlir::dataflow::Lattice<mlir::IntegerValueRange>::join(v8, a3);
    v10 = *a2;
    if (*a2)
    {
      while (1)
      {
        v11 = v10[2];
        {
          v13 = v11;
          v11 = v13;
        }

        if ((*(**(v11 + 48) + 32))(*(v11 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          break;
        }

        v10 = *v10;
        if (!v10)
        {
          goto LABEL_32;
        }
      }

      if (v31 == 1 && (*(v8 + 232) != 1 || !mlir::ConstantIntRanges::operator==((v8 + 168), &v23)))
      {
        mlir::IntegerValueRange::getMaxRange(a2, &v14);
        v12 = mlir::dataflow::Lattice<mlir::IntegerValueRange>::join(v8, &v14);
        v9 = v9 == 1 ? 1 : v12;
        if (v22 == 1)
        {
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
        }
      }
    }

LABEL_32:
    result = mlir::DataFlowAnalysis::propagateIfChanged(v6, v8, v9);
    if (v31 == 1)
    {
      if (v30 >= 0x41)
      {
        result = v29;
        if (v29)
        {
          result = MEMORY[0x259C63150](v29, 0x1000C8000313F17);
        }
      }

      if (v28 >= 0x41)
      {
        result = v27;
        if (v27)
        {
          result = MEMORY[0x259C63150](v27, 0x1000C8000313F17);
        }
      }

      if (v26 >= 0x41)
      {
        result = v25;
        if (v25)
        {
          result = MEMORY[0x259C63150](v25, 0x1000C8000313F17);
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
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::dataflow::IntegerRangeAnalysis::visitNonControlFlowArguments(mlir::Operation *,mlir::RegionSuccessor const&,llvm::ArrayRef<mlir::dataflow::IntegerValueRangeLattice *>,unsigned int)::$_1>(uint64_t result, uint64_t a2, const mlir::ConstantIntRanges *a3)
{
  if ((~*(a2 + 8) & 7) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  if (v3)
  {
    v4 = **result;
    if (*v4 != v4)
    {
      v6 = *(result + 16);
      v7 = v4[1];
      v8 = v7 - 8;
      if (!v7)
      {
        v8 = 0;
      }

      v9 = *(v8 + 48);
      v10 = *(v8 + 56);
      if (v10 != v9)
      {
        while (*v9 != v3)
        {
          if (++v9 == v10)
          {
            return result;
          }
        }
      }

      if (v9 != v10)
      {
        v11 = *(**(result + 8) + 8 * *(v3 + 24));
        LOBYTE(v27) = 0;
        v35 = 0;
        std::__optional_storage_base<mlir::ConstantIntRanges,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<mlir::ConstantIntRanges,false> const&>(&v27, (v11 + 168));
        v13 = mlir::dataflow::Lattice<mlir::IntegerValueRange>::join(v11, a3);
        v14 = *a2;
        if (*a2)
        {
          while (1)
          {
            v15 = v14[2];
            {
              v17 = v15;
              v15 = v17;
            }

            if ((*(**(v15 + 48) + 32))(*(v15 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
              break;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_38;
            }
          }

          if (v35 == 1 && (*(v11 + 232) != 1 || !mlir::ConstantIntRanges::operator==((v11 + 168), &v27)))
          {
            mlir::IntegerValueRange::getMaxRange(a2, &v18);
            v16 = mlir::dataflow::Lattice<mlir::IntegerValueRange>::join(v11, &v18);
            v13 = v13 == 1 ? 1 : v16;
            if (v26 == 1)
            {
              if (v25 >= 0x41 && v24)
              {
                MEMORY[0x259C63150](v24, 0x1000C8000313F17);
              }

              if (v23 >= 0x41 && v22)
              {
                MEMORY[0x259C63150](v22, 0x1000C8000313F17);
              }

              if (v21 >= 0x41 && v20)
              {
                MEMORY[0x259C63150](v20, 0x1000C8000313F17);
              }

              if (v19 >= 0x41 && v18)
              {
                MEMORY[0x259C63150](v18, 0x1000C8000313F17);
              }
            }
          }
        }

LABEL_38:
        result = mlir::DataFlowAnalysis::propagateIfChanged(v6, v11, v13);
        if (v35 == 1)
        {
          if (v34 >= 0x41)
          {
            result = v33;
            if (v33)
            {
              result = MEMORY[0x259C63150](v33, 0x1000C8000313F17);
            }
          }

          if (v32 >= 0x41)
          {
            result = v31;
            if (v31)
            {
              result = MEMORY[0x259C63150](v31, 0x1000C8000313F17);
            }
          }

          if (v30 >= 0x41)
          {
            result = v29;
            if (v29)
            {
              result = MEMORY[0x259C63150](v29, 0x1000C8000313F17);
            }
          }

          if (v28 >= 0x41)
          {
            result = v27;
            if (v27)
            {
              return MEMORY[0x259C63150](v27, 0x1000C8000313F17);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::IntegerValueRangeLattice,mlir::Value>(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = a2 & 0xFFFFFFFFFFFFFFFCLL | 2;
  {
    v4 = a1;
    mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::IntegerValueRangeLattice,mlir::Value>();
    a1 = v4;
  }

  v5[0] = v2;
  v5[1] = mlir::detail::TypeIDResolver<mlir::dataflow::IntegerValueRangeLattice,void>::resolveTypeID(void)::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::operator[](a1 + 128, v5);
  if (!result)
  {
    operator new();
  }

  return result;
}

const char *llvm::getTypeName<mlir::dataflow::IntegerValueRangeLattice>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::dataflow::IntegerValueRangeLattice]";
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

void *mlir::dataflow::Liveness::print(mlir::dataflow::Liveness *this, llvm::raw_ostream *a2)
{
  if (*(this + 168))
  {
    v3 = "live";
  }

  else
  {
    v3 = "not live";
  }

  if (*(this + 168))
  {
    v4 = 4;
  }

  else
  {
    v4 = 8;
  }

  v5 = *(a2 + 4);
  if (v4 <= *(a2 + 3) - v5)
  {
    result = memcpy(v5, v3, v4);
    *(a2 + 4) += v4;
  }

  else
  {

    return llvm::raw_ostream::write(a2, v3, v4);
  }

  return result;
}

uint64_t mlir::dataflow::Liveness::markLive(mlir::dataflow::Liveness *this)
{
  v1 = *(this + 168);
  *(this + 168) = 1;
  return v1 ^ 1u;
}

uint64_t mlir::dataflow::Liveness::meet(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 168) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 168);
  *(a1 + 168) = 1;
  return v2 ^ 1u;
}

uint64_t mlir::dataflow::LivenessAnalysis::visitOperation(uint64_t a1, mlir *this, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if ((mlir::isMemoryEffectFree(this, this) & 1) == 0)
  {
    if (!a4)
    {
      if (!a6)
      {
        return 1;
      }

      v16 = &a5[a6];
      v17 = this & 0xFFFFFFFFFFFFFFFBLL;
      do
      {
LABEL_16:
        v24 = *a5++;
        mlir::DataFlowAnalysis::addDependency(a1, v24, v17);
      }

      while (a5 != v16);
      return 1;
    }

    v12 = 8 * a4;
    v13 = a3;
    do
    {
      v14 = *v13++;
      v15 = *(v14 + 168);
      *(v14 + 168) = 1;
      mlir::DataFlowAnalysis::propagateIfChanged(a1, v14, v15 ^ 1);
      v12 -= 8;
    }

    while (v12);
  }

  if (!a6)
  {
    return 1;
  }

  v16 = &a5[a6];
  v17 = this & 0xFFFFFFFFFFFFFFFBLL;
  if (!a4)
  {
    goto LABEL_16;
  }

  v18 = 0;
  v19 = 8 * a4;
  do
  {
    v20 = *a5;
    if (*(*a5 + 168) == 1 && (v18 & 1) == 0)
    {
      v21 = v19;
      v22 = a3;
      do
      {
        v23 = *v22++;
        mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::meet(a1, v23, v20);
        v21 -= 8;
      }

      while (v21);
      v18 = 1;
    }

    mlir::DataFlowAnalysis::addDependency(a1, v20, v17);
    ++a5;
  }

  while (a5 != v16);
  return 1;
}

void mlir::dataflow::LivenessAnalysis::visitBranchOperand(mlir::dataflow::LivenessAnalysis *this, mlir::OpOperand *a2)
{
  v58[4] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 2);
  __dst = v58;
  v57 = 0x400000000;
  if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v4))
  {
    v5 = *(v4 + 44);
    if ((v5 & 0x7FFFFF) != 0)
    {
      v6 = ((v4 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 40);
      v7 = v6 + 24 * (v5 & 0x7FFFFF);
      do
      {
        v8 = *(v6 + 8);
        if (v8 != v6)
        {
          v9 = v57;
          do
          {
            if (v8)
            {
              v10 = v8 - 8;
            }

            else
            {
              v10 = 0;
            }

            if (v9 >= HIDWORD(v57))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(__dst + v9) = v10;
            v9 = v57 + 1;
            LODWORD(v57) = v57 + 1;
            v8 = *(v8 + 8);
          }

          while (v8 != v6);
        }

        v6 += 24;
      }

      while (v6 != v7);
    }
  }

  else if (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(v4))
  {
    mlir::SuccessorRange::SuccessorRange(&v53, v4);
    v12 = v53;
    v11 = v54;
    v53 = v55;
    v54 = 0x400000000;
    if (v11 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v11)
    {
      v20 = v55;
      v21 = v11;
      v22 = (v12 + 24);
      do
      {
        v23 = *v22;
        v22 += 4;
        *v20++ = v23;
        --v21;
      }

      while (v21);
      LODWORD(v54) = v11;
    }

    else
    {
      LODWORD(v54) = 0;
    }

    v47 = v57;
    if (v57 >= v11)
    {
      if (v11)
      {
        memmove(__dst, v55, 8 * v11);
      }
    }

    else
    {
      if (HIDWORD(v57) < v11)
      {
        LODWORD(v57) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v57)
      {
        memmove(__dst, v55, 8 * v57);
      }

      else
      {
        v47 = 0;
      }

      if (v54 != v47)
      {
        memcpy(__dst + 8 * v47, v53 + 8 * v47, 8 * (v54 - v47));
      }
    }

    LODWORD(v57) = v11;
    LODWORD(v54) = 0;
    if (v53 != v55)
    {
      free(v53);
    }
  }

  else
  {
    ParentOp = *(v4 + 16);
    if (ParentOp)
    {
      ParentOp = mlir::Block::getParentOp(ParentOp);
    }

    v14 = ParentOp[11];
    if ((v14 & 0x7FFFFF) != 0)
    {
      v15 = ((&ParentOp[4 * ((v14 >> 23) & 1) + 17] + ((v14 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * ParentOp[10];
      v16 = v15 + 24 * (v14 & 0x7FFFFF);
      do
      {
        v17 = *(v15 + 8);
        if (v17 != v15)
        {
          v18 = v57;
          do
          {
            if (v17)
            {
              v19 = v17 - 8;
            }

            else
            {
              v19 = 0;
            }

            if (v18 >= HIDWORD(v57))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(__dst + v18) = v19;
            v18 = v57 + 1;
            LODWORD(v57) = v57 + 1;
            v17 = *(v17 + 8);
          }

          while (v17 != v15);
        }

        v15 += 24;
      }

      while (v15 != v16);
    }
  }

  if (v57)
  {
    v24 = __dst;
    v25 = __dst + 8 * v57;
    v26 = *__dst + 32;
    v27 = *(*__dst + 40);
    if (v27 != v26)
    {
      goto LABEL_40;
    }

LABEL_38:
    while (1)
    {
      v24 += 8;
      if (v24 == v25)
      {
        break;
      }

      v26 = *v24 + 32;
      v27 = *(*v24 + 40);
      if (v27 != v26)
      {
LABEL_40:
        while (1)
        {
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v27);
          if ((mlir::isMemoryEffectFree(ValuePtr, v29) & 1) == 0)
          {
            break;
          }

          v27 = *(v27 + 8);
          if (v27 == v26)
          {
            goto LABEL_38;
          }
        }

        v30 = (*(*this + 72))(this, *(a2 + 3));
        v31 = *(v30 + 168);
        *(v30 + 168) = 1;
        mlir::DataFlowAnalysis::propagateIfChanged(this, v30, v31 ^ 1);
        break;
      }
    }
  }

  v53 = v55;
  v54 = 0x400000000;
  v32 = (*(*this + 72))(this, *(a2 + 3));
  if (v54 >= HIDWORD(v54))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v53 + v54) = v32;
  v33 = v54 + 1;
  LODWORD(v54) = v54 + 1;
  v50 = v52;
  v51 = 0x400000000;
  v34 = *(v4 + 36);
  if (v34)
  {
    v35 = v4 - 16;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    for (i = 0; i != v34; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, i);
      v38 = (*(*this + 72))(this, NextResultAtOffset);
      if (v51 >= HIDWORD(v51))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v50 + v51) = v38;
      LODWORD(v51) = v51 + 1;
    }

    v33 = v54;
    v39 = v50;
  }

  else
  {
    v39 = v52;
  }

  (*(*this + 80))(this, v4, v53, v33, v39);
  if (mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v4))
  {
    v40 = *(v4 + 16);
    if (v40)
    {
      v41 = mlir::Block::getParentOp(v40);
    }

    else
    {
      v41 = 0;
    }

    v48 = 0;
    v42 = *(v41 + 36);
    if (v42)
    {
      v43 = v41 - 16;
    }

    else
    {
      v43 = 0;
    }

    if (v42)
    {
      for (j = 0; j != v42; ++j)
      {
        v45 = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, j);
        v46 = (*(*this + 72))(this, v45);
        if (v48 >= 4uLL)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v49[v48++] = v46;
      }
    }

    (*(*this + 80))(this, v41, v53, v54, v49);
  }

  if (v50 != v52)
  {
    free(v50);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  if (__dst != v58)
  {
    free(__dst);
  }
}

uint64_t mlir::dataflow::LivenessAnalysis::visitCallOperand(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 72))(a1, *(a2 + 24));
  v4 = *(v3 + 168);
  *(v3 + 168) = 1;

  return mlir::DataFlowAnalysis::propagateIfChanged(a1, v3, v4 ^ 1u);
}

void mlir::dataflow::RunLivenessAnalysis::RunLivenessAnalysis(mlir::dataflow::RunLivenessAnalysis *this, mlir::Operation *a2)
{
  *this = 1;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = this + 72;
  *(this + 8) = 0x600000000;
  mlir::StorageUniquer::StorageUniquer((this + 120));
}

uint64_t mlir::dataflow::RunLivenessAnalysis::getLiveness(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 144);
  if (!v3)
  {
LABEL_14:
    v7 = (v2 + 24 * v3);
    goto LABEL_15;
  }

  v4 = a2 & 0xFFFFFFFFFFFFFFFCLL | 2;
  v5 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * v4) | (&mlir::dataflow::Liveness::resolveTypeID(void)::id >> 4) ^ (&mlir::dataflow::Liveness::resolveTypeID(void)::id >> 9));
  v6 = (v3 - 1) & ((v5 >> 31) ^ v5);
  v7 = (v2 + 24 * v6);
  v9 = *v7;
  v8 = v7[1];
  if (v4 != *v7 || v8 != &mlir::dataflow::Liveness::resolveTypeID(void)::id)
  {
    v11 = 1;
    while (v9 != -4096 || v8 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & (v3 - 1);
      v7 = (v2 + 24 * v6);
      v9 = *v7;
      v8 = v7[1];
      if (v4 == *v7 && v8 == &mlir::dataflow::Liveness::resolveTypeID(void)::id)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  if (v7 == (v2 + 24 * v3))
  {
    return 0;
  }

  else
  {
    return v7[2];
  }
}

void mlir::dataflow::Liveness::~Liveness(mlir::dataflow::Liveness *this)
{
  *this = &unk_286893088;
  v2 = *(this + 15);
  if (v2 != this + 136)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != *(this + 7))
  {
    free(v3);
  }

  mlir::AnalysisState::~AnalysisState(this);
}

{
  *this = &unk_286893088;
  v2 = *(this + 15);
  if (v2 != this + 136)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != *(this + 7))
  {
    free(v3);
  }

  mlir::AnalysisState::~AnalysisState(this);
}

void sub_256E4C200()
{

  JUMPOUT(0x259C63180);
}

void mlir::dataflow::LivenessAnalysis::~LivenessAnalysis(mlir::dataflow::LivenessAnalysis *this)
{
  mlir::DataFlowAnalysis::~DataFlowAnalysis(this);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::dataflow::SparseBackwardDataFlowAnalysis<mlir::dataflow::Liveness>::getLatticeElement(uint64_t a1, uint64_t a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4[0] = a2 & 0xFFFFFFFFFFFFFFFCLL | 2;
  v4[1] = &mlir::dataflow::Liveness::resolveTypeID(void)::id;
  result = *llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>,std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::operator[](v2 + 128, v4);
  if (!result)
  {
    operator new();
  }

  return result;
}

void *mlir::dataflow::AbstractSparseLattice::onUpdate(void *this, mlir::DataFlowSolver *a2)
{
  v3 = this;
  v4 = *(this + 12);
  if (v4)
  {
    v5 = this[5];
    v6 = *(a2 + 6);
    v7 = 16 * v4;
    do
    {
      v8 = *(a2 + 3);
      v9 = *(a2 + 2);
      v10 = *v5;
      if (v8 == v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = 32 * (v8 - v9) - 1;
      }

      v12 = *(a2 + 5) + v6;
      if (v11 == v12)
      {
        v25 = *v5;
        this = std::deque<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>::__add_back_capacity(a2 + 1);
        v10 = v25;
        v9 = *(a2 + 2);
        v12 = *(a2 + 6) + *(a2 + 5);
      }

      *(*(v9 + ((v12 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v12) = v10;
      v6 = *(a2 + 6) + 1;
      *(a2 + 6) = v6;
      ++v5;
      v7 -= 16;
    }

    while (v7);
  }

  for (i = *(*(v3 + 8) & 0xFFFFFFFFFFFFFFFCLL); i; i = *i)
  {
    v14 = *(v3 + 128);
    if (v14)
    {
      v15 = *(v3 + 120);
      v16 = i[2] & 0xFFFFFFFFFFFFFFFBLL;
      v17 = *(a2 + 6);
      v18 = 8 * v14;
      do
      {
        v20 = *(a2 + 3);
        v21 = *(a2 + 2);
        v22 = *v15;
        if (v20 == v21)
        {
          v23 = 0;
        }

        else
        {
          v23 = 32 * (v20 - v21) - 1;
        }

        v24 = v17 + *(a2 + 5);
        if (v23 == v24)
        {
          this = std::deque<std::pair<mlir::ProgramPoint,mlir::DataFlowAnalysis *>>::__add_back_capacity(a2 + 1);
          v21 = *(a2 + 2);
          v24 = *(a2 + 6) + *(a2 + 5);
        }

        v19 = (*(v21 + ((v24 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v24);
        *v19 = v16;
        v19[1] = v22;
        v17 = *(a2 + 6) + 1;
        *(a2 + 6) = v17;
        ++v15;
        v18 -= 8;
      }

      while (v18);
    }
  }

  return this;
}

void mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::AbstractSparseForwardDataFlowAnalysis(mlir::dataflow::AbstractSparseForwardDataFlowAnalysis *this, mlir::DataFlowSolver *a2)
{
  *mlir::DataFlowAnalysis::DataFlowAnalysis(this, a2) = &unk_286892FD0;
  {
    mlir::dataflow::Executable::onUpdate();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

uint64_t mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::initialize(mlir::dataflow::AbstractSparseForwardDataFlowAnalysis *this, mlir::Operation *a2)
{
  v4 = *(a2 + 11);
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = (((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10));
    v6 = &v5[3 * (v4 & 0x7FFFFF)];
    do
    {
      if (*v5 != v5)
      {
        v7 = v5[1];
        v8 = v7 ? v7 - 8 : 0;
        v9 = *(v8 + 48);
        v10 = *(v8 + 56);
        while (v9 != v10)
        {
          v11 = *v9++;
          v12 = (*(*this + 56))(this, v11);
          (*(*this + 64))(this, v12);
        }
      }

      v5 += 3;
    }

    while (v5 != v6);
  }

  return mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::initializeRecursively(this, a2);
}

uint64_t mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::initializeRecursively(mlir::dataflow::AbstractSparseForwardDataFlowAnalysis *this, mlir::Operation *a2)
{
  if ((mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::visitOperation(this, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 11);
  if ((v4 & 0x7FFFFF) == 0)
  {
    return 1;
  }

  v5 = ((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
  v50 = v5 + 24 * (v4 & 0x7FFFFF);
  while (1)
  {
    v6 = *(v5 + 8);
    if (v6 != v5)
    {
      break;
    }

LABEL_87:
    v5 += 24;
    result = 1;
    if (v5 == v50)
    {
      return result;
    }
  }

  while (1)
  {
    v7 = v6 ? v6 - 8 : 0;
    v8 = *(this + 1);
    {
      v9 = v7 & 0xFFFFFFFFFFFFFFF8 | 5;
      v10 = mlir::detail::TypeIDResolver<mlir::dataflow::Executable,void>::resolveTypeID(void)::id;
      v11 = *(v8 + 144);
      if (!v11)
      {
        goto LABEL_34;
      }
    }

    else
    {
      mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::initializeRecursively();
      v9 = v7 & 0xFFFFFFFFFFFFFFF8 | 5;
      v10 = mlir::detail::TypeIDResolver<mlir::dataflow::Executable,void>::resolveTypeID(void)::id;
      v11 = *(v8 + 144);
      if (!v11)
      {
LABEL_34:
        v15 = 0;
        goto LABEL_35;
      }
    }

    v12 = *(v8 + 128);
    v13 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * v9) | (v10 >> 4) ^ (v10 >> 9));
    v14 = (v11 - 1) & ((v13 >> 31) ^ v13);
    v15 = (v12 + 24 * v14);
    v16 = *v15;
    v17 = v15[1];
    if (v9 != *v15 || v10 != v17)
    {
      v19 = 0;
      v20 = 1;
      while (v16 != -4096 || v17 != -4096)
      {
        if (v19)
        {
          v21 = 0;
        }

        else
        {
          v21 = v17 == -8192;
        }

        if (v21 && v16 == -8192)
        {
          v19 = v15;
        }

        v23 = v14 + v20++;
        v14 = v23 & (v11 - 1);
        v15 = (v12 + 24 * v14);
        v16 = *v15;
        v17 = v15[1];
        if (v9 == *v15 && v10 == v17)
        {
          goto LABEL_41;
        }
      }

      if (v19)
      {
        v15 = v19;
      }

LABEL_35:
      v25 = *(v8 + 136);
      if (4 * v25 + 4 >= 3 * v11)
      {
        v11 *= 2;
      }

      else if (v11 + ~v25 - *(v8 + 140) > v11 >> 3)
      {
        *(v8 + 136) = v25 + 1;
        if (*v15 != -4096)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::grow(v8 + 128, v11);
      v35 = *(v8 + 144);
      if (v35)
      {
        v36 = *(v8 + 128);
        v37 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * v9) | (v10 >> 4) ^ (v10 >> 9));
        v38 = v35 - 1;
        v39 = v38 & ((v37 >> 31) ^ v37);
        v15 = (v36 + 24 * v39);
        v40 = *v15;
        v41 = v15[1];
        if (v9 != *v15 || v10 != v41)
        {
          v43 = 0;
          v44 = 1;
          while (v40 != -4096 || v41 != -4096)
          {
            if (v43)
            {
              v45 = 0;
            }

            else
            {
              v45 = v41 == -8192;
            }

            if (v45 && v40 == -8192)
            {
              v43 = v15;
            }

            v47 = v39 + v44++;
            v39 = v47 & v38;
            v15 = (v36 + 24 * v39);
            v40 = *v15;
            v41 = v15[1];
            if (v9 == *v15 && v10 == v41)
            {
              goto LABEL_82;
            }
          }

          if (v43)
          {
            v15 = v43;
          }
        }
      }

      else
      {
        v15 = 0;
      }

LABEL_82:
      ++*(v8 + 136);
      if (*v15 != -4096)
      {
        goto LABEL_39;
      }

LABEL_38:
      if (v15[1] == -4096)
      {
LABEL_40:
        *v15 = v9;
        v15[1] = v10;
        v15[2] = 0;
        goto LABEL_41;
      }

LABEL_39:
      --*(v8 + 140);
      goto LABEL_40;
    }

LABEL_41:
    v26 = v15[2];
    if (!v26)
    {
      operator new();
    }

    v27 = *(v26 + 64);
    if (*(v26 + 72) != v27)
    {
      goto LABEL_44;
    }

    v32 = *(v26 + 84);
    if (!v32)
    {
LABEL_56:
      if (v32 >= *(v26 + 80))
      {
LABEL_44:
        llvm::SmallPtrSetImplBase::insert_imp_big((v26 + 64), this);
        if ((v28 & 1) == 0)
        {
          goto LABEL_47;
        }

        v29 = *(v26 + 136);
        if (v29 >= *(v26 + 140))
        {
          goto LABEL_58;
        }
      }

      else
      {
        *(v26 + 84) = v32 + 1;
        *(v27 + 8 * v32) = this;
        v29 = *(v26 + 136);
        if (v29 >= *(v26 + 140))
        {
LABEL_58:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      *(*(v26 + 128) + 8 * v29) = this;
      ++*(v26 + 136);
      goto LABEL_47;
    }

    v33 = 8 * v32;
    v34 = *(v26 + 64);
    while (*v34 != this)
    {
      ++v34;
      v33 -= 8;
      if (!v33)
      {
        goto LABEL_56;
      }
    }

LABEL_47:
    mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::visitBlock(this, v7);
    v30 = *(v7 + 40);
    if (v30 != v7 + 32)
    {
      break;
    }

LABEL_50:
    v6 = *(v6 + 8);
    if (v6 == v5)
    {
      goto LABEL_87;
    }
  }

  while (1)
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v30);
    if ((mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::initializeRecursively(this, ValuePtr) & 1) == 0)
    {
      return 0;
    }

    v30 = *(v30 + 8);
    if (v30 == v7 + 32)
    {
      goto LABEL_50;
    }
  }
}

uint64_t mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::visitOperation(mlir::dataflow::AbstractSparseForwardDataFlowAnalysis *this, uint64_t a2)
{
  v58[6] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 36) || *(mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(this + 1), *(a2 + 16)) + 56) != 1)
  {
    return 1;
  }

  v56 = v58;
  v57 = 0x600000000;
  v4 = *(a2 + 36);
  if (v4 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4)
  {
    v5 = (a2 - 16);
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0;
    v7 = v4;
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, v6);
      v9 = (*(*this + 56))(this, NextResultAtOffset);
      if (v57 >= HIDWORD(v57))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v56 + v57) = v9;
      LODWORD(v57) = v57 + 1;
      ++v6;
    }

    while (v7 != v6);
  }

  if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2) && a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::visitRegionSuccessors(this, a2 & 0xFFFFFFFFFFFFFFFBLL, a2, InterfaceFor, 0, v56, v57);
    result = 1;
    goto LABEL_70;
  }

  v53 = v55;
  v54 = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    if (*(a2 + 68) >= 7u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v12 = *(a2 + 68);
    if (v12)
    {
      v13 = 0;
      v14 = *(a2 + 72);
      while (1)
      {
        v15 = (*(*this + 56))(this, *(v14 + 32 * v13 + 24));
        v16 = *(v15 + 56);
        if (*(v15 + 64) == v16)
        {
          v19 = *(v15 + 76);
          if (v19)
          {
            v20 = 8 * v19;
            v21 = *(v15 + 56);
            while (*v21 != this)
            {
              ++v21;
              v20 -= 8;
              if (!v20)
              {
                goto LABEL_34;
              }
            }

            goto LABEL_27;
          }

LABEL_34:
          if (v19 < *(v15 + 72))
          {
            break;
          }
        }

        llvm::SmallPtrSetImplBase::insert_imp_big((v15 + 56), this);
        if (v17)
        {
          v18 = *(v15 + 128);
          if (v18 >= *(v15 + 132))
          {
            goto LABEL_36;
          }

LABEL_26:
          *(*(v15 + 120) + 8 * v18) = this;
          ++*(v15 + 128);
        }

LABEL_27:
        if (v54 >= HIDWORD(v54))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v53 + v54) = v15;
        LODWORD(v54) = v54 + 1;
        if (++v13 == v12)
        {
          goto LABEL_38;
        }
      }

      *(v15 + 76) = v19 + 1;
      *(v16 + 8 * v19) = this;
      v18 = *(v15 + 128);
      if (v18 >= *(v15 + 132))
      {
LABEL_36:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      goto LABEL_26;
    }
  }

LABEL_38:
  if (!mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v51 = 0;
    v52 = 0;
    goto LABEL_63;
  }

  if (!a2)
  {
    v51 = 0;
    v52 = 0;
LABEL_63:
    result = (*(*this + 32))(this, a2, v53, v54, v56, v57);
    v43 = v53;
    if (v53 == v55)
    {
      goto LABEL_70;
    }

LABEL_69:
    v44 = result;
    free(v43);
    result = v44;
    goto LABEL_70;
  }

  v51 = a2;
  v52 = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v22 = mlir::CallOpInterface::resolveCallable(&v51);
  v23 = v22;
  if (v22)
  {
    if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v22))
    {
      v23 = 0;
      v49 = 0;
      v50 = 0;
      v24 = *(this + 1);
      if (*v24 != 1)
      {
        goto LABEL_67;
      }

      goto LABEL_44;
    }

    v22 = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v23);
  }

  v49 = v23;
  v50 = v22;
  v24 = *(this + 1);
  if (*v24 != 1)
  {
    goto LABEL_67;
  }

LABEL_44:
  if (!v23)
  {
    goto LABEL_47;
  }

  if (!mlir::CallableOpInterface::getCallableRegion(&v49))
  {
LABEL_67:
    (*(*this + 40))(this, v51, v52, v53, v54, v56, v57);
    goto LABEL_68;
  }

  v24 = *(this + 1);
LABEL_47:
  v25 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(v24, v51);
  mlir::DataFlowAnalysis::addDependency(this, v25, a2 & 0xFFFFFFFFFFFFFFFBLL);
  if ((*(v25 + 56) & 1) == 0)
  {
    if (v57)
    {
      v46 = v56;
      v47 = 8 * v57;
      do
      {
        v48 = *v46++;
        (*(*this + 64))(this, v48);
        v47 -= 8;
      }

      while (v47);
      goto LABEL_76;
    }

LABEL_68:
    result = 1;
    v43 = v53;
    if (v53 == v55)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v26 = *(v25 + 136);
  if (v26)
  {
    v27 = *(v25 + 128);
    v28 = &v27[v26];
    do
    {
      v29 = *v27;
      if ((*(*v27 + 46) & 0x80) != 0)
      {
        v30 = *(v29 + 68);
        if (v30 && v57 != 0)
        {
          v32 = v56;
          v33 = 8 * v57 - 8;
          v34 = (*(v29 + 72) + 24);
          v35 = v30 - 1;
          do
          {
            v37 = *v34;
            v34 += 4;
            v36 = v37;
            v38 = *v32++;
            v39 = (*(*this + 56))(this, v36);
            mlir::DataFlowAnalysis::addDependency(this, v39, a2 & 0xFFFFFFFFFFFFFFFBLL);
            v40 = (*(*v38 + 32))(v38, v39);
            mlir::DataFlowAnalysis::propagateIfChanged(this, v38, v40);
            if (v35-- == 0)
            {
              break;
            }

            v42 = v33;
            v33 -= 8;
          }

          while (v42);
        }
      }

      ++v27;
    }

    while (v27 != v28);
  }

LABEL_76:
  result = 1;
  v43 = v53;
  if (v53 != v55)
  {
    goto LABEL_69;
  }

LABEL_70:
  if (v56 != v58)
  {
    v45 = result;
    free(v56);
    return v45;
  }

  return result;
}

void mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::visitBlock(mlir::dataflow::AbstractSparseForwardDataFlowAnalysis *this, mlir::Block *a2)
{
  v72[6] = *MEMORY[0x277D85DE8];
  v65 = a2;
  if (((*(a2 + 7) - *(a2 + 6)) & 0x7FFFFFFF8) == 0)
  {
    return;
  }

  v2 = a2;
  if (*(mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(this + 1), a2) + 56) != 1)
  {
    return;
  }

  v70 = v72;
  v71 = 0x600000000;
  v4 = *(v2 + 6);
  v5 = *(v2 + 7);
  if (((v5 - v4) >> 3) >= 7uLL)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v4 != v5)
  {
    do
    {
      v6 = (*(*this + 56))(this, *v4);
      if (v71 >= HIDWORD(v71))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v70 + v71) = v6;
      LODWORD(v71) = v71 + 1;
      v4 += 8;
    }

    while (v4 != v5);
    v2 = v65;
  }

  if (mlir::Block::isEntryBlock(v2))
  {
    ParentOp = mlir::Block::getParentOp(v65);
    if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
    {
      v63 = 0;
      InterfaceFor = 0;
      goto LABEL_45;
    }

    if (!ParentOp)
    {
      v63 = 0;
      InterfaceFor = 0;
      goto LABEL_45;
    }

    v63 = ParentOp;
    InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    CallableRegion = mlir::CallableOpInterface::getCallableRegion(&v63);
    if (CallableRegion != mlir::Block::getParent(v65))
    {
LABEL_45:
      v27 = mlir::Block::getParentOp(v65);
      if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v27))
      {
        if (v27)
        {
          v28 = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v27);
          v29 = v65;
          Parent = mlir::Block::getParent(v65);
          mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::visitRegionSuccessors(this, v29 | 4, v27, v28, Parent, v70, v71);
          goto LABEL_73;
        }

        v30 = v65;
      }

      else
      {
        v30 = v65;
      }

      v55 = mlir::Block::getParentOp(v30);
      v66 = mlir::Block::getParent(v65);
      mlir::ValueRange::ValueRange(v67, 0, 0);
      (*(*this + 48))(this, v55, &v66, v70, v71, 0);
      goto LABEL_73;
    }

    v32 = v65;
    v33 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(this + 1), v63);
    mlir::DataFlowAnalysis::addDependency(this, v33, v32 | 4);
    if (*(v33 + 56) != 1 || (**(this + 1) & 1) == 0)
    {
      if (v71)
      {
        v56 = v70;
        v57 = 8 * v71;
        do
        {
          v58 = *v56++;
          (*(*this + 64))(this, v58);
          v57 -= 8;
        }

        while (v57);
      }

      goto LABEL_73;
    }

    v34 = *(v33 + 136);
    if (!v34)
    {
      goto LABEL_73;
    }

    v35 = *(v33 + 128);
    v59 = &v35[v34];
    while (1)
    {
      v36 = *v35;
      if (*v35)
      {
        v37 = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(*v35);
        v66 = v36;
        v67[0] = v37;
        ArgOperands = mlir::CallOpInterface::getArgOperands(&v66);
        if (v39)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v66 = 0;
        v67[0] = 0;
        ArgOperands = mlir::CallOpInterface::getArgOperands(&v66);
        if (v39)
        {
LABEL_58:
          if (v71)
          {
            v40 = v70;
            v41 = 8 * v71 - 8;
            v42 = (ArgOperands + 24);
            v43 = v39 - 1;
            do
            {
              v45 = *v42;
              v42 += 4;
              v44 = v45;
              v46 = *v40++;
              v47 = v65;
              v48 = (*(*this + 56))(this, v44);
              mlir::DataFlowAnalysis::addDependency(this, v48, v47 | 4);
              v49 = (*(*v46 + 32))(v46, v48);
              mlir::DataFlowAnalysis::propagateIfChanged(this, v46, v49);
              if (v43-- == 0)
              {
                break;
              }

              v51 = v41;
              v41 -= 8;
            }

            while (v51);
          }
        }
      }

      if (++v35 == v59)
      {
        goto LABEL_73;
      }
    }
  }

  v63 = *v65;
  InterfaceFor = mlir::PredecessorIterator::unwrap;
  if (!v63)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v62 = InterfaceFor();
    v8 = mlir::StorageUniquer::get<mlir::dataflow::CFGEdge,mlir::Block *&,mlir::Block *&>((*(this + 1) + 120), 0, 0, &v62, &v65);
    v9 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::dataflow::CFGEdge *>(*(this + 1), v8);
    v10 = *(v9 + 64);
    if (*(v9 + 72) != v10)
    {
      goto LABEL_18;
    }

    v15 = *(v9 + 84);
    if (!v15)
    {
LABEL_29:
      if (v15 >= *(v9 + 80))
      {
LABEL_18:
        llvm::SmallPtrSetImplBase::insert_imp_big((v9 + 64), this);
        if ((v11 & 1) == 0)
        {
          goto LABEL_21;
        }

        v12 = *(v9 + 136);
        if (v12 >= *(v9 + 140))
        {
          goto LABEL_31;
        }
      }

      else
      {
        *(v9 + 84) = v15 + 1;
        *(v10 + 8 * v15) = this;
        v12 = *(v9 + 136);
        if (v12 >= *(v9 + 140))
        {
LABEL_31:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      *(*(v9 + 128) + 8 * v12) = this;
      ++*(v9 + 136);
      goto LABEL_21;
    }

    v16 = 8 * v15;
    v17 = *(v9 + 64);
    while (*v17 != this)
    {
      ++v17;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_29;
      }
    }

LABEL_21:
    if (*(v9 + 56))
    {
      break;
    }

LABEL_16:
    v63 = *v63;
    if (!v63)
    {
      goto LABEL_73;
    }
  }

  Terminator = mlir::Block::getTerminator(v62);
  if (!mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator))
  {
    v60 = 0;
    v61 = 0;
    goto LABEL_64;
  }

  if (Terminator)
  {
    v14 = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(Terminator);
    v60 = Terminator;
    v61 = v14;
    SuccessorIndex = mlir::PredecessorIterator::getSuccessorIndex(&v63);
    mlir::BranchOpInterface::getSuccessorOperands(&v60, SuccessorIndex);
    if (v71)
    {
      v19 = 0;
      v20 = v70;
      v21 = 8 * v71;
      do
      {
        while (v66 > v19 || !*(mlir::MutableOperandRange::operator[](v67, v19 - v66) + 24))
        {
          (*(*this + 64))(this, v20[v19++]);
          v21 -= 8;
          if (!v21)
          {
            goto LABEL_40;
          }
        }

        v22 = v20[v19];
        v23 = v65;
        v24 = (*(*this + 56))(this);
        mlir::DataFlowAnalysis::addDependency(this, v24, v23 | 4);
        v25 = (*(*v22 + 32))(v22, v24);
        mlir::DataFlowAnalysis::propagateIfChanged(this, v22, v25);
        ++v19;
        v21 -= 8;
      }

      while (v21);
    }

LABEL_40:
    if (v68 != &v69)
    {
      free(v68);
    }

    goto LABEL_16;
  }

  v60 = 0;
  v61 = 0;
LABEL_64:
  if (v71)
  {
    v52 = v70;
    v53 = 8 * v71;
    do
    {
      v54 = *v52++;
      (*(*this + 64))(this, v54);
      v53 -= 8;
    }

    while (v53);
  }

LABEL_73:
  if (v70 != v72)
  {
    free(v70);
  }
}

uint64_t mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::visit(mlir::dataflow::AbstractSparseForwardDataFlowAnalysis *a1, uint64_t a2)
{
  v3 = a2;
  v4 = (a2 & 0xFFFFFFFFFFFFFFF8);
  if ((v3 & 4) != 0 || !v4)
  {
    mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::visitBlock(a1, v4);
    return 1;
  }

  else
  {

    return mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::visitOperation(a1, v4);
  }
}

void mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::visitRegionSuccessors(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v64[4] = *MEMORY[0x277D85DE8];
  v60[0] = a3;
  v60[1] = a4;
  v10 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::ProgramPoint>(a1[1], a2);
  mlir::DataFlowAnalysis::addDependency(a1, v10, a2);
  v11 = *(v10 + 136);
  if (!v11)
  {
    return;
  }

  v12 = *(v10 + 128);
  v13 = &v12[v11];
  v14 = (a2 >> 2) & 1;
  if ((a2 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v54 = v14;
  v55 = 8 * a7;
  v56 = v13;
  v53 = (a2 & 0xFFFFFFFFFFFFFFF8);
  v57 = v10;
  while (1)
  {
    v15 = *v12;
    if (*v12 == v60[0])
    {
      EntrySuccessorOperands = mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v60, a5);
      v19 = v18;
      goto LABEL_16;
    }

    if (!mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(*v12))
    {
      break;
    }

    if (v15)
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v15);
    }

    else
    {
      InterfaceFor = 0;
    }

    *&v61 = v15;
    *(&v61 + 1) = InterfaceFor;
    if (!v15)
    {
      goto LABEL_58;
    }

    mlir::RegionBranchTerminatorOpInterface::getMutableSuccessorOperands(&v61, a5);
    EntrySuccessorOperands = mlir::MutableOperandRange::operator mlir::OperandRange(&v62);
    v19 = v20;
    if (v63 != v64)
    {
      free(v63);
    }

LABEL_16:
    v21 = *(v10 + 192);
    if (v21)
    {
      v22 = *(v10 + 176);
      v23 = v21 - 1;
      v24 = (v21 - 1) & ((v15 >> 4) ^ (v15 >> 9));
      v25 = *(v22 + 24 * v24);
      if (v25 == v15)
      {
LABEL_18:
        v62 = *(v22 + 24 * v24 + 8);
        v26 = *(&v62 + 1);
        v61 = v62;
        if (*(&v62 + 1) == a7)
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      }

      v28 = 1;
      while (v25 != -4096)
      {
        v29 = v24 + v28++;
        v24 = v29 & v23;
        v25 = *(v22 + 24 * v24);
        if (v25 == v15)
        {
          goto LABEL_18;
        }
      }
    }

    mlir::ValueRange::ValueRange(&v62, 0, 0);
    v26 = *(&v62 + 1);
    v61 = v62;
    if (*(&v62 + 1) == a7)
    {
LABEL_19:
      LODWORD(v27) = 0;
      if (v19)
      {
        goto LABEL_52;
      }

      goto LABEL_5;
    }

LABEL_26:
    if ((v54 & 1) == 0)
    {
      if (v26)
      {
        v35 = mlir::ValueRange::dereference_iterator(&v61, 0);
        if (v35 && (*(v35 + 8) & 7) == 6)
        {
          v36 = EntrySuccessorOperands;
          v27 = (*(v35 + 16) + 6);
        }

        else
        {
          v36 = EntrySuccessorOperands;
          v27 = *(v35 + 8) & 7;
        }

        v37 = v60[0];
        if (*(v60[0] + 36))
        {
          NextResultAtOffset = v60[0] - 16;
        }

        else
        {
          NextResultAtOffset = 0;
        }

        v39 = *(&v61 + 1);
        if (v27)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v27);
        }
      }

      else
      {
        v36 = EntrySuccessorOperands;
        v27 = 0;
        v37 = v60[0];
        if (*(v60[0] + 36))
        {
          NextResultAtOffset = v60[0] - 16;
        }

        else
        {
          NextResultAtOffset = 0;
        }

        v39 = *(&v61 + 1);
      }

      *&v62 = 0;
      mlir::ValueRange::ValueRange(&v62 + 1, NextResultAtOffset, v39);
      (*(*a1 + 48))(a1, v37, &v62, a6, a7, v27);
      EntrySuccessorOperands = v36;
      if (!v19)
      {
        goto LABEL_5;
      }

LABEL_52:
      if (a7 != v27)
      {
        v40 = v27;
        v41 = &a6[v40];
        v42 = 8 * a7 - 8 - v40 * 8;
        v43 = (EntrySuccessorOperands + 24);
        v44 = v19 - 1;
        do
        {
          v46 = *v43;
          v43 += 4;
          v45 = v46;
          v47 = *v41++;
          v48 = (*(*a1 + 56))(a1, v45);
          mlir::DataFlowAnalysis::addDependency(a1, v48, a2);
          v49 = (*(*v47 + 32))(v47, v48);
          mlir::DataFlowAnalysis::propagateIfChanged(a1, v47, v49);
          if (v44-- == 0)
          {
            break;
          }

          v51 = v42;
          v42 -= 8;
        }

        while (v51);
      }

      goto LABEL_5;
    }

    if (v26)
    {
      v27 = *(mlir::ValueRange::dereference_iterator(&v61, 0) + 24);
      Parent = mlir::Block::getParent(v53);
      v31 = v60[0];
      if (*Parent == Parent)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v27 = 0;
      Parent = mlir::Block::getParent(v53);
      v31 = v60[0];
      if (*Parent == Parent)
      {
LABEL_38:
        v34 = 0;
        goto LABEL_39;
      }
    }

    v32 = Parent[1];
    if (v32)
    {
      v33 = v32 - 8;
    }

    else
    {
      v33 = 0;
    }

    v34 = *(v33 + 48);
LABEL_39:
    *&v62 = Parent;
    mlir::ValueRange::ValueRange(&v62 + 1, v34 + 8 * v27, *(&v61 + 1));
    (*(*a1 + 48))(a1, v31, &v62, a6, a7, v27);
    if (v19)
    {
      goto LABEL_52;
    }

LABEL_5:
    ++v12;
    v10 = v57;
    if (v12 == v56)
    {
      return;
    }
  }

  v61 = 0uLL;
LABEL_58:
  if (a7)
  {
    do
    {
      v52 = *a6++;
      (*(*a1 + 64))(a1, v52);
      v55 -= 8;
    }

    while (v55);
  }
}

uint64_t mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::setAllToEntryStates(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 8 * a3;
    do
    {
      v6 = *a2++;
      result = (*(*v4 + 64))(v4, v6);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::join(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 32))(a2, a3);

  return mlir::DataFlowAnalysis::propagateIfChanged(a1, a2, v5);
}

uint64_t mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::getLatticeElementFor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 56))(a1, a3);
  mlir::DataFlowAnalysis::addDependency(a1, v5, a2);
  return v5;
}

uint64_t llvm::dyn_cast<mlir::CallableOpInterface,mlir::Operation>(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
    return v1;
  }

  return v1;
}

uint64_t mlir::DataFlowAnalysis::getOrCreateFor<mlir::dataflow::PredecessorState,mlir::CallableOpInterface>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::PredecessorState,mlir::Operation *>(*(a1 + 8), a3);
  mlir::DataFlowAnalysis::addDependency(a1, v5, a2);
  return v5;
}

void mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::AbstractSparseBackwardDataFlowAnalysis(void *a1, mlir::DataFlowSolver *a2, uint64_t a3)
{
  v4 = mlir::DataFlowAnalysis::DataFlowAnalysis(a1, a2);
  *v4 = &unk_286893028;
  v4[2] = a3;
  {
    mlir::dataflow::Executable::onUpdate();
  }

  mlir::StorageUniquer::registerParametricStorageTypeImpl();
}

uint64_t mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::initializeRecursively(mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis *this, mlir::Operation *a2)
{
  if ((mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::visitOperation(this, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 11);
  if ((v4 & 0x7FFFFF) != 0)
  {
    v5 = ((a2 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
    v6 = v5 + 24 * (v4 & 0x7FFFFF);
    while (1)
    {
      v7 = *(v5 + 8);
      if (v7 != v5)
      {
        break;
      }

LABEL_87:
      v5 += 24;
      result = 1;
      if (v5 == v6)
      {
        return result;
      }
    }

    while (1)
    {
      if (v7)
      {
        v8 = v7 - 8;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(this + 1);
      {
        mlir::dataflow::AbstractSparseForwardDataFlowAnalysis::initializeRecursively();
      }

      v10 = v8 & 0xFFFFFFFFFFFFFFF8 | 5;
      v11 = mlir::detail::TypeIDResolver<mlir::dataflow::Executable,void>::resolveTypeID(void)::id;
      v12 = *(v9 + 144);
      if (!v12)
      {
        goto LABEL_59;
      }

      v13 = *(v9 + 128);
      v14 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * v10) | (mlir::detail::TypeIDResolver<mlir::dataflow::Executable,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::dataflow::Executable,void>::resolveTypeID(void)::id >> 9));
      v15 = (v12 - 1) & ((v14 >> 31) ^ v14);
      v16 = (v13 + 24 * v15);
      v17 = *v16;
      v18 = v16[1];
      if (v10 == *v16 && mlir::detail::TypeIDResolver<mlir::dataflow::Executable,void>::resolveTypeID(void)::id == v18)
      {
        goto LABEL_37;
      }

      v20 = 0;
      v21 = 1;
      while (v17 != -4096 || v18 != -4096)
      {
        if (v20)
        {
          v22 = 0;
        }

        else
        {
          v22 = v18 == -8192;
        }

        if (v22 && v17 == -8192)
        {
          v20 = v16;
        }

        v24 = v15 + v21++;
        v15 = v24 & (v12 - 1);
        v16 = (v13 + 24 * v15);
        v17 = *v16;
        v18 = v16[1];
        if (v10 == *v16 && mlir::detail::TypeIDResolver<mlir::dataflow::Executable,void>::resolveTypeID(void)::id == v18)
        {
          goto LABEL_37;
        }
      }

      if (v20)
      {
        v16 = v20;
      }

      v35 = *(v9 + 136);
      if (4 * v35 + 4 < 3 * v12)
      {
        if (v12 + ~v35 - *(v9 + 140) > v12 >> 3)
        {
          *(v9 + 136) = v35 + 1;
          if (*v16 != -4096)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }
      }

      else
      {
LABEL_59:
        v12 *= 2;
      }

      llvm::DenseMap<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>,llvm::DenseMapInfo<std::pair<mlir::LatticeAnchor,mlir::TypeID>,void>,llvm::detail::DenseMapPair<std::pair<mlir::LatticeAnchor,mlir::TypeID>,std::unique_ptr<mlir::AnalysisState>>>::grow(v9 + 128, v12);
      v36 = *(v9 + 144);
      if (v36)
      {
        v37 = *(v9 + 128);
        v38 = 0xBF58476D1CE4E5B9 * ((0x2500000000 * v10) | (v11 >> 4) ^ (v11 >> 9));
        v39 = v36 - 1;
        v40 = v39 & ((v38 >> 31) ^ v38);
        v16 = (v37 + 24 * v40);
        v41 = *v16;
        v42 = v16[1];
        if (v10 != *v16 || v11 != v42)
        {
          v44 = 0;
          v45 = 1;
          while (v41 != -4096 || v42 != -4096)
          {
            if (v44)
            {
              v46 = 0;
            }

            else
            {
              v46 = v42 == -8192;
            }

            if (v46 && v41 == -8192)
            {
              v44 = v16;
            }

            v48 = v40 + v45++;
            v40 = v48 & v39;
            v16 = (v37 + 24 * v40);
            v41 = *v16;
            v42 = v16[1];
            if (v10 == *v16 && v11 == v42)
            {
              goto LABEL_82;
            }
          }

          if (v44)
          {
            v16 = v44;
          }
        }
      }

      else
      {
        v16 = 0;
      }

LABEL_82:
      ++*(v9 + 136);
      if (*v16 != -4096)
      {
LABEL_35:
        --*(v9 + 140);
        goto LABEL_36;
      }

LABEL_34:
      if (v16[1] != -4096)
      {
        goto LABEL_35;
      }

LABEL_36:
      *v16 = v10;
      v16[1] = v11;
      v16[2] = 0;
LABEL_37:
      v26 = v16[2];
      if (!v26)
      {
        operator new();
      }

      v27 = *(v26 + 64);
      if (*(v26 + 72) != v27)
      {
        goto LABEL_40;
      }

      v32 = *(v26 + 84);
      if (v32)
      {
        v33 = 8 * v32;
        v34 = *(v26 + 64);
        while (*v34 != this)
        {
          ++v34;
          v33 -= 8;
          if (!v33)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_43;
      }

LABEL_53:
      if (v32 < *(v26 + 80))
      {
        *(v26 + 84) = v32 + 1;
        *(v27 + 8 * v32) = this;
        v29 = *(v26 + 136);
        if (v29 >= *(v26 + 140))
        {
LABEL_55:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }
      }

      else
      {
LABEL_40:
        llvm::SmallPtrSetImplBase::insert_imp_big((v26 + 64), this);
        if ((v28 & 1) == 0)
        {
          goto LABEL_43;
        }

        v29 = *(v26 + 136);
        if (v29 >= *(v26 + 140))
        {
          goto LABEL_55;
        }
      }

      *(*(v26 + 128) + 8 * v29) = this;
      ++*(v26 + 136);
LABEL_43:
      v30 = (v8 + 32);
      while (1)
      {
        v30 = *v30;
        if (v30 == (v8 + 32))
        {
          break;
        }

        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v30);
        if ((mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::initializeRecursively(this, ValuePtr) & 1) == 0)
        {
          return 0;
        }
      }

      v7 = *(v7 + 8);
      if (v7 == v5)
      {
        goto LABEL_87;
      }
    }
  }

  return 1;
}

uint64_t mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::visitOperation(mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis *this, uint64_t a2)
{
  v134[6] = *MEMORY[0x277D85DE8];
  if (*(mlir::DataFlowSolver::getOrCreateState<mlir::dataflow::Executable,mlir::Block *>(*(this + 1), *(a2 + 16)) + 56) != 1)
  {
    return 1;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 72);
    v5 = *(a2 + 68);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(&__b, v4, v5);
  mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::getLatticeElements(this, __b, v126, &v132);
  v6 = *(a2 + 36);
  if (v6)
  {
    v7 = (a2 - 16);
  }

  else
  {
    v7 = 0;
  }

  mlir::ValueRange::ValueRange(&__b, v7, v6);
  mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::getLatticeElementsFor(this, a2 & 0xFFFFFFFFFFFFFFFBLL, __b, v126, &v129);
  if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    if (a2)
    {
      mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::visitRegionSuccessors(this, a2, InterfaceFor);
LABEL_167:
      v9 = 1;
      goto LABEL_168;
    }
  }

  if (mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v119 = a2;
    v120 = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    if (a2)
    {
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v10 = *(a2 + 68);
        v11 = (v10 + 63) >> 6;
        __b = v127;
        HIDWORD(v126) = 6;
        if (v10 + 63 >= 0x1C0)
        {
          LODWORD(v126) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v10 + 63 >= 0x40)
        {
          memset(v127, 255, 8 * v11);
        }

        LODWORD(v126) = (v10 + 63) >> 6;
        v128 = v10;
        if ((v10 & 0x3F) != 0)
        {
          v127[v11 - 1] &= ~(-1 << (v10 & 0x3F));
        }

        mlir::SuccessorRange::SuccessorRange(&v121, a2);
        v12 = v122;
        if (v122)
        {
          goto LABEL_25;
        }
      }

      else
      {
        __b = v127;
        v126 = 0x600000000;
        v128 = 0;
        mlir::SuccessorRange::SuccessorRange(&v121, a2);
        v12 = v122;
        if (v122)
        {
LABEL_25:
          v13 = 0;
          v116 = v121;
          do
          {
            v14 = *&v116[8 * v13 + 6];
            mlir::BranchOpInterface::getSuccessorOperands(&v119, v13);
            v117 = mlir::MutableOperandRange::operator mlir::OperandRange(&v122);
            v118 = v15;
            if (v15)
            {
              if ((*(a2 + 46) & 0x80) != 0)
              {
                v16 = *(a2 + 72);
                BeginOperandIndex = mlir::OperandRange::getBeginOperandIndex(&v117);
                v18 = v118;
                if (v118)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                v16 = 0;
                BeginOperandIndex = mlir::OperandRange::getBeginOperandIndex(&v117);
                v18 = v118;
                if (v118)
                {
LABEL_30:
                  v19 = (v16 + 32 * BeginOperandIndex);
                  v20 = 32 * v18;
                  do
                  {
                    OperandNumber = mlir::OpOperand::getOperandNumber(v19);
                    *(__b + (OperandNumber >> 6)) &= ~(1 << OperandNumber);
                    v22 = mlir::OpOperand::getOperandNumber(v19);
                    BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(&v121, v22, v14);
                    if (v24)
                    {
                      v25 = BranchSuccessorArgument;
                      v26 = (*(*this + 72))(this, *(v19 + 3));
                      v27 = (*(*this + 72))(this, v25);
                      mlir::DataFlowAnalysis::addDependency(this, v27, a2 & 0xFFFFFFFFFFFFFFFBLL);
                      v28 = (*(*v26 + 40))(v26, v27);
                      mlir::DataFlowAnalysis::propagateIfChanged(this, v26, v28);
                    }

                    v19 = (v19 + 32);
                    v20 -= 32;
                  }

                  while (v20);
                }
              }
            }

            if (v123 != &v124)
            {
              free(v123);
            }

            ++v13;
          }

          while (v13 != v12);
        }
      }

      if (!v128)
      {
        goto LABEL_165;
      }

      if (v128 >= 0x41)
      {
        v93 = -1;
      }

      else
      {
        v93 = 0xFFFFFFFFFFFFFFFFLL >> -v128;
      }

      v94 = *__b & v93;
      if (v94)
      {
        v95 = 0;
      }

      else
      {
        if (v128 < 0x41)
        {
          goto LABEL_165;
        }

        v97 = (v128 - 1) >> 6;
        v98 = (__b + 8);
        v95 = 64;
        while (1)
        {
          v100 = *v98++;
          v99 = v100;
          v101 = v97 == 1 ? 0xFFFFFFFFFFFFFFFFLL >> -v128 : -1;
          v94 = v101 & v99;
          if (v94)
          {
            break;
          }

          v95 += 64;
          if (!--v97)
          {
            goto LABEL_165;
          }
        }
      }

      v96 = __clz(__rbit64(v94)) | v95;
      if (v96 != 0xFFFFFFFF)
      {
        do
        {
          (*(*this + 48))(this, *(a2 + 72) + 32 * v96);
          v103 = v96 + 1;
          if (v96 + 1 == v128)
          {
            break;
          }

          v102 = v103 >> 6;
          v104 = (v128 - 1) >> 6;
          if (v102 > v104)
          {
            break;
          }

          v105 = v103 & 0x3F;
          v81 = v105 == 0;
          v106 = 0xFFFFFFFFFFFFFFFFLL >> -v105;
          if (v81)
          {
            v107 = -1;
          }

          else
          {
            v107 = ~v106;
          }

          if (v102 == v104)
          {
            v108 = 0xFFFFFFFFFFFFFFFFLL >> ~(v128 - 1);
          }

          else
          {
            v108 = -1;
          }

          v109 = v108 & *(__b + v102) & v107;
          if (!v109)
          {
            v110 = v102 + 1;
            if (v102 + 1 == v104 + 1)
            {
              break;
            }

            v111 = v104 - v102;
            v112 = -1;
            while (1)
            {
              v113 = v112 ? -1 : v107;
              v114 = --v111 ? -1 : 0xFFFFFFFFFFFFFFFFLL >> ~(v128 - 1);
              v109 = v113 & v114 & *(__b + v110);
              if (v109)
              {
                break;
              }

              ++v110;
              --v112;
              if (!v111)
              {
                goto LABEL_165;
              }
            }

            LODWORD(v102) = v110;
          }

          LODWORD(v96) = __clz(__rbit64(v109)) | (v102 << 6);
        }

        while (v96 != -1);
      }

LABEL_165:
      v71 = __b;
      if (__b == v127)
      {
        goto LABEL_167;
      }

LABEL_166:
      free(v71);
      goto LABEL_167;
    }
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  if (mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v119 = a2;
    v120 = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    if (a2)
    {
      v29 = mlir::CallOpInterface::resolveCallableInTable(&v119, *(this + 2));
      v30 = v29;
      if (v29)
      {
        v29 = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v29);
        if (v29)
        {
          v29 = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v30);
        }

        else
        {
          v30 = 0;
        }
      }

      v117 = v30;
      v118 = v29;
      if (v30)
      {
        if ((*(a2 + 46) & 0x80) != 0)
        {
          v31 = *(a2 + 68);
          v32 = (v31 + 63) >> 6;
          __b = v127;
          HIDWORD(v126) = 6;
          if (v31 + 63 >= 0x1C0)
          {
            LODWORD(v126) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v31 + 63 >= 0x40)
          {
            memset(v127, 255, 8 * v32);
          }

          LODWORD(v126) = (v31 + 63) >> 6;
          v128 = v31;
          if ((v31 & 0x3F) != 0)
          {
            v127[v32 - 1] &= ~(-1 << (v31 & 0x3F));
          }
        }

        else
        {
          __b = v127;
          v126 = 0x600000000;
          v128 = 0;
        }

        ArgOperands = mlir::CallOpInterface::getArgOperands(&v119);
        v38 = v37;
        CallableRegion = mlir::CallableOpInterface::getCallableRegion(&v117);
        if (CallableRegion && *CallableRegion != CallableRegion && (**(this + 1) & 1) != 0)
        {
          v40 = CallableRegion[1];
          v41 = v40 - 8;
          if (!v40)
          {
            v41 = 0;
          }

          v42 = *(v41 + 48);
          v43 = *(v41 + 56);
          if (v42 != v43 && v38)
          {
            v44 = 32 * v38 - 32;
            v45 = v42 + 8;
            do
            {
              v46 = (*(*this + 72))(this, *(ArgOperands + 3));
              v47 = (*(*this + 72))(this, *(v45 - 8));
              mlir::DataFlowAnalysis::addDependency(this, v47, a2 & 0xFFFFFFFFFFFFFFFBLL);
              v48 = (*(*v46 + 40))(v46, v47);
              mlir::DataFlowAnalysis::propagateIfChanged(this, v46, v48);
              v49 = mlir::OpOperand::getOperandNumber(ArgOperands);
              *(__b + (v49 >> 6)) &= ~(1 << v49);
              if (v45 == v43)
              {
                break;
              }

              ArgOperands = (ArgOperands + 32);
              v50 = v44;
              v44 -= 32;
              v45 += 8;
            }

            while (v50);
          }

          llvm::BitVector::set_bits(&__b, &v121);
          v51 = v122;
          v52 = v123;
          if (v122 != v123)
          {
            v53 = v121;
            while (1)
            {
              (*(*this + 56))(this, *(a2 + 72) + 32 * v51);
              v54 = v51 + 1;
              v55 = v53[16];
              if (v51 + 1 != v55)
              {
                v56 = v54 >> 6;
                v57 = v55 - 1;
                v58 = (v55 - 1) >> 6;
                if (v56 <= v58)
                {
                  v59 = *v53;
                  v60 = v54 & 0x3F;
                  v81 = v60 == 0;
                  v61 = 0xFFFFFFFFFFFFFFFFLL >> -v60;
                  if (v81)
                  {
                    v62 = -1;
                  }

                  else
                  {
                    v62 = ~v61;
                  }

                  v63 = 0xFFFFFFFFFFFFFFFFLL >> ~v57;
                  if (v56 == v58)
                  {
                    v64 = v63;
                  }

                  else
                  {
                    v64 = -1;
                  }

                  v65 = v64 & *(v59 + 8 * v56) & v62;
                  if (v65)
                  {
                    goto LABEL_81;
                  }

                  v66 = v56 + 1;
                  if (v56 + 1 != v58 + 1)
                  {
                    break;
                  }
                }
              }

              v51 = -1;
LABEL_71:
              if (v51 == v52)
              {
                goto LABEL_95;
              }
            }

            v67 = v58 - v56;
            v68 = -1;
            while (1)
            {
              v69 = v68 ? -1 : v62;
              v70 = --v67 ? -1 : v63;
              v65 = v69 & v70 & *(v59 + 8 * v66);
              if (v65)
              {
                break;
              }

              ++v66;
              --v68;
              v51 = -1;
              if (!v67)
              {
                goto LABEL_71;
              }
            }

            LODWORD(v56) = v66;
LABEL_81:
            v51 = __clz(__rbit64(v65)) | (v56 << 6);
            goto LABEL_71;
          }
        }

        else
        {
          (*(*this + 40))(this, v119, v120, v132, v133, v129, v130);
        }

LABEL_95:
        v71 = __b;
        if (__b == v127)
        {
          goto LABEL_167;
        }

        goto LABEL_166;
      }
    }
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  if (mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v33 = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    if (a2)
    {
      v34 = *(a2 + 16);
      if (v34)
      {
        ParentOp = mlir::Block::getParentOp(v34);
        if (mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp) && ParentOp)
        {
          mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
          mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::visitRegionSuccessorsFromTerminator(this, a2, v33);
          goto LABEL_167;
        }
      }

      else
      {
        mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(0);
      }
    }
  }

  {
    mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::visitOperation();
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    v72 = *(a2 + 16);
    if (v72)
    {
      v72 = mlir::Block::getParentOp(v72);
    }

    v73 = llvm::dyn_cast<mlir::CallableOpInterface,mlir::Operation>(v72);
    if (v73)
    {
      v74 = mlir::DataFlowAnalysis::getOrCreateFor<mlir::dataflow::PredecessorState,mlir::CallableOpInterface>(this, a2 & 0xFFFFFFFFFFFFFFFBLL, v73);
      if (*(v74 + 56) == 1)
      {
        v75 = *(v74 + 136);
        if (v75)
        {
          v76 = *(v74 + 128);
          v77 = v76 + 8 * v75;
          do
          {
            v78 = *(*v76 + 36);
            if (v78)
            {
              v79 = *v76 - 16;
            }

            else
            {
              v79 = 0;
            }

            mlir::ValueRange::ValueRange(&v121, v79, v78);
            mlir::dataflow::AbstractSparseBackwardDataFlowAnalysis::getLatticeElementsFor(this, a2 & 0xFFFFFFFFFFFFFFFBLL, v121, v122, &__b);
            v80 = __b;
            if (v133)
            {
              v81 = v126 == 0;
            }

            else
            {
              v81 = 1;
            }

            if (!v81)
            {
              v82 = v132;
              v83 = 8 * v126 - 8;
              v84 = 8 * v133 - 8;
              do
              {
                v86 = *v82++;
                v85 = v86;
                v87 = *v80++;
                v88 = (*(*v85 + 40))(v85, v87);
                mlir::DataFlowAnalysis::propagateIfChanged(this, v85, v88);
                if (!v84)
                {
                  break;
                }

                v89 = v83;
                v83 -= 8;
                v84 -= 8;
              }

              while (v89);
              v80 = __b;
            }

            if (v80 != v127)
            {
              free(v80);
            }

            v76 += 8;
            v9 = 1;
          }

          while (v76 != v77);
          goto LABEL_168;
        }
      }

      else if (v133)
      {
        v90 = v132;
        v91 = 8 * v133;
        do
        {
          v92 = *v90++;
          (*(*this + 64))(this, v92);
          v9 = 1;
          v91 -= 8;
        }

        while (v91);
        goto LABEL_168;
      }

      goto LABEL_167;
    }
  }

  v9 = (*(*this + 32))(this, a2, v132, v133, v129, v130);
LABEL_168:
  if (v129 != &v131)
  {
    free(v129);
  }

  if (v132 != v134)
  {
    free(v132);
  }

  return v9;
}