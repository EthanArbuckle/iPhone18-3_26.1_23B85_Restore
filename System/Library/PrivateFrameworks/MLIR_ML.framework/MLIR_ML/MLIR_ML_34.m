uint64_t anonymous namespace::BlockTypeConversionRewrite::commit(uint64_t this, mlir::RewriterBase *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v3 = this;
    this = mlir::RewriterBase::Listener::classof(*(a2 + 2));
    if (this)
    {
      for (i = **(v3 + 24); i; i = *i)
      {
        this = (*(*v2 + 40))(v2, i[2]);
      }
    }
  }

  return this;
}

void anonymous namespace::CreateOperationRewrite::rollback(_anonymous_namespace_::CreateOperationRewrite *this)
{
  v2 = *(this + 3);
  v3 = v2[11];
  if ((v3 & 0x7FFFFF) != 0)
  {
    v4 = (((&v2[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
    v5 = &v4[3 * (v3 & 0x7FFFFF)];
    do
    {
      while (*v4 != v4)
      {
        v6 = v4[1];
        if (v6)
        {
          v7 = v6 - 8;
        }

        else
        {
          v7 = 0;
        }

        llvm::ilist_traits<mlir::Block>::removeNodeFromList(v4, v7);
        v8 = *(v7 + 8);
        v9 = *(v7 + 16);
        *v9 = v8;
        *(v8 + 8) = v9;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
      }

      v4 += 3;
    }

    while (v4 != v5);
    v2 = *(this + 3);
  }

  v10 = v2[9];
  if (v10)
  {
    v11 = (v2 - 4);
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, i);
      while (1)
      {
        v14 = *NextResultAtOffset;
        if (!*NextResultAtOffset)
        {
          break;
        }

        v15 = v14[1];
        if (v15)
        {
          v16 = *v14;
          *v15 = *v14;
          if (v16)
          {
            *(v16 + 8) = v15;
          }
        }

        *v14 = 0;
        v14[1] = 0;
        v14[3] = 0;
      }
    }

    v2 = *(this + 3);
  }

  mlir::Operation::erase(v2);
}

uint64_t anonymous namespace::CreateOperationRewrite::commit(_anonymous_namespace_::CreateOperationRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 16))(result, *(this + 3), 0, 0);
  }

  return result;
}

uint64_t *anonymous namespace::MoveOperationRewrite::rollback(_anonymous_namespace_::MoveOperationRewrite *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v2);
    v4 = *(this + 4);
  }

  else
  {
    v4 = *(this + 4);
    NodePtr = (v4 + 32);
  }

  v5 = *(this + 3);
  v6 = *(v5 + 16);
  result = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v5);
  v8 = result[1];
  if (result != NodePtr && v8 != NodePtr)
  {
    v10 = result;
    result = llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v4 + 32, v6 + 32, result, v8);
    if (v8 != v10)
    {
      v11 = *v8;
      v12 = *v10;
      *(v12 + 8) = v8;
      *v8 = v12;
      v13 = *NodePtr;
      *(v11 + 8) = NodePtr;
      *v10 = v13;
      *(v13 + 8) = v10;
      *NodePtr = v11;
    }
  }

  return result;
}

uint64_t anonymous namespace::MoveOperationRewrite::commit(_anonymous_namespace_::MoveOperationRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 16))(result, *(this + 3), *(this + 4), 0);
  }

  return result;
}

unint64_t anonymous namespace::ReplaceOperationRewrite::rollback(unint64_t this)
{
  v1 = *(this + 24);
  v2 = *(v1 + 36);
  v3 = v1 - 16;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = this;
    for (i = 0; i != v2; ++i)
    {
      this = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
      v11 = *(v5 + 16);
      v12 = v11[15].i32[0];
      if (v12)
      {
        v13 = v11[13];
        v14 = 0x9DDFEA08EB382D69 * ((8 * this - 0xAE502812AA7333) ^ HIDWORD(this));
        v15 = 0x9DDFEA08EB382D69 * (HIDWORD(this) ^ (v14 >> 47) ^ v14);
        LODWORD(v14) = -348639895 * ((v15 >> 47) ^ v15);
        v16 = v12 - 1;
        v9 = v14 & (v12 - 1);
        v10 = *(*&v13 + 16 * v9);
        if (v10 == this)
        {
LABEL_8:
          *(*&v13 + 16 * v9) = -8192;
          v11[14] = vadd_s32(v11[14], 0x1FFFFFFFFLL);
        }

        else
        {
          v8 = 1;
          while (v10 != -4096)
          {
            v7 = v9 + v8++;
            v9 = v7 & v16;
            v10 = *(*&v13 + 16 * v9);
            if (v10 == this)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }
  }

  return this;
}

void anonymous namespace::ReplaceOperationRewrite::commit(_anonymous_namespace_::ReplaceOperationRewrite *this, mlir::RewriterBase *a2)
{
  v46[6] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 2);
  if (v4)
  {
    if (mlir::RewriterBase::Listener::classof(*(a2 + 2)))
    {
      v5 = v4;
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

  v6 = *(this + 3);
  v7 = *(v6 + 36);
  if (v7)
  {
    v8 = v6 - 16;
  }

  else
  {
    v8 = 0;
  }

  v44 = v46;
  v45 = 0x600000000;
  v42 = v5;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, i);
      v12 = *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8;
      if (v10 == NextResultAtOffset || v12 && (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8) != v12)
      {
        v10 = 0;
      }

      v46[i] = v10;
    }

    v5 = v42;
    v6 = *(this + 3);
    v13 = (v45 + v7);
    LODWORD(v45) = v45 + v7;
    if (v42)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v13 = 0;
    LODWORD(v45) = 0;
    if (v5)
    {
LABEL_20:
      mlir::ValueRange::ValueRange(v43, v44, v13);
      (*(*v5 + 56))(v5, v6, v43[0], v43[1]);
      v6 = *(this + 3);
    }
  }

  v14 = *(v6 + 36);
  if (v14)
  {
    v15 = v6 - 16;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = 0;
    v17 = v44;
    do
    {
      v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, v16);
      v19 = *v17;
      if (*v17)
      {
        v20 = *v18;
        if (*v18)
        {
          do
          {
            v21 = *v20;
            v22 = v20[2];
            (*(*a2 + 40))(a2, v22);
            v23 = v20[1];
            if (v23)
            {
              v24 = *v20;
              *v23 = *v20;
              if (v24)
              {
                v24[1] = v23;
              }
            }

            v20[3] = v19;
            v20[1] = v19;
            v25 = *v19;
            *v20 = *v19;
            if (v25)
            {
              *(v25 + 8) = v20;
            }

            *v19 = v20;
            (*(*a2 + 48))(a2, v22);
            v20 = v21;
          }

          while (v21);
        }
      }

      ++v16;
      ++v17;
    }

    while (v16 != v14);
  }

  v26 = *(*(*(this + 2) + 376) + 16);
  if (v26)
  {
    v27 = v26[2].i32[0];
    if (v27)
    {
      v28 = *v26;
      v29 = *(this + 3);
      v30 = v27 - 1;
      v31 = ((v29 >> 4) ^ (v29 >> 9)) & (v27 - 1);
      v32 = *(*v26 + 8 * v31);
      if (v29 == v32)
      {
LABEL_39:
        *(*&v28 + 8 * v31) = -8192;
        v26[1] = vadd_s32(v26[1], 0x1FFFFFFFFLL);
      }

      else
      {
        v40 = 1;
        while (v32 != -4096)
        {
          v41 = v31 + v40++;
          v31 = v41 & v30;
          v32 = *(*&v28 + 8 * v31);
          if (v29 == v32)
          {
            goto LABEL_39;
          }
        }
      }
    }
  }

  v33 = *(this + 3);
  if (v42)
  {
    v43[0] = &v42;
    v33 = *(this + 3);
  }

  v34 = *(v33 + 2);
  NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v33);
  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(NodePtr);
  llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v34 + 32, ValuePtr);
  v37 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(ValuePtr);
  v38 = *v37;
  v39 = v37[1];
  *v39 = *v37;
  *(v38 + 8) = v39;
  *v37 = 0;
  v37[1] = 0;
  if (v44 != v46)
  {
    free(v44);
  }
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::detail::ConversionPatternRewriterImpl::notifyOpReplaced(mlir::Operation *,mlir::ValueRange)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2 + 280, &v5, v6);
  if (v6[16] == 1)
  {
    v4 = *(v2 + 312);
    if (v4 >= *(v2 + 316))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v2 + 304) + 8 * v4) = v5;
    ++*(v2 + 312);
  }

  return result;
}

void anonymous namespace::EraseBlockRewrite::~EraseBlockRewrite(_anonymous_namespace_::EraseBlockRewrite *this)
{
  *this = &unk_286866428;
}

{
  *this = &unk_286866428;
  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::EraseBlockRewrite::rollback(_anonymous_namespace_::EraseBlockRewrite *this)
{
  v4 = this + 32;
  v2 = *(this + 4);
  v3 = *(v4 + 1);
  v5 = *(this + 3);
  if (v3)
  {
    v6 = (v3 + 8);
  }

  else
  {
    v6 = v2;
  }

  result = llvm::ilist_traits<mlir::Block>::addNodeToList(v2, *(this + 3));
  v8 = *v6;
  *(v5 + 8) = *v6;
  *(v5 + 16) = v6;
  v9 = v5 + 8;
  *(v8 + 8) = v9;
  *v6 = v9;
  *(this + 3) = 0;
  return result;
}

uint64_t anonymous namespace::EraseBlockRewrite::commit(uint64_t this, mlir::RewriterBase *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v3 = this;
    this = mlir::RewriterBase::Listener::classof(*(a2 + 2));
    if (this)
    {
      v4 = *(v3 + 24);
      v5 = *(*v2 + 32);

      return v5(v2, v4);
    }
  }

  return this;
}

mlir::Block *anonymous namespace::EraseBlockRewrite::cleanup(_anonymous_namespace_::EraseBlockRewrite *this, mlir::RewriterBase *a2)
{
  mlir::Block::dropAllDefinedValueUses(*(this + 3));
  result = *(this + 3);
  if (result)
  {
    mlir::Block::~Block(result);
    result = MEMORY[0x259C63180]();
  }

  *(this + 3) = 0;
  return result;
}

void anonymous namespace::CreateBlockRewrite::rollback(_anonymous_namespace_::CreateBlockRewrite *this)
{
  v2 = *(this + 3);
  v3 = v2 + 32;
  if (*(v2 + 4) != (v2 + 32))
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v2 + 5));
      llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v3, ValuePtr);
      NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(ValuePtr);
      v6 = *NodePtr;
      v7 = NodePtr[1];
      *v7 = *NodePtr;
      *(v6 + 8) = v7;
      *NodePtr = 0;
      NodePtr[1] = 0;
    }

    while (*(v2 + 4) != v3);
    v2 = *(this + 3);
  }

  v8 = *v2;
  if (*v2)
  {
    do
    {
      v11 = v8[1];
      if (v11)
      {
        v12 = *v8;
        *v11 = *v8;
        if (v12)
        {
          *(v12 + 8) = v11;
        }
      }

      *v8 = 0;
      v8[1] = 0;
      v8[3] = 0;
      v8 = *v2;
    }

    while (*v2);
    Parent = mlir::Block::getParent(*(this + 3));
    v10 = *(this + 3);
    if (Parent)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = mlir::Block::getParent(v2);
    v10 = *(this + 3);
    if (v9)
    {
LABEL_6:

      mlir::Block::erase(v10);
      return;
    }
  }

  if (v10)
  {
    mlir::Block::~Block(v10);

    JUMPOUT(0x259C63180);
  }
}

uint64_t anonymous namespace::CreateBlockRewrite::commit(_anonymous_namespace_::CreateBlockRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 24))(result, *(this + 3), 0, 0);
  }

  return result;
}

uint64_t anonymous namespace::MoveBlockRewrite::rollback(_anonymous_namespace_::MoveBlockRewrite *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = (v2 + 8);
    v4 = *(this + 4);
  }

  else
  {
    v4 = *(this + 4);
    v3 = v4;
  }

  result = mlir::Block::getParent(*(this + 3));
  v6 = *(this + 3);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7[1];
  if (v7 != v3 && v8 != v3)
  {
    result = llvm::ilist_traits<mlir::Block>::transferNodesFromList(v4, result, v7, v7[1]);
    if (v8 != v7)
    {
      v10 = *v8;
      v11 = *v7;
      *(v11 + 8) = v8;
      *v8 = v11;
      v12 = *v3;
      *(v10 + 8) = v3;
      *v7 = v12;
      *(v12 + 8) = v7;
      *v3 = v10;
    }
  }

  return result;
}

uint64_t anonymous namespace::MoveBlockRewrite::commit(_anonymous_namespace_::MoveBlockRewrite *this, mlir::RewriterBase *a2)
{
  result = *(a2 + 2);
  if (result)
  {
    return (*(*result + 24))(result, *(this + 3), *(this + 4), 0);
  }

  return result;
}

void anonymous namespace::ModifyOperationRewrite::~ModifyOperationRewrite(_anonymous_namespace_::ModifyOperationRewrite *this)
{
  *this = &unk_286866518;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  v3 = *(this + 7);
  if (v3 != this + 72)
  {
    free(v3);
  }
}

{
  *this = &unk_286866518;
  v2 = *(this + 17);
  if (v2 != this + 152)
  {
    free(v2);
  }

  v3 = *(this + 7);
  if (v3 != this + 72)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void anonymous namespace::ModifyOperationRewrite::rollback(_anonymous_namespace_::ModifyOperationRewrite *this)
{
  v10 = *MEMORY[0x277D85DE8];
  *(*(this + 3) + 24) = *(this + 5);
  mlir::Operation::setAttrs(*(this + 3), *(this + 6));
  v2 = *(this + 3);
  mlir::ValueRange::ValueRange(&v8, *(this + 7), *(this + 16));
  mlir::Operation::setOperands(v2, v8, v9);
  v3 = *(this + 36);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 17);
    v6 = 8 * v3;
    do
    {
      mlir::Operation::setSuccessor(*(this + 3), *(v5 + 8 * v4), v4);
      ++v4;
      v6 -= 8;
    }

    while (v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    mlir::Operation::copyProperties(*(this + 3), *(this + 21));
    (*(**(this + 4) + 128))(*(this + 4), v7);
    operator delete(*(this + 21));
    *(this + 21) = 0;
  }
}

void anonymous namespace::ModifyOperationRewrite::commit(_anonymous_namespace_::ModifyOperationRewrite *this, mlir::RewriterBase *a2)
{
  v3 = *(a2 + 2);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a2 + 2)))
  {
    (*(*v3 + 40))(v3, *(this + 3));
  }

  if (*(this + 21))
  {
    (*(**(this + 4) + 128))(*(this + 4));
    operator delete(*(this + 21));
    *(this + 21) = 0;
  }
}

uint64_t mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(mlir::ForwardIterator *a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    result = (a2)(a3, a1);
    if (!result)
    {
      return result;
    }

    if (result == 2)
    {
      return 1;
    }
  }

  Iterable = mlir::ForwardIterator::makeIterable(a1, a2);
  if (!v9)
  {
    goto LABEL_77;
  }

  v10 = Iterable;
  v11 = (Iterable + 24 * v9);
  do
  {
    mlir::ForwardDominanceIterator<false>::makeIterable(v10, &v62);
    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v54, &v58, &v62);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    if (v65 != v64)
    {
      if (((v65 - v64) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_84;
    }

    llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v48, &v50, &v66);
    __p = 0;
    v52 = 0;
    v53 = 0;
    if (v69 != v68)
    {
      if (((v69 - v68) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_84:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 0;
    v13 = v59;
    v14 = v60;
    if (v60 != v59)
    {
      goto LABEL_21;
    }

LABEL_11:
    if (v13 != v14)
    {
      v15 = v12 + 16;
      v16 = (v13 + 2);
      do
      {
        v17 = v16 - 16;
        if (*(v16 - 2) != *(v15 - 2))
        {
          goto LABEL_21;
        }

        v18 = v16[8];
        v19 = v15[8];
        if (v18 != v19 || v18 == 0)
        {
          if (v18 != v19)
          {
            goto LABEL_21;
          }
        }

        else if (*v16 != *v15)
        {
LABEL_21:
          while (2)
          {
            v21 = *(v14 - 4);
            v22 = *(v21 + 40);
            v23 = v21 + 32;
            while (v22 != v23)
            {
              v24 = *(v22 + 8);
              ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v22);
              v26 = mlir::detail::walk<mlir::ForwardDominanceIterator<false>>(ValuePtr, a2, a3, a4);
              v22 = v24;
              if (!v26)
              {
                v46 = 0;
                v12 = __p;
                if (__p)
                {
                  goto LABEL_57;
                }

                goto LABEL_58;
              }
            }

            v14 = v60;
LABEL_27:
            v27 = *(v14 - 4);
            if ((*(v14 - 1) & 1) == 0)
            {
              mlir::SuccessorRange::SuccessorRange(v70, *(v14 - 4));
              *(v14 - 3) = v70[0];
              *(v14 - 2) = 0;
              *(v14 - 8) = 1;
            }

            while (1)
            {
              mlir::SuccessorRange::SuccessorRange(v70, v27);
              v29 = *(v14 - 2);
              if (v29 == v70[1])
              {
                v14 = v60 - 4;
                v60 = v14;
                if (v59 == v14)
                {
                  goto LABEL_54;
                }

                goto LABEL_27;
              }

              v30 = *(v14 - 3);
              *(v14 - 2) = (v29 + 1);
              v31 = *(v30 + 32 * v29 + 24);
              if (v55 == v54)
              {
                v32 = v57;
                if (v57)
                {
                  v33 = 8 * v57;
                  v34 = v54;
                  while (*v34 != v31)
                  {
                    ++v34;
                    v33 -= 8;
                    if (!v33)
                    {
                      goto LABEL_29;
                    }
                  }

                  continue;
                }

LABEL_29:
                if (v57 < v56)
                {
                  break;
                }
              }

              llvm::SmallPtrSetImplBase::insert_imp_big(&v54, v31);
              if (v28)
              {
                goto LABEL_39;
              }
            }

            ++v57;
            v54[v32] = v31;
LABEL_39:
            v35 = v60;
            if (v60 < v61)
            {
              *v60 = v31;
              *(v35 + 8) = 0;
              v14 = v35 + 4;
              *(v35 + 24) = 0;
              goto LABEL_53;
            }

            v36 = v59;
            v37 = v60 - v59;
            v38 = (v60 - v59) >> 5;
            v39 = v38 + 1;
            if ((v38 + 1) >> 59)
            {
              goto LABEL_84;
            }

            v40 = v11;
            v41 = v61 - v59;
            if ((v61 - v59) >> 4 > v39)
            {
              v39 = v41 >> 4;
            }

            if (v41 >= 0x7FFFFFFFFFFFFFE0)
            {
              v42 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v39;
            }

            if (v42)
            {
              if (!(v42 >> 59))
              {
                operator new();
              }

              std::string::__throw_length_error[abi:nn200100]();
            }

            v43 = (v60 - v59) >> 5;
            v44 = 32 * v38;
            *v44 = v31;
            *(v44 + 8) = 0;
            *(v44 + 24) = 0;
            v14 = (32 * v38 + 32);
            v45 = (v44 - 32 * v43);
            memcpy(v45, v36, v37);
            v59 = v45;
            v60 = v14;
            v61 = 0;
            if (v36)
            {
              operator delete(v36);
            }

            v11 = v40;
LABEL_53:
            v60 = v14;
LABEL_54:
            v12 = __p;
            v13 = v59;
            if (v14 - v59 != v52 - __p)
            {
              continue;
            }

            goto LABEL_11;
          }
        }

        v15 += 32;
        v16 += 32;
      }

      while (v17 + 32 != v14);
    }

    v46 = 1;
    if (v12)
    {
LABEL_57:
      v52 = v12;
      operator delete(v12);
    }

LABEL_58:
    if (v49 != v48)
    {
      free(v49);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v55 != v54)
    {
      free(v55);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v67 != v66)
    {
      free(v67);
    }

    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    if (v63 != v62)
    {
      free(v63);
    }

    if ((v46 & 1) == 0)
    {
      return 0;
    }

    v10 += 3;
  }

  while (v10 != v11);
LABEL_77:
  if (a4 == 1)
  {
    return (a2)(a3, a1);
  }

  return 1;
}

void mlir::ForwardDominanceIterator<false>::makeIterable(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 != a1)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = v3 - 8;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    llvm::depth_first<mlir::Block *>(&v5);
  }

  v18 = 0;
  v19 = 0;
  memset(v17, 0, sizeof(v17));
  v14 = &v17[8];
  v15 = &v17[8];
  v16 = 8;
  v20 = 0;
  v21 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = v9 + 8;
  v7 = v9 + 8;
  v8 = 8;
  v10 = 0;
  __p = 0;
  v12 = 0;
  v13 = 0;
  llvm::make_range<llvm::df_iterator<llvm::DomTreeNodeBase<mlir::Block> *,llvm::df_iterator_default_set<llvm::DomTreeNodeBase<mlir::Block> *,8u>,false,llvm::GraphTraits<llvm::DomTreeNodeBase<mlir::Block> *>>>(&v14, &v6, &v22);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v7 != v6)
  {
    free(v7);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v15 != v14)
  {
    free(v15);
  }

  llvm::make_pointee_range<llvm::iterator_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>> &,llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(&v22, a2);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v27 != v26)
  {
    free(v27);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v23 != v22)
  {
    free(v23);
  }
}

void llvm::depth_first<mlir::Block *>(uint64_t *a1)
{
  v1 = *a1;
  v2 = v6;
  v3 = v6;
  v5 = 0;
  v7 = 0u;
  v4 = 0x100000008;
  v6[8] = 0;
  v6[0] = v1;
  operator new();
}

void llvm::make_pointee_range<llvm::iterator_range<llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>> &,llvm::df_iterator<mlir::Block *,llvm::df_iterator_default_set<mlir::Block *,8u>,false,llvm::GraphTraits<mlir::Block *>>>(llvm::SmallPtrSetImplBase *a1@<X0>, uint64_t a2@<X8>)
{
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v18, &v20, a1);
  v21 = 0uLL;
  v22 = 0;
  v5 = *(a1 + 12);
  v4 = *(a1 + 13);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_28;
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v28, v30, 8, &v18);
  v31 = v21;
  v32 = v22;
  v22 = 0;
  v21 = 0uLL;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v23, &v25, 8, &v28);
  v26 = v31;
  v27 = v32;
  v32 = 0;
  v31 = 0uLL;
  if (v29 != v28)
  {
    free(v29);
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v8, &v10, (a1 + 120));
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v7 = *(a1 + 27);
  v6 = *(a1 + 28);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_28:
    std::string::__throw_length_error[abi:nn200100]();
  }

  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v28, v30, 8, &v8);
  v31 = *v11;
  v32 = v12;
  v11[1] = 0;
  v12 = 0;
  v11[0] = 0;
  llvm::SmallPtrSetImplBase::SmallPtrSetImplBase(&v13, &v15, 8, &v28);
  __p = v31;
  v17 = v32;
  v32 = 0;
  v31 = 0uLL;
  if (v29 != v28)
  {
    free(v29);
  }

  llvm::make_range<llvm::df_iterator<llvm::DomTreeNodeBase<mlir::Block> *,llvm::df_iterator_default_set<llvm::DomTreeNodeBase<mlir::Block> *,8u>,false,llvm::GraphTraits<llvm::DomTreeNodeBase<mlir::Block> *>>>(&v23, &v13, a2);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v14 != v13)
  {
    free(v14);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  if (v9 != v8)
  {
    free(v9);
  }

  if (v26)
  {
    *(&v26 + 1) = v26;
    operator delete(v26);
  }

  if (v24 != v23)
  {
    free(v24);
  }

  if (v21)
  {
    *(&v21 + 1) = v21;
    operator delete(v21);
  }

  if (v19 != v18)
  {
    free(v19);
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::OperationConverter::convertOperations(llvm::ArrayRef<mlir::Operation *>)::$_0>(mlir::ConversionTarget **a1, mlir::Operation *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2);
  if (v3 >= *(*a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v2 + 8 * v3) = a2;
  ++*(v2 + 2);
  isLegal = mlir::ConversionTarget::isLegal(a1[1], a2);
  if (isLegal & 0x100) != 0 && (isLegal)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *llvm::DenseMap<mlir::Type,mlir::Type,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,mlir::Type>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = ((v24 >> 4) ^ (v24 >> 9)) & v16;
          v23 = &result[2 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[2 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::InsertIntoBucket<mlir::Type const&,llvm::SmallVector<mlir::Type,2u>>(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v12 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v8 = a3;
    v9 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      *(a1 + 2) = v5 + 1;
      if (*v4 == -4096)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v8 = a3;
    v9 = a4;
  }

  v10 = a1;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::LookupBucketFor<mlir::OperationName>(v10, v8, &v12);
  a1 = v10;
  a3 = v8;
  v11 = *(v10 + 2);
  v4 = v12;
  a4 = v9;
  *(a1 + 2) = v11 + 1;
  if (*v4 != -4096)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v4 = *a3;
  v4[1] = v4 + 3;
  v4[2] = 0x200000000;
  if (*(a4 + 8))
  {
    llvm::SmallVectorImpl<unsigned long>::operator=((v4 + 1), a4);
  }

  return v4;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 5 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 40 * v11 - 40;
    if (v12 < 0x28)
    {
      v13 = result;
LABEL_14:
      v17 = &result[5 * v11];
      do
      {
        *v13 = -4096;
        v13 += 5;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x28 + 1;
    v13 = &result[5 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[5] = -4096;
      v15 += 10;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 40 * v6 - 40;
    if (v8 < 0x28)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[5 * v6];
      do
      {
        *v9 = -4096;
        v9 += 5;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = &v7[5 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[5] = -4096;
      v11 += 10;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
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
        v17 = (*a1 + 40 * v16);
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
            v17 = (*a1 + 40 * (v23 & v15));
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
        v17[2] = 0x200000000;
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

      v4 += 5;
    }

    while (v4 != a3);
  }
}

uint64_t _ZNSt3__18__all_ofB8nn200100IN4llvm15concat_iteratorIKN4mlir4TypeEJPS5_S6_EEES7_NS_10__identityEZNKS3_13TypeConverter7isLegalINS1_6detail12concat_rangeIS5_JNS1_8ArrayRefIS4_EESE_EEEEENS_9enable_ifIXaantsr3std14is_convertibleIT_S4_EE5valuentsr3std14is_convertibleISH_PNS3_9OperationEEE5valueEbE4typeEOSH_EUlS4_E_EEbSH_T0_RT2_RT1_(uint64_t *a1, void *a2, uint64_t *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  while (v6 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    v9 = &unk_286866560;
    do
    {
      while (1)
      {
        v11 = *(v9 - 1);
        v12 = (a1 + (*v9 >> 1));
        if (*v9)
        {
          break;
        }

        v9 += 2;
        v10 = v11(v12);
        if (v10)
        {
          goto LABEL_16;
        }
      }

      v9 += 2;
      v10 = (*(*v12 + v11))();
    }

    while (!v10);
LABEL_16:
    v13 = *v10;
    v14 = *a3;
    v18 = v20;
    v19 = 0x100000000;
    v15 = 0;
    if (mlir::TypeConverter::convertType(v14, v13, &v18) && v19 == 1)
    {
      v15 = *v18;
    }

    if (v18 != v20)
    {
      free(v18);
    }

    if (v15 != v13)
    {
      return 0;
    }

    v6 = *a1;
    if (*a1 == a1[2])
    {
      v16 = a1[1];
      if (v16 != a1[3])
      {
        a1[1] = v16 + 8;
      }
    }

    else
    {
      v6 += 8;
      *a1 = v6;
    }
  }

  return 1;
}

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::Type const,mlir::Type const*,mlir::Type const*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

void anonymous namespace::FunctionOpInterfaceSignatureConversion::~FunctionOpInterfaceSignatureConversion(_anonymous_namespace_::FunctionOpInterfaceSignatureConversion *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::FunctionOpInterfaceSignatureConversion::matchAndRewrite(uint64_t a1, uint64_t InterfaceFor, uint64_t a3, uint64_t a4, mlir::MLIRContext **a5)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  v8 = *(a1 + 96);

  return convertFuncOpTypes(v6, InterfaceFor, v8, a5);
}

uint64_t convertFuncOpTypes(uint64_t a1, uint64_t a2, const mlir::TypeConverter *a3, mlir::MLIRContext **a4)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v29 = a1;
  v30 = a2;
  FunctionType = mlir::FunctionOpInterface::getFunctionType(&v29);
  if (*(*FunctionType + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v7 = FunctionType;
  }

  else
  {
    v7 = 0;
  }

  v28 = v7;
  if (!v7)
  {
    return 0;
  }

  NumInputs = mlir::FunctionType::getNumInputs(&v28);
  v37 = v39;
  v38 = 0x400000000;
  if (NumInputs)
  {
    if (NumInputs >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v39;
    if (32 * NumInputs == 32)
    {
      goto LABEL_32;
    }

    v11 = ((32 * NumInputs - 32) >> 5) + 1;
    v10 = &v39[2 * (v11 & 0xFFFFFFFFFFFFFFELL)];
    v12 = &v40;
    v13 = v11 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v12 - 32) = 0;
      *v12 = 0;
      *(v12 - 8) = 0;
      *(v12 + 24) = 0;
      v12 += 8;
      v13 -= 2;
    }

    while (v13);
    if (v11 != (v11 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_32:
      do
      {
        *v10 = 0;
        *(v10 + 24) = 0;
        v10 += 2;
      }

      while (v10 != &v39[2 * NumInputs]);
    }

    LODWORD(v38) = NumInputs;
  }

  v41 = v43;
  v42 = 0x400000000;
  v34 = &v36;
  v35 = 0x100000000;
  Inputs = mlir::FunctionType::getInputs(&v28);
  mlir::TypeRange::TypeRange(&v32, Inputs, v15);
  if (mlir::TypeConverter::convertSignatureArgs(a3, v32, v33, &v37, 0))
  {
    Results = mlir::FunctionType::getResults(&v28);
    mlir::TypeRange::TypeRange(&v32, Results, v17);
    v18 = v33;
    if (v33)
    {
      v19 = 0;
      v20 = v32;
      while (1)
      {
        v21 = mlir::TypeRange::dereference_iterator(v20, v19);
        if (!mlir::TypeConverter::convertType(a3, v21, &v34))
        {
          break;
        }

        if (v18 == ++v19)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      mlir::detail::ConversionPatternRewriterImpl::convertRegionTypes(a4[5], a4, (((v29 + 16 * ((*(v29 + 44) >> 23) & 1) + ((*(v29 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v29 + 40)), a3, &v37);
      if (v22)
      {
        v23 = a4[1];
        mlir::TypeRange::TypeRange(&v32, v41, v42);
        mlir::TypeRange::TypeRange(v31, v34, v35);
        v24 = mlir::FunctionType::get(v23, v32, v33, v31[0], v31[1]);
        v25 = v29;
        (*(*a4 + 5))(a4, v29);
        mlir::function_interface_impl::setFunctionType(v29, v30, v24);
        (*(*a4 + 6))(a4, v25);
        v9 = 1;
        v26 = v34;
        if (v34 == &v36)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }
  }

  v9 = 0;
  v26 = v34;
  if (v34 != &v36)
  {
LABEL_24:
    free(v26);
  }

LABEL_25:
  if (v41 != v43)
  {
    free(v41);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  return v9;
}

void anonymous namespace::AnyFunctionOpInterfaceSignatureConversion::~AnyFunctionOpInterfaceSignatureConversion(_anonymous_namespace_::AnyFunctionOpInterfaceSignatureConversion *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

uint64_t mlir::OpInterfaceConversionPattern<mlir::FunctionOpInterface>::rewrite(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 64);

  return v3();
}

uint64_t mlir::OpInterfaceConversionPattern<mlir::FunctionOpInterface>::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a1 = v2;
  }

  v3 = *(*a1 + 72);

  return v3();
}

uint64_t *llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[2] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 5 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 40 * v11 - 40;
    if (v12 < 0x28)
    {
      v13 = result;
LABEL_14:
      v17 = &result[5 * v11];
      do
      {
        *v13 = -4096;
        v13 += 5;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x28 + 1;
    v13 = &result[5 * (v14 & 0xFFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[5] = -4096;
      v15 += 10;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>,mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::function<std::optional<BOOL> ()(mlir::Operation *)>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = 40 * v6 - 40;
    if (v8 < 0x28)
    {
      v9 = *result;
LABEL_7:
      v13 = &v7[5 * v6];
      do
      {
        *v9 = -4096;
        v9 += 5;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = &v7[5 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *result;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[5] = -4096;
      v11 += 10;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
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
      if ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_12;
      }

      v15 = *(v5 + 16);
      if (v15)
      {
        v16 = v15 - 1;
        v17 = (v15 - 1) & ((v14 >> 4) ^ (v14 >> 9));
        v18 = (*v5 + 40 * v17);
        v19 = *v18;
        if (v14 != *v18)
        {
          v20 = 0;
          v21 = 1;
          while (v19 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v19 == -8192;
            }

            if (v22)
            {
              v20 = v18;
            }

            v23 = v17 + v21++;
            v17 = v23 & v16;
            v18 = (*v5 + 40 * (v23 & v16));
            v19 = *v18;
            if (v14 == *v18)
            {
              goto LABEL_26;
            }
          }

          if (v20)
          {
            v18 = v20;
          }

          *v18 = v14;
          v24 = v18 + 1;
          v25 = v4 + 1;
          v26 = v4[4];
          if (!v26)
          {
LABEL_33:
            v18[4] = 0;
            result = v4[4];
            ++*(v5 + 8);
            if (result != v25)
            {
LABEL_34:
              if (result)
              {
                result = (*(*result + 40))(result);
              }

              goto LABEL_12;
            }

            goto LABEL_29;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v18 = 0;
      }

LABEL_26:
      *v18 = v14;
      v24 = v18 + 1;
      v25 = v4 + 1;
      v26 = v4[4];
      if (!v26)
      {
        goto LABEL_33;
      }

LABEL_27:
      if (v26 == v25)
      {
        v18[4] = v24;
        (*(*v4[4] + 24))(v4[4]);
        result = v4[4];
        ++*(v5 + 8);
        if (result != v25)
        {
          goto LABEL_34;
        }

LABEL_29:
        result = (*(*result + 32))(result);
        goto LABEL_12;
      }

      v18[4] = v26;
      v4[4] = 0;
      ++*(v5 + 8);
LABEL_12:
      v4 += 5;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t *llvm::StringMap<std::function<std::optional<BOOL> ()(mlir::Operation *)>,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v11 = buffer + 5;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 41, 8uLL);
    v11 = buffer + 5;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[4] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__0EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E7__cloneEPNS0_6__baseISL_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286866680;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__0EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_EclESF_SH_OSK_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = **a4;
  pdllConvertValues(&v12, a2, &v11, 1uLL, a5, a6);
  if (v13[48] != 1)
  {
    return 0;
  }

  v7 = *v12;
  if (v12 != v13)
  {
    free(v12);
  }

  v8 = *(a3 + 8);
  if (v8 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = (*a3 + 16 * v8);
  *v9 = v7;
  v9[1] = 4;
  ++*(a3 + 8);
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__0EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_0EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_0EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_0EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_0EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void pdllConvertValues(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[6] = *MEMORY[0x277D85DE8];
  __src = v12;
  v11 = 0x600000000;
  if (a4)
  {
    if ((mlir::detail::ConversionPatternRewriterImpl::remapValues(*(a2 + 40), "value", 5, 0, 0, a6, a3, a4, &__src) & 1) == 0)
    {
      v8 = 0;
      *a1 = 0;
      goto LABEL_14;
    }

    v7 = v11;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    v8 = 1;
    if (!v7 || &__src == a1)
    {
      goto LABEL_14;
    }

    if (__src == v12)
    {
      if (v7 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*a1, __src, 8 * v7);
      *(a1 + 8) = v7;
    }

    else
    {
      *a1 = __src;
      v9 = HIDWORD(v11);
      *(a1 + 8) = v7;
      *(a1 + 12) = v9;
      __src = v12;
      HIDWORD(v11) = 0;
    }

    LODWORD(v11) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
  }

  v8 = 1;
LABEL_14:
  *(a1 + 64) = v8;
  if (__src != v12)
  {
    free(__src);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__1EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E7__cloneEPNS0_6__baseISL_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286866710;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__1EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_EclESF_SH_OSK_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t ***a4, uint64_t a5, uint64_t a6)
{
  v16[2] = *MEMORY[0x277D85DE8];
  pdllConvertValues(&__src, a2, ***a4, (**a4)[1], a5, a6);
  if (v12[48] == 1)
  {
    v13 = v15;
    v14 = 0x600000000;
    v6 = v11;
    if (v11)
    {
      v7 = __src;
      if (__src == v12)
      {
        if (v11 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v11;
        memcpy(v15, __src, 8 * v11);
        v6 = v9;
        LODWORD(v14) = v9;
        v7 = v13;
      }

      else
      {
        v13 = __src;
        v14 = v11;
        __src = v12;
        HIDWORD(v11) = 0;
      }

      LODWORD(v11) = 0;
    }

    else
    {
      v6 = 0;
      v7 = v15;
    }

    mlir::ValueRange::ValueRange(v16, v7, v6);
    mlir::PDLResultList::push_back();
  }

  return 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__1EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_1EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_1EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_1EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_1EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void mlir::PDLResultList::push_back()
{
  v0 = *MEMORY[0x277D85DE8];
  operator new[]();
}

{
  v0 = *MEMORY[0x277D85DE8];
  operator new[]();
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__2EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E7__cloneEPNS0_6__baseISL_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286866790;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__2EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_EclESF_SH_OSK_(uint64_t a1, uint64_t a2, uint64_t a3, void ***a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 40) + 344);
  v6 = **a4;
  if (v5)
  {
    v11 = v13;
    v12 = 0x100000000;
    v7 = mlir::TypeConverter::convertType(v5, v6, &v11);
    v6 = 0;
    if (v7 && v12 == 1)
    {
      v6 = *v11;
    }

    if (v11 != v13)
    {
      free(v11);
    }

    if (!v6)
    {
      return 0;
    }
  }

  v8 = *(a3 + 8);
  if (v8 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v9 = (*a3 + 16 * v8);
  *v9 = v6;
  v9[1] = 2;
  ++*(a3 + 8);
  return 1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__2EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_2EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_2EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_2EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_2EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__3EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E7__cloneEPNS0_6__baseISL_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286866810;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__3EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_EclESF_SH_OSK_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t ***a4)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 40) + 344);
  v5 = **a4;
  v7 = *v5;
  v6 = v5[1];
  if (!v4)
  {
    __src = v25;
    v24 = 0x600000000;
    if (v6 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v25[i] = mlir::TypeRange::dereference_iterator(v7, i);
      }

      v13 = v24;
      v14 = __src;
    }

    else
    {
      v13 = 0;
      v14 = v25;
    }

    __dst = v21;
    v20 = 0x600000000;
    v15 = v13 + v6;
    LODWORD(v24) = v15;
    if (v15)
    {
      if (v14 == v25)
      {
        if (v15 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v21, v14, 8 * v15);
        v14 = __src;
        LODWORD(v20) = v15;
      }

      else
      {
        __dst = v14;
        v20 = __PAIR64__(HIDWORD(v24), v15);
        __src = v25;
        HIDWORD(v24) = 0;
        v14 = v25;
      }

      LODWORD(v24) = 0;
    }

    v22 = 1;
    if (v14 == v25)
    {
      goto LABEL_34;
    }

    v11 = v14;
    goto LABEL_33;
  }

  __src = v25;
  v24 = 0x600000000;
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      v9 = mlir::TypeRange::dereference_iterator(v7, v8);
      if (!mlir::TypeConverter::convertType(v4, v9, &__src))
      {
        break;
      }

      if (v6 == ++v8)
      {
        v10 = v24;
        __dst = v21;
        v20 = 0x600000000;
        if (v24)
        {
          if (__src == v25)
          {
            if (v24 >= 7)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            memcpy(v21, __src, 8 * v24);
            LODWORD(v20) = v10;
          }

          else
          {
            __dst = __src;
            v20 = v24;
            __src = v25;
            HIDWORD(v24) = 0;
          }

          LODWORD(v24) = 0;
        }

        goto LABEL_32;
      }
    }

    LOBYTE(__dst) = 0;
    v22 = 0;
    v11 = __src;
    if (__src != v25)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  __dst = v21;
  v20 = 0x600000000;
LABEL_32:
  v22 = 1;
  v11 = __src;
  if (__src != v25)
  {
LABEL_33:
    free(v11);
  }

LABEL_34:
  if (v22 == 1)
  {
    __src = v25;
    v24 = 0x600000000;
    v16 = v20;
    if (v20)
    {
      v17 = __dst;
      if (__dst == v21)
      {
        if (v20 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(v25, __dst, 8 * v20);
        v16 = v20;
        LODWORD(v24) = v20;
        v17 = __src;
      }

      else
      {
        __src = __dst;
        v24 = v20;
      }
    }

    else
    {
      v16 = 0;
      v17 = v25;
    }

    mlir::TypeRange::TypeRange(v26, v17, v16);
    mlir::PDLResultList::push_back();
  }

  return 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS2_30registerConversionPDLFunctionsERNS2_17RewritePatternSetEE3__3EENS_9enable_ifIXntsr3std14is_convertibleIT_NS_8functionIFN4llvm13LogicalResultERNS2_15PatternRewriterERNS2_13PDLResultListENSC_8ArrayRefINS2_8PDLValueEEEEEEEE5valueESM_E4typeEOSA_EUlSF_SH_SK_E_NS_9allocatorISQ_EESL_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_3EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_3EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_3EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail20pdl_function_builder14buildRewriteFnIZNS_30registerConversionPDLFunctionsERNS_17RewritePatternSetEE3$_3EENSt3__19enable_ifIXntsr3std14is_convertibleIT_NS6_8functionIFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENSA_8ArrayRefINS_8PDLValueEEEEEEEE5valueESK_E4typeEOS8_EUlSD_SF_SI_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::OperationFolder::tryToFold(int32x2_t *this, mlir::Operation *a2, BOOL *a3)
{
  v35[8] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  v5 = this[6].i32[0];
  if (v5)
  {
    v6 = this[4];
    v7 = v5 - 1;
    v8 = v7 & ((a2 >> 4) ^ (a2 >> 9));
    v9 = *(*&v6 + 40 * v8);
    if (v9 == a2)
    {
LABEL_5:
      v10 = *(a2 + 2);
      if (llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v10 + 40)) != a2)
      {
        if (*(*(a2 + 2) + 40) == a2)
        {
          v11 = 0;
          v12 = this[6].i32[0];
          if (!v12)
          {
LABEL_37:
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v10 + 40));
            mlir::Operation::moveBefore(a2, ValuePtr);
            result = 0;
            *(a2 + 3) = *this;
            return result;
          }
        }

        else
        {
          v11 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*a2);
          v12 = this[6].i32[0];
          if (!v12)
          {
            goto LABEL_37;
          }
        }

        v13 = this[4];
        v14 = v12 - 1;
        v15 = ((v11 >> 4) ^ (v11 >> 9)) & v14;
        v16 = *(*&v13 + 40 * v15);
        if (v16 != v11)
        {
          v26 = v11;
          v27 = 1;
          while (v16 != -4096)
          {
            result = 0;
            v28 = v15 + v27++;
            v15 = v28 & v14;
            v16 = *(*&v13 + 40 * v15);
            if (v16 == v26)
            {
              return result;
            }
          }

          goto LABEL_37;
        }
      }

      return 0;
    }

    v18 = 1;
    while (v9 != -4096)
    {
      v19 = v8 + v18++;
      v8 = v19 & v7;
      v9 = *(*&v6 + 40 * v8);
      if (v9 == a2)
      {
        goto LABEL_5;
      }
    }
  }

  v30 = v32;
  v31 = 0x800000000;
  v33 = v35;
  v34 = 0x800000000;
  if ((mlir::Operation::fold(a2) & 1) == 0)
  {
    v21 = 1;
    v22 = v33;
    if (v33 == v35)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v21 = mlir::OperationFolder::processFoldResults(this, a2, &v30, v33, v34) ^ 1;
  v22 = v33;
  if (v33 != v35)
  {
LABEL_20:
    free(v22);
  }

LABEL_21:
  if (v21)
  {
    result = 0;
    v23 = v30;
    if (v30 == v32)
    {
      return result;
    }

LABEL_27:
    v24 = result;
    free(v23);
    return v24;
  }

  if (v31)
  {
    mlir::OperationFolder::notifyRemoval(this, a2);
    mlir::ValueRange::ValueRange(&v33, v30, v31);
    mlir::RewriterBase::replaceOp(&this[14], a2, v33, v34);
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v25 = this[16];
    if (v25)
    {
      if (mlir::RewriterBase::Listener::classof(v25))
      {
        (*(*v25 + 40))(v25, a2);
      }
    }
  }

  result = 1;
  v23 = v30;
  if (v30 != v32)
  {
    goto LABEL_27;
  }

  return result;
}

BOOL mlir::OperationFolder::isFolderOwnedConstant(mlir::OperationFolder *this, Operation *a2)
{
  v2 = *(this + 12);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 4);
  v4 = v2 - 1;
  v5 = v4 & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v3 + 40 * v5);
  if (v6 == a2)
  {
    return 1;
  }

  v8 = 1;
  do
  {
    result = v6 != -4096;
    if (v6 == -4096)
    {
      break;
    }

    v9 = v5 + v8++;
    v5 = v9 & v4;
    v6 = *(v3 + 40 * v5);
    result = 1;
  }

  while (v6 != a2);
  return result;
}

uint64_t mlir::OperationFolder::tryToFold(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v8[8] = *MEMORY[0x277D85DE8];
  if (mlir::Operation::fold(a2))
  {
    return mlir::OperationFolder::processFoldResults(a1, a2, a3, v8, 0) & 1;
  }

  else
  {
    return 0;
  }
}

int32x2_t mlir::OperationFolder::notifyRemoval(int32x2_t *this, mlir::Block **a2)
{
  v2 = this[4];
  v3 = this[6].u32[0];
  if (v3)
  {
    v4 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v5 = *&v2 + 40 * v4;
    v6 = *v5;
    if (*v5 == a2)
    {
      goto LABEL_8;
    }

    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v3 - 1);
      v5 = *&v2 + 40 * v4;
      v6 = *v5;
      if (*v5 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = *&v2 + 40 * v3;
LABEL_8:
  if (v5 != *&v2 + 40 * v3)
  {
    v22 = 0;
    v21[0] = &v22;
    mlir::detail::constant_op_binder<mlir::Attribute>::match(v21, a2);
    v11 = a2;
    v21[0] = getInsertionRegion(&this[7], a2[2]);
    v12 = this;
    v13 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&this[1], v21);
    v14 = *(v5 + 8);
    v15 = *(v5 + 16);
    if (v15)
    {
      v16 = v13;
      v17 = (*(v11 - 1) & 0xFFFFFFFFFFFFFFF8);
      v18 = 8 * v15;
      do
      {
        v19 = *v14++;
        v21[0] = v19;
        v21[1] = v22;
        v21[2] = v17;
        llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::erase(v16, v21);
        v18 -= 8;
      }

      while (v18);
      v14 = *(v5 + 8);
    }

    if (v14 != (v5 + 24))
    {
      free(v14);
    }

    *v5 = -8192;
    result = vadd_s32(v12[5], 0x1FFFFFFFFLL);
    v12[5] = result;
  }

  return result;
}

uint64_t mlir::OperationFolder::insertKnownConstant(int32x2_t *a1, mlir::Operation *a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v51 = a2;
  v52 = a3;
  v5 = *(a2 + 2);
  v7 = &a1[4];
  v6 = a1[4];
  v8 = a1[6].i32[0];
  if (v8)
  {
    v9 = v8 - 1;
    v10 = v9 & ((a2 >> 4) ^ (a2 >> 9));
    v11 = *(*&v6 + 40 * v10);
    if (v11 == a2)
    {
LABEL_3:
      if (llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v5 + 5)) != a2)
      {
        if (*(*(a2 + 2) + 40) == a2)
        {
          v12 = 0;
          v13 = a1[6].i32[0];
          if (!v13)
          {
LABEL_13:
            ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v5 + 5));
            mlir::Operation::moveBefore(a2, ValuePtr);
            *(a2 + 3) = *a1;
            return 1;
          }
        }

        else
        {
          v12 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*a2);
          v13 = a1[6].i32[0];
          if (!v13)
          {
            goto LABEL_13;
          }
        }

        v14 = a1[4];
        v15 = v13 - 1;
        v16 = ((v12 >> 4) ^ (v12 >> 9)) & (v13 - 1);
        v17 = *(*&v14 + 40 * v16);
        if (v17 != v12)
        {
          v18 = 1;
          while (v17 != -4096)
          {
            v19 = v16 + v18++;
            v16 = v19 & v15;
            v17 = *(*&v14 + 40 * (v19 & v15));
            v20 = 1;
            if (v17 == v12)
            {
              return v20;
            }
          }

          goto LABEL_13;
        }
      }

      return 1;
    }

    v23 = 1;
    while (v11 != -4096)
    {
      v24 = v10 + v23++;
      v10 = v24 & v9;
      v11 = *(*&v6 + 40 * v10);
      if (v11 == a2)
      {
        goto LABEL_3;
      }
    }
  }

  if (!a3)
  {
    v54 = &v52;
    mlir::detail::constant_op_binder<mlir::Attribute>::match(&v54, a2);
  }

  InsertionRegion = getInsertionRegion(&a1[7], v5);
  v25 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&a1[1], &InsertionRegion);
  v26 = *(a2 + 6);
  if (*(v26 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v54 = *(v26 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v54);
  }

  else
  {
    ReferencedDialect = *(v26 + 24);
  }

  v28 = *(a2 + 9);
  v29 = a2 - 16;
  if (!v28)
  {
    v29 = 0;
  }

  v53[0] = v29;
  v53[1] = v28;
  mlir::ResultRange::getTypes(v53, &v54);
  v30 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v54, v55) + 8) & 0xFFFFFFFFFFFFFFF8;
  v54 = ReferencedDialect;
  v55 = v52;
  v56 = v30;
  v31 = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::operator[](v25, &v54);
  v32 = *v31 == 0;
  if (*v31)
  {
    mlir::OperationFolder::notifyRemoval(a1, a2);
    v33 = *(*v31 + 36);
    if (v33)
    {
      v34 = *v31 - 16;
    }

    else
    {
      v34 = 0;
    }

    mlir::ValueRange::ValueRange(&v54, v34, v33);
    mlir::RewriterBase::replaceOp(&a1[14], a2, v54, v55);
    v20 = v32;
    *(*v31 + 24) = *a1;
    return v20;
  }

  v35 = *(InsertionRegion + 8);
  if (v35)
  {
    v36 = (v35 - 8);
  }

  else
  {
    v36 = 0;
  }

  if (v5 == v36)
  {
    if (llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v36 + 5)) == a2)
    {
      goto LABEL_37;
    }

    if (*(*(a2 + 2) + 40) == a2)
    {
      v41 = 0;
    }

    else
    {
      v41 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*a2);
    }

    v43 = a1[6].i32[0];
    if (v43)
    {
      v44 = a1[4];
      v45 = v43 - 1;
      v46 = ((v41 >> 4) ^ (v41 >> 9)) & v45;
      v47 = *(*&v44 + 40 * v46);
      if (v47 == v41)
      {
        goto LABEL_37;
      }

      v48 = 1;
      while (v47 != -4096)
      {
        v49 = v46 + v48++;
        v46 = v49 & v45;
        v47 = *(*&v44 + 40 * v46);
        if (v47 == v41)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v37 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v36 + 5));
  mlir::Operation::moveBefore(a2, v37);
  *(a2 + 3) = *a1;
LABEL_37:
  *v31 = a2;
  v38 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](v7, &v51);
  v39 = *(v51 + 6);
  if (*(v39 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v54 = *(v39 + 8);
    v40 = mlir::StringAttr::getReferencedDialect(&v54);
  }

  else
  {
    v40 = *(v39 + 24);
  }

  v42 = *(v38 + 2);
  v20 = v32;
  if (v42 >= *(v38 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v38 + 8 * v42) = v40;
  ++*(v38 + 2);
  return v20;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = *a1 + 32 * v3;
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v5 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v5 == -8192;
      }

      if (v11)
      {
        v9 = v4;
      }

      v12 = v3 + v10++;
      v3 = v12 & (v2 - 1);
      v4 = *a1 + 32 * v3;
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 8;
      }
    }

    if (v9)
    {
      v4 = v9;
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
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v4 = v15;
    ++*(v14 + 8);
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
  v8 = *a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = v8;
  *(v4 + 24) = 0;
  return v4 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::operator[](uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 != -4096)
      {
LABEL_5:
        --*(a1 + 12);
LABEL_6:
        *v5 = *a2;
        *(v5 + 8) = *(a2 + 8);
        *(v5 + 24) = 0;
        return v5 + 24;
      }

LABEL_10:
      if (*(v5 + 8) == -4096 && *(v5 + 16) == -4096)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 != -4096)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  return v5 + 24;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 40 * v4);
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
      v5 = (*a1 + 40 * (v12 & v3));
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
    llvm::DenseMapBase<llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>,mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>,mlir::OperationName,std::pair<int,std::string>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,std::pair<int,std::string>>>::LookupBucketFor<mlir::OperationName>(v14, v13, &v15);
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
  v5[2] = 0x200000000;
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::erase(int32x2_t *a1, void *a2)
{
  v2 = a1[2].i32[0];
  if (v2)
  {
    v3 = a2[1];
    v4 = a2[2];
    v5 = 0xBF58476D1CE4E5B9 * ((969526130 * ((v4 >> 4) ^ (v4 >> 9))) | (((v3 >> 4) ^ (v3 >> 9)) << 32));
    v6 = 0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ v5 | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
    v7 = v2 - 1;
    v8 = v7 & ((v6 >> 31) ^ v6);
    v9 = 1;
    v10 = *a1 + 32 * v8;
    v11 = *v10;
    if (*a2 != *v10)
    {
      goto LABEL_7;
    }

LABEL_3:
    if (v3 == *(v10 + 8) && v4 == *(v10 + 16))
    {
      *v10 = -8192;
      *(v10 + 8) = vdupq_n_s64(0xFFFFFFFFFFFFE000);
      a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
      return 1;
    }

LABEL_7:
    while (v11 != -4096 || *(v10 + 8) != -4096 || *(v10 + 16) != -4096)
    {
      v13 = v8 + v9++;
      v8 = v13 & v7;
      v10 = *a1 + 32 * v8;
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

void mlir::OperationFolder::clear(mlir::OperationFolder *this)
{
  if (*(this + 2))
  {
    v2 = *(this + 6);
    if (v2 <= 4 * *(this + 4) || v2 < 0x41)
    {
      if (v2)
      {
        v4 = *(this + 1);
        v5 = 32 * v2;
        do
        {
          if (*v4 == -8192)
          {
            *v4 = -4096;
          }

          else if (*v4 != -4096)
          {
            llvm::deallocate_buffer(*(v4 + 8), (32 * *(v4 + 24)));
          }

          v4 += 32;
          v5 -= 32;
        }

        while (v5);
      }

      *(this + 2) = 0;
      v3 = *(this + 10);
      if (v3)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::shrink_and_clear(this + 8);
  }

  v3 = *(this + 10);
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_15:
  if (!*(this + 11))
  {
    return;
  }

LABEL_16:
  v6 = *(this + 12);
  if (v6 <= 4 * v3 || v6 < 0x41)
  {
    if (!v6)
    {
LABEL_29:
      *(this + 5) = 0;
      return;
    }

    v7 = *(this + 4) + 24;
    v8 = 40 * v6;
    while (1)
    {
      v9 = *(v7 - 24);
      if (v9 != -8192)
      {
        if (v9 == -4096)
        {
          goto LABEL_24;
        }

        v10 = *(v7 - 16);
        if (v7 != v10)
        {
          free(v10);
        }
      }

      *(v7 - 24) = -4096;
LABEL_24:
      v7 += 40;
      v8 -= 40;
      if (!v8)
      {
        goto LABEL_29;
      }
    }
  }

  llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::shrink_and_clear(this + 32);
}

uint64_t mlir::OperationFolder::tryGetOrCreateConstant(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35[0] = a3;
  v35[1] = a4;
  v35[2] = a5;
  v12 = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::operator[](a2, v35);
  result = *v12;
  if (*v12)
  {
    if (*(result + 24) != a6)
    {
      *(result + 24) = *a1;
      return *v12;
    }

    return result;
  }

  result = (*(*a3 + 24))(a3, a1 + 15, a4, a5, a6);
  *v12 = result;
  if (!result)
  {
    return result;
  }

  v14 = *(result + 48);
  if (*(v14 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    ReferencedDialect = *(v14 + 24);
    if (ReferencedDialect != a3)
    {
      goto LABEL_7;
    }

LABEL_26:
    v29 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](&a1[4], v12);
    v30 = *(v29 + 2);
    if (v30 >= *(v29 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v29 + 8 * v30) = a3;
    ++*(v29 + 2);
    return *v12;
  }

  v32[0] = *(v14 + 8);
  ReferencedDialect = mlir::StringAttr::getReferencedDialect(v32);
  if (ReferencedDialect == a3)
  {
    goto LABEL_26;
  }

LABEL_7:
  v16 = *(a2 + 16);
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = 0xBF58476D1CE4E5B9 * ((969526130 * ((a5 >> 4) ^ (a5 >> 9))) | (((a4 >> 4) ^ (a4 >> 9)) << 32));
  v18 = 0xBF58476D1CE4E5B9 * ((v17 >> 31) ^ v17 | (((ReferencedDialect >> 4) ^ (ReferencedDialect >> 9)) << 32));
  v19 = v16 - 1;
  v20 = v19 & ((v18 >> 31) ^ v18);
  v21 = 1;
  v22 = (*a2 + 32 * v20);
  v23 = *v22;
  if (ReferencedDialect != *v22)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v22[1] != a4 || v22[2] != a5)
  {
LABEL_13:
    while (v23 != -4096 || v22[1] != -4096 || v22[2] != -4096)
    {
      v25 = v20 + v21++;
      v20 = v25 & v19;
      v22 = (*a2 + 32 * v20);
      v23 = *v22;
      if (ReferencedDialect == *v22)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_23;
  }

  v32[0] = v22[3];
  if (!v32[0])
  {
LABEL_23:
    v28 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](&a1[4], v12);
    *(v28 + 2) = 0;
    if (*(v28 + 3) <= 1u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31 = *v28;
    *v31 = a3;
    v31[1] = ReferencedDialect;
    *(v28 + 2) += 2;
    v32[0] = ReferencedDialect;
    v32[1] = a4;
    v32[2] = a5;
    v33 = *v12;
    llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::try_emplace<mlir::Operation *>(a2, v32, &v33, v34);
    return *(v34[0] + 24);
  }

  mlir::OperationFolder::notifyRemoval(a1, *v12);
  mlir::RewriterBase::eraseOp(&a1[14], *v12);
  v26 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>,mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::operator[](&a1[4], v32);
  v27 = *(v26 + 2);
  if (v27 >= *(v26 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v26 + 8 * v27) = a3;
  ++*(v26 + 2);
  result = v32[0];
  if (*(v32[0] + 24) != a6)
  {
    *(v32[0] + 24) = *a1;
  }

  *v12 = result;
  return result;
}

uint64_t mlir::OperationFolder::processFoldResults(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 1;
  }

  v73[1] = v8;
  v73[2] = v7;
  v73[13] = v5;
  v73[14] = v6;
  InsertionRegion = getInsertionRegion(&a1[7], *(a2 + 16));
  v14 = *(InsertionRegion + 8);
  if (v14)
  {
    v15 = (v14 - 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*&v15 + 40);
  a1[17] = v15;
  a1[18] = v16;
  v69 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&a1[1], &InsertionRegion);
  v17 = *(a2 + 48);
  if (*(v17 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v73[0] = *(v17 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v73);
    v18 = *(a2 + 36);
    if (!v18)
    {
      return 1;
    }
  }

  else
  {
    ReferencedDialect = *(v17 + 24);
    v18 = *(a2 + 36);
    if (!v18)
    {
      return 1;
    }
  }

  v67 = v15;
  v19 = 0;
  v20 = a2 - 16;
  v21 = a2 + 24;
  while (1)
  {
    v22 = *(a4 + 8 * v19);
    v23 = v22 & 0xFFFFFFFFFFFFFFF8;
    v24 = v22 & 0xFFFFFFFFFFFFFFF8 & (v22 << 61 >> 63);
    v73[0] = v24;
    if (!v24)
    {
      break;
    }

    v25 = *(a3 + 8);
    if (v25 >= *(a3 + 12))
    {
      llvm::SmallVectorTemplateBase<mlir::Block *,true>::growAndEmplaceBack<mlir::Block *&>(a3, v73);
      ++v19;
      v20 -= 16;
      v21 -= 24;
      if (v18 == v19)
      {
        return 1;
      }
    }

    else
    {
      *(*a3 + 8 * v25) = v24;
      v26 = v25 + 1;
LABEL_23:
      *(a3 + 8) = v26;
      ++v19;
      v20 -= 16;
      v21 -= 24;
      if (v18 == v19)
      {
        return 1;
      }
    }
  }

  if (v19 >= 6)
  {
    v27 = v21;
  }

  else
  {
    v27 = v20;
  }

  Constant = mlir::OperationFolder::tryGetOrCreateConstant(a1, v69, ReferencedDialect, v23, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8, *a1);
  if (Constant)
  {
    v29 = Constant;
    v30 = *(a2 + 16);
    if (v30 == *(Constant + 16) && llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v30 + 40)) != Constant)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(v30 + 40));
      mlir::Operation::moveBefore(v29, ValuePtr);
    }

    v32 = *(a3 + 8);
    if (v32 >= *(a3 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a3 + 8 * v32) = v29 - 16;
    v26 = *(a3 + 8) + 1;
    goto LABEL_23;
  }

  v33 = *(*&v67 + 40);
  v34 = a1[18];
  if (v33 != *&v34)
  {
    v70 = vdupq_n_s64(0xFFFFFFFFFFFFE000);
    while (1)
    {
      v36 = *(v33 + 8);
      v37 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v33);
      v38 = a1[4];
      v39 = a1[6].u32[0];
      if (v39)
      {
        v40 = ((v37 >> 4) ^ (v37 >> 9)) & (v39 - 1);
        v35 = *&v38 + 40 * v40;
        v41 = *v35;
        if (*v35 == v37)
        {
          goto LABEL_32;
        }

        v42 = 1;
        while (v41 != -4096)
        {
          v43 = v40 + v42++;
          v40 = v43 & (v39 - 1);
          v35 = *&v38 + 40 * v40;
          v41 = *v35;
          if (*v35 == v37)
          {
            goto LABEL_32;
          }
        }
      }

      v35 = *&v38 + 40 * v39;
LABEL_32:
      if (v35 == *&v38 + 40 * v39)
      {
        mlir::RewriterBase::eraseOp(&a1[14], v37);
        v33 = v36;
        if (v36 == *&v34)
        {
          break;
        }
      }

      else
      {
        v72 = v73;
        v73[0] = 0;
        v44 = v37;
        mlir::detail::constant_op_binder<mlir::Attribute>::match(&v72, v37);
        v72 = getInsertionRegion(&a1[7], v44[2]);
        v45 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&a1[1], &v72);
        v46 = v44;
        v47 = v45;
        v48 = *(v35 + 8);
        v49 = *(v35 + 16);
        if (v49)
        {
          v50 = v47[2].i32[0];
          if (v50)
          {
            v51 = &v48[8 * v49];
            v52 = *(v44 - 1) & 0xFFFFFFFFFFFFFFF8;
            v53 = *v47;
            v54 = v50 - 1;
            v55 = v47[1];
            v56 = v73[0];
            v57 = 0xBF58476D1CE4E5B9 * ((969526130 * ((v52 >> 4) ^ (v52 >> 9))) | (((LODWORD(v73[0]) >> 4) ^ (LODWORD(v73[0]) >> 9)) << 32));
            v58 = (v57 >> 31) ^ v57;
            v59 = *(v35 + 8);
            do
            {
              v60 = 0xBF58476D1CE4E5B9 * (v58 | (((*v59 >> 4) ^ (*v59 >> 9)) << 32));
              v61 = v54 & ((v60 >> 31) ^ v60);
              v62 = 1;
              v63 = (*&v53 + 32 * v61);
              v64 = *v63;
              if (*v59 != *v63)
              {
                goto LABEL_48;
              }

LABEL_44:
              if (v63[1] == v56 && v63[2] == v52)
              {
                *v63 = -8192;
                *(v63 + 1) = v70;
                v55 = vadd_s32(v55, 0x1FFFFFFFFLL);
                v47[1] = v55;
              }

              else
              {
LABEL_48:
                while (v64 != -4096 || v63[1] != -4096 || v63[2] != -4096)
                {
                  v66 = v61 + v62++;
                  v61 = v66 & v54;
                  v63 = (*&v53 + 32 * v61);
                  v64 = *v63;
                  if (*v59 == *v63)
                  {
                    goto LABEL_44;
                  }
                }
              }

              v59 += 8;
            }

            while (v59 != v51);
          }
        }

        if (v48 != (v35 + 24))
        {
          free(v48);
          v46 = v44;
        }

        *v35 = -8192;
        a1[5] = vadd_s32(a1[5], 0x1FFFFFFFFLL);
        mlir::RewriterBase::eraseOp(&a1[14], v46);
        v33 = v36;
        if (v36 == *&v34)
        {
          break;
        }
      }
    }
  }

  result = 0;
  *(a3 + 8) = 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
      v9 = &v5[4 * v8];
      v10 = v5 + 4;
      v11 = v8;
      do
      {
        *(v10 - 4) = -4096;
        *v10 = -4096;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[4 * v4];
    do
    {
      *v9 = -4096;
      v9 += 4;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = *(result + 16) - 1;
        v18 = v17 & ((v16 >> 4) ^ (v16 >> 9));
        v13 = *result + 32 * v18;
        v19 = *v13;
        if (v16 != *v13)
        {
          v20 = 0;
          v21 = 1;
          while (v19 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v19 == -8192;
            }

            if (v22)
            {
              v20 = v13;
            }

            v23 = v18 + v21++;
            v18 = v23 & v17;
            v13 = *result + 32 * v18;
            v19 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v13 = v20;
          }
        }

LABEL_14:
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = v16;
        *(v13 + 24) = 0;
        *(v13 + 8) = v3[1];
        v3[1] = 0;
        *(v13 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v14 = *(v13 + 20);
        *(v13 + 20) = *(v3 + 5);
        *(v3 + 5) = v14;
        v15 = *(v13 + 24);
        *(v13 + 24) = *(v3 + 6);
        *(v3 + 6) = v15;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (32 * v15));
      }

      v3 += 4;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    result = 0;
    *a3 = 0;
    return result;
  }

  v4 = 0;
  v5 = *a1;
  v6 = a2[1];
  v7 = a2[2];
  v8 = 0xBF58476D1CE4E5B9 * ((969526130 * ((v7 >> 4) ^ (v7 >> 9))) | (((v6 >> 4) ^ (v6 >> 9)) << 32));
  v9 = 0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ v8 | (((*a2 >> 4) ^ (*a2 >> 9)) << 32));
  v10 = v3 - 1;
  v11 = v10 & ((v9 >> 31) ^ v9);
  v12 = 1;
  v13 = (*a1 + 32 * v11);
  v14 = *v13;
  if (*a2 != *v13)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v6 == v13[1] && v7 == v13[2])
  {
    result = 1;
    *a3 = v13;
    return result;
  }

  while (1)
  {
LABEL_7:
    if (v14 != -4096)
    {
      v16 = v14 == -8192 && v13[1] == -8192 && v13[2] == -8192;
      goto LABEL_19;
    }

    v16 = 0;
    if (v13[1] == -4096 && v13[2] == -4096)
    {
      break;
    }

LABEL_19:
    if (v16 && v4 == 0)
    {
      v4 = v13;
    }

    v18 = v11 + v12++;
    v11 = v18 & v10;
    v13 = (v5 + 32 * v11);
    v14 = *v13;
    if (*a2 == *v13)
    {
      goto LABEL_3;
    }
  }

  result = 0;
  if (v4)
  {
    v13 = v4;
  }

  *a3 = v13;
  return result;
}

char *llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[32 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = (result + 40);
      v14 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v15 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v13[-3].i64[1] = -4096;
        v13[-1].i64[1] = -4096;
        v13[-2] = v14;
        *v13 = v14;
        v13 += 4;
        v15 -= 2;
      }

      while (v15);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v16 = &result[32 * v11];
        v17 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        do
        {
          *v10 = -4096;
          *(v10 + 8) = v17;
          v10 += 32;
        }

        while (v10 != v16);
      }
    }

    v18 = (32 * v3);
    if (!v3)
    {
LABEL_24:
      llvm::deallocate_buffer(v4, v18);
    }

    v19 = 32 * v3;
    v20 = v4;
    while (1)
    {
      if (*v20 == -8192)
      {
        if (*(v20 + 1) == -8192 && *(v20 + 2) == -8192)
        {
          goto LABEL_15;
        }
      }

      else if (*v20 == -4096 && *(v20 + 1) == -4096 && *(v20 + 2) == -4096)
      {
        goto LABEL_15;
      }

      v29 = 0;
      llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, v20, &v29);
      v21 = v29;
      *v29 = *v20;
      *(v21 + 1) = *(v20 + 8);
      v21[3] = *(v20 + 3);
      ++*(a1 + 8);
LABEL_15:
      v20 = (v20 + 32);
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_24;
      }
    }
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    if (((v22 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_30;
    }

    v23 = ((v22 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[32 * (v23 & 0xFFFFFFFFFFFFFFELL)];
    v24 = (result + 40);
    v25 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v26 = v23 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      v24[-3].i64[1] = -4096;
      v24[-1].i64[1] = -4096;
      v24[-2] = v25;
      *v24 = v25;
      v24 += 4;
      v26 -= 2;
    }

    while (v26);
    if (v23 != (v23 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_30:
      v27 = &result[32 * v22];
      v28 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      do
      {
        *v10 = -4096;
        *(v10 + 8) = v28;
        v10 += 32;
      }

      while (v10 != v27);
    }
  }

  return result;
}

uint64_t llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::shrink_and_clear(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  v3 = (32 * v1);
  if (v1)
  {
    v4 = *result;
    v5 = 32 * v1;
    do
    {
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        llvm::deallocate_buffer(*(v4 + 1), (32 * *(v4 + 6)));
      }

      v4 = (v4 + 32);
      v5 -= 32;
    }

    while (v5);
  }

  if (!v2)
  {
    if (!*(result + 16))
    {
      *(result + 8) = 0;
      return result;
    }

LABEL_17:
    llvm::deallocate_buffer(*result, v3);
  }

  v6 = 1 << (33 - __clz(v2 - 1));
  if (v6 <= 64)
  {
    v7 = 64;
  }

  else
  {
    v7 = v6;
  }

  if (v7 != *(result + 16))
  {
    goto LABEL_17;
  }

  *(result + 8) = 0;
  v8 = *result;
  v9 = (v7 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v9)
  {
    v12 = *result;
LABEL_20:
    v15 = (v8 + 32 * v7);
    do
    {
      *v12 = -4096;
      v12 = (v12 + 32);
    }

    while (v12 != v15);
    return result;
  }

  v10 = v9 + 1;
  v11 = (v9 + 1) & 0xFFFFFFFFFFFFFFELL;
  v12 = (v8 + 32 * v11);
  v13 = (v8 + 32);
  v14 = v11;
  do
  {
    *(v13 - 4) = -4096;
    *v13 = -4096;
    v13 += 8;
    v14 -= 2;
  }

  while (v14);
  if (v10 != v11)
  {
    goto LABEL_20;
  }

  return result;
}

void llvm::DenseMap<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,llvm::SmallVector<mlir::Dialect *,2u>>>::shrink_and_clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = 5 * v2;
  if (v2)
  {
    v5 = *a1 + 24;
    v6 = 40 * v2;
    do
    {
      if ((*(v5 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *(v5 - 16);
        if (v5 != v7)
        {
          free(v7);
        }
      }

      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v8 = 1 << (33 - __clz(v3 - 1));
  if (v8 <= 64)
  {
    v8 = 64;
  }

  if (v3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != *(a1 + 16))
  {
    llvm::deallocate_buffer(*a1, (8 * v4));
  }

  *(a1 + 8) = 0;
  if (v9)
  {
    v10 = *a1;
    v11 = 40 * v9 - 40;
    if (v11 < 0x28)
    {
      v12 = *a1;
LABEL_20:
      v16 = (v10 + 40 * v9);
      do
      {
        *v12 = -4096;
        v12 = (v12 + 40);
      }

      while (v12 != v16);
      return;
    }

    v13 = v11 / 0x28 + 1;
    v12 = (v10 + 40 * (v13 & 0xFFFFFFFFFFFFFFELL));
    v14 = *a1;
    v15 = v13 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v14 = -4096;
      *(v14 + 5) = -4096;
      v14 = (v14 + 80);
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_20;
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::try_emplace<mlir::Operation *>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, a2, &v14);
  v9 = v14;
  if (!result)
  {
    v15 = v14;
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (4 * v11 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v11 - *(a1 + 12) > v12 >> 3)
    {
      *(a1 + 8) = v11 + 1;
      if (*v9 != -4096)
      {
LABEL_6:
        --*(a1 + 12);
LABEL_7:
        *v9 = *a2;
        *(v9 + 8) = *(a2 + 8);
        *(v9 + 24) = *a3;
        v10 = 1;
        goto LABEL_8;
      }

LABEL_11:
      if (*(v9 + 8) == -4096 && *(v9 + 16) == -4096)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>::LookupBucketFor<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>>(a1, a2, &v15);
    v9 = v15;
    ++*(a1 + 8);
    if (*v9 != -4096)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_8:
  v13 = *a1 + 32 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v13;
  *(a4 + 16) = v10;
  return result;
}

void mlir::applyPatternsAndFoldGreedily(mlir::Region *this, uint64_t a2, uint64_t a3)
{
  v4[34] = *MEMORY[0x277D85DE8];
  if (!*(a3 + 24))
  {
    *(a3 + 24) = this;
  }

  Context = mlir::Region::getContext(this);
}

void sub_2565FB644(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, llvm *a47, uint64_t a48, unsigned int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, llvm *a57, unsigned int a58)
{
  if ((a56 & 1) == 0)
  {
    llvm::deallocate_buffer(a57, (8 * a58));
  }

  llvm::deallocate_buffer(a47, (16 * a49));
}

uint64_t sub_2565FB674()
{
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  mlir::RewriterBase::~RewriterBase(&v2);
  return v1;
}

void anonymous namespace::RegionPatternRewriteDriver::~RegionPatternRewriteDriver(_anonymous_namespace_::RegionPatternRewriteDriver *this)
{
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192));
}

{
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192));
}

void sub_2565FB704()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v0 + 160), (8 * *(v0 + 168)));
  }

  llvm::deallocate_buffer(*(v0 + 80), (16 * *(v0 + 96)));
}

void *sub_2565FB734()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));
  return v0;
}

uint64_t mlir::applyOpPatternsAndFold(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7 = a2;
    v9 = *a1;
    if (!*(a4 + 24))
    {
      ParentRegion = *(v9 + 16);
      if (a2 == 1)
      {
        if (ParentRegion)
        {
          Parent = mlir::Block::getParent(ParentRegion);
        }

        else
        {
          Parent = 0;
        }
      }

      else
      {
        if (ParentRegion)
        {
          ParentRegion = mlir::Block::getParent(ParentRegion);
        }

        v12 = v7 - 1;
        v13 = (v7 + 62) >> 6;
        __b = v40;
        v39 = 6;
        if ((v7 + 62) >= 0x1C0)
        {
          v38 = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if ((v7 + 62) >= 0x40)
        {
          v14 = ParentRegion;
          memset(v40, 255, 8 * v13);
          ParentRegion = v14;
        }

        v38 = (v7 + 62) >> 6;
        LODWORD(v41) = v7 - 1;
        if ((v12 & 0x3F) != 0)
        {
          v40[v13 - 1] &= ~(-1 << (v12 & 0x3F));
        }

        if (ParentRegion)
        {
          if (v7 == 1)
          {
            while (v38)
            {
              v33 = __b;
              v34 = 8 * v38;
              while (!*v33)
              {
                ++v33;
                v34 -= 8;
                if (!v34)
                {
                  goto LABEL_61;
                }
              }

              ParentRegion = mlir::Region::getParentRegion(ParentRegion);
              Parent = 0;
              if (!ParentRegion)
              {
                goto LABEL_62;
              }
            }
          }

          else
          {
            v15 = (v7 - 2) >> 6;
            while (1)
            {
              v16 = 0;
              do
              {
                v17 = v16 >> 6;
                v18 = __b;
                if (v17 > v15)
                {
                  goto LABEL_47;
                }

                v20 = v16 & 0x3F;
                v19 = v20 == 0;
                v21 = 0xFFFFFFFFFFFFFFFFLL >> -v20;
                if (v19)
                {
                  v22 = -1;
                }

                else
                {
                  v22 = ~v21;
                }

                if (v17 == v15)
                {
                  v23 = 0xFFFFFFFFFFFFFFFFLL >> ~(v7 - 2);
                }

                else
                {
                  v23 = -1;
                }

                v24 = v23 & v22 & *(__b + v17);
                if (v24)
                {
                  v25 = __clz(__rbit64(v24));
                  v26 = v25 | (v17 << 6);
                  if (v26 == -1)
                  {
                    goto LABEL_47;
                  }
                }

                else
                {
                  if (v17 + 1 == v15 + 1)
                  {
                    goto LABEL_47;
                  }

                  v28 = 0;
                  while (1)
                  {
                    v29 = v28 == -1 ? v22 : -1;
                    v30 = v15 - v17 - 1 == v28 ? 0xFFFFFFFFFFFFFFFFLL >> ~(v7 - 2) : -1;
                    v31 = v29 & v30 & *(__b + v17 + v28 + 1);
                    if (v31)
                    {
                      break;
                    }

                    if (v15 - v17 == ++v28)
                    {
                      goto LABEL_47;
                    }
                  }

                  LODWORD(v17) = v17 + v28 + 1;
                  v25 = __clz(__rbit64(v31));
                  v26 = v25 | (v17 << 6);
                  if (v26 == -1)
                  {
                    goto LABEL_47;
                  }
                }

                v27 = ParentRegion;
                if (mlir::Region::findAncestorOpInRegion(ParentRegion, a1[v26 + 1]))
                {
                  *(__b + v17) &= ~(1 << v25);
                }

                v16 = v26 + 1;
                ParentRegion = v27;
              }

              while (v26 + 1 != v12);
              v18 = __b;
LABEL_47:
              if (!v38)
              {
                break;
              }

              v32 = 8 * v38;
              while (!*v18)
              {
                ++v18;
                v32 -= 8;
                if (!v32)
                {
                  goto LABEL_61;
                }
              }

              ParentRegion = mlir::Region::getParentRegion(ParentRegion);
              Parent = 0;
              if (!ParentRegion)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_61:
          Parent = ParentRegion;
        }

        else
        {
          Parent = 0;
        }

LABEL_62:
        if (__b != v40)
        {
          free(__b);
        }
      }

      *(a4 + 24) = Parent;
      v9 = *a1;
    }

    v42 = 1;
    v43 = -4096;
    v44 = -4096;
    v45 = -4096;
    v46 = -4096;
    Context = mlir::Attribute::getContext((v9 + 24));
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 1;
  }

  return 1;
}

void anonymous namespace::MultiOpPatternRewriteDriver::~MultiOpPatternRewriteDriver(_anonymous_namespace_::MultiOpPatternRewriteDriver *this)
{
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192));
}

{
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192));
}

void sub_2565FBD70()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v0 + 160), (8 * *(v0 + 168)));
  }

  llvm::deallocate_buffer(*(v0 + 80), (16 * *(v0 + 96)));
}

void *sub_2565FBDA0()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));
  return v0;
}

void anonymous namespace::GreedyPatternRewriteDriver::GreedyPatternRewriteDriver(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_286866930;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 16) = &unk_2868669A0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  operator new();
}

void sub_2565FBF48()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v0 + 160), (8 * *(v0 + 168)));
  }

  llvm::deallocate_buffer(*(v0 + 80), (16 * *(v0 + 96)));
}

void sub_2565FBF78()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));

  JUMPOUT(0x259C63180);
}

void anonymous namespace::GreedyPatternRewriteDriver::notifyOperationInserted(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Operation *a2)
{
  v5 = a2;
  v3 = *(this + 18);
  if (v3)
  {
    v4 = a2;
    (*(*v3 + 16))(v3);
    a2 = v4;
  }

  if (*(this + 34) == 1)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 152, &v5, v6);
    a2 = v5;
  }
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyBlockInserted(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyBlockErased(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::notifyOperationModified(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Operation *a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    v4 = this;
    v5 = a2;
    (*(*v3 + 40))(*(this + 18));
    this = v4;
    a2 = v5;
    v2 = vars8;
  }
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyOperationReplaced(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::notifyMatchFailure(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 88))();
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::~GreedyPatternRewriteDriver(_anonymous_namespace_::GreedyPatternRewriteDriver *this)
{
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192));
}

{
  *this = &unk_286866930;
  mlir::PatternApplicator::~PatternApplicator((this + 192));
}

void sub_2565FC1AC()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v0 + 160), (8 * *(v0 + 168)));
  }

  llvm::deallocate_buffer(*(v0 + 80), (16 * *(v0 + 96)));
}

void *sub_2565FC1DC()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));
  return v0;
}

void sub_2565FC238()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v0 + 160), (8 * *(v0 + 168)));
  }

  llvm::deallocate_buffer(*(v0 + 80), (16 * *(v0 + 96)));
}

void sub_2565FC268()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));

  JUMPOUT(0x259C63180);
}

void mlir::PatternRewriter::~PatternRewriter(mlir::PatternRewriter *this)
{
  mlir::RewriterBase::~RewriterBase(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::RegionPatternRewriteDriver(mlir::MLIRContext *,mlir::FrozenRewritePatternSet const&,mlir::GreedyRewriteConfig const&,mlir::Region &)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a2;
  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2 + 152, &v4, v5);
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 8;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 8;
  }

  else
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 8);
  }

  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = (v7 + 8 * v9);
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 8);
      v12 = *(result + 16);
    }

    *a3 = v10;
    *(a3 + 8) = v4 + 8 * v12;
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -4096)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -8192;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = (v7 + 8 * (v18 & v8));
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = *(result + 16);
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - *(result + 4) <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -4096)
  {
    --*(result + 4);
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 8);
    v14 = *(result + 16);
  }

  *a3 = v10;
  *(a3 + 8) = v4 + 8 * v14;
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::LookupBucketFor<mlir::Operation *>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 8 * v6);
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
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

uint64_t llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(uint64_t result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  v57[3] = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v8 = (result + 8);
    v7 = *(result + 8);
    v9 = *(result + 16);
    if (v2 > 4)
    {
      buffer = llvm::allocate_buffer(8 * v2, 8uLL);
      *(v3 + 8) = buffer;
      *(v3 + 16) = v2;
      v23 = *v3;
      v10 = (v7 + 8 * v9);
      *v3 = *v3 & 1;
      if ((v23 & 1) == 0)
      {
        v24 = &buffer->i8[8 * v2];
        v25 = 8 * v2 - 8;
        if (v25 < 0x18)
        {
          v27 = buffer;
          goto LABEL_24;
        }

LABEL_18:
        v26 = (v25 >> 3) + 1;
        v27 = &buffer->i8[8 * (v26 & 0x3FFFFFFFFFFFFFFCLL)];
        v28 = buffer + 1;
        v29 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v30 = v26 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v28[-1] = v29;
          *v28 = v29;
          v28 += 2;
          v30 -= 4;
        }

        while (v30);
        if (v26 == (v26 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_25:
          if (v9)
          {
            v31 = v7;
            do
            {
              v37 = *v31;
              if ((*v31 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (*v3)
                {
                  v33 = 3;
                  v32 = v3 + 8;
                }

                else
                {
                  v32 = *v8;
                  v33 = v2 - 1;
                }

                v34 = v33 & ((v37 >> 4) ^ (v37 >> 9));
                v35 = (v32 + 8 * v34);
                v36 = *v35;
                if (v37 != *v35)
                {
                  v38 = 0;
                  v39 = 1;
                  while (v36 != -4096)
                  {
                    if (v38)
                    {
                      v40 = 0;
                    }

                    else
                    {
                      v40 = v36 == -8192;
                    }

                    if (v40)
                    {
                      v38 = v35;
                    }

                    v41 = v34 + v39++;
                    v34 = v41 & v33;
                    v35 = (v32 + 8 * (v41 & v33));
                    v36 = *v35;
                    if (v37 == *v35)
                    {
                      goto LABEL_29;
                    }
                  }

                  if (v38)
                  {
                    v35 = v38;
                  }
                }

LABEL_29:
                *v35 = v37;
                *v3 += 2;
              }

              v31 = (v31 + 8);
            }

            while (v31 != v10);
          }

          llvm::deallocate_buffer(v7, (8 * v9));
        }

        do
        {
LABEL_24:
          *v27 = -4096;
          v27 += 8;
        }

        while (v27 != v24);
        goto LABEL_25;
      }
    }

    else
    {
      v10 = (v7 + 8 * v9);
      *result = 1;
      v2 = v9;
    }

    v24 = (v3 + 40);
    buffer = (v3 + 8);
    v25 = 24;
    goto LABEL_18;
  }

  v11 = (result + 8);
  v12 = &v56;
  if ((*(result + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v13 = *(result + 16);
    if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v56 = *(result + 8);
    v12 = v57;
    v13 = *(result + 16);
    if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v14 = *(result + 24);
      if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    }
  }

  *v12++ = v13;
  v14 = *(result + 24);
  if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v15 = *(result + 32);
    if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  *v12++ = v14;
  v15 = *(result + 32);
  if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v16 = *result;
    if (v2 >= 5)
    {
      goto LABEL_13;
    }

LABEL_53:
    v2 = v13;
    *result = v16 & 1;
    if (v16)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_52:
  *v12++ = v15;
  v16 = *result;
  if (v2 < 5)
  {
    goto LABEL_53;
  }

LABEL_13:
  *result = v16 & 0xFFFFFFFE;
  result = llvm::allocate_buffer(8 * v2, 8uLL);
  *(v3 + 8) = result;
  *(v3 + 16) = v2;
  v17 = *v3;
  *v3 = *v3 & 1;
  if (v17)
  {
LABEL_14:
    v18 = v3 + 40;
    v19 = (v3 + 8);
    v20 = 24;
    goto LABEL_56;
  }

LABEL_54:
  if (!v2)
  {
    goto LABEL_60;
  }

  v19 = *v11;
  v18 = &(*v11)->i64[v2];
  v20 = 8 * v2 - 8;
  if (v20 < 0x18)
  {
    v21 = *v11;
    do
    {
LABEL_59:
      v21->i64[0] = -4096;
      v21 = (v21 + 8);
    }

    while (v21 != v18);
    goto LABEL_60;
  }

LABEL_56:
  v42 = (v20 >> 3) + 1;
  v21 = (v19 + 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL));
  v43 = v19 + 1;
  v44 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v45 = v42 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v43[-1] = v44;
    *v43 = v44;
    v43 += 2;
    v45 -= 4;
  }

  while (v45);
  if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_59;
  }

LABEL_60:
  if (&v56 != v12)
  {
    v46 = &v56;
    do
    {
      v52 = *v46;
      if ((*v46 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v3)
        {
          v48 = 3;
          v47 = (v3 + 8);
        }

        else
        {
          v47 = *v11;
          v48 = v2 - 1;
        }

        v49 = v48 & ((v52 >> 4) ^ (v52 >> 9));
        v50 = &v47->i64[v49];
        v51 = *v50;
        if (v52 != *v50)
        {
          v53 = 0;
          result = 1;
          while (v51 != -4096)
          {
            if (v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = v51 == -8192;
            }

            if (v54)
            {
              v53 = v50;
            }

            v55 = v49 + result;
            result = (result + 1);
            v49 = v55 & v48;
            v50 = &v47->i64[v55 & v48];
            v51 = *v50;
            if (v52 == *v50)
            {
              goto LABEL_64;
            }
          }

          if (v53)
          {
            v50 = v53;
          }
        }

LABEL_64:
        *v50 = v52;
        *v3 += 2;
      }

      ++v46;
    }

    while (v46 != v12);
  }

  return result;
}

void anonymous namespace::GreedyPatternRewriteDriver::addToWorklist(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Operation *a2)
{
  v10[8] = *MEMORY[0x277D85DE8];
  v9 = 0;
  while (1)
  {
    if (v9 >= 8uLL)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10[v9] = a2;
    v3 = ++v9;
    v4 = *(a2 + 2);
    if (!v4)
    {
      break;
    }

    Parent = mlir::Block::getParent(v4);
    if (*(this + 16) == Parent)
    {
      v3 = v9;
      if (!v9)
      {
        return;
      }

      goto LABEL_13;
    }

    if (Parent)
    {
      a2 = *(Parent + 16);
      if (a2)
      {
        continue;
      }
    }

    return;
  }

  if (!*(this + 16) && v3)
  {
LABEL_13:
    v6 = v10;
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v7 -= 8;
    }

    while (v7);
  }
}

void anonymous namespace::GreedyPatternRewriteDriver::addSingleOpToWorklist(_anonymous_namespace_::GreedyPatternRewriteDriver *this, mlir::Operation *a2)
{
  if (*(this + 34))
  {
    v2 = *(this + 38);
    if (v2)
    {
      v3 = this + 160;
      v4 = 4;
    }

    else
    {
      v3 = *(this + 20);
      v4 = *(this + 42);
      if (!v4)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_5;
      }
    }

    v7 = v4 - 1;
    v8 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v9 = *&v3[8 * v8];
    if (v9 == a2)
    {
LABEL_9:
      v10 = &v3[8 * v8];
      if ((v2 & 1) == 0)
      {
        if (v10 == (*(this + 20) + 8 * *(this + 42)))
        {
          return;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v11 = 1;
      while (v9 != -4096)
      {
        v12 = v8 + v11++;
        v8 = v12 & v7;
        v9 = *&v3[8 * v8];
        if (v9 == a2)
        {
          goto LABEL_9;
        }
      }

      if ((v2 & 1) == 0)
      {
        v3 = *(this + 20);
        v5 = *(this + 42);
        v6 = v5;
LABEL_5:
        if (&v3[8 * v6] == &v3[8 * v5])
        {
          return;
        }

        goto LABEL_20;
      }

      v10 = (this + 192);
    }

    if (v10 == (this + 192))
    {
      return;
    }
  }

LABEL_20:
  v18 = a2;
  v13 = this + 56;
  v14 = (*(this + 8) - *(this + 7)) >> 3;
  v15 = a2;
  v16 = v14;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(this + 80, &v15, &v16, v17);
  if (v17[16] == 1)
  {
    std::vector<mlir::Operation *>::push_back[abi:nn200100](v13, &v18);
  }
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::simplify(BOOL *)::$_0>(uint64_t a1, mlir::Operation *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = &v6;
  v6 = 0;
  if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&v5, a2) || (mlir::OperationFolder::insertKnownConstant(*v4, a2, v6) & 1) != 0)
  {
  }
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::simplify(BOOL *)::$_1>(uint64_t a1, mlir::Operation *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = &v7;
  v7 = 0;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v6, a2) && !mlir::OperationFolder::insertKnownConstant(*v4, a2, v7))
  {
    return 2;
  }

  return 1;
}

uint64_t mlir::MLIRContext::executeActionInternal<anonymous namespace::GreedyPatternRewriteIteration,long long &>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[0] = &unk_286866A08;
  return mlir::MLIRContext::executeActionInternal(a1, a2, a3, v7);
}

llvm::raw_ostream *anonymous namespace::GreedyPatternRewriteIteration::print(_anonymous_namespace_::GreedyPatternRewriteIteration *this, llvm::raw_ostream *a2)
{
  v3 = *(a2 + 4);
  if (*(a2 + 3) - v3 > 0x1DuLL)
  {
    qmemcpy(v3, "GreedyPatternRewriteIteration(", 30);
    *(a2 + 4) += 30;
    result = llvm::raw_ostream::operator<<(a2, *(this + 4));
    v6 = *(result + 4);
    if (*(result + 3) != v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = llvm::raw_ostream::write(a2, "GreedyPatternRewriteIteration(", 0x1EuLL);
    result = llvm::raw_ostream::operator<<(v4, *(this + 4));
    v6 = *(result + 4);
    if (*(result + 3) != v6)
    {
LABEL_3:
      *v6 = 41;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, ")", 1uLL);
}

uint64_t llvm::function_ref<void ()(void)>::callback_fn<anonymous namespace::RegionPatternRewriteDriver::simplify(BOOL *)::$_2>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  **a1 = result;
  if (*(v3 + 108))
  {
    mlir::simplifyRegions(v3 + 16, *(v3 + 256), 1uLL);
  }

  return result;
}

uint64_t anonymous namespace::GreedyPatternRewriteDriver::processWorklist(_anonymous_namespace_::GreedyPatternRewriteDriver *this, uint64_t a2)
{
  v111[6] = *MEMORY[0x277D85DE8];
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v2 == v3)
  {
    v5 = 0;
    return v5 & 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = v111;
  v8 = &v108;
  v9 = &v102;
  v10 = &v106;
  p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
  do
  {
    while (1)
    {
LABEL_3:
      v12 = v2;
      while (!*v12)
      {
        if (++v12 == v3)
        {
          return v5 & 1;
        }
      }

      v13 = *(this + 15);
      v14 = v6 < v13 || v13 == -1;
      if (!v14)
      {
        return v5 & 1;
      }

      do
      {
        v16 = *--v3;
        v15 = v16;
      }

      while (!v16);
      *(this + 8) = v3;
      v17 = *(this + 24);
      if (v17)
      {
        v18 = *(this + 10);
        v19 = v17 - 1;
        v20 = (v17 - 1) & ((v15 >> 4) ^ (v15 >> 9));
        v21 = *(v18 + 16 * v20);
        if (v15 == v21)
        {
LABEL_15:
          *(v18 + 16 * v20) = -8192;
          *(this + 11) = vadd_s32(*(this + 88), 0x1FFFFFFFFLL);
        }

        else
        {
          v90 = 1;
          while (v21 != -4096)
          {
            v91 = v20 + v90++;
            v20 = v91 & v19;
            v21 = *(v18 + 16 * v20);
            if (v15 == v21)
            {
              goto LABEL_15;
            }
          }
        }
      }

      if (v2 != v3)
      {
        v22 = v3 - 1;
        do
        {
          if (*v22)
          {
            break;
          }

          *(this + 8) = v22;
          v14 = v22-- == v2;
        }

        while (!v14);
      }

      v99 = v15;
      isOpTriviallyDead = mlir::isOpTriviallyDead(v15, a2);
      v24 = v99;
      if (!isOpTriviallyDead)
      {
        break;
      }

      mlir::RewriterBase::eraseOp((this + 16), v99);
      v5 = 1;
      v2 = *(this + 7);
      v3 = *(this + 8);
      if (v2 == v3)
      {
        return v5 & 1;
      }
    }

    {
      v92 = v24;
      v24 = v92;
    }

    if ((*(**(v24 + 6) + 32))(*(v24 + 6), p_opt_class_meths[233]))
    {
      goto LABEL_56;
    }

    v109 = v7;
    v110 = 0x600000000;
    if ((mlir::Operation::fold(v99) & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v110)
    {
      (*(*this + 40))(this, v99);
      v5 = 1;
      v42 = 2;
      goto LABEL_51;
    }

    v98 = *(this + 40);
    v26 = *(v99 + 2);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v99);
    *(this + 5) = v26;
    *(this + 6) = NodePtr;
    v106 = v8;
    v107 = 0x600000000;
    v28 = *(v99 + 9);
    v29 = v99 - 16;
    if (!v28)
    {
      v29 = 0;
    }

    v100[0] = v29;
    v100[1] = v28;
    mlir::ResultRange::getTypes(v100, &v101);
    if (!v110)
    {
      v41 = v107;
      goto LABEL_46;
    }

    v95 = v10;
    v96 = v9;
    v97 = v8;
    v94 = v7;
    v30 = v101;
    v31 = v102;
    v32 = 8 * v110;
    v33 = v109;
    while (1)
    {
      v34 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, v31) + 8);
      v35 = *v33;
      if ((*v33 & 4) != 0)
      {
        v36 = v35 & 0xFFFFFFFFFFFFFFF8;
        if ((v35 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          goto LABEL_40;
        }
      }

      v37 = v99;
      v38 = *(v99 + 6);
      if (*(v38 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v101 = *(v38 + 8);
        ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v101);
        v37 = v99;
      }

      else
      {
        ReferencedDialect = *(v38 + 24);
      }

      v40 = (*(*ReferencedDialect + 24))(ReferencedDialect, this + 24, *v33 & 0xFFFFFFFFFFFFFFF8, v34 & 0xFFFFFFFFFFFFFFF8, *(v37 + 3));
      if (!v40)
      {
        break;
      }

      v36 = v40 - 16;
LABEL_40:
      if (v107 >= HIDWORD(v107))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v106 + v107) = v36;
      v41 = v107 + 1;
      LODWORD(v107) = v107 + 1;
      ++v33;
      v31 = (v31 + 1);
      v32 -= 8;
      if (!v32)
      {
        v7 = v94;
        v10 = v95;
        v9 = v96;
        v8 = v97;
LABEL_46:
        v43 = v99;
        mlir::ValueRange::ValueRange(&v101, v106, v41);
        mlir::RewriterBase::replaceOp(this + 2, v43, v101, v102);
        v42 = 2;
        v44 = 1;
        v5 = 1;
        v45 = v98;
        v46 = v106;
        if (v106 == v8)
        {
          goto LABEL_48;
        }

LABEL_47:
        free(v46);
        v45 = v98;
        goto LABEL_48;
      }
    }

    v101 = 1;
    v102 = -4096;
    v103 = -4096;
    v104 = -4096;
    v105 = -4096;
    v45 = v98;
    if (!v107)
    {
      v79 = 1;
      v9 = v96;
      v8 = v97;
      v10 = v95;
LABEL_127:
      v83 = v102;
      v84 = v103;
      if (v79)
      {
        v85 = v10;
      }

      else
      {
        v85 = (v102 + 8 * v103);
      }

      if (v79)
      {
        v86 = v9;
      }

      else
      {
        v86 = v102;
      }

      if (v79)
      {
        v87 = 4;
      }

      else
      {
        v87 = v103;
      }

      v80 = (v86 + 8 * v87);
      v82 = v79;
      goto LABEL_137;
    }

    v53 = v106;
    v54 = (v106 + 8 * v107);
    v9 = v96;
    v8 = v97;
    v10 = v95;
    while (2)
    {
      v100[0] = *v53;
      DefiningOp = mlir::Value::getDefiningOp(v100);
      v62 = v101;
      v63 = v101 & 1;
      if (v101)
      {
        v55 = 4;
        v56 = v9;
        goto LABEL_72;
      }

      v55 = v103;
      if (!v103)
      {
        LODWORD(a2) = 0;
        goto LABEL_98;
      }

      v56 = v102;
LABEL_72:
      v45 = v98;
      v57 = v55 - 1;
      v58 = v57 & ((DefiningOp >> 4) ^ (DefiningOp >> 9));
      v59 = (v56 + 8 * v58);
      v60 = *v59;
      if (DefiningOp != *v59)
      {
        v64 = 0;
        v65 = 1;
        while (v60 != -4096)
        {
          if (v64)
          {
            v66 = 0;
          }

          else
          {
            v66 = v60 == -8192;
          }

          if (v66)
          {
            v64 = v59;
          }

          v67 = v58 + v65++;
          v58 = v67 & v57;
          v59 = (v56 + 8 * v58);
          v60 = *v59;
          if (DefiningOp == *v59)
          {
            goto LABEL_73;
          }
        }

        if (v64)
        {
          v68 = v64;
        }

        else
        {
          v68 = v59;
        }

        if (v101)
        {
          a2 = 4;
        }

        else
        {
          a2 = v103;
        }

        if (4 * (v101 >> 1) + 4 < 3 * a2)
        {
          if (a2 + ~(v101 >> 1) - HIDWORD(v101) <= a2 >> 3)
          {
            goto LABEL_99;
          }
        }

        else
        {
LABEL_98:
          LODWORD(a2) = 2 * a2;
LABEL_99:
          v69 = DefiningOp;
          llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::grow(&v101, a2);
          v62 = v101;
          if (v101)
          {
            v70 = 4;
            v71 = v96;
            goto LABEL_103;
          }

          v70 = v103;
          if (v103)
          {
            v71 = v102;
LABEL_103:
            v63 = v101 & 1;
            v72 = v70 - 1;
            v73 = (v70 - 1) & ((v69 >> 4) ^ (v69 >> 9));
            v68 = (v71 + 8 * v73);
            v74 = *v68;
            if (v69 != *v68)
            {
              v75 = 0;
              v76 = 1;
              while (v74 != -4096)
              {
                if (v75)
                {
                  v77 = 0;
                }

                else
                {
                  v77 = v74 == -8192;
                }

                if (v77)
                {
                  v75 = v68;
                }

                v78 = v73 + v76++;
                v73 = v78 & v72;
                v68 = (v71 + 8 * (v78 & v72));
                v74 = *v68;
                if (v69 == *v68)
                {
                  goto LABEL_104;
                }
              }

              if (v75)
              {
                v68 = v75;
              }
            }
          }

          else
          {
            v63 = 0;
            v68 = 0;
          }

LABEL_104:
          DefiningOp = v69;
          v9 = v96;
          v8 = v97;
          v10 = v95;
          v45 = v98;
        }

        LODWORD(v101) = (v62 & 0xFFFFFFFE | v63) + 2;
        if (*v68 != -4096)
        {
          --HIDWORD(v101);
        }

        *v68 = DefiningOp;
      }

LABEL_73:
      if (++v53 != v54)
      {
        continue;
      }

      break;
    }

    v79 = v101;
    if (v101 <= 1)
    {
      goto LABEL_127;
    }

    v80 = v10;
    v81 = v9;
    if ((v101 & 1) != 0 || (v81 = v102, v80 = (v102 + 8 * v103), v103))
    {
      v82 = v101 & 1;
      while ((*v81 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v81 = (v81 + 8);
        if (v81 == v80)
        {
          v81 = v80;
          break;
        }
      }

      v83 = v102;
      v84 = v103;
      v85 = v81;
LABEL_137:
      if (v82)
      {
        v88 = v10;
        if (v85 == v10)
        {
          goto LABEL_151;
        }

        do
        {
LABEL_145:
          v89 = *v85++;
          mlir::RewriterBase::eraseOp((this + 16), v89);
          if (v85 == v80)
          {
            v45 = v98;
          }

          else
          {
            v45 = v98;
            do
            {
              if ((*v85 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                break;
              }

              ++v85;
            }

            while (v85 != v80);
          }
        }

        while (v85 != v88);
        LOBYTE(v79) = v101;
      }

      else
      {
        v88 = (v83 + 8 * v84);
        if (v85 != v88)
        {
          goto LABEL_145;
        }
      }
    }

LABEL_151:
    if ((v79 & 1) == 0)
    {
      llvm::deallocate_buffer(v102, (8 * v103));
    }

    v44 = 0;
    v42 = 0;
    v7 = v94;
    v46 = v106;
    if (v106 != v8)
    {
      goto LABEL_47;
    }

LABEL_48:
    if (v45)
    {
      *(this + 40) = v45;
      if ((v44 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      *(this + 5) = 0;
      *(this + 6) = 0;
      if ((v44 & 1) == 0)
      {
LABEL_50:
        v42 = 0;
      }
    }

LABEL_51:
    if (v109 != v7)
    {
      free(v109);
    }

    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    if (v42)
    {
      v2 = *(this + 7);
      v3 = *(this + 8);
      if (v2 == v3)
      {
        return v5 & 1;
      }

      goto LABEL_3;
    }

LABEL_56:
    v109 = this;
    v110 = &v99;
    v106 = this;
    v101 = this;
    v47 = *(this + 18);
    v48 = v47 == 0;
    if (v47)
    {
    }

    else
    {
      v49 = 0;
    }

    if (v47)
    {
    }

    else
    {
      v50 = 0;
    }

    if (v48)
    {
      v51 = 0;
    }

    else
    {
    }

    v52 = mlir::PatternApplicator::matchAndRewrite(this + 192, v99, this + 16, v51, &v109, v49, &v106, v25, v50, &v101);
    v6 += v52 & 1;
    v5 |= v52;
    v2 = *(this + 7);
    v3 = *(this + 8);
  }

  while (v2 != v3);
  return v5 & 1;
}

uint64_t llvm::function_ref<BOOL ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::GreedyPatternRewriteDriver::processWorklist(void)::$_0>(void **a1, uint64_t a2)
{
  v3 = (*a1)[18];
  if (v3)
  {
    (*(*v3 + 72))(v3, a2, *a1[1]);
  }

  return 1;
}

uint64_t llvm::function_ref<void ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::GreedyPatternRewriteDriver::processWorklist(void)::$_1>(uint64_t a1, uint64_t a2)
{
  result = *(*a1 + 144);
  if (result)
  {
    return (*(*result + 80))(result, a2, 0);
  }

  return result;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>::callback_fn<anonymous namespace::GreedyPatternRewriteDriver::processWorklist(void)::$_2>(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 144);
  if (v2)
  {
    (*(*v2 + 80))(v2, a2, 1);
  }

  return 1;
}

void sub_2565FD904()
{
  if ((*(v0 + 152) & 1) == 0)
  {
    llvm::deallocate_buffer(*(v0 + 160), (8 * *(v0 + 168)));
  }

  llvm::deallocate_buffer(*(v0 + 80), (16 * *(v0 + 96)));
}

void sub_2565FD934()
{
  v1 = v0[7];
  if (v1)
  {
    v0[8] = v1;
    operator delete(v1);
  }

  mlir::RewriterBase::~RewriterBase((v0 + 2));

  JUMPOUT(0x259C63180);
}

unsigned int *llvm::SmallDenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(unsigned int *result)
{
  v1 = *result;
  v2 = __clz((*result >> 1) - 1);
  if (v2 - 28 >= 3)
  {
    v3 = 1 << (33 - v2);
  }

  else
  {
    v3 = 64;
  }

  if (v1 >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if ((v1 & 1) != 0 && v4 < 5)
  {
    *result &= 1u;
    result[1] = 0;
    v5 = (result + 2);
    v6 = (result + 10);
    v7 = 24;
    goto LABEL_15;
  }

  if (v1)
  {
    if (v4 <= 4)
    {
      *result = 1;
    }

    else
    {
      *result &= ~1u;
      v14 = result;
      buffer = llvm::allocate_buffer(8 * v4, 8uLL);
      result = v14;
      *(v14 + 1) = buffer;
      *(v14 + 2) = v4;
      v16 = *v14;
      *v14 = *v14 & 1;
      if ((v16 & 1) == 0)
      {
        v17 = &buffer->i8[8 * v4];
        v18 = 8 * v4 - 8;
        if (v18 < 0x18)
        {
          v20 = buffer;
          goto LABEL_31;
        }

LABEL_24:
        v19 = (v18 >> 3) + 1;
        v20 = &buffer->i8[8 * (v19 & 0x3FFFFFFFFFFFFFFCLL)];
        v21 = buffer + 1;
        v22 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v21[-1] = v22;
          *v21 = v22;
          v21 += 2;
          v23 -= 4;
        }

        while (v23);
        if (v19 == (v19 & 0x3FFFFFFFFFFFFFFCLL))
        {
          return result;
        }

        do
        {
LABEL_31:
          *v20 = -4096;
          v20 += 8;
        }

        while (v20 != v17);
        return result;
      }
    }

    buffer = (result + 2);
    v17 = (result + 10);
    v18 = 24;
    goto LABEL_24;
  }

  v9 = result[4];
  if (v4 != v9)
  {
    llvm::deallocate_buffer(*(result + 1), (8 * v9));
  }

  *result = 0;
  if (!v4)
  {
    return result;
  }

  v5 = *(result + 1);
  v6 = &v5->i64[v4];
  v7 = 8 * v4 - 8;
  if (v7 < 0x18)
  {
    v8 = *(result + 1);
    do
    {
LABEL_18:
      *v8++ = -4096;
    }

    while (v8 != v6);
    return result;
  }

LABEL_15:
  v10 = (v7 >> 3) + 1;
  v8 = &v5->i64[v10 & 0x3FFFFFFFFFFFFFFCLL];
  v11 = v5 + 1;
  v12 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v13 = v10 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v11[-1] = v12;
    *v11 = v12;
    v11 += 2;
    v13 -= 4;
  }

  while (v13);
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t mlir::Inliner::Impl::optimizeSCCAsync(uint64_t *a1, mlir::CallGraphNode **a2, uint64_t a3, mlir::MLIRContext *this)
{
  v23 = *MEMORY[0x277D85DE8];
  NumThreads = mlir::MLIRContext::getNumThreads(this);
  if (*(a1 + 4) < NumThreads)
  {
    if (*(a1 + 5) < NumThreads)
    {
      v22 = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow();
    }

    llvm::SmallVectorImpl<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>>::resize((a1 + 1), NumThreads, *(*a1 + 64) + 32);
  }

  if (a3)
  {
    v9 = 8 * a3;
    v10 = a2;
    do
    {
      v11 = *v10++;
      v12 = *a1;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v11);
      mlir::AnalysisManager::nest((v12 + 24), *(CallableRegion + 16));
      v9 -= 8;
    }

    while (v9);
  }

  if (*(a1 + 4))
  {
    operator new();
  }

  v21 = a2;
  v20 = a3;
  if (!a3)
  {
    return 1;
  }

  isMultithreadingEnabled = mlir::MLIRContext::isMultithreadingEnabled(this);
  if (a3 != 1 && (isMultithreadingEnabled & 1) != 0)
  {
    mlir::ParallelDiagnosticHandler::ParallelDiagnosticHandler(v19, this);
  }

  v15 = &a2[a3];
  while (1)
  {
    v16 = mlir::Inliner::Impl::optimizeCallable(a1, *a2, a1[1]);
    atomic_store(0, 0);
    if ((v16 & 1) == 0)
    {
      break;
    }

    a2 = v21 + 1;
    v21 = a2;
    if (a2 == v15)
    {
      return 1;
    }
  }

  return 0;
}

void llvm::SmallVectorImpl<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>>::resize(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - a2;
  if (v3 != a2)
  {
    if (v3 <= a2)
    {
      v16 = a2 - v3;
      v17 = *a1;
      if (*(a1 + 12) < a2)
      {
        if (v17 > a3 || v17 + 24 * v3 <= a3)
        {
          llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow();
        }

        llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::grow();
      }

      v18 = *(a1 + 8);
      if (v16)
      {
        v19 = (v17 + 24 * v18);
        do
        {
          v19 = (llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::StringMap(v19, a3) + 24);
        }

        while (!__CFADD__(v4++, 1));
        v18 = *(a1 + 8);
      }

      v6 = v18 + v16;
    }

    else
    {
      v6 = a2;
      v7 = *a1 + 24 * a2;
      v8 = (*a1 + 24 * v3);
      do
      {
        v9 = v8;
        v8 -= 3;
        if (*(v9 - 3))
        {
          v10 = *(v9 - 4);
          if (v10)
          {
            v11 = 0;
            do
            {
              v12 = *(*v8 + v11);
              if (v12 != -8 && v12 != 0)
              {
                v14 = *v12;
                mlir::OpPassManager::~OpPassManager((v12 + 1));
                llvm::deallocate_buffer(v12, (v14 + 17));
              }

              v11 += 8;
            }

            while (8 * v10 != v11);
          }
        }

        free(*v8);
      }

      while (v8 != v7);
    }

    *(a1 + 8) = v6;
  }
}

uint64_t mlir::Inliner::Impl::optimizeCallable(uint64_t *a1, mlir::CallGraphNode *this, uint64_t a3)
{
  v5 = *(mlir::CallGraphNode::getCallableRegion(this) + 16);
  v24 = *(*(v5 + 48) + 8);
  Value = mlir::StringAttr::getValue(&v24);
  v8 = v7;
  v10 = llvm::StringMapImpl::hash(Value, v7, v9);
  Key = llvm::StringMapImpl::FindKey(a3, Value, v8, v10);
  v12 = Key;
  if (Key == -1)
  {
    v12 = *(a3 + 8);
  }

  if (v12 != *(a3 + 8))
  {
    v17 = (*a3 + 8 * v12);
LABEL_8:
    v18 = *a1;
    v19 = *(*a1 + 16);
    v20 = *v17;
    v24 = v5;
    v21 = *(v18 + 56);
    if (v21)
    {
      return (*(*v21 + 48))(v21, v19, v20 + 8, &v24);
    }

    goto LABEL_11;
  }

  v13 = *(*a1 + 64);
  if (!*(v13 + 24))
  {
    return 1;
  }

  mlir::OpPassManager::OpPassManager(&v24, Value, v8, 1);
  v14 = *(v13 + 24);
  if (v14)
  {
    (*(*v14 + 48))(v14, &v24);
    v16 = llvm::StringMapImpl::hash(Value, v8, v15);
    v17 = llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::try_emplace_with_hash<mlir::OpPassManager>(a3, Value, v8, v16, &v24);
    mlir::OpPassManager::~OpPassManager(&v24);
    goto LABEL_8;
  }

LABEL_11:
  v23 = std::__throw_bad_function_call[abi:nn200100]();
  return mlir::Inliner::Impl::shouldInline(v23);
}

uint64_t mlir::Inliner::Impl::shouldInline(uint64_t a1, void *a2)
{
  v4 = *a2;
  {
  }

  if ((*(**(v4 + 48) + 32))(*(v4 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  v5 = a2[3];
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *(v5 + 48);
    v8 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 >= 3)
    {
      v11 = v8 + 1;
      v12 = (v8 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v10 = &v7->i64[v12];
      v13 = vdupq_n_s64(v5);
      v14 = v7 + 1;
      v15 = 0uLL;
      v16 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
      v17 = v12;
      v18 = 0uLL;
      do
      {
        v15 = vsubq_s64(v15, vceqq_s64(v13, vandq_s8(v14[-1], v16)));
        v18 = vsubq_s64(v18, vceqq_s64(v13, vandq_s8(*v14, v16)));
        v14 += 2;
        v17 -= 4;
      }

      while (v17);
      v9 = vaddvq_s64(vaddq_s64(v18, v15));
      if (v11 == v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = 0;
      v10 = *(v5 + 48);
    }

    v19 = &v7->i64[v6];
    do
    {
      v20 = *v10++;
      if (v5 == (v20 & 0xFFFFFFFFFFFFFFF8))
      {
        ++v9;
      }
    }

    while (v10 != v19);
LABEL_14:
    if (v9)
    {
      return 0;
    }
  }

  CallableRegion = mlir::CallGraphNode::getCallableRegion(v5);
  v22 = *(*a2 + 16);
  if (v22)
  {
    Parent = mlir::Block::getParent(v22);
    if (CallableRegion == Parent)
    {
      return 0;
    }
  }

  else
  {
    Parent = 0;
    if (!CallableRegion)
    {
      return 0;
    }
  }

  if ((mlir::Region::isProperAncestor(CallableRegion, Parent) & 1) == 0)
  {
    v25 = *(CallableRegion + 1);
    if (v25 == CallableRegion)
    {
      goto LABEL_29;
    }

    if (v25[1] == CallableRegion)
    {
      goto LABEL_29;
    }

    v26 = *(*(CallableRegion + 2) + 48);
    if (v26 == *(mlir::Block::getParentOp(*(*a2 + 16)) + 48))
    {
      goto LABEL_29;
    }

    ParentOp = *(*a2 + 16);
    if (ParentOp)
    {
      ParentOp = mlir::Block::getParentOp(ParentOp);
    }

    {
      goto LABEL_34;
    }

    v28 = *(ParentOp + 6);
    if (v28[2] != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      while (((*(*v28 + 4))(v28, mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
LABEL_29:
        v29 = *(*a1 + 96);
        if (v29)
        {
          v30 = *(*v29 + 48);

          return v30();
        }

        ParentOp = std::__throw_bad_function_call[abi:nn200100]();
LABEL_34:
        v31 = ParentOp;
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>();
        v28 = *(v31 + 6);
        if (v28[2] == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

void mlir::Inliner::doInlining(mlir::Inliner *this)
{
  v39[6] = *MEMORY[0x277D85DE8];
  v38[34] = this;
  v38[35] = v39;
  v38[36] = 0x200000000;
  Context = mlir::Attribute::getContext((*this + 24));
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v2 = *(this + 1);
  mlir::DialectInterfaceCollection<mlir::DialectInlinerInterface>::DialectInterfaceCollection(v33, Context);
  v33[0] = &unk_286866B08;
  v33[7] = v35;
  v33[8] = v35;
  v33[9] = 8;
  v34 = 0;
  v36 = v38;
  v37 = 0x800000000;
  v38[32] = v2;
  v38[33] = v26;
  v3 = *this;
  v4 = *(this + 1);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = v26;
  __p = 0;
  v30 = 0;
  LODWORD(v31) = 0;
  v32[2] = v26;
  v32[3] = &__p;
  v5 = *(v3 + 16) == 0;
  v32[0] = v4;
  v32[1] = &v19;
  v6 = __p;
  v7 = v31;
  if (v30)
  {
    v8 = __p;
    if (v31)
    {
      v9 = 16 * v31;
      v8 = __p;
      while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v8 += 16;
        v9 -= 16;
        if (!v9)
        {
          goto LABEL_20;
        }
      }
    }

    v10 = __p + 16 * v31;
    if (v8 != v10 && v21)
    {
      v11 = v19;
      v12 = v21 - 1;
      v13 = v20;
      do
      {
        v14 = *(v8 + 1);
        v15 = ((v14 >> 4) ^ (v14 >> 9)) & v12;
        v16 = *(v11 + 2 * v15);
        if (v14 == v16)
        {
LABEL_11:
          *(v11 + 2 * v15) = -8192;
          v13 = vadd_s32(v13, 0x1FFFFFFFFLL);
          v20 = v13;
          goto LABEL_12;
        }

        v17 = 1;
        while (v16 != -4096)
        {
          v18 = v15 + v17++;
          v15 = v18 & v12;
          v16 = *(v11 + 2 * v15);
          if (v14 == v16)
          {
            goto LABEL_11;
          }
        }

        do
        {
LABEL_12:
          v8 += 16;
          if (v8 == v10)
          {
            goto LABEL_20;
          }
        }

        while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v8 != v10);
    }
  }

LABEL_20:
  if (*(v4 + 32))
  {
  }

  llvm::deallocate_buffer(v6, (16 * v7));
}

void anonymous namespace::InlinerInterfaceImpl::~InlinerInterfaceImpl(_anonymous_namespace_::InlinerInterfaceImpl *this)
{
  *this = &unk_286866B08;
  v2 = *(this + 19);
  if (v2 != this + 168)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != *(this + 7))
  {
    free(v3);
  }

  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(this);
}

{
  *this = &unk_286866B08;
  v2 = *(this + 19);
  if (v2 != this + 168)
  {
    free(v2);
  }

  v3 = *(this + 8);
  if (v3 != *(this + 7))
  {
    free(v3);
  }

  mlir::detail::DialectInterfaceCollectionBase::~DialectInterfaceCollectionBase(this);
}

void sub_2565FEE10()
{

  JUMPOUT(0x259C63180);
}

void anonymous namespace::InlinerInterfaceImpl::processInlinedBlocks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = (a2 - 8);
  }

  else
  {
    v6 = 0;
  }

  Parent = mlir::Block::getParent(v6);
  for (i = mlir::CallGraph::lookupNode(*(a1 + 424), Parent); !i; i = mlir::CallGraph::lookupNode(*(a1 + 424), Parent))
  {
    Parent = mlir::Region::getParentRegion(Parent);
  }

  v9 = *(a1 + 424);
  v10 = *(a1 + 432);

  collectCallOps(a2, a3, i, v9, v10, a1 + 152, 1);
}

void collectCallOps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char a7)
{
  v49[16] = *MEMORY[0x277D85DE8];
  v47 = v49;
  v48 = 0x800000000;
  *&v44 = a3;
  if (a1 != a2)
  {
    do
    {
      while (1)
      {
        v9 = a1 ? a1 - 8 : 0;
        *&v43 = v9;
        v10 = v48;
        if (v48 >= HIDWORD(v48))
        {
          break;
        }

        v11 = (v47 + 16 * v48);
        *v11 = v9;
        v11[1] = v44;
        LODWORD(v48) = v10 + 1;
        a1 = *(a1 + 8);
        if (a1 == a2)
        {
          goto LABEL_9;
        }
      }

      v12 = a1;
      v13 = a2;
      llvm::SmallVectorTemplateBase<std::pair<mlir::Block *,mlir::CallGraphNode *>,true>::growAndEmplaceBack<mlir::Block *,mlir::CallGraphNode *&>(&v47, &v43, &v44);
      a2 = v13;
      a1 = *(v12 + 8);
    }

    while (a1 != v13);
LABEL_9:
    v14 = v48;
    if (v48)
    {
      while (1)
      {
        v15 = v47 + 16 * v14;
        v16 = *(v15 - 2);
        v17 = *(v15 - 1);
        LODWORD(v48) = --v14;
        v18 = v16 + 32;
        v19 = *(v16 + 40);
        if (v19 != v16 + 32)
        {
          break;
        }

LABEL_14:
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      while (1)
      {
        ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v19);
        if (!mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr))
        {
          break;
        }

        InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr);
        *&v43 = ValuePtr;
        *(&v43 + 1) = InterfaceFor;
        if (!ValuePtr)
        {
          goto LABEL_33;
        }

        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v43);
        if ((CallableForCallee & 4) != 0)
        {
          goto LABEL_27;
        }

        v24 = CallableForCallee & 0xFFFFFFFFFFFFFFF8;
        if ((CallableForCallee & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          goto LABEL_27;
        }

        if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v24 = 0;
        }

        *&v44 = v24;
        if (v24)
        {
          mlir::SymbolRefAttr::getNestedReferences(&v44);
          if (!v25)
          {
LABEL_27:
            v26 = mlir::CallGraph::resolveCallable(a4, v43, *(&v43 + 1), a5);
            if (!mlir::CallGraphNode::isExternal(v26))
            {
              v27 = *(a6 + 8);
              if (v27 >= *(a6 + 12))
              {
                v44 = v43;
                v45 = v17;
                v46 = v26;
                if (*a6 > &v44 || *a6 + 32 * v27 <= &v44)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v20 = *a6 + 32 * v27;
              *v20 = v43;
              *(v20 + 16) = v17;
              *(v20 + 24) = v26;
              ++*(a6 + 8);
            }
          }
        }

LABEL_18:
        v19 = *(v19 + 8);
        if (v19 == v18)
        {
          v14 = v48;
          goto LABEL_14;
        }
      }

      v43 = 0uLL;
LABEL_33:
      v28 = *(ValuePtr + 44);
      if ((v28 & 0x7FFFFF) != 0)
      {
        v29 = ValuePtr + 16 * ((v28 >> 23) & 1) + ((v28 >> 21) & 0x7F8) + 32 * *(ValuePtr + 40) + 64;
        v30 = v29 + 24 * (v28 & 0x7FFFFF);
        if (a7)
        {
          do
          {
            v31 = mlir::CallGraph::lookupNode(a4, v29);
            if (v31)
            {
              v32 = v31;
            }

            else
            {
              v32 = v17;
            }

            v33 = *(v29 + 8);
            if (v33 != v29)
            {
              v34 = v48;
              do
              {
                if (v33)
                {
                  v35 = v33 - 8;
                }

                else
                {
                  v35 = 0;
                }

                if (v34 >= HIDWORD(v48))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v36 = v47 + 16 * v34;
                *v36 = v35;
                v36[1] = v32;
                LODWORD(v48) = ++v34;
                v33 = *(v33 + 8);
              }

              while (v33 != v29);
            }

            v29 += 24;
          }

          while (v29 != v30);
        }

        else
        {
          do
          {
            if (!mlir::CallGraph::lookupNode(a4, v29))
            {
              v37 = *(v29 + 8);
              if (v37 != v29)
              {
                v38 = v48;
                do
                {
                  if (v37)
                  {
                    v39 = v37 - 8;
                  }

                  else
                  {
                    v39 = 0;
                  }

                  if (v38 >= HIDWORD(v48))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v40 = v47 + 16 * v38;
                  *v40 = v39;
                  v40[1] = v17;
                  LODWORD(v48) = ++v38;
                  v37 = *(v37 + 8);
                }

                while (v37 != v29);
              }
            }

            v29 += 24;
          }

          while (v29 != v30);
        }
      }

      goto LABEL_18;
    }
  }

LABEL_10:
  if (v47 != v49)
  {
    free(v47);
  }
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Block *,mlir::CallGraphNode *>,true>::growAndEmplaceBack<mlir::Block *,mlir::CallGraphNode *&>(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (*a1 + 16 * v4);
  *v5 = *a2;
  v5[1] = v3;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 16 * v5 - 16;
}

void anonymous namespace::CGUseList::recomputeUses(_anonymous_namespace_::CGUseList *this, mlir::CallGraphNode *a2, mlir::CallGraph *a3)
{
  v5 = a2;
  mlir::CallGraphNode::getCallableRegion(a2);
  llvm::deallocate_buffer(*v4, (8 * *(v4 + 16)));
}

void sub_2565FF404()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  llvm::deallocate_buffer(*(v0 + 24), (16 * *(v0 + 40)));
}

void sub_2565FF420()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  llvm::deallocate_buffer(0, 0);
}

void sub_2565FF448(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, llvm *a12, uint64_t a13, unsigned int a14, int a15, char a16)
{
  a12 = 0;
  a13 = 0;
  a14 = 0;
  a10 = &a16;
  llvm::deallocate_buffer(a12, (16 * a14));
}

uint64_t llvm::function_ref<void ()(mlir::Operation *,BOOL)>::callback_fn<anonymous namespace::CGUseList::CGUseList(mlir::Operation *,mlir::CallGraph &,mlir::SymbolTableCollection &)::$_0>(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 8);
  v6 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  mlir::Region::OpIterator::OpIterator(&v27, v6, 0);
  mlir::Region::OpIterator::OpIterator(&v25, v6, 1);
  v24 = v28;
  result = v28;
  v23 = v27;
  v8 = v26;
  if (v28 != v26)
  {
    while (1)
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
      if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr))
      {
        break;
      }

      InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr);
      v21 = ValuePtr;
      v22 = InterfaceFor;
      if (!ValuePtr)
      {
        goto LABEL_3;
      }

      v11 = *a1;
      CallableRegion = mlir::CallableOpInterface::getCallableRegion(&v21);
      v20 = mlir::CallGraph::lookupNode(v11, CallableRegion);
      if (!v20)
      {
        goto LABEL_3;
      }

      InherentAttr = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr);
      if (!InherentAttr)
      {
        goto LABEL_14;
      }

      if (*(ValuePtr + 47))
      {
        InherentAttr = mlir::Operation::getInherentAttr(ValuePtr, "sym_name", 8);
        if (v14)
        {
          if (InherentAttr)
          {
            goto LABEL_16;
          }

LABEL_14:
          v18 = 0;
          v19 = InherentAttr;
          goto LABEL_4;
        }
      }

      if (mlir::DictionaryAttr::contains(ValuePtr + 56, "sym_name", 8uLL))
      {
LABEL_16:
        v15 = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ValuePtr);
        v18 = ValuePtr;
        v19 = v15;
        if ((a3 & 1) != 0 || mlir::SymbolOpInterface::isPrivate(&v18))
        {
          if (mlir::SymbolOpInterface::canDiscardOnUseEmpty(&v18))
          {
            v17 = 0;
            llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v5, &v20, &v17, v16);
          }
        }

        goto LABEL_4;
      }

      v18 = 0;
      v19 = 0;
LABEL_4:
      mlir::Region::OpIterator::operator++(&v27);
      result = v28;
      if (v28 == v8)
      {
        return result;
      }
    }

    v21 = 0;
    v22 = 0;
LABEL_3:
    goto LABEL_4;
  }

  return result;
}

void walkReferencedSymbolNodes(mlir::SymbolTable *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void), uint64_t a6)
{
  mlir::SymbolTable::getSymbolUses(a1, &__p);
  v11 = *(a1 + 2);
  if (!v11)
  {
    ParentOp = 0;
    v13 = __p;
    v14 = v26;
    if (__p == v26)
    {
      goto LABEL_16;
    }

    while (1)
    {
LABEL_7:
      v21 = v13[1];
      v22 = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>,mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>>::try_emplace<mlir::DialectVersion const* const&>(a4, &v21, &v22, &v23);
      v15 = v23;
      if (v24 != 1)
      {
        goto LABEL_13;
      }

      InterfaceFor = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a3, ParentOp, v13[1]);
      v17 = InterfaceFor;
      if (InterfaceFor)
      {
        if (!mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor))
        {
          v21 = 0;
          v22 = 0;
          goto LABEL_6;
        }

        InterfaceFor = mlir::OpInterface<mlir::CallableOpInterface,mlir::detail::CallableOpInterfaceInterfaceTraits>::getInterfaceFor(v17);
      }

      v21 = v17;
      v22 = InterfaceFor;
      if (v17)
      {
        CallableRegion = mlir::CallableOpInterface::getCallableRegion(&v21);
        *(v15 + 8) = mlir::CallGraph::lookupNode(a2, CallableRegion);
LABEL_13:
        v19 = *(v15 + 8);
        if (v19)
        {
          a5(a6, v19, *v13);
        }
      }

LABEL_6:
      v13 += 2;
      if (v13 == v14)
      {
        goto LABEL_16;
      }
    }
  }

  ParentOp = mlir::Block::getParentOp(v11);
  v13 = __p;
  v14 = v26;
  if (__p != v26)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (v27 == 1)
  {
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>,mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>::operator[](uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = *a1 + 56 * v4;
    v6 = *v5;
    if (*v5 == *a2)
    {
      return v5 + 8;
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
      v5 = *a1 + 56 * (v12 & v3);
      v6 = *v5;
      if (*v5 == *a2)
      {
        return v5 + 8;
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
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  return v5 + 8;
}

_DWORD *anonymous namespace::CGUseList::decrementDiscardableUses(_DWORD *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 8))
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = 8 * v4;
      v6 = *a2;
      while ((*v6 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v6;
        v5 -= 8;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = *a2;
    }

    v11 = *a2 + 8 * v4;
    while (v6 != v11)
    {
      v12 = *v6++;
      v15 = v12;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v3, &v15);
      --*result;
      for (; v6 != v11; ++v6)
      {
        if ((*v6 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          break;
        }
      }
    }
  }

LABEL_6:
  if (*(a2 + 32))
  {
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);
    if (v8)
    {
      v9 = 16 * v8;
      for (i = *(a2 + 24); (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 16)
      {
        v9 -= 16;
        if (!v9)
        {
          return result;
        }
      }
    }

    else
    {
      i = *(a2 + 24);
    }

    v13 = v7 + 16 * v8;
    while (i != v13)
    {
      v14 = *(i + 8);
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v3, i);
      *result -= v14;
      do
      {
        i += 16;
      }

      while (i != v13 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>,mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>::LookupBucketFor<mlir::CallGraphNode *>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 56 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
LABEL_3:
      *a4 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 56 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }

      *a4 = v6;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>,mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser,llvm::DenseMapInfo<mlir::CallGraphNode *,void>,llvm::detail::DenseMapPair<mlir::CallGraphNode *,anonymous namespace::CGUseList::CGUser>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(56 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 56 * v10 - 56;
    if (v11 >= 0x38)
    {
      v16 = v11 / 0x38 + 1;
      v12 = &result[7 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[7] = -4096;
        v17 += 14;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v30 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v31 = *(a1 + 16) - 1;
              v32 = v31 & ((v30 >> 4) ^ (v30 >> 9));
              v25 = *a1 + 56 * v32;
              v33 = *v25;
              if (*v25 != v30)
              {
                v34 = 0;
                v35 = 1;
                while (v33 != -4096)
                {
                  if (v34)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = v33 == -8192;
                  }

                  if (v36)
                  {
                    v34 = v25;
                  }

                  v37 = v32 + v35++;
                  v32 = v37 & v31;
                  v25 = *a1 + 56 * (v37 & v31);
                  v33 = *v25;
                  if (*v25 == v30)
                  {
                    goto LABEL_26;
                  }
                }

                if (v34)
                {
                  v25 = v34;
                }
              }

LABEL_26:
              *(v25 + 8) = 0;
              *(v25 + 16) = 0;
              *v25 = v30;
              *(v25 + 24) = 0;
              *(v25 + 8) = *(v20 + 1);
              *(v20 + 1) = 0;
              *(v25 + 16) = *(v20 + 4);
              *(v20 + 4) = 0;
              v26 = *(v25 + 20);
              *(v25 + 20) = *(v20 + 5);
              *(v20 + 5) = v26;
              v27 = *(v25 + 24);
              *(v25 + 24) = *(v20 + 6);
              *(v20 + 6) = v27;
              *(v25 + 32) = 0;
              *(v25 + 40) = 0;
              *(v25 + 48) = 0;
              *(v25 + 32) = *(v20 + 4);
              *(v20 + 4) = 0;
              *(v25 + 40) = *(v20 + 10);
              *(v20 + 10) = 0;
              v28 = *(v25 + 44);
              *(v25 + 44) = *(v20 + 11);
              *(v20 + 11) = v28;
              v29 = *(v25 + 48);
              *(v25 + 48) = *(v20 + 12);
              *(v20 + 12) = v29;
              ++*(a1 + 8);
              llvm::deallocate_buffer(0, (16 * v29));
            }

            v20 = (v20 + 56);
          }

          while (v20 != (v4 + 56 * v3));
        }

        llvm::deallocate_buffer(v4, (56 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[7 * v10];
    do
    {
      *v12 = -4096;
      v12 += 7;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 56 * v13 - 56;
    if (v14 < 0x38)
    {
      v15 = result;
LABEL_21:
      v24 = &result[7 * v13];
      do
      {
        *v15 = -4096;
        v15 += 7;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x38 + 1;
    v15 = &result[7 * (v21 & 0xFFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -4096;
      v22[7] = -4096;
      v22 += 14;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::CallGraphNode *,mlir::Operation *)>::callback_fn<anonymous namespace::CGUseList::recomputeUses(mlir::CallGraphNode *,mlir::CallGraph &)::$_0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v3 = *(*result + 16);
  if (v3)
  {
    v4 = **result;
    v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v4 + 16 * v5);
    if (v6 == a2)
    {
LABEL_3:
      if (v5 == v3)
      {
        return result;
      }

      v8 = *(result + 8);
      v7 = *(result + 16);
      if (*v8 == a3)
      {
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v7, &v11, v12);
        if (v12[16] != 1)
        {
          return result;
        }
      }

      else
      {
        result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v7 + 24, &v11);
        ++*result;
      }

      ++*(v4 + 16 * v5 + 8);
    }

    else
    {
      v9 = 1;
      while (v6 != -4096)
      {
        v10 = v5 + v9++;
        v5 = v10 & (v3 - 1);
        v6 = *(v4 + 16 * v5);
        if (v6 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

void llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::GetNextSCC(uint64_t a1)
{
  *(a1 + 64) = *(a1 + 56);
  if (*(a1 + 80) != *(a1 + 88))
  {
    while (1)
    {
      llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitChildren(a1);
      v3 = *(a1 + 80);
      v2 = *(a1 + 88);
      v40 = *(v2 - 32);
      v4 = *(v2 - 8);
      *(a1 + 88) = v2 - 32;
      if (v3 != v2 - 32 && *(v2 - 40) > v4)
      {
        *(v2 - 40) = v4;
      }

      if (v4 == *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](a1 + 8, &v40))
      {
        break;
      }

      if (*(a1 + 80) == *(a1 + 88))
      {
        return;
      }
    }

    v5 = *(a1 + 64);
    while (1)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 72);
      if (v5 >= v13)
      {
        v14 = *(a1 + 56);
        v15 = v5 - v14;
        v16 = (v5 - v14) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v18 = v13 - v14;
        if (v18 >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          if (!(v19 >> 61))
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v20 = v16;
        v21 = (8 * v16);
        v22 = *(v12 - 8);
        v23 = &v21[-v20];
        *v21 = v22;
        v5 = (v21 + 1);
        memcpy(v23, v14, v15);
        *(a1 + 56) = v23;
        *(a1 + 64) = v5;
        *(a1 + 72) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = *(v12 - 8);
        v5 += 8;
      }

      *(a1 + 64) = v5;
      *(a1 + 40) -= 8;
      v24 = *(a1 + 24);
      if (!v24)
      {
        goto LABEL_42;
      }

      v6 = *(a1 + 8);
      v7 = *(v5 - 1);
      v8 = v24 - 1;
      v9 = ((v7 >> 4) ^ (v7 >> 9)) & (v24 - 1);
      v10 = (v6 + 16 * v9);
      v11 = *v10;
      if (v7 != *v10)
      {
        break;
      }

LABEL_10:
      *(v10 + 2) = -1;
      if (v7 == v40)
      {
        return;
      }
    }

    v25 = 0;
    v26 = 1;
    while (v11 != -4096)
    {
      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v11 == -8192;
      }

      if (v27)
      {
        v25 = v10;
      }

      v28 = v9 + v26++;
      v9 = v28 & v8;
      v10 = (v6 + 16 * (v28 & v8));
      v11 = *v10;
      if (v7 == *v10)
      {
        goto LABEL_10;
      }
    }

    if (v25)
    {
      v10 = v25;
    }

    v29 = *(a1 + 16);
    if (4 * v29 + 4 < 3 * v24)
    {
      if (v24 + ~v29 - *(a1 + 20) > v24 >> 3)
      {
        *(a1 + 16) = v29 + 1;
        if (*v10 == -4096)
        {
LABEL_29:
          *v10 = *(v5 - 1);
          *(v10 + 2) = 0;
          v5 = *(a1 + 64);
          v7 = *(v5 - 1);
          goto LABEL_10;
        }

LABEL_28:
        --*(a1 + 20);
        goto LABEL_29;
      }
    }

    else
    {
LABEL_42:
      v24 *= 2;
    }

    llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(a1 + 8, v24);
    v30 = *(a1 + 24);
    if (v30)
    {
      v31 = *(a1 + 8);
      v32 = *(v5 - 1);
      v33 = v30 - 1;
      v34 = ((v32 >> 4) ^ (v32 >> 9)) & (v30 - 1);
      v10 = (v31 + 16 * v34);
      v35 = *v10;
      if (v32 != *v10)
      {
        v36 = 0;
        v37 = 1;
        while (v35 != -4096)
        {
          if (v36)
          {
            v38 = 0;
          }

          else
          {
            v38 = v35 == -8192;
          }

          if (v38)
          {
            v36 = v10;
          }

          v39 = v34 + v37++;
          v34 = v39 & v33;
          v10 = (v31 + 16 * (v39 & v33));
          v35 = *v10;
          if (v32 == *v10)
          {
            goto LABEL_55;
          }
        }

        if (v36)
        {
          v10 = v36;
        }
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_55:
    ++*(a1 + 16);
    if (*v10 == -4096)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }
}

void std::vector<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement,std::allocator<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::DFSVisitChildren(int *a1)
{
  v2 = *(a1 + 11);
  while (1)
  {
    result = *(v2 - 24);
    if (result == *(*(v2 - 32) + 48) + 8 * *(*(v2 - 32) + 56))
    {
      return result;
    }

    v7 = *(v2 - 16);
    *(v2 - 24) = result + 8;
    v8 = v7();
    v9 = a1[6];
    if (!v9)
    {
      goto LABEL_2;
    }

    v10 = *(a1 + 1);
    v11 = ((v8 >> 4) ^ (v8 >> 9)) & (v9 - 1);
    v12 = *(v10 + 16 * v11);
    if (v12 == v8)
    {
LABEL_6:
      if (v11 == v9)
      {
        goto LABEL_2;
      }

      v13 = *(v10 + 16 * v11 + 8);
      v2 = *(a1 + 11);
      if (*(v2 - 8) > v13)
      {
        *(v2 - 8) = v13;
      }
    }

    else
    {
      v14 = 1;
      while (v12 != -4096)
      {
        v15 = v11 + v14++;
        v11 = v15 & (v9 - 1);
        v12 = *(v10 + 16 * v11);
        if (v12 == v8)
        {
          goto LABEL_6;
        }
      }

LABEL_2:
      v19 = v8;
      v3 = *a1 + 1;
      *a1 = v3;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[]((a1 + 2), &v19) = v3;
      std::vector<mlir::Operation *>::push_back[abi:nn200100]((a1 + 8), &v19);
      v4 = *(v19 + 48);
      v5 = *a1;
      *&v16 = v19;
      *(&v16 + 1) = v4;
      v17 = llvm::GraphTraits<mlir::CallGraphNode const*>::unwrap;
      v18 = v5;
      std::vector<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement,std::allocator<llvm::scc_iterator<mlir::CallGraph const*,llvm::GraphTraits<mlir::CallGraph const*>>::StackElement>>::push_back[abi:nn200100]((a1 + 20), &v16);
      v2 = *(a1 + 11);
    }
  }
}

char *std::vector<mlir::CallGraphNode *>::__assign_with_size[abi:nn200100]<mlir::CallGraphNode **,mlir::CallGraphNode **>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 24 * v2;
    do
    {
      *a2 = *v3;
      *(a2 + 8) = *(v3 + 1);
      *v3 = 0;
      v3[1] = 0;
      *(v3 + 4) = 0;
      a2 += 24;
      v3 += 3;
    }

    while (v3 != v4);
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *a1;
      v7 = (*a1 + 24 * v5);
      do
      {
        v8 = v7;
        v7 -= 3;
        if (*(v8 - 3))
        {
          v9 = *(v8 - 4);
          if (v9)
          {
            v10 = 0;
            do
            {
              v11 = *(*v7 + v10);
              if (v11 != -8 && v11 != 0)
              {
                v13 = *v11;
                mlir::OpPassManager::~OpPassManager((v11 + 1));
                llvm::deallocate_buffer(v11, (v13 + 17));
              }

              v10 += 8;
            }

            while (8 * v9 != v10);
          }
        }

        free(*v7);
      }

      while (v7 != v6);
    }
  }
}

void llvm::ThreadPoolInterface::asyncImpl<void>(uint64_t a1@<X1>, std::future<void> *a2@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  std::async[abi:nn200100]<std::function<void ()(void)>>(2, a1, &v4);
  state = v4.__state_;
  a2->__state_ = v4.__state_;
  v4.__state_ = 0;
  std::future<void>::~future(&v4);
  if (state)
  {
    atomic_fetch_add_explicit(&state->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t std::async[abi:nn200100]<std::function<void ()(void)>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      if (v3 != a2)
      {
        v6 = *(a2 + 24);
        *(a2 + 24) = 0;
        goto LABEL_13;
      }

      v6 = v5;
      (*(*v3 + 24))(v3, v5);
      v3 = v6;
      if (v6)
      {
LABEL_13:
        if (v3 == v5)
        {
          v8 = v7;
          (*(*v3 + 24))(v3, v7);
        }

        else
        {
          v8 = v3;
          v6 = 0;
        }

LABEL_16:
        std::__make_async_assoc_state[abi:nn200100]<void,std::__async_func<std::function<void ()(void)>>>();
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_16;
  }

  if ((result & 2) != 0)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      if (v4 != a2)
      {
        v6 = *(a2 + 24);
        *(a2 + 24) = 0;
        goto LABEL_20;
      }

      v6 = v5;
      (*(*v4 + 24))(v4, v5);
      v4 = v6;
      if (v6)
      {
LABEL_20:
        if (v4 == v5)
        {
          v8 = v7;
          (*(*v4 + 24))(v4, v7);
        }

        else
        {
          v8 = v4;
          v6 = 0;
        }

LABEL_23:
        operator new();
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_23;
  }

  *a3 = 0;
  return result;
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = &unk_286866BA8;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_286866BA8;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  std::__assoc_sub_state::__on_zero_shared(a1);
}

void std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__execute(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (sig)
  {
    (*(*sig + 48))(sig);

    std::__assoc_sub_state::set_value(a1);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>(v3);
  }
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::*)(void),std::__async_assoc_state<void,std::__async_func<std::function<void ()(void)>>>*>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + (v4 >> 1));
  if ((v4 & 1) == 0)
  {
    v5(v6);
    v7 = *a1;
    *a1 = 0;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (*(*v6 + v5))();
  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
LABEL_5:
    v9 = MEMORY[0x259C62E00]();
    MEMORY[0x259C63180](v9, 0x20C4093837F09);
  }

LABEL_6:
  MEMORY[0x259C63180](a1, 0xA0C40F20CD8FBLL);
  return 0;
}

void std::__deferred_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = &unk_286866BF0;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_286866BF0;
  v2 = a1 + 144;
  v3 = *(a1 + 168);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x259C63180);
}

void std::__deferred_assoc_state<void,std::__async_func<std::function<void ()(void)>>>::__execute(std::__assoc_sub_state *a1)
{
  sig = a1[1].__mut_.__m_.__sig;
  if (sig)
  {
    (*(*sig + 48))(sig);

    std::__assoc_sub_state::set_value(a1);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(v3);
  }
}

std::shared_future<void> *std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_286866C38;
  std::shared_future<void>::~shared_future(a1 + 1);
  return a1;
}

void std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::~__func(std::shared_future<void> *a1)
{
  a1->__state_ = &unk_286866C38;
  std::shared_future<void>::~shared_future(a1 + 1);

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286866C38;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(std::shared_future<void> *a1)
{
  std::shared_future<void>::~shared_future(a1 + 1);

  operator delete(a1);
}

uint64_t std::__function::__func<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1},std::allocator<std::shared_future<void> llvm::ThreadPoolInterface::asyncImpl<void>(std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm19ThreadPoolInterface9asyncImplIvEENSt3__113shared_futureIT_EENS2_8functionIFS4_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286866CC8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = atomic_load(*(a1 + 8));
  if ((v1 & 1) == 0)
  {
    do
    {
      add = atomic_fetch_add(*(a1 + 16), 1u);
      if (add >= **(a1 + 24))
      {
        break;
      }

      mlir::ParallelDiagnosticHandler::setOrderIDForThread(*(a1 + 32), add);
      v5 = *(**(a1 + 48) + 8 * add);
      v6 = *(a1 + 40);
      v7 = v6[1];
      v8 = **v6;
      v9 = (*v6)[1];
      if (v8 == v9)
      {
        v11 = **v6;
      }

      else
      {
        while (1)
        {
          v10 = 0;
          atomic_compare_exchange_strong(v8, &v10, 1u);
          if (!v10)
          {
            break;
          }

          if (++v8 == v9)
          {
            LODWORD(v8) = v9;
            break;
          }
        }

        LODWORD(v11) = v8;
        v8 = **v6;
      }

      v12 = (v11 - v8);
      v13 = mlir::Inliner::Impl::optimizeCallable(v7, v5, v7[1] + 24 * v12);
      atomic_store(0, &(**v6)[v12]);
      if ((v13 & 1) == 0)
      {
        atomic_store(1u, *(a1 + 8));
      }

      mlir::ParallelDiagnosticHandler::eraseOrderIDForThread(*(a1 + 32));
      v3 = atomic_load(*(a1 + 8));
    }

    while ((v3 & 1) == 0);
  }
}

uint64_t std::__function::__func<llvm::LogicalResult mlir::failableParallelForEach<mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0>(mlir::MLIRContext *,mlir::CallGraphNode **,mlir::CallGraphNode **,mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&)::{lambda(void)#1},std::allocator<mlir::Inliner::Impl::optimizeSCCAsync(llvm::MutableArrayRef<mlir::CallGraphNode *>,mlir::MLIRContext *)::$_0 &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir23failableParallelForEachIPPNS_13CallGraphNodeEZNS_7Inliner4Impl16optimizeSCCAsyncEN4llvm15MutableArrayRefIS2_EEPNS_11MLIRContextEE3$_0EENS6_13LogicalResultESA_T_SD_OT0_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir23failableParallelForEachIPPNS_13CallGraphNodeEZNS_7Inliner4Impl16optimizeSCCAsyncEN4llvm15MutableArrayRefIS2_EEPNS_11MLIRContextEE3$_0EENS6_13LogicalResultESA_T_SD_OT0_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir23failableParallelForEachIPPNS_13CallGraphNodeEZNS_7Inliner4Impl16optimizeSCCAsyncEN4llvm15MutableArrayRefIS2_EEPNS_11MLIRContextEE3$_0EENS6_13LogicalResultESA_T_SD_OT0_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir23failableParallelForEachIPPNS_13CallGraphNodeEZNS_7Inliner4Impl16optimizeSCCAsyncEN4llvm15MutableArrayRefIS2_EEPNS_11MLIRContextEE3$_0EENS6_13LogicalResultESA_T_SD_OT0_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *llvm::StringMap<mlir::OpPassManager,llvm::MallocAllocator>::try_emplace_with_hash<mlir::OpPassManager>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, uint64_t *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  mlir::OpPassManager::OpPassManager(buffer + 1, a5);
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(anonymous namespace::CallGraphSCC &)>::callback_fn<mlir::Inliner::doInlining(void)::$_0>(uint64_t a1, uint64_t a2)
{
  v95[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v86 = *a1;
  v4 = *(a1 + 16);
  v85 = **(a1 + 24);
  v87 = *(v3 + 424);
  v5 = *a2;
  v6 = *(a2 + 8);
  v88 = v90;
  *v89 = 0x400000000;
  if (v5 == v6)
  {
LABEL_19:
    v92 = 0;
    v91 = 0u;
    v93 = v95;
    v94 = 0x100000000;
    if (v5 == v6)
    {
LABEL_20:
      v88 = v90;
      *v89 = 0x800000000;
      if (*(v3 + 160))
      {
        operator new();
      }

      if (!v94)
      {
LABEL_152:
        *(v3 + 160) = 0;
        if (v88 != v90)
        {
          free(v88);
        }

        if (v93 != v95)
        {
          free(v93);
        }

        llvm::deallocate_buffer(v91, (8 * v92));
      }

      v25 = v93;
      v26 = &v93[8 * v94];
LABEL_53:
      v27 = *v25;
      v29 = *a2;
      v28 = *(a2 + 8);
      if (*a2 != v28)
      {
        while (*v29 != v27)
        {
          if (++v29 == v28)
          {
            goto LABEL_67;
          }
        }
      }

      if (v29 == v28)
      {
        goto LABEL_67;
      }

      v30 = v28 - (v29 + 1);
      if (v28 != v29 + 1)
      {
        v31 = *v25;
        memmove(v29, v29 + 1, v28 - (v29 + 1));
        v27 = v31;
      }

      *(a2 + 8) = v29 + v30;
      v32 = *(a2 + 24);
      v34 = &v32[1];
      v33 = v32[1];
      v35 = v32[3].u32[0];
      v36 = v27 >> 4;
      if (!v35)
      {
        goto LABEL_115;
      }

      v37 = v35 - 1;
      v38 = (v35 - 1) & (v36 ^ (v27 >> 9));
      v39 = &v33[2 * v38];
      v40 = *v39;
      if (v27 == *v39)
      {
        v41 = *(v39 + 2);
        v42 = *v33;
        if (*v33)
        {
          goto LABEL_80;
        }

        goto LABEL_63;
      }

      v57 = 0;
      v58 = 1;
      while (v40 != -4096)
      {
        if (v57)
        {
          v59 = 0;
        }

        else
        {
          v59 = v40 == -8192;
        }

        if (v59)
        {
          v57 = v39;
        }

        v60 = v38 + v58++;
        v38 = v60 & v37;
        v39 = &v33[2 * v38];
        v40 = *v39;
        if (v27 == *v39)
        {
          v41 = *(v39 + 2);
LABEL_79:
          v37 = v35 - 1;
          v42 = *v33;
          if (*v33)
          {
LABEL_80:
            v52 = 0;
            v53 = 0;
            v54 = 1;
            v43 = v33;
            while (v42 != -4096)
            {
              if (v53)
              {
                v55 = 0;
              }

              else
              {
                v55 = v42 == -8192;
              }

              if (v55)
              {
                v53 = v43;
              }

              v56 = v52 + v54++;
              v52 = v56 & v37;
              v43 = &v33[2 * (v56 & v37)];
              v42 = *v43;
              if (!*v43)
              {
                goto LABEL_64;
              }
            }

            if (v53)
            {
              v43 = v53;
            }

            goto LABEL_102;
          }

LABEL_63:
          v43 = v33;
LABEL_64:
          *(v43 + 2) = v41;
          v44 = v32[3].i32[0];
          if (v44)
          {
            v45 = v44 - 1;
            v46 = (v44 - 1) & (v36 ^ (v27 >> 9));
            v47 = v33[2 * v46];
            if (v27 == v47)
            {
LABEL_66:
              v33[2 * v46] = -8192;
              v32[2] = vadd_s32(v32[2], 0x1FFFFFFFFLL);
            }

            else
            {
              v62 = 1;
              while (v47 != -4096)
              {
                v63 = v46 + v62++;
                v46 = v63 & v45;
                v47 = v33[2 * v46];
                if (v27 == v47)
                {
                  goto LABEL_66;
                }
              }
            }
          }

LABEL_67:
          v48 = *(v3 + 56);
          if (*(v3 + 64) != v48)
          {
            goto LABEL_51;
          }

          v49 = *(v3 + 76);
          if (!v49)
          {
LABEL_72:
            if (v49 < *(v3 + 72))
            {
              *(v3 + 76) = v49 + 1;
              *(v48 + 8 * v49) = v27;
              goto LABEL_52;
            }

LABEL_51:
            llvm::SmallPtrSetImplBase::insert_imp_big((v3 + 56), v27);
            goto LABEL_52;
          }

          v50 = 8 * v49;
          v51 = *(v3 + 56);
          while (*v51 != v27)
          {
            ++v51;
            v50 -= 8;
            if (!v50)
            {
              goto LABEL_72;
            }
          }

LABEL_52:
          if (++v25 == v26)
          {
            goto LABEL_152;
          }

          goto LABEL_53;
        }
      }

      v64 = v57 ? v57 : v39;
      v65 = v32[2].i32[0];
      if (4 * v65 + 4 < 3 * v35)
      {
        if (v35 + ~v65 - v32[2].i32[1] > v35 >> 3)
        {
          v32[2].i32[0] = v65 + 1;
          if (*v64 == -4096)
          {
LABEL_78:
            v41 = 0;
            *v64 = v27;
            *(v64 + 2) = 0;
            v35 = v32[3].u32[0];
            if (v35)
            {
              goto LABEL_79;
            }

            v43 = 0;
LABEL_102:
            v61 = v32[2].i32[0];
            if (4 * v61 + 4 >= 3 * v35)
            {
              v35 *= 2;
            }

            else if (v35 + ~v61 - v32[2].i32[1] > v35 >> 3)
            {
              v32[2].i32[0] = v61 + 1;
              if (*v43 == -4096)
              {
LABEL_106:
                *v43 = 0;
                *(v43 + 2) = 0;
                goto LABEL_64;
              }

LABEL_105:
              --v32[2].i32[1];
              goto LABEL_106;
            }

            v75 = v27;
            llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(v34, v35);
            v33 = v32[1];
            v76 = v32[3].i32[0];
            if (v76)
            {
              v77 = *v33;
              v43 = v32[1];
              if (*v33)
              {
                v78 = 0;
                v79 = 0;
                v80 = v76 - 1;
                v81 = 1;
                v43 = v32[1];
                while (v77 != -4096)
                {
                  if (v79)
                  {
                    v82 = 0;
                  }

                  else
                  {
                    v82 = v77 == -8192;
                  }

                  if (v82)
                  {
                    v79 = v43;
                  }

                  v83 = v78 + v81++;
                  v78 = v83 & v80;
                  v43 = &v33[2 * (v83 & v80)];
                  v77 = *v43;
                  if (!*v43)
                  {
                    goto LABEL_144;
                  }
                }

                if (v79)
                {
                  v43 = v79;
                }
              }
            }

            else
            {
              v43 = 0;
            }

LABEL_144:
            v27 = v75;
            ++v32[2].i32[0];
            if (*v43 == -4096)
            {
              goto LABEL_106;
            }

            goto LABEL_105;
          }

LABEL_77:
          --v32[2].i32[1];
          goto LABEL_78;
        }
      }

      else
      {
LABEL_115:
        v35 *= 2;
      }

      v66 = v27;
      llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::grow(v34, v35);
      v33 = v32[1];
      v67 = v32[3].i32[0];
      if (v67)
      {
        v27 = v66;
        v68 = v67 - 1;
        v69 = v68 & (v36 ^ (v66 >> 9));
        v64 = &v33[2 * v69];
        v70 = *v64;
        if (v66 == *v64)
        {
          goto LABEL_129;
        }

        v71 = 0;
        v72 = 1;
        while (v70 != -4096)
        {
          if (v71)
          {
            v73 = 0;
          }

          else
          {
            v73 = v70 == -8192;
          }

          if (v73)
          {
            v71 = v64;
          }

          v74 = v69 + v72++;
          v69 = v74 & v68;
          v64 = &v33[2 * (v74 & v68)];
          v70 = *v64;
          v27 = v66;
          if (v66 == *v64)
          {
            goto LABEL_129;
          }
        }

        if (v71)
        {
          v64 = v71;
        }
      }

      else
      {
        v64 = 0;
      }

      v27 = v66;
LABEL_129:
      ++v32[2].i32[0];
      if (*v64 == -4096)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    while (1)
    {
      v88 = *v5;
      if (mlir::CallGraphNode::isExternal(v88))
      {
        goto LABEL_23;
      }

      v12 = v88;
      v13 = *(mlir::CallGraphNode::getCallableRegion(v88) + 16);
      if (!mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(v13))
      {
LABEL_35:
        if (mlir::isMemoryEffectFree(v13, v14))
        {
          v20 = *(v13 + 36);
          if (v20)
          {
            v21 = v13 - 16;
          }

          else
          {
            v21 = 0;
          }

          if (!v20)
          {
            goto LABEL_43;
          }

          v22 = 0;
          while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v22))
          {
            if (v20 == ++v22)
            {
              goto LABEL_43;
            }
          }
        }

        goto LABEL_22;
      }

      if (*(v13 + 47) && (InherentAttr = mlir::Operation::getInherentAttr(v13, "sym_name", 8), (v14 & 1) != 0))
      {
        if (!InherentAttr)
        {
          goto LABEL_35;
        }
      }

      else if ((mlir::DictionaryAttr::contains(v13 + 56, "sym_name", 8uLL) & 1) == 0)
      {
        goto LABEL_35;
      }

      v16 = v4[4];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = *v4;
      v18 = (v16 - 1) & ((v12 >> 4) ^ (v12 >> 9));
      v19 = *(*v4 + 16 * v18);
      if (v19 != v12)
      {
        v23 = 1;
        while (v19 != -4096)
        {
          v24 = v18 + v23++;
          v18 = v24 & (v16 - 1);
          v19 = *(v17 + 16 * v18);
          if (v19 == v12)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_22;
      }

LABEL_31:
      if (v18 == v16 || *(v17 + 16 * v18 + 8))
      {
LABEL_22:
        CallableRegion = mlir::CallGraphNode::getCallableRegion(v88);
        collectCallOps(*(CallableRegion + 8), CallableRegion, v88, v87, *(v3 + 432), v3 + 152, 0);
LABEL_23:
        if (++v5 == v6)
        {
          goto LABEL_20;
        }
      }

      else
      {
LABEL_43:
        llvm::SetVector<mlir::CallGraphNode *,llvm::SmallVector<mlir::CallGraphNode *,1u>,llvm::DenseSet<mlir::CallGraphNode *,llvm::DenseMapInfo<mlir::CallGraphNode *,void>>,1u>::insert(&v91, &v88);
        if (++v5 == v6)
        {
          goto LABEL_20;
        }
      }
    }
  }

  do
  {
    v7 = *v5;
    if (!mlir::CallGraphNode::isExternal(*v5) && !mlir::CallGraphNode::hasChildren(v7))
    {
      v8 = *(mlir::CallGraphNode::getCallableRegion(v7) + 16);
      {
      }

      if ((*(**(v8 + 48) + 32))(*(v8 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        if (v89[0] >= v89[1])
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v88 + v89[0]++) = v7;
      }
    }

    ++v5;
  }

  while (v5 != v6);
  v9 = v88;
  if (!v89[0])
  {
    v10 = 0;
    if (v88 == v90)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v9 = v88;
  if (mlir::Inliner::Impl::optimizeSCCAsync(v86, v88, v89[0], v85))
  {
  }

  v10 = 1;
  if (v88 != v90)
  {
LABEL_16:
    free(v9);
  }

LABEL_17:
  if ((v10 & 1) == 0)
  {
    v87 = *(v3 + 424);
    v5 = *a2;
    v6 = *(a2 + 8);
    goto LABEL_19;
  }

  return 0;
}