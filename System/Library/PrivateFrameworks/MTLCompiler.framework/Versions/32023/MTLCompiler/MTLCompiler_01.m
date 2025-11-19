void llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::DFSVisitOne(int *a1, uint64_t a2)
{
  v19 = a2;
  v3 = *a1 + 1;
  *a1 = v3;
  *(llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::FindAndConstruct(a1 + 1, &v19) + 2) = v3;
  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100]((a1 + 8), &v19);
  v4 = *(v19 + 16);
  v5 = *a1;
  v6 = *(a1 + 11);
  v7 = *(a1 + 12);
  if (v6 >= v7)
  {
    v9 = *(a1 + 10);
    v10 = (v6 - v9) >> 5;
    v11 = v10 + 1;
    if ((v10 + 1) >> 59)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v9;
    if (v12 >> 4 > v11)
    {
      v11 = v12 >> 4;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v13 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::StackElement>>((a1 + 20), v13);
    }

    v14 = 32 * v10;
    *v14 = v19;
    *(v14 + 8) = v4;
    *(v14 + 16) = llvm::GraphTraits<llvm::CallGraphNode *>::CGNGetValue;
    *(v14 + 24) = v5;
    v8 = 32 * v10 + 32;
    v15 = *(a1 + 10);
    v16 = *(a1 + 11) - v15;
    v17 = (32 * v10 - v16);
    memcpy(v17, v15, v16);
    v18 = *(a1 + 10);
    *(a1 + 10) = v17;
    *(a1 + 11) = v8;
    *(a1 + 12) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = v19;
    *(v6 + 8) = v4;
    *(v6 + 16) = llvm::GraphTraits<llvm::CallGraphNode *>::CGNGetValue;
    *(v6 + 24) = v5;
    v8 = v6 + 32;
  }

  *(a1 + 11) = v8;
}

uint64_t *llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::GetNextSCC(uint64_t *result)
{
  v1 = (result + 7);
  result[8] = result[7];
  if (result[10] != result[11])
  {
    v2 = result;
    while (1)
    {
      llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::DFSVisitChildren(v2);
      v4 = v2[10];
      v3 = v2[11];
      v6 = *(v3 - 32);
      v5 = *(v3 - 8);
      v2[11] = v3 - 32;
      if (v4 != v3 - 32 && *(v3 - 40) > v5)
      {
        *(v3 - 40) = v5;
      }

      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::FindAndConstruct(v2 + 1, &v6);
      if (v5 == *(result + 2))
      {
        break;
      }

      if (v2[10] == v2[11])
      {
        return result;
      }
    }

    do
    {
      std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v1, (v2[5] - 8));
      v2[5] -= 8;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::FindAndConstruct(v2 + 1, (v2[8] - 8));
      *(result + 2) = -1;
    }

    while (*(v2[8] - 8) != v6);
  }

  return result;
}

void std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::InsertIntoBucketImpl<llvm::CallGraphNode *>(a1, a2, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(uint64_t *a1, void *a2, void *a3)
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::InsertIntoBucketImpl<llvm::CallGraphNode *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x259C6A8D0](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    return llvm::deallocate_buffer(v4, (16 * v3));
  }

  else
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
      v16 = (result + 16);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_257A6D000)));
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
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_257A6D000)));
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
      v15 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(v5, a2, &v15);
      v14 = v15;
      *v15 = *a2;
      *(v14 + 2) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::StackElement>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::DFSVisitChildren(uint64_t a1)
{
  v1 = *(a1 + 88);
  for (i = *(v1 - 24); i != *(*(v1 - 32) + 24); i = *(v1 - 24))
  {
    v4 = *(v1 - 16);
    *(v1 - 24) = i + 40;
    v7[0] = i;
    v7[1] = v4;
    v5 = llvm::mapped_iterator<std::__wrap_iter<std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *> *>,llvm::CallGraphNode * (*)(std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *>),llvm::CallGraphNode *>::operator*(v7);
    v8 = v5;
    v7[0] = 0;
    if (!llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>((a1 + 8), &v8, v7) || v7[0] == *(a1 + 8) + 16 * *(a1 + 24))
    {
      llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::DFSVisitOne(a1, v5);
      v1 = *(a1 + 88);
    }

    else
    {
      v6 = *(v7[0] + 8);
      v1 = *(a1 + 88);
      if (*(v1 - 8) > v6)
      {
        *(v1 - 8) = v6;
      }
    }
  }
}

uint64_t llvm::mapped_iterator<std::__wrap_iter<std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *> *>,llvm::CallGraphNode * (*)(std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *>),llvm::CallGraphNode *>::operator*(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::OptionalStorage(v5, *a1);
  v6 = *(v1 + 32);
  v3 = v2(v5);
  if (v5[24] == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(v5);
  }

  return v3;
}

void sub_2579C2390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(&a10);
  }

  _Unwind_Resume(exception_object);
}

llvm::ValueHandleBase *llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::OptionalStorage(llvm::ValueHandleBase *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::emplace<llvm::WeakTrackingVH const&>(a1, a2);
  }

  return a1;
}

void sub_2579C23F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(v1);
    *(v1 + 24) = 0;
  }

  _Unwind_Resume(exception_object);
}

llvm::ValueHandleBase *llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::emplace<llvm::WeakTrackingVH const&>(llvm::ValueHandleBase *a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    llvm::ValueHandleBase::~ValueHandleBase(a1);
    *(a1 + 24) = 0;
  }

  result = llvm::ValueHandleBase::ValueHandleBase(a1, 3u, a2);
  *(result + 24) = 1;
  return result;
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v9 = llvm::User::operator new(0x40);
  MEMORY[0x259C6A280](v9, this, a2, a3, a4);
  return v9;
}

uint64_t llvm::IRBuilderBase::CreatePHI(unsigned int **this, llvm::Type *a2, llvm::Type *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v11 = 257;
  v7 = llvm::PHINode::Create(a2, a3, v10, 0, a5);
  if (llvm::FPMathOperator::classof(v7))
  {
    v8 = *(this + 24);
    llvm::IRBuilderBase::setFPAttrs(this, v7, 0);
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
}

_DWORD *llvm::PHINode::addIncoming(_DWORD *this, llvm::Value *a2, llvm::BasicBlock *a3)
{
  v5 = this;
  v6 = this[5];
  if ((v6 & 0x7FFFFFF) == this[15])
  {
    this = llvm::PHINode::growOperands(this);
    v6 = v5[5];
  }

  v7 = (v6 + 1) & 0x7FFFFFF;
  v5[5] = v6 & 0xF8000000 | (v6 + 1) & 0x7FFFFFF;
  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(v5 - 1);
  }

  else
  {
    v8 = &v5[-8 * v7];
  }

  v9 = &v8[8 * (v7 - 1)];
  if (*v9)
  {
    v10 = *(v9 + 1);
    **(v9 + 2) = v10;
    if (v10)
    {
      *(v10 + 16) = *(v9 + 2);
    }
  }

  *v9 = a2;
  if (a2)
  {
    v13 = *(a2 + 1);
    v12 = (a2 + 8);
    v11 = v13;
    *(v9 + 1) = v13;
    if (v13)
    {
      *(v11 + 16) = v9 + 2;
    }

    *(v9 + 2) = v12;
    *v12 = v9;
  }

  v14 = v5[5];
  v15 = v14 & 0x7FFFFFF;
  if ((v14 & 0x40000000) != 0)
  {
    v16 = *(v5 - 1);
  }

  else
  {
    v16 = &v5[-8 * v15];
  }

  *&v16[8 * v5[15] + 2 * (v15 - 1)] = a3;
  return this;
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::Instruction *a3)
{
  v3 = llvm::User::operator new(0x40);
  llvm::BranchInst::BranchInst();
  return v3;
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *&>(uint64_t a1, llvm::BasicBlock **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

llvm::PHINode *llvm::PHINode::Create(llvm::PHINode *this, llvm::Type *a2, const llvm::Twine *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v7 = a2;
  v9 = llvm::User::operator new(0x40);
  llvm::PHINode::PHINode(v9, this, v7, a3, a4);
  return v9;
}

llvm::PHINode *llvm::PHINode::PHINode(llvm::PHINode *this, llvm::Type *a2, int a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  *(llvm::Instruction::Instruction() + 60) = a3;
  llvm::Value::setName();
  v6 = *(this + 15);
  llvm::User::allocHungoffUses(this);
  return this;
}

void MTLForceInlinerPass::~MTLForceInlinerPass(MTLForceInlinerPass *this)
{
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLForceInlinerPass::runOnModule(MTLForceInlinerPass *this, llvm::Module *a2)
{
  v132[4] = *MEMORY[0x277D85DE8];
  if ((*(*(this + 4) + 20) & 0x10) == 0)
  {
    result = 0;
    goto LABEL_173;
  }

  MTLBoundsCheck::getMetalMetadata(a2, v83);
  result = v85;
  if (v85 != 1)
  {
    goto LABEL_173;
  }

  v69 = v85;
  v5 = v84;
  v7 = *(this + 4);
  v6 = *(this + 5);
  MEMORY[0x259C6B090](v107, a2);
  v71 = v6;
  v72 = a2;
  v70 = v5;
  v130 = v132;
  v131 = 0x400000000;
  llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::scc_iterator(&v99, v108);
  v98 = 0;
  v96 = 0u;
  *__p = 0u;
  *v94 = 0u;
  *v95 = 0u;
  memset(v93, 0, sizeof(v93));
  v73 = v7;
LABEL_5:
  if (llvm::iterator_facade_base<llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>,std::forward_iterator_tag,std::vector<llvm::CallGraphNode *> const,long,std::vector<llvm::CallGraphNode *> const*,std::vector<llvm::CallGraphNode *> const&>::operator!=(&v99, v93))
  {
    v9 = v103;
    v8 = v104;
    for (i = v104; ; v8 = i)
    {
      if (v9 == v8)
      {
        llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::GetNextSCC(&v99);
        goto LABEL_5;
      }

      v10 = *v9;
      if (*v9 != v108)
      {
        break;
      }

LABEL_150:
      ++v9;
    }

    v79 = v9;
    v11 = v10[1];
    v92 = v11;
    if (v11 && (llvm::GlobalValue::isDeclaration(v11) & 1) == 0 && (*(v92 + 8) & 0xE) != 4)
    {
      Name = llvm::Value::getName(v92);
      if (v13 >= 0x10)
      {
        if (*Name == 0x61725F7269615F5FLL && Name[1] == 0x676E696361727479)
        {
          goto LABEL_149;
        }

        if (v13 >= 0x17)
        {
          if (*Name == 0x697265776F6C5F5FLL && Name[1] == 0x6E692E62696C676ELL && *(Name + 15) == 0x2E6C616E7265746ELL)
          {
            goto LABEL_149;
          }
        }

        else if (v13 == 16 && *Name == 0x5F7465672E6C746DLL && Name[1] == 0x64695F6567616D69)
        {
          goto LABEL_149;
        }
      }

      if (!v7 || (*(v7 + 22) & 4) == 0)
      {
LABEL_15:
        if (v71)
        {
          ++*(v71 + 100);
        }

        v15 = v10[2];
        v14 = v10[3];
        v74 = v14;
        if (v15 != v14)
        {
          while (1)
          {
            llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::OptionalStorage(v88, v15);
            v91 = *(v15 + 32);
            v118[4] = 0u;
            v120 = 0;
            v121 = 0;
            v119 = 0;
            v122 = v124;
            v123 = 0x400000000;
            v125[0] = &v126;
            v125[1] = 0x800000000;
            v127 = v129;
            v128 = 0x800000000;
            v129[64] = 1;
            v16 = *(v89 - 32);
            if (!v16)
            {
              break;
            }

            if (*(v16 + 16))
            {
              break;
            }

            if (*(v16 + 24) != *(v89 + 72))
            {
              break;
            }

            v17 = llvm::Value::getName(v16);
            if (v18 < 0x10)
            {
              break;
            }

            if (*v17 != 0x61725F7269615F5FLL || v17[1] != 0x676E696361727479)
            {
              if (v18 >= 0x17)
              {
                if (*v17 != 0x697265776F6C5F5FLL || v17[1] != 0x6E692E62696C676ELL || *(v17 + 15) != 0x2E6C616E7265746ELL)
                {
                  break;
                }
              }

              else
              {
                if (v18 != 16)
                {
                  break;
                }

                if (*v17 != 0x5F7465672E6C746DLL || v17[1] != 0x64695F6567616D69)
                {
                  break;
                }
              }
            }

LABEL_92:
            if (v127 != v129)
            {
              free(v127);
            }

            llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(v125);
            if (v122 != v124)
            {
              free(v122);
            }

            if (v90 == 1)
            {
              llvm::ValueHandleBase::~ValueHandleBase(v88);
            }

            v15 += 40;
            if (v15 == v14)
            {
              goto LABEL_121;
            }
          }

          llvm::InlineFunction();
          if ((*(v7 + 22) & 8) != 0)
          {
            v116 = v118;
            v117 = 0x800000000;
            v113 = v115;
            v114 = 0x800000000;
            if (v123)
            {
              v75 = v15;
              v19 = v122;
              v20 = (v122 + 8 * v123);
              do
              {
                v21 = **(**v19 + 16);
                if (*(v21 + 8) == 17)
                {
                  v22 = **(v21 + 16);
                  if (*(v22 + 8) == 15 && MTLBoundsCheck::checkAddressSpace((*(v22 + 8) >> 8)))
                  {
                    v81 = **(v22 + 16);
                    if (*(v81 + 8) == 16)
                    {
                      if (*(v81 + 3))
                      {
                        v23 = llvm::StructType::getName(v81);
                        if (v24 >= 0x10)
                        {
                          v25 = *v23 == 0x5F2E746375727473 && *(v23 + 8) == 0x5F65727574786574;
                          if (v25 || v24 != 16 && (*v23 == 0x5F2E746375727473 ? (v26 = *(v23 + 8) == 0x5F72656C706D6173) : (v26 = 0), v26 ? (v27 = *(v23 + 16) == 116) : (v27 = 0), v27))
                          {
                            Int8PtrTy = llvm::Type::getInt8PtrTy(*v72, 0);
                            LODWORD(v117) = 0;
                            llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v116, v116, *(*v19 + 1), 0);
                            if (v117)
                            {
                              v29 = v116;
                              v80 = v116 + 8 * v117;
                              do
                              {
                                v82 = *v29;
                                if (*v29)
                                {
                                  if (*(v82 + 16) == 77 && *v82 == Int8PtrTy)
                                  {
                                    LODWORD(v114) = 0;
                                    llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v113, v113, *(v82 + 8), 0);
                                    if (v114)
                                    {
                                      v30 = v113;
                                      v31 = v113 + 8 * v114;
                                      do
                                      {
                                        v32 = *v30;
                                        if (*v30 && *(v32 + 16) == 84)
                                        {
                                          v33 = *(v32 - 32);
                                          if (!v33 || *(v33 + 16) || *(v33 + 24) != *(v32 + 72))
                                          {
                                            v33 = 0;
                                          }

                                          v34 = llvm::Value::getName(v33);
                                          if (v35 >= 0xC && *v34 == 0x6D656D2E6D766C6CLL && *(v34 + 8) == 779710563)
                                          {
                                            v37 = (v32 - 32 * (*(v32 + 20) & 0x7FFFFFF));
                                            v38 = *v37;
                                            v39 = v37[4];
                                            if (*(v39 + 16) != 77)
                                            {
                                              v39 = 0;
                                            }

                                            v40 = v37[8];
                                            if (*(v40 + 16) == 16)
                                            {
                                              v41 = v40;
                                            }

                                            else
                                            {
                                              v41 = 0;
                                            }

                                            if (v39)
                                            {
                                              v42 = v41 == 0;
                                            }

                                            else
                                            {
                                              v42 = 1;
                                            }

                                            v43 = !v42 && v38 == v82;
                                            if (v43 && *v39 == Int8PtrTy && **(v39 - 32) == **v19)
                                            {
                                              v77 = *(v39 - 32);
                                              llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v109, v32, 0, 0, 0);
                                              v44 = (v41 + 24);
                                              if (*(v41 + 32) >= 0x41u)
                                              {
                                                v44 = *v44;
                                              }

                                              v45 = *v44;
                                              if (v45 >= 8)
                                              {
                                                v46 = 0;
                                                v76 = v45 >> 3;
                                                do
                                                {
                                                  v87 = 257;
                                                  ConstGEP2_32 = llvm::IRBuilderBase::CreateConstGEP2_32(v109, v81, v77, 0, v46, v86);
                                                  v48 = *v19;
                                                  v87 = 257;
                                                  v49 = llvm::IRBuilderBase::CreateConstGEP2_32(v109, v81, v48, 0, v46, v86);
                                                  v50 = **(*ConstGEP2_32 + 16);
                                                  v87 = 257;
                                                  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v109, v50, ConstGEP2_32, 0, 0, v86);
                                                  llvm::IRBuilderBase::CreateAlignedStore(v109, AlignedLoad, v49, 0);
                                                  ++v46;
                                                }

                                                while (v76 != v46);
                                              }

                                              llvm::Instruction::eraseFromParent(v32);
                                              llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v112);
                                              llvm::IRBuilderFolder::~IRBuilderFolder(&v111);
                                              if (v109[0] != &v110)
                                              {
                                                free(v109[0]);
                                              }
                                            }
                                          }
                                        }

                                        v30 += 8;
                                      }

                                      while (v30 != v31);
                                    }
                                  }
                                }

                                v29 += 8;
                              }

                              while (v29 != v80);
                            }
                          }
                        }
                      }
                    }
                  }
                }

                ++v19;
              }

              while (v19 != v20);
              v7 = v73;
              v14 = v74;
              v15 = v75;
              if (v113 != v115)
              {
                free(v113);
              }
            }

            if (v116 != v118)
            {
              free(v116);
            }
          }

          goto LABEL_92;
        }

LABEL_121:
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v130, &v92);
        goto LABEL_149;
      }

      v58 = *(v92 + 3);
      v59 = *(v58 + 12);
      if (v59 != 1)
      {
        v60 = *(v58 + 16) + 8;
        v61 = 8 * v59 - 8;
        do
        {
          if (*(*v60 + 8) == 15)
          {
            v62 = **(*v60 + 16);
            if (*(v62 + 8) != 16 || !isSpecialStructType(v62))
            {
              goto LABEL_15;
            }
          }

          v60 += 8;
          v61 -= 8;
        }

        while (v61);
      }
    }

LABEL_149:
    v9 = v79;
    goto LABEL_150;
  }

  llvm::GlobalValue::setLinkage(*(*(v70 - 8 * *(v70 + 8)) + 128), 0);
  if (v131)
  {
    v65 = v130;
    v66 = 8 * v131;
    do
    {
      v67 = *v65;
      if ((llvm::Value::hasNUsesOrMore(*v65) & 1) == 0 && (*(v67 + 32) & 0xF) != 0)
      {
        llvm::Function::dropAllReferences(v67);
        llvm::Function::eraseFromParent(v67);
      }

      ++v65;
      v66 -= 8;
    }

    while (v66);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v95[1])
  {
    *&v96 = v95[1];
    operator delete(v95[1]);
  }

  if (v94[0])
  {
    v94[1] = v94[0];
    operator delete(v94[0]);
  }

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(v93 + 8);
  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(&v100);
  if (v130 != v132)
  {
    free(v130);
  }

  MEMORY[0x259C6B0A0](v107);
  result = v69;
LABEL_173:
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579C32D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    a56 = __p;
    operator delete(__p);
  }

  if (a52)
  {
    a53 = a52;
    operator delete(a52);
  }

  if (a49)
  {
    a50 = a49;
    operator delete(a49);
  }

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(&a46);
  if (a68)
  {
    a69 = a68;
    operator delete(a68);
  }

  if (a65)
  {
    a66 = a65;
    operator delete(a65);
  }

  if (a62)
  {
    a63 = a62;
    operator delete(a62);
  }

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(&a59);
  v73 = *(v71 - 160);
  if (v73 != a11)
  {
    free(v73);
  }

  MEMORY[0x259C6B0A0](&a71);
  _Unwind_Resume(a1);
}

char *llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 8);
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, a3, a4);
    return (*a1 + v8);
  }

  else
  {
    if (a3 == a4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v12 = a3;
      do
      {
        ++v10;
        v12 = *(v12 + 8);
      }

      while (v12 != a4);
    }

    if (v10 + v9 > *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = (v7 + v8);
    v13 = 8 * v9;
    v14 = (v7 + 8 * v9);
    v15 = 8 * v9 - v8;
    v16 = v15 >> 3;
    if (v15 >> 3 >= v10)
    {
      llvm::SmallVectorImpl<llvm::User *>::append<std::move_iterator<llvm::User **>,void>(a1, &v14[-v10], (v7 + 8 * v9));
      if (&v14[-v10] != v11)
      {
        memmove(&v11[8 * v10], v11, &v14[-v10] - v11);
      }

      if (v5 != a4)
      {
        v19 = v11;
        do
        {
          *v19++ = *(v5 + 24);
          v5 = *(v5 + 8);
        }

        while (v5 != a4);
      }
    }

    else
    {
      v17 = v9 + v10;
      *(a1 + 8) = v17;
      if (v13 != v8)
      {
        memcpy((v7 + 8 * v17 - 8 * v16), v11, v15);
        v18 = v11;
        do
        {
          *v18++ = *(v5 + 24);
          v5 = *(v5 + 8);
          --v16;
        }

        while (v16);
      }

      while (v5 != a4)
      {
        *v14++ = *(v5 + 24);
        v5 = *(v5 + 8);
      }
    }
  }

  return v11;
}

uint64_t llvm::IRBuilderBase::CreateConstGEP2_32(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unsigned int a4, unsigned int a5, const llvm::Twine *a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  llvm::Type::getInt32Ty(this[8], a2);
  v14[0] = llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(this[8], v10);
  v14[1] = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, v14, 2, 0);
  if (!result)
  {
    v12 = llvm::GetElementPtrInst::Create(a2, a3, v14, 2);
    result = llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v12, a6);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::GlobalValue::setLinkage(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 32);
  if ((a2 - 7) < 2)
  {
    v3 &= 0xFFFFFFCF;
  }

  v4 = v3 & 0xFFFFFFF0 | a2 & 0xF;
  *(this + 32) = v4;
  if ((a2 & 0xFu) - 7 < 2)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x30) != 0)
  {
    this = llvm::GlobalValue::hasExternalWeakLinkage(this);
    if ((this & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_7:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return this;
}

char **llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      llvm::ValueHandleBase::~ValueHandleBase(v5);
      v5 = (v6 - 24);
      v4 += 24;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::User *>::append<std::move_iterator<llvm::User **>,void>(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 3) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3 != a2)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 8;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 3);
  return result;
}

uint64_t llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(uint64_t a1, llvm::Value *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Context = llvm::Value::getContext(this);
  *a1 = a1 + 16;
  *(a1 + 8) = 0x200000000;
  *(a1 + 64) = Context;
  *(a1 + 72) = a1 + 120;
  *(a1 + 80) = a1 + 128;
  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  *(a1 + 100) = 512;
  *(a1 + 102) = 7;
  *(a1 + 104) = a4;
  *(a1 + 112) = a5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 120) = MEMORY[0x277D821C8] + 16;
  *(a1 + 128) = MEMORY[0x277D82210] + 16;
  llvm::IRBuilderBase::SetInsertPoint(a1, this);
  return a1;
}

void sub_2579C3920(_Unwind_Exception *a1)
{
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v3);
  llvm::IRBuilderFolder::~IRBuilderFolder(v2);
  if (*v1 != v4)
  {
    free(*v1);
  }

  _Unwind_Resume(a1);
}

void MTLHoistStaticAllocasPass::~MTLHoistStaticAllocasPass(MTLHoistStaticAllocasPass *this)
{
  *this = &unk_2868EB908;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLHoistStaticAllocasPass::runOnModule(MTLHoistStaticAllocasPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  v4 = a2 + 24;
  v5 = *(a2 + 4);
  if (v5 == v4)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (v5)
      {
        v7 = (v5 - 56);
      }

      else
      {
        v7 = 0;
      }

      v6 |= MTLHoistStaticAllocasPass::runOnFunction(this, v7);
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }

  return v6 & 1;
}

BOOL MTLHoistStaticAllocasPass::runOnFunction(MTLHoistStaticAllocasPass *this, llvm::Function *a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 10);
  if (v2 == (a2 + 72))
  {
    v15 = 0;
    goto LABEL_40;
  }

  v18 = v20;
  v19 = 0x400000000;
  if (v2)
  {
    v3 = (v2 - 24);
  }

  else
  {
    v3 = 0;
  }

  FirstNonPHIOrDbgOrLifetime = llvm::BasicBlock::getFirstNonPHIOrDbgOrLifetime(v3);
  if (!FirstNonPHIOrDbgOrLifetime)
  {
    goto LABEL_36;
  }

  v5 = v3 + 40;
  for (i = FirstNonPHIOrDbgOrLifetime + 24; i != v5; i = *(i + 8))
  {
    if (i)
    {
      v7 = i - 24;
    }

    else
    {
      v7 = 0;
    }

    if (*(v7 + 16) == 59)
    {
      v8 = 0;
      if (!i)
      {
        continue;
      }
    }

    else
    {
      if (!llvm::isa_impl_wrap<llvm::DbgInfoIntrinsic,llvm::Instruction const,llvm::Instruction const>::doit(v7))
      {
        break;
      }

      v8 = *(v7 + 16) != 59;
      if (!i)
      {
        continue;
      }
    }

    if (!v8 && (llvm::AllocaInst::isStaticAlloca((i - 24)) & 1) == 0)
    {
      break;
    }
  }

  if (i != v5)
  {
    v9 = i;
    do
    {
      if (v9)
      {
        v10 = v9 - 24;
      }

      else
      {
        v10 = 0;
      }

      if (v9 && *(v10 + 16) == 59 && llvm::AllocaInst::isStaticAlloca((v9 - 24)))
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v18, v9 - 24);
      }

      v9 = *(v9 + 8);
    }

    while (v9 != v5);
    v11 = i ? (i - 24) : 0;
    if (v19)
    {
      v12 = v18;
      v13 = 8 * v19;
      do
      {
        v14 = *v12;
        llvm::Instruction::removeFromParent(*v12);
        llvm::Instruction::insertBefore(v14, v11);
        ++v12;
        v13 -= 8;
      }

      while (v13);
      v15 = v19 != 0;
      goto LABEL_37;
    }
  }

LABEL_36:
  v15 = 0;
LABEL_37:
  if (v18 != v20)
  {
    free(v18);
  }

LABEL_40:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_2579C3CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLVertexOutputPackingPass::vertexOutputPacking(MTLCompilerErrorObject **a1, llvm::Module *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, int a12, int a13)
{
  v93 = *MEMORY[0x277D85DE8];
  if (!MTLFrameworkPass::checkFragmentRenderTargetArrayIndex(a1, a12, a13))
  {
    v70 = 0;
    goto LABEL_100;
  }

  v79 = a3;
  v16 = a3[1] - *a3;
  v17 = (v16 >> 5);
  LODWORD(v91.__r_.__value_.__l.__data_) = 0;
  std::vector<unsigned int>::vector[abi:ne200100](v87, v17);
  v91.__r_.__value_.__r.__words[0] = "air.vertex";
  v92 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, &v91);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v75 = v16;
  v81 = *(Operand - 8 * *(Operand + 8) + 8);
  v20 = *(v81 + 8);
  v91.__r_.__value_.__s.__data_[0] = 0;
  std::vector<BOOL>::vector(&__p, v20);
  v76 = *a2;
  v84 = 0;
  v85 = 0;
  __src = 0;
  v73 = a2;
  v74 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  v72 = *(v74 + 3);
  v22 = **(v72 + 16);
  if (v20)
  {
    v23 = 0;
    while (1)
    {
      v24 = *(v81 - 8 * *(v81 + 8) + 8 * v23);
      String = llvm::MDString::getString(*(v24 - 8 * *(v24 + 8)));
      if (v26 <= 16)
      {
        if (v26 == 12)
        {
          if (!memcmp(String, "air.position", 0xCuLL))
          {
            ++a8;
            a9 += 4;
          }
        }

        else if (v26 == 14 && !memcmp(String, "air.point_size", 0xEuLL))
        {
          ++a8;
          ++a9;
        }

        goto LABEL_32;
      }

      if (v26 == 29)
      {
        break;
      }

      if (v26 != 17)
      {
        goto LABEL_32;
      }

      if (*String != 0x747265762E726961 || String[1] != 0x757074756F5F7865 || *(String + 16) != 116)
      {
        if (!memcmp(String, "air.clip_distance", 0x11uLL))
        {
          if (*(v22 + 8) == 16 && (v29 = *(*(v22 + 16) + 8 * v23)) != 0 && *(v29 + 8) == 17)
          {
            v30 = *(v29 + 32);
            v31 = (v30 + 3) >> 2;
          }

          else
          {
            LODWORD(v30) = 1;
            LODWORD(v31) = 1;
          }

          a8 += v31;
          a9 += v30;
        }

        goto LABEL_32;
      }

      LODWORD(v91.__r_.__value_.__l.__data_) = 0;
      MatchingFragmentInput = MTLFrameworkPass::findMatchingFragmentInput(a1, &v91, v22, v23, v24, v79, a5);
      if (MatchingFragmentInput == 1)
      {
        *(v87[0] + LODWORD(v91.__r_.__value_.__l.__data_)) = v23 + 1;
        goto LABEL_44;
      }

      if (MatchingFragmentInput == 2)
      {
        v70 = 0;
        goto LABEL_94;
      }

LABEL_45:
      if (v20 == ++v23)
      {
        goto LABEL_49;
      }
    }

    if (!memcmp(String, "air.render_target_array_index", 0x1DuLL))
    {
      dataTypeFromMetadata(1u, v24);
    }

LABEL_32:
    v33 = v84;
    if (v84 >= v85)
    {
      v35 = __src;
      v36 = v84 - __src;
      v37 = (v84 - __src) >> 2;
      v38 = v37 + 1;
      if ((v37 + 1) >> 62)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v39 = v85 - __src;
      if ((v85 - __src) >> 1 > v38)
      {
        v38 = v39 >> 1;
      }

      v40 = v39 >= 0x7FFFFFFFFFFFFFFCLL;
      v41 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v40)
      {
        v41 = v38;
      }

      if (v41)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v41);
      }

      v42 = (4 * v37);
      v43 = &v42[-((v84 - __src) >> 2)];
      *v42 = v23;
      v34 = (v42 + 1);
      memcpy(v43, v35, v36);
      v44 = __src;
      __src = v43;
      v84 = v34;
      v85 = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }

    else
    {
      *v84 = v23;
      v34 = v33 + 4;
    }

    v84 = v34;
LABEL_44:
    *(__p + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    goto LABEL_45;
  }

LABEL_49:
  if ((v75 & 0x1FFFFFFFE0) != 0)
  {
    v45 = 0;
    while (*(v87[0] + v45))
    {
      v45 += 4;
      if (!--v17)
      {
        goto LABEL_53;
      }
    }

    v48 = *v79 + 8 * v45;
    v49 = *(v48 + 8);
    if (v49)
    {
      v50 = *(v48 + 16);
      if (v50 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v50 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v89) = *(v48 + 16);
      if (v50)
      {
        memmove(__dst, v49, v50);
      }

      *(__dst + v50) = 0;
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v89 = 0;
    }

    MTLFrameworkPass::attribute_name(__dst, &v91);
    if (SHIBYTE(v89) < 0)
    {
      operator delete(__dst[0]);
    }

    v64 = &v91;
    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v64 = v91.__r_.__value_.__r.__words[0];
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: fragment input %s was not found in vertex shader outputs", v64);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_53:
    v46 = a10;
    if (a8 <= a10)
    {
      v46 = a11;
      if (a9 <= a11)
      {
        v51 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
        v71 = v84 - __src;
        v52 = (v84 - __src) >> 2;
        v53 = v52 - 1431655765 * ((a4[1] - *a4) >> 3);
        if (v53)
        {
          v54 = (*(v72 + 12) - 1);
          std::vector<llvm::Type *>::vector[abi:ne200100](&v82, v54);
          if (v54)
          {
            v55 = 0;
            do
            {
              *(v82 + v55) = *(*(v72 + 16) + v55 + 8);
              v55 += 8;
            }

            while (8 * v54 != v55);
          }

          v91.__r_.__value_.__r.__words[0] = &v91.__r_.__value_.__r.__words[2];
          v91.__r_.__value_.__l.__size_ = 0x1000000000;
          if (v51)
          {
            v56 = 0;
            do
            {
              v57 = *a4;
              v58 = *(v22 + 8);
              v59 = v22;
              if (v58 == 16)
              {
                v59 = *(*(v22 + 16) + 8 * (*(v87[0] + *(v57 + v56 + 6)) - 1));
                v58 = *(v59 + 8);
              }

              if ((v58 & 0xFE) == 0x12)
              {
                v59 = **(v59 + 16);
              }

              v60 = v57 + v56;
              *(v60 + 16) = v59;
              if (*(v60 + 2) >= 2uLL)
              {
                v59 = llvm::VectorType::get();
              }

              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v91, v59);
              v56 += 24;
            }

            while (24 * v51 != v56);
          }

          if (v52)
          {
            v61 = 0;
            do
            {
              v62 = v22;
              if (*(v22 + 8) == 16)
              {
                v62 = *(*(v22 + 16) + 8 * *(__src + v61));
              }

              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v91, v62);
              v61 += 4;
            }

            while ((v71 & 0x3FFFFFFFCLL) != v61);
          }

          if (v53 == 1)
          {
            v63 = *v91.__r_.__value_.__l.__data_;
          }

          else
          {
            llvm::StructType::get();
          }

          v67 = llvm::FunctionType::get();
          *(v74 + 8) = *(v74 + 8) & 0xFFFFBFC0 | 0x4007;
          __dst[0] = "air.packedVertexFunction";
          v90 = 259;
          v68 = llvm::Function::Create(v67, 0, __dst, v73);
          __dst[0] = "Body";
          v90 = 259;
          llvm::BasicBlock::Create(v76, __dst, v68, 0, v69);
        }

        v70 = 1;
        goto LABEL_94;
      }

      v47 = "varying components";
      a8 = a9;
    }

    else
    {
      v47 = "varyings";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(*a1, "Link failed: number of shader %s (%u) exceeds limit (%u). Note that on macOS the following attributes count towards the limit: [[position]], [[clip_distance]], [[point_size]], [[point_coord]], and, when read in the fragment shader, [[viewport_array_index]] & [[render_target_array_index]].", v47, a8, v46);
  }

  v70 = 0;
LABEL_94:
  if (__src)
  {
    v84 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v87[0])
  {
    v87[1] = v87[0];
    operator delete(v87[0]);
  }

LABEL_100:
  v65 = *MEMORY[0x277D85DE8];
  return v70;
}

void sub_2579C4DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a60);
  if (STACK[0x220] != a18)
  {
    free(STACK[0x220]);
  }

  if (a43)
  {
    operator delete(a43);
  }

  if (a46)
  {
    operator delete(a46);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a52)
  {
    operator delete(a52);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::IRBuilderBase::CreateExtractValue(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || a2[16] > 0x14u)
  {
    v12 = 257;
    v10 = llvm::ExtractValueInst::Create(a2, a3, a4, v11, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v10, a5);
  }

  v7 = (*(**(a1 + 72) + 344))(*(a1 + 72));
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a5);
}

uint64_t llvm::IRBuilderBase::CreateInsertValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    v11 = llvm::InsertValueInst::Create(a2);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v11, a6);
  }

  v8 = (*(**(a1 + 72) + 352))(*(a1 + 72));
  if (v8)
  {
    v9 = *(v8 + 16) >= 0x1Cu;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return v8;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v8, a6);
}

llvm::UnaryInstruction *llvm::ExtractValueInst::Create(llvm::Value *a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Instruction *a5)
{
  v7 = llvm::User::operator new(0x60);
  v8 = *a1;
  IndexedType = llvm::ExtractValueInst::getIndexedType();
  llvm::UnaryInstruction::UnaryInstruction(v7, IndexedType, 0x40u, a1, a5);
  *(v7 + 8) = v7 + 80;
  *(v7 + 9) = 0x400000000;
  llvm::ExtractValueInst::init();
  return v7;
}

void sub_2579C5210(_Unwind_Exception *a1)
{
  v4 = *(v1 + 8);
  if (v4 != v2)
  {
    free(v4);
  }

  llvm::Instruction::~Instruction(v1);
  llvm::User::operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t llvm::UnaryInstruction::UnaryInstruction(llvm::UnaryInstruction *this, llvm::Type *a2, unsigned int a3, llvm::Value *a4, llvm::Instruction *a5)
{
  v6 = (this - 32);
  result = llvm::Instruction::Instruction();
  if (*(result - 32))
  {
    v8 = *(result - 24);
    **(result - 16) = v8;
    if (v8)
    {
      *(v8 + 16) = *(result - 16);
    }
  }

  *v6 = a4;
  if (a4)
  {
    v11 = *(a4 + 1);
    v10 = (a4 + 8);
    v9 = v11;
    *(result - 24) = v11;
    if (v11)
    {
      *(v9 + 16) = result - 24;
    }

    *(result - 16) = v10;
    *v10 = v6;
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateExtractElement(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    v12 = 257;
    v10 = llvm::ExtractElementInst::Create(a2, a3, v11, 0, a5);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a4);
  }

  v7 = (*(*this[9] + 320))(this[9]);
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
}

uint64_t llvm::IRBuilderBase::CreateInsertElement(unsigned int **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u || !a4 || *(a4 + 16) > 0x14u)
  {
    v13 = 257;
    v11 = llvm::InsertElementInst::Create(a2, a3, a4, v12, 0, a6);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v11, a5);
  }

  v8 = (*(*this[9] + 328))(this[9]);
  if (v8)
  {
    v9 = *(v8 + 16) >= 0x1Cu;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return v8;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v8, a5);
}

uint64_t llvm::ExtractElementInst::Create(llvm::ExtractElementInst *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, llvm::Instruction *a5)
{
  v5 = llvm::User::operator new(0x40);
  llvm::ExtractElementInst::ExtractElementInst();
  return v5;
}

uint64_t llvm::InsertElementInst::Create(llvm::InsertElementInst *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  v11 = llvm::User::operator new(0x40);
  MEMORY[0x259C6A960](v11, this, a2, a3, a4, a5);
  return v11;
}

uint64_t llvm::InsertValueInst::Create(uint64_t *a1)
{
  v2 = llvm::User::operator new(0x60);
  v3 = *a1;
  llvm::Instruction::Instruction();
  *(v2 + 64) = v2 + 80;
  *(v2 + 72) = 0x400000000;
  llvm::InsertValueInst::init();
  return v2;
}

void sub_2579C5654(_Unwind_Exception *a1)
{
  v4 = *(v1 + 8);
  if (v4 != v2)
  {
    free(v4);
  }

  llvm::Instruction::~Instruction(v1);
  llvm::User::operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_2579C5780(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void *std::vector<llvm::Type *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2579C5ABC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<llvm::Type *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<llvm::Value *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2579C5B70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<llvm::Metadata *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2579C5BE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL MTLBoundsCheck::isLibraryModule(MTLBoundsCheck *this, llvm::Module *a2)
{
  v4[0] = "air.vertex";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.fragment";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.kernel";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.object";
  v5 = 259;
  if (llvm::Module::getNamedMetadata(this, v4))
  {
    return 0;
  }

  v4[0] = "air.mesh";
  v5 = 259;
  return llvm::Module::getNamedMetadata(this, v4) == 0;
}

void MTLBoundsCheck::getMangledTypeStr(MTLBoundsCheck *this@<X0>, llvm::Type *a2@<X1>, std::string *a3@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v5 = *(this + 2);
  v6 = *(this + 2);
  if (this && v6 == 15)
  {
    if (v5 >= 0x100)
    {
      v13 = v5 >> 8;
      v7 = &v63.__r_.__value_.__s.__data_[21];
      do
      {
        *--v7 = (v13 % 0xA) | 0x30;
        v10 = v13 > 9;
        v13 /= 0xAuLL;
      }

      while (v10);
    }

    else
    {
      v7 = &v63.__r_.__value_.__s.__data_[20];
      v63.__r_.__value_.__s.__data_[20] = 48;
    }

    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v7, &v63.__r_.__value_.__s.__data_[21], &v63.__r_.__value_.__r.__words[2] + 5 - v7);
    v14 = std::string::insert(&__dst, 0, "p");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    MTLBoundsCheck::getMangledTypeStr(&v63, **(this + 2), v16);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v63;
    }

    else
    {
      v17 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v63.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v60, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v62 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v62 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v62 >= 0)
    {
      v22 = HIBYTE(v62);
    }

    else
    {
      v22 = __p[1];
    }

    goto LABEL_68;
  }

  if (this && v6 == 17)
  {
    v8 = *(this + 4);
    if (v8)
    {
      v9 = &v63.__r_.__value_.__s.__data_[21];
      do
      {
        *--v9 = (v8 % 0xA) | 0x30;
        v10 = v8 > 9;
        v8 /= 0xAuLL;
      }

      while (v10);
    }

    else
    {
      v9 = &v63.__r_.__value_.__s.__data_[20];
      v63.__r_.__value_.__s.__data_[20] = 48;
    }

    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v9, &v63.__r_.__value_.__s.__data_[21], &v63.__r_.__value_.__r.__words[2] + 5 - v9);
    v31 = std::string::insert(&__dst, 0, "a");
    v32 = *&v31->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    MTLBoundsCheck::getMangledTypeStr(&v63, *(this + 3), v33);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v63;
    }

    else
    {
      v34 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v63.__r_.__value_.__l.__size_;
    }

    v36 = std::string::append(&v60, v34, v35);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v62 = v36->__r_.__value_.__r.__words[2];
    *__p = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    if (v62 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v62 >= 0)
    {
      v22 = HIBYTE(v62);
    }

    else
    {
      v22 = __p[1];
    }

    goto LABEL_68;
  }

  if (this && v6 == 16)
  {
    if ((v5 & 0x400) != 0)
    {
      std::string::append(a3, "sl_");
      v47 = *(this + 3);
      if (v47)
      {
        v48 = *(this + 2);
        v49 = 8 * v47;
        do
        {
          MTLBoundsCheck::getMangledTypeStr(__p, *v48, v46);
          if (v62 >= 0)
          {
            v50 = __p;
          }

          else
          {
            v50 = __p[0];
          }

          if (v62 >= 0)
          {
            v51 = HIBYTE(v62);
          }

          else
          {
            v51 = __p[1];
          }

          std::string::append(a3, v50, v51);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(__p[0]);
          }

          ++v48;
          v49 -= 8;
        }

        while (v49);
      }
    }

    else
    {
      std::string::append(a3, "s_");
      Name = llvm::StructType::getName(this);
      std::string::append(a3, Name, v12);
    }

    std::string::append(a3, "s");
    goto LABEL_103;
  }

  if (this && v6 == 14)
  {
    MTLBoundsCheck::getMangledTypeStr(&v60, **(this + 2), a2);
    v23 = std::string::insert(&v60, 0, "f_");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v62 = v23->__r_.__value_.__r.__words[2];
    *__p = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v62 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if (v62 >= 0)
    {
      v26 = HIBYTE(v62);
    }

    else
    {
      v26 = __p[1];
    }

    std::string::append(a3, v25, v26);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (*(this + 3) != 1)
    {
      v28 = 0;
      do
      {
        MTLBoundsCheck::getMangledTypeStr(__p, *(*(this + 2) + 8 * v28 + 8), v27);
        if (v62 >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        if (v62 >= 0)
        {
          v30 = HIBYTE(v62);
        }

        else
        {
          v30 = __p[1];
        }

        std::string::append(a3, v29, v30);
        if (SHIBYTE(v62) < 0)
        {
          operator delete(__p[0]);
        }

        ++v28;
      }

      while (v28 < (*(this + 3) - 1));
    }

    if (*(this + 2) > 0xFFu)
    {
      std::string::append(a3, "vararg");
    }

    std::string::append(a3, "f");
    goto LABEL_103;
  }

  if (this && v6 == 18)
  {
    llvm::utostr(*(this + 8), 0, &__dst);
    v39 = std::string::insert(&__dst, 0, "v");
    v40 = *&v39->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    MTLBoundsCheck::getMangledTypeStr(&v63, *(this + 3), v41);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v63;
    }

    else
    {
      v42 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = v63.__r_.__value_.__l.__size_;
    }

    v44 = std::string::append(&v60, v42, v43);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v62 = v44->__r_.__value_.__r.__words[2];
    *__p = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    if (v62 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v62 >= 0)
    {
      v22 = HIBYTE(v62);
    }

    else
    {
      v22 = __p[1];
    }

LABEL_68:
    std::string::append(a3, v21, v22);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v38 = __dst.__r_.__value_.__r.__words[0];
LABEL_76:
      operator delete(v38);
      goto LABEL_103;
    }

    goto LABEL_103;
  }

  v53 = *(this + 2);
  if (v53 <= 4)
  {
    if (*(this + 2) <= 1u)
    {
      if (*(this + 2))
      {
        v54 = "bf16";
      }

      else
      {
        v54 = "f16";
      }
    }

    else if (v53 == 2)
    {
      v54 = "f32";
    }

    else if (v53 == 3)
    {
      v54 = "f64";
    }

    else
    {
      v54 = "f80";
    }

    goto LABEL_124;
  }

  if (*(this + 2) <= 8u)
  {
    if (v53 == 5)
    {
      v54 = "f128";
    }

    else if (v53 == 6)
    {
      v54 = "ppcf128";
    }

    else
    {
      v54 = "isVoid";
    }

    goto LABEL_124;
  }

  if (v53 == 9)
  {
    v54 = "Metadata";
    goto LABEL_124;
  }

  if (v53 == 10)
  {
    v54 = "x86mmx";
LABEL_124:
    std::string::append(a3, v54);
    goto LABEL_103;
  }

  llvm::utostr((v5 >> 8), 0, &v60);
  v55 = std::string::insert(&v60, 0, "i");
  v56 = *&v55->__r_.__value_.__l.__data_;
  v62 = v55->__r_.__value_.__r.__words[2];
  *__p = v56;
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  if (v62 >= 0)
  {
    v57 = __p;
  }

  else
  {
    v57 = __p[0];
  }

  if (v62 >= 0)
  {
    v58 = HIBYTE(v62);
  }

  else
  {
    v58 = __p[1];
  }

  std::string::append(a3, v57, v58);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    v38 = v60.__r_.__value_.__r.__words[0];
    goto LABEL_76;
  }

LABEL_103:
  v52 = *MEMORY[0x277D85DE8];
}

void sub_2579C638C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *llvm::utostr@<X0>(llvm *this@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = this;
  v10 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    v5 = &v9;
    v9 = 48;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = &v10;
  do
  {
    *--v5 = (v4 % 0xA) | 0x30;
    v6 = v4 > 9;
    v4 /= 0xAuLL;
  }

  while (v6);
  if (a2)
  {
LABEL_5:
    *--v5 = 45;
  }

LABEL_6:
  result = std::string::__init_with_size[abi:ne200100]<char *,char *>(a3, v5, &v10, &v10 - v5);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void MTLBoundsCheck::gatherMemoryArguments(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *v4;
  llvm::Module::getDataLayout(v4);
  if ((*(a1 + 18) & 1) == 0)
  {
    v6 = *(a1 + 88);
LABEL_4:
    v7 = v6;
    goto LABEL_6;
  }

  llvm::Function::BuildLazyArguments(a1);
  v6 = *(a1 + 88);
  if ((*(a1 + 18) & 1) == 0)
  {
    goto LABEL_4;
  }

  llvm::Function::BuildLazyArguments(a1);
  v7 = *(a1 + 88);
LABEL_6:
  v8 = *(a1 + 96);
  Name = llvm::Value::getName(a1);
  v46[1] = Name;
  v46[2] = v10;
  if (v10 < 0xB)
  {
    if (v10 == 10)
    {
      v11 = *Name == 0x6D6F74612E726961 && *(Name + 8) == 25449;
      if (!v11)
      {
        goto LABEL_68;
      }

      goto LABEL_79;
    }

    if (v10 < 9)
    {
      goto LABEL_72;
    }

    goto LABEL_68;
  }

  v13 = *Name != 0x6D656D2E6D766C6CLL || *(Name + 3) != 0x7970636D656D2E6DLL;
  v14 = 0x6C6C766D2E6D656DLL;
  v15 = bswap64(*Name);
  if (v15 == 0x6C6C766D2E6D656DLL && (v14 = 0x6D2E6D656D636D70, v15 = bswap64(*(Name + 3)), v15 == 0x6D2E6D656D636D70))
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if (v15 < v14)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    if (!v13)
    {
      goto LABEL_63;
    }
  }

  if (!v16)
  {
LABEL_63:
    v47 = v6;
    v25 = v16 == 0;
    v43 = v6 + 40;
    v46[0] = (v6 + 80);
    LODWORD(v44) = 1;
    v45 = 1;
    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v43, v46, &v44, &v45);
    if (v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    LODWORD(v44) = v26;
    v45 = 0;
    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v47, v46, &v44, &v45);
    goto LABEL_127;
  }

  if (*Name == 0x6D656D2E6D766C6CLL && *(Name + 3) == 0x7465736D656D2E6DLL)
  {
    v47 = v6;
    v43 = v6 + 80;
    LODWORD(v46[0]) = 2;
    LODWORD(v44) = 0;
    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v47, &v43, v46, &v44);
    goto LABEL_127;
  }

  if (*Name == 0x6D6F74612E726961 && *(Name + 8) == 25449)
  {
LABEL_79:
    v46[0] = v6;
    v47 = v49;
    v48 = 0x500000000;
    llvm::StringRef::split();
    llvm::StringRef::find();
    v41 = v47;
    if (v47 == v49)
    {
      goto LABEL_127;
    }

LABEL_126:
    free(v41);
    goto LABEL_127;
  }

  if (v10 >= 0x14)
  {
    v19 = *Name == 0x646D69732E726961 && *(Name + 8) == 0x616D5F70756F7267;
    if (v19 && *(Name + 16) == 2020176500)
    {
      v47 = v49;
      v48 = 0x500000000;
      llvm::StringRef::split();
      if (v51 == 5)
      {
        v37 = *(v50 + 4);
        *v50;
      }

      else if (v51 == 7)
      {
        if (*v50 == 1647588982)
        {
          v11 = *(v50 + 3) == 909207138;
        }
      }

      else if (v51 == 6 && (*v50 != 1714697846 || *(v50 + 4) != 12851) && (*v50 != 1714697846 || *(v50 + 4) != 13873) && (*v50 != 1765029494 || *(v50 + 4) != 12851))
      {
        v24 = *(v50 + 4);
        *v50;
      }

      if (llvm::StringRef::find() == -1)
      {
        if (llvm::StringRef::find() == -1)
        {
          goto LABEL_123;
        }

        v40 = 2;
        v39 = 1;
      }

      else
      {
        v39 = 0;
        v40 = 1;
      }

      LODWORD(v44) = v39;
      v45 = v40;
      v43 = &v6[40 * v39];
      llvm::Type::getInt32Ty(v5, v38);
      v46[0] = llvm::ConstantInt::get();
      llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v43, v46, &v45, &v44);
LABEL_123:
      v41 = v47;
      if (v47 == v49)
      {
        goto LABEL_127;
      }

      goto LABEL_126;
    }
  }

LABEL_68:
  if (*Name != 0x776172642E726961 || *(Name + 8) != 95)
  {
LABEL_72:
    LODWORD(v46[0]) = 0;
    while (v6 != &v7[40 * v8])
    {
      v47 = v6;
      if (*(*v6 + 8) == 15)
      {
        v28 = **(*v6 + 16);
        if (*(v28 + 8) != 16 || !isSpecialStructType(v28))
        {
          llvm::Type::getInt32Ty(v5, v10);
          v43 = llvm::ConstantInt::get();
          LODWORD(v44) = 0;
          llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v47, &v43, &v44, v46);
        }
      }

      v6 += 40;
      ++LODWORD(v46[0]);
    }

    goto LABEL_127;
  }

  v47 = 0;
  v48 = 0;
  v49[0] = 0;
  if (v10 < 0x1B)
  {
    if (v10 < 0x10)
    {
      goto LABEL_110;
    }

LABEL_94:
    if (*Name == 0x776172642E726961 && *(Name + 8) == 0x736568637461705FLL)
    {
      LODWORD(v43) = 5;
      std::vector<int>::push_back[abi:ne200100](&v47, &v43);
      LODWORD(v43) = 8;
      std::vector<int>::push_back[abi:ne200100](&v47, &v43);
    }

    else if (v10 >= 0x18)
    {
      v33 = *Name == 0x776172642E726961 && *(Name + 8) == 0x64657865646E695FLL;
      if (v33 && *(Name + 16) == 0x736568637461705FLL)
      {
        LODWORD(v43) = 5;
        std::vector<int>::push_back[abi:ne200100](&v47, &v43);
        LODWORD(v43) = 9;
        std::vector<int>::push_back[abi:ne200100](&v47, &v43);
      }
    }

    goto LABEL_110;
  }

  if (*Name != 0x776172642E726961 || *(Name + 8) != 0x64657865646E695FLL || *(Name + 16) != 0x6974696D6972705FLL || *(Name + 19) != 0x7365766974696D69)
  {
    goto LABEL_94;
  }

  LODWORD(v43) = 4;
  std::vector<int>::push_back[abi:ne200100](&v47, &v43);
LABEL_110:
  v35 = v47;
  v36 = v48;
  if (v47 != v48)
  {
    do
    {
      LODWORD(v44) = *v35;
      v43 = &v6[40 * v44];
      llvm::Type::getInt32Ty(v5, v10);
      v46[0] = llvm::ConstantInt::get();
      v45 = 1;
      llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v43, v46, &v45, &v44);
      ++v35;
    }

    while (v35 != v36);
    v35 = v47;
  }

  if (v35)
  {
    v48 = v35;
    operator delete(v35);
  }

LABEL_127:
  v42 = *MEMORY[0x277D85DE8];
}

void sub_2579C6F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(uint64_t a1, void *a2, uint64_t *a3, int *a4, int *a5)
{
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>::growAndEmplaceBack<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a1, a2, a3, a4, a5);
  }

  v6 = *a1;
  v7 = *a1 + 24 * v5;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  *v7 = *a2;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 20) = v10;
  v11 = v5 + 1;
  *(a1 + 8) = v11;
  return v6 + 24 * v11 - 24;
}

uint64_t getPtrTypeFromIntrinsicNameSuffix(uint64_t a1, llvm::LLVMContext *a2, llvm::Type *this)
{
  Int32Ty = llvm::Type::getInt32Ty(this, a2);
  Int16Ty = llvm::Type::getInt16Ty(this, v7);
  FloatTy = llvm::Type::getFloatTy(this, v9);
  Int64Ty = llvm::Type::getInt64Ty(this, v11);
  HalfTy = llvm::Type::getHalfTy(this, v13);
  v15 = llvm::FixedVectorType::get();
  v16 = llvm::FixedVectorType::get();
  if (a2 >= 4)
  {
    v17 = a2 + a1;
    if (*(a2 + a1 - 4) == 842230062 || *(v17 - 1) == 1952805727)
    {
      return Int32Ty;
    }

    v18 = a2 < 6;
    if (a2 >= 6)
    {
      v19 = *(v17 - 6);
      v20 = *(v17 - 1);
      if (v19 == 1701602094 && v20 == 29281)
      {
        return Int32Ty;
      }

      v18 = 0;
    }
  }

  else
  {
    if (a2 < 2)
    {
      return Int16Ty;
    }

    v18 = 1;
  }

  v22 = a2 + a1;
  if (*(a2 + a1 - 2) != 29998 && *(v22 - 1) != 29486)
  {
    if (a2 >= 4)
    {
      if (*(v22 - 1) == 842229294)
      {
        return FloatTy;
      }

      if (*(v22 - 1) == 875981102)
      {
        return Int64Ty;
      }

      if (v18)
      {
        return Int16Ty;
      }
    }

    else if (v18)
    {
      return Int16Ty;
    }

    if (*(v22 - 6) == 909207086 && *(v22 - 1) == 31060)
    {
      return HalfTy;
    }

    if (*(v22 - 6) == 1765045806 && *(v22 - 1) == 12851)
    {
      return v15;
    }

    v25 = *(v22 - 6);
    v26 = *(v22 - 1);
    if (v25 == 1714714158 && v26 == 12851)
    {
      return v16;
    }

    return Int16Ty;
  }

  return Int32Ty;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
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

void MTLBoundsCheck::gatherMemoryOperands(uint64_t a1, uint64_t a2)
{
  Module = llvm::Instruction::getModule(a1);
  v5 = *Module;
  DataLayout = llvm::Module::getDataLayout(Module);
  v8 = *(a1 + 16);
  if (a1 && v8 == 84)
  {
    v9 = *(a1 - 32);
    if (v9)
    {
      if (!*(v9 + 16) && *(v9 + 24) == *(a1 + 72))
      {
        v10 = *(a2 + 8);
        MTLBoundsCheck::gatherMemoryArguments(v9, a2);
        v11 = *(a2 + 8);
        if (v11 != v10)
        {
          v12 = 0;
          v13 = v11 - v10;
          v14 = *a2 + 24 * v10;
          do
          {
            *(v14 + 20) = v12;
            if (*v14)
            {
              v15 = *(*v14 + 16) == 21;
            }

            else
            {
              v15 = 0;
            }

            if (v15)
            {
              *v14 = *(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF) + 32 * *(*v14 + 32));
            }

            v16 = *(v14 + 8);
            if (v16)
            {
              v17 = *(v16 + 16) == 21;
            }

            else
            {
              v17 = 0;
            }

            if (v17)
            {
              *(v14 + 8) = *(a1 - 32 * (*(a1 + 20) & 0x7FFFFFF) + 32 * *(v16 + 32));
            }

            ++v12;
            v14 += 24;
          }

          while (v13 != v12);
        }
      }
    }
  }

  else
  {
    if (v8 == 61)
    {
      v24 = *(a1 - 32);
      llvm::Type::getInt32Ty(v5, v6);
      llvm::DataLayout::getTypeSizeInBits(DataLayout, **(*v24 + 16));
      v23 = v19 == 1;
      llvm::TypeSize::operator unsigned long long();
      v22 = llvm::ConstantInt::get();
      v20 = 1;
      v21 = 2;
    }

    else
    {
      if (v8 != 60)
      {
        return;
      }

      v24 = *(a1 - 32);
      llvm::Type::getInt32Ty(v5, v6);
      llvm::DataLayout::getTypeSizeInBits(DataLayout, **(*v24 + 16));
      v23 = v18 == 1;
      llvm::TypeSize::operator unsigned long long();
      v22 = llvm::ConstantInt::get();
      v20 = 0;
      v21 = 1;
    }

    llvm::SmallVectorImpl<MTLBoundsCheck::MemoryAccessOperand>::emplace_back<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(a2, &v24, &v22, &v21, &v20);
  }
}

uint64_t MTLBoundsCheck::lookThroughPointerOps(uint64_t result, void *a2)
{
  v2 = 0;
  v3 = *(result + 16);
  if (result && v3 >= 0x1C)
  {
    v2 = 0;
    while (v3 - 77 < 2)
    {
      v4 = *(result + 20);
      if ((v4 & 0x40000000) == 0)
      {
        goto LABEL_9;
      }

      v5 = *(result - 8);
LABEL_10:
      v2 = result;
      result = *v5;
LABEL_11:
      v3 = *(result + 16);
      if (!result || v3 <= 0x1B)
      {
        goto LABEL_13;
      }
    }

    if (v3 != 62)
    {
      goto LABEL_11;
    }

    v4 = *(result + 20);
LABEL_9:
    v5 = (result - 32 * (v4 & 0x7FFFFFF));
    goto LABEL_10;
  }

LABEL_13:
  if (v3 == 5)
  {
    do
    {
      v6 = *(result + 18);
      v7 = v6 > 0x32;
      v8 = (1 << v6) & 0x6000400000000;
      if (!v7 && v8 != 0)
      {
        v2 = result;
        result = *(result - 32 * (*(result + 20) & 0x7FFFFFF));
      }
    }

    while (result && *(result + 16) == 5);
  }

  if (a2)
  {
    *a2 = v2;
  }

  return result;
}

BOOL MTLBoundsCheck::checkAddressSpace(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if ((v1 & 0xFE) == 0x12)
  {
    v1 = *(**(*a1 + 16) + 8);
  }

  return (v1 >> 8) - 1 < 2;
}

uint64_t MTLBoundsCheck::gpuOperationToResourceUsage(unsigned int a1)
{
  if (a1 > 4)
  {
    return 3;
  }

  else
  {
    return dword_257A6DA80[a1];
  }
}

llvm::NamedMDNode *MTLBoundsCheck::getQualifiedFunctionsMetadata@<X0>(MTLBoundsCheck *this@<X0>, llvm::Module *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = 1;
  v13 = 1;
  if (*a2)
  {
    v11[0] = a2;
    v5 = 3;
  }

  v12 = v5;
  result = llvm::Module::getNamedMetadata(this, v11);
  v7 = result;
  if (result)
  {
    result = llvm::NamedMDNode::getNumOperands(result);
    v8 = result;
    if (result)
    {
      v9 = 0;
      do
      {
        Operand = llvm::NamedMDNode::getOperand(v7);
        v11[0] = *(*(Operand - 8 * *(Operand + 8)) + 128);
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(a3, v11);
        *(result + 1) = Operand;
        ++v9;
      }

      while (v8 != v9);
    }
  }

  return result;
}

llvm::NamedMDNode *MTLBoundsCheck::getMetalMetadata@<X0>(MTLBoundsCheck *this@<X0>, uint64_t a2@<X8>)
{
  v14[0] = "air.vertex";
  v15 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, v14);
  v14[0] = "air.kernel";
  v15 = 259;
  v6 = llvm::Module::getNamedMetadata(this, v14);
  v14[0] = "air.fragment";
  v15 = 259;
  v7 = llvm::Module::getNamedMetadata(this, v14);
  v14[0] = "air.intersection";
  v15 = 259;
  v8 = llvm::Module::getNamedMetadata(this, v14);
  v14[0] = "air.visible";
  v15 = 259;
  v9 = llvm::Module::getNamedMetadata(this, v14);
  v14[0] = "air.mesh";
  v15 = 259;
  v10 = llvm::Module::getNamedMetadata(this, v14);
  v14[0] = "air.object";
  v15 = 259;
  result = llvm::Module::getNamedMetadata(this, v14);
  if (NamedMetadata)
  {
    result = llvm::NamedMDNode::getOperand(NamedMetadata);
    *a2 = 0;
  }

  else
  {
    if (v6)
    {
      result = llvm::NamedMDNode::getOperand(v6);
      v12 = 2;
    }

    else
    {
      if (v7)
      {
        result = llvm::NamedMDNode::getOperand(v7);
        v13 = 1;
        *a2 = 1;
        *(a2 + 8) = result;
        goto LABEL_7;
      }

      if (v8)
      {
        result = llvm::NamedMDNode::getOperand(v8);
        v12 = 3;
      }

      else if (v9)
      {
        result = llvm::NamedMDNode::getOperand(v9);
        v12 = 4;
      }

      else if (v10)
      {
        result = llvm::NamedMDNode::getOperand(v10);
        v12 = 5;
      }

      else
      {
        if (!result)
        {
          v13 = 0;
          *a2 = 0;
          goto LABEL_7;
        }

        result = llvm::NamedMDNode::getOperand(result);
        v12 = 6;
      }
    }

    *a2 = v12;
  }

  *(a2 + 8) = result;
  v13 = 1;
LABEL_7:
  *(a2 + 16) = v13;
  return result;
}

uint64_t MTLBoundsCheck::SerializedData::fromMetaData(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = (a2 - 8 * *(a2 + 8));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = *(*v3 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = (*(v9 - 8 * v7) - 8 * *(*(v9 - 8 * v7) + 8));
      v11 = *(*v10 + 128);
      v12 = (v11 + 24);
      if (*(v11 + 32) >= 0x41u)
      {
        v12 = *v12;
      }

      LODWORD(String) = *v12;
      v13 = *(v10[1] + 128);
      v14 = (v13 + 24);
      if (*(v13 + 32) >= 0x41u)
      {
        v14 = *v14;
      }

      HIDWORD(String) = *v14;
      v15 = *(v10[2] + 128);
      v16 = (v15 + 24);
      if (*(v15 + 32) >= 0x41u)
      {
        v16 = *v16;
      }

      LODWORD(v34) = *v16;
      v17 = *(v10[3] + 128);
      v18 = (v17 + 24);
      if (*(v17 + 32) >= 0x41u)
      {
        v18 = *v18;
      }

      HIDWORD(v34) = *v18;
      result = llvm::SmallVectorImpl<MTLBoundsCheck::DebugLocation>::emplace_back<MTLBoundsCheck::DebugLocation&>(v2 + 112, &String);
      ++v8;
      v7 = *(v5 + 8);
      v9 += 8;
    }

    while (v8 < v7);
  }

  v19 = *(v4 + 8);
  if (v19)
  {
    v20 = 0;
    v21 = v4;
    do
    {
      v22 = (*(v21 - 8 * v19) - 8 * *(*(v21 - 8 * v19) + 8));
      v23 = *(*v22 + 128);
      v24 = (v23 + 24);
      if (*(v23 + 32) >= 0x41u)
      {
        v24 = *v24;
      }

      LODWORD(String) = *v24;
      v25 = *(v22[1] + 128);
      v26 = (v25 + 24);
      if (*(v25 + 32) >= 0x41u)
      {
        v26 = *v26;
      }

      HIDWORD(String) = *v26;
      v27 = *(v22[2] + 128);
      v28 = (v27 + 24);
      if (*(v27 + 32) >= 0x41u)
      {
        v28 = *v28;
      }

      LODWORD(v34) = *v28;
      result = llvm::SmallVectorImpl<MTLBoundsCheck::DebugSubProgram>::emplace_back<MTLBoundsCheck::DebugSubProgram&>(v2 + 384, &String);
      ++v20;
      v19 = *(v4 + 8);
      v21 += 8;
    }

    while (v20 < v19);
  }

  v29 = *(v6 + 8);
  if (v29)
  {
    v30 = 0;
    v31 = v6;
    do
    {
      String = llvm::MDString::getString(*(v31 - 8 * v29));
      v34 = v32;
      result = llvm::SmallVectorImpl<std::string>::emplace_back<llvm::StringRef>(v2, &String);
      ++v30;
      v29 = *(v6 + 8);
      v31 += 8;
    }

    while (v30 < v29);
  }

  *(v2 + 650) = 1;
  return result;
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::DebugLocation>::emplace_back<MTLBoundsCheck::DebugLocation&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1, *a2, a2[1]);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 16 * v3) = *a2;
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 16 * v4 - 16;
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::DebugSubProgram>::emplace_back<MTLBoundsCheck::DebugSubProgram&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<MTLBoundsCheck::DebugSubProgram,true>::push_back(a1, *a2, *(a2 + 8));
    v6 = *(a1 + 8);
  }

  else
  {
    v4 = *a1 + 12 * v3;
    v5 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *v4 = v5;
    v6 = *(a1 + 8) + 1;
    *(a1 + 8) = v6;
  }

  return *a1 + 12 * v6 - 12;
}

uint64_t llvm::SmallVectorImpl<std::string>::emplace_back<llvm::StringRef>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    llvm::SmallVectorTemplateBase<std::string,false>::growAndEmplaceBack<llvm::StringRef>();
  }

  v4 = *(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = (*a1 + 24 * v3);
  v6 = *a2;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v5[23] = v4;
  if (v4)
  {
    memmove(v5, v6, v4);
  }

  v5[v4] = 0;
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 24 * v7 - 24;
}

uint64_t MTLBoundsCheck::SerializedData::dump(MTLBoundsCheck::SerializedData *this)
{
  result = printf("threadgroupArgumentOffset: %d\nthreadgroupArgumentMask: %X\nserializedFromMetadata: %d\n", *(this + 158), *(this + 159), *(this + 650));
  v3 = *(this + 30);
  if (v3)
  {
    v4 = *(this + 14);
    v5 = &v4[4 * v3];
    do
    {
      v6 = (*(this + 48) + 12 * *v4);
      v7 = *this + 24 * *v6;
      if (*(v7 + 23) < 0)
      {
        v7 = *v7;
      }

      v8 = *this + 24 * v6[1];
      if (*(v8 + 23) < 0)
      {
        v8 = *v8;
      }

      result = printf("Location: %s:%d  :: %s, line: %d, col: %d, inlinedAt: %d\n", v7, v6[2], v8, v4[1], v4[2], v4[3]);
      v4 += 4;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t MTLBoundsCheck::SerializedData::toMetaData(MTLBoundsCheck::SerializedData *this, llvm::LLVMContext *a2)
{
  v36[16] = *MEMORY[0x277D85DE8];
  llvm::IntegerType::get();
  v35[0] = v36;
  v35[1] = 0x1000000000;
  v33[0] = v34;
  v33[1] = 0x1000000000;
  v31[0] = v32;
  v31[1] = 0x1000000000;
  v3 = *(this + 30);
  if (v3)
  {
    v4 = *(this + 14);
    v5 = &v4[4 * v3];
    do
    {
      v6 = *v4;
      llvm::ConstantInt::get();
      Impl = llvm::ValueAsMetadata::get();
      v7 = v4[1];
      llvm::ConstantInt::get();
      v26 = llvm::ValueAsMetadata::get();
      v8 = v4[2];
      llvm::ConstantInt::get();
      v27 = llvm::ValueAsMetadata::get();
      v9 = v4[3];
      llvm::ConstantInt::get();
      v28 = llvm::ValueAsMetadata::get();
      llvm::SmallVector<llvm::Metadata *,4u>::SmallVector(&v29, &Impl, 4);
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v35, &Impl);
      if (v29 != v30)
      {
        free(v29);
      }

      v4 += 4;
    }

    while (v4 != v5);
  }

  v10 = *(this + 98);
  if (v10)
  {
    v11 = *(this + 48);
    v12 = &v11[3 * v10];
    do
    {
      v13 = *v11;
      llvm::ConstantInt::get();
      Impl = llvm::ValueAsMetadata::get();
      v14 = v11[1];
      llvm::ConstantInt::get();
      v26 = llvm::ValueAsMetadata::get();
      v15 = v11[2];
      llvm::ConstantInt::get();
      v27 = llvm::ValueAsMetadata::get();
      llvm::SmallVector<llvm::Metadata *,3u>::SmallVector(&v29, &Impl, 3);
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v31, &Impl);
      if (v29 != v30)
      {
        free(v29);
      }

      v11 += 3;
    }

    while (v11 != v12);
  }

  v16 = *(this + 2);
  if (v16)
  {
    v17 = *this;
    v18 = 24 * v16;
    do
    {
      v19 = *(v17 + 23);
      if (v19 < 0)
      {
        v20 = *v17;
      }

      if (v19 >= 0)
      {
        v21 = *(v17 + 23);
      }

      else
      {
        v21 = v17[1];
      }

      v29 = llvm::MDString::get();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v33, &v29);
      v17 += 3;
      v18 -= 24;
    }

    while (v18);
  }

  Impl = llvm::MDTuple::getImpl();
  v26 = llvm::MDTuple::getImpl();
  v27 = llvm::MDTuple::getImpl();
  llvm::SmallVector<llvm::Metadata *,3u>::SmallVector(&v29, &Impl, 3);
  v22 = llvm::MDTuple::getImpl();
  if (v29 != v30)
  {
    free(v29);
  }

  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  if (v35[0] != v36)
  {
    free(v35[0]);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_2579C8114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (a14 != &a16)
  {
    free(a14);
  }

  if (a20 != v40)
  {
    free(a20);
  }

  if (a38 != v39)
  {
    free(a38);
  }

  v43 = *(v41 - 232);
  if (v43 != v38)
  {
    free(v43);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::getLocationIndex(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  for (i = a1; ; i += 8)
  {
    v5 = *(i - 8 * v1);
    if (!*v5)
    {
      break;
    }

LABEL_15:
    if (++v3 >= v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  String = llvm::MDString::getString(v5);
  if (v7 != 18)
  {
    v1 = *(a1 + 8);
    goto LABEL_15;
  }

  v9 = *String == 0x61636F6C2E726961 && *(String + 8) == 0x646E695F6E6F6974 && *(String + 16) == 30821;
  v1 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = *(*(i - 8 * v1 + 8) + 128);
  v12 = (v11 + 24);
  if (*(v11 + 32) >= 0x41u)
  {
    v12 = *v12;
  }

  return *v12;
}

uint64_t MTLBoundsCheck::getAddressSpace(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  for (i = a1; ; i += 8)
  {
    v5 = *(i - 8 * v1);
    if (!*v5)
    {
      break;
    }

LABEL_15:
    if (++v3 >= v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  String = llvm::MDString::getString(v5);
  if (v7 != 17)
  {
    v1 = *(a1 + 8);
    goto LABEL_15;
  }

  v9 = *String == 0x726464612E726961 && *(String + 8) == 0x636170735F737365 && *(String + 16) == 101;
  v1 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = *(*(i - 8 * v1 + 8) + 128);
  v12 = (v11 + 24);
  if (*(v11 + 32) >= 0x41u)
  {
    v12 = *v12;
  }

  return *v12;
}

uint64_t MTLBoundsCheck::setLocationIndex(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(a1 - 8 * v1 + 8 * v3);
    if (!*v4)
    {
      String = llvm::MDString::getString(v4);
      if (v6 == 18)
      {
        v7 = *String == 0x61636F6C2E726961 && *(String + 8) == 0x646E695F6E6F6974;
        if (v7 && *(String + 16) == 30821)
        {
          break;
        }
      }
    }

    ++v3;
    v1 = *(a1 + 8);
    if (v3 >= v1)
    {
      return 0;
    }
  }

  v10 = *(a1 + 16);
  v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 4) != 0)
  {
    v11 = *v11;
  }

  llvm::Type::getInt32Ty(v11, 0x12);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  llvm::MDNode::replaceOperandWith();
  return 1;
}

uint64_t MTLBoundsCheck::getArgTypeName@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 8);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = result;
    do
    {
      result = *(v8 - 8 * v5);
      if (!*result)
      {
        result = llvm::MDString::getString(result);
        if (v9 == 17)
        {
          v11 = *result == 0x5F6772612E726961 && *(result + 8) == 0x6D616E5F65707974 && *(result + 16) == 101;
          v5 = *(v6 + 8);
          if (v11)
          {
            result = llvm::MDString::getString(*(v8 - 8 * v5 + 8));
            *a3 = result;
            *(a3 + 8) = v12;
            *(a3 + 16) = 1;
            return result;
          }
        }

        else
        {
          v5 = *(v6 + 8);
        }
      }

      ++v7;
      v8 += 8;
    }

    while (v7 < v5);
  }

  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  return result;
}

unsigned int *MTLBoundsCheck::getArgName@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result[2];
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = result;
    do
    {
      result = *&v8[-2 * v5];
      if (!*result)
      {
        result = llvm::MDString::getString(result);
        if (v9 == 12)
        {
          v10 = *result == 0x5F6772612E726961 && result[2] == 1701667182;
          v5 = v6[2];
          if (v10)
          {
            result = llvm::MDString::getString(*&v8[-2 * v5 + 2]);
            *a3 = result;
            *(a3 + 8) = v11;
            *(a3 + 16) = 1;
            return result;
          }
        }

        else
        {
          v5 = v6[2];
        }
      }

      ++v7;
      v8 += 2;
    }

    while (v7 < v5);
  }

  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  return result;
}

__n128 MTLBoundsCheck::getArgAccessType@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = 0;
    v8 = a1;
    do
    {
      v9 = *(v8 - 8 * v5);
      if (!*v9)
      {
        String = llvm::MDString::getString(v9);
        v13 = String;
        v14 = v11;
        if (v11 == 14)
        {
          if (!memcmp(String, "air.read_write", 0xEuLL) || (*v13 == 0x746972772E726961 ? (v15 = *(v13 + 6) == 0x796C6E6F5F657469) : (v15 = 0), v15))
          {
LABEL_19:
            *a3 = v13;
            *(a3 + 8) = v14;
            *(a3 + 16) = 1;
            return result;
          }
        }

        else if (v11 == 9)
        {
          if (!memcmp(String, "air.write", 9uLL))
          {
            goto LABEL_19;
          }
        }

        else if (v11 == 8 && *String == 0x646165722E726961)
        {
          goto LABEL_19;
        }
      }

      ++v7;
      v5 = *(a1 + 8);
      v8 += 8;
    }

    while (v7 < v5);
  }

  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = a2[1].n128_u64[0];
  return result;
}

uint64_t MTLBoundsCheck::getStructTypeInfo(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1;
  do
  {
    v5 = *(v4 - 8 * v1);
    if (!*v5)
    {
      String = llvm::MDString::getString(v5);
      if (v7 == 20)
      {
        v9 = *String == 0x757274732E726961 && *(String + 8) == 0x5F657079745F7463 && *(String + 16) == 1868983913;
        v1 = *(a1 + 8);
        if (v9)
        {
          return *(v4 - 8 * v1 + 8);
        }
      }

      else
      {
        v1 = *(a1 + 8);
      }
    }

    ++v3;
    v4 += 8;
  }

  while (v3 < v1);
  return 0;
}

void MTLBoundsCheck::MTLAddBoundsCheckPipelineToPM()
{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

{
  dispatch_once(&MTLBoundsCheck::MTLAddBoundsCheckPipelineToPM(llvm::legacy::PassManager &,MTLBoundsCheck::SharedPassData *,MTLBoundsCheck::Options const&,MTLBoundsCheck::Statistics *)::onceToken, &__block_literal_global);
}

void sub_2579CFCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  MEMORY[0x259C6B890](v42, 0x10F3C404E915695);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN14MTLBoundsCheck29MTLAddBoundsCheckPipelineToPMERN4llvm6legacy11PassManagerEPNS_14SharedPassDataERKNS_7OptionsEPNS_10StatisticsE_block_invoke()
{
  v0 = getenv("MTL_BOUNDS_PRINT_PASSES");
  if (!v0)
  {
    v0 = "0";
  }

  result = strtol(v0, 0, 0);
  MTLBoundsCheck::MTLAddBoundsCheckPipelineToPM(llvm::legacy::PassManager &,MTLBoundsCheck::SharedPassData *,MTLBoundsCheck::Options const&,MTLBoundsCheck::Statistics *)::printPasses = result != 0;
  return result;
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char *,char *>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

unint64_t llvm::DataLayout::getTypeSizeInBits(llvm::DataLayout *this, llvm::Type *a2)
{
  result = 16;
  switch(*(a2 + 2))
  {
    case 2u:
      return 32;
    case 3u:
    case 0xAu:
      return 64;
    case 4u:
      return 80;
    case 5u:
    case 6u:
      return 128;
    case 7u:
    case 9u:
    case 0xCu:
    case 0xEu:
    case 0x14u:
      __break(1u);
      return result;
    case 8u:
      v6 = this;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0xBu:
      return 0x2000;
    case 0xDu:
      return *(a2 + 2) >> 8;
    case 0xFu:
      if ((*(a2 + 2) & 0xFE) == 0x12)
      {
        v7 = *(**(a2 + 2) + 8);
      }

      v6 = this;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0x10u:
      v8 = *llvm::DataLayout::getStructLayout();
      goto LABEL_16;
    case 0x11u:
      v9 = *(a2 + 4);
      v8 = v9 * llvm::DataLayout::getTypeAllocSize(this, *(a2 + 3));
LABEL_16:
      result = 8 * v8;
      break;
    case 0x12u:
    case 0x13u:
      v4 = *(a2 + 8);
      result = llvm::DataLayout::getTypeSizeInBits(this, *(a2 + 3)) * v4;
      break;
    case 0x15u:
      v5 = MEMORY[0x259C6B350](a2);
      result = llvm::DataLayout::getTypeSizeInBits(this, v5);
      break;
    default:
      return result;
  }

  return result;
}

unint64_t llvm::DataLayout::getTypeAllocSize(llvm::DataLayout *this, llvm::Type *a2)
{
  v4 = llvm::DataLayout::getTypeSizeInBits(this, a2) + 7;
  ABITypeAlignment = llvm::DataLayout::getABITypeAlignment(this, a2);
  return (ABITypeAlignment + (v4 >> 3) - 1) / ABITypeAlignment * ABITypeAlignment;
}

void IndirectNameRenamePass::~IndirectNameRenamePass(IndirectNameRenamePass *this)
{
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t IndirectNameRenamePass::runOnModule(IndirectNameRenamePass *this, llvm::Module *a2)
{
  v2 = a2 + 24;
  v3 = *(a2 + 4);
  if (v3 == a2 + 24)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (v3)
      {
        v6 = (v3 - 56);
      }

      else
      {
        v6 = 0;
      }

      v5 |= IndirectNameRenamePass::runOnFunction(this, v6);
      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  return v5 & 1;
}

uint64_t IndirectNameRenamePass::runOnFunction(IndirectNameRenamePass *this, llvm::Function *a2)
{
  Name = llvm::Value::getName(a2);
  if (v3 < 0x11)
  {
    return 0;
  }

  v4 = *Name == 0x69646E692E6C746DLL && *(Name + 8) == 0x6D656D5F74636572;
  if (!v4 || *(Name + 16) != 46)
  {
    return 0;
  }

  v11[0] = (Name + 17);
  v11[1] = (v3 - 17);
  llvm::StringRef::str(v11, __p);
  v10 = 260;
  v9 = __p;
  llvm::Value::setName();
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_2579D06B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **llvm::StringRef::str@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = this[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

void std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void MTLVertexFetchAnalysisPass::~MTLVertexFetchAnalysisPass(MTLVertexFetchAnalysisPass *this)
{
  *this = &unk_2868EB908;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLVertexFetchAnalysisPass::runOnModule(MTLVertexFetchAnalysisPass *this, llvm::Module *a2)
{
  MTLBoundsCheck::getMetalMetadata(a2, v17);
  v3 = v18 == 1 && v17[0] == 0;
  if (!v3 || (*(*(this + 4) + 20) & 0x80) == 0)
  {
    return 0;
  }

  result = llvm::Module::getFunction();
  if (result)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 257;
    v5 = result + 72;
    for (i = *(result + 80); i != v5; i = *(i + 8))
    {
      v7 = i - 24;
      if (!i)
      {
        v7 = 0;
      }

      v8 = v7 + 40;
      for (j = *(v7 + 48); j != v8; j = *(j + 8))
      {
        if (j)
        {
          v10 = j - 24;
        }

        else
        {
          v10 = 0;
        }

        if (*(v10 + 16) == 60)
        {
          MetalModulePass::cacheStaticBoundsInfo(this, v10, &v11);
        }
      }
    }

    return 1;
  }

  return result;
}

void MTLGEPAnalysisPass::~MTLGEPAnalysisPass(MTLGEPAnalysisPass *this)
{
  *this = &unk_2868EB908;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLGEPAnalysisPass::runOnModule(MTLGEPAnalysisPass *this, llvm::Module *a2)
{
  MTLBoundsCheck::getMetalMetadata(a2, v25);
  v4 = v27;
  if (v27 == 1)
  {
    v5 = v26;
    std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::clear(*(this + 8) + 168);
    MTLGEPAnalysisPass::trackGlobals(this);
    v6 = a2 + 24;
    for (i = *(a2 + 4); i != v6; i = *(i + 8))
    {
      if (i)
      {
        v8 = (i - 56);
      }

      else
      {
        v8 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v8) & 1) == 0)
      {
        MTLGEPAnalysisPass::trackArguments(this, v8);
        MTLGEPAnalysisPass::trackAllocas(this, v8);
        if (*(*(this + 4) + 21))
        {
          v9 = *(this + 24);
          v34 = *(this + 8);
          v35 = v9;
          llvm::InstVisitor<MTLGEPAnalysisPass::BacktrackVisitor,void>::visit(&v28, v8);
        }
      }
    }

    v10 = (v5 - 8 * *(v5 + 8));
    v11 = *(*v10 + 128);
    if (*(v11 + 96))
    {
      v12 = 0;
      v13 = 0;
      v14 = v10[2];
      v15 = v14;
      do
      {
        v16 = *(v15 - 8 * *(v14 + 8));
        if (*(v11 + 18))
        {
          llvm::Function::BuildLazyArguments(v11);
        }

        v17 = *(v11 + 88);
        MetalModulePass::getStaticBoundsInfo(this, (v17 + v12), &v28);
        if (v33 == 1)
        {
          String = llvm::MDString::getString(*(v16 - 8 * *(v16 + 8) + 8));
          if (v19 == 10)
          {
            if (*String == 0x666675622E726961 && *(String + 8) == 29285)
            {
              LocationIndex = MTLBoundsCheck::getLocationIndex(v16);
              if ((v30 & 1) == 0)
              {
                v30 = 1;
              }

              v29 = LocationIndex;
            }
          }

          else if (v19 == 19)
          {
            v20 = *String == 0x69646E692E726961 && *(String + 8) == 0x6675625F74636572;
            if (v20 && *(String + 11) == 0x7265666675625F74)
            {
              v31 = 1;
              v32 = 1;
            }
          }

          MetalModulePass::cacheStaticBoundsInfo(this, v17 + v12, &v28);
        }

        ++v13;
        v15 += 8;
        v12 += 40;
      }

      while (*(v11 + 96) > v13);
    }
  }

  return v4;
}

void MTLGEPAnalysisPass::trackGlobals(MTLGEPAnalysisPass *this)
{
  v1 = *(this + 6);
  v2 = v1 + 8;
  v3 = *(v1 + 16);
  if (v3 != v1 + 8)
  {
    do
    {
      if (v3)
      {
        v5 = (v3 - 56);
      }

      else
      {
        v5 = 0;
      }

      v13 = v17;
      v14 = v17;
      v15 = 8;
      v16 = 0;
      if (*(*v5 + 2) == 15 && ((*(*v5 + 2) >> 8) - 1) <= 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 256;
        v12 = 0;
        v6 = (*(*(this + 4) + 20) & 0x100000u) >> 20;
        LOBYTE(v11) = (*(*(this + 4) + 20) & 0x100000) == 0;
        HIBYTE(v11) = v6;
        v7 = v5;
        llvm::DataLayout::getTypeAllocSize(*(this + 7), v5[3]);
        v8 = llvm::TypeSize::operator unsigned long long();
        MetalModulePass::cacheStaticBoundsInfo(this, v5, &v7);
        MTLGEPAnalysisPass::trackSource(this, v5);
        if (v14 != v13)
        {
          free(v14);
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }
}

void sub_2579D0E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  if (a16 != a15)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void MTLGEPAnalysisPass::trackArguments(MTLGEPAnalysisPass *this, llvm::Function *a2)
{
  v3 = llvm::Function::args(a2);
  if (v3 != v4)
  {
    v5 = v3;
    v6 = v4;
    do
    {
      if (*(*v5 + 8) == 15 && ((*(*v5 + 8) >> 8) - 1) <= 1)
      {
        MTLGEPAnalysisPass::trackSource(this, v5);
        *v9 = 0;
        *&v9[8] = 0;
        v9[12] = 0;
        v9[16] = 0;
        *&v9[20] = 256;
        v9[22] = 0;
        MetalModulePass::getStaticBoundsInfo(this, v5, v7);
        if (v8 == 1)
        {
          *v9 = *v7;
          *&v9[15] = *&v7[15];
        }

        *v9 = v5;
        *&v9[8] = llvm::Argument::getDereferenceableBytes(v5);
        if ((v9[22] & 1) == 0)
        {
          *&v9[20] = 256;
        }

        MetalModulePass::cacheStaticBoundsInfo(this, v5, v9);
      }

      v5 = (v5 + 40);
    }

    while (v5 != v6);
  }
}

void MTLGEPAnalysisPass::trackAllocas(llvm::DataLayout **this, llvm::Function *a2)
{
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    do
    {
      v5 = v3 - 24;
      if (!v3)
      {
        v5 = 0;
      }

      v6 = v5 + 40;
      for (i = *(v5 + 6); i != v6; i = i[1])
      {
        if (i)
        {
          v8 = (i - 3);
        }

        else
        {
          v8 = 0;
        }

        if (*(v8 + 16) == 59)
        {
          MTLGEPAnalysisPass::trackSource(this, v8);
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 256;
          v14 = 0;
          v9 = v8;
          llvm::DataLayout::getTypeAllocSize(this[7], *(v8 + 64));
          v10 = llvm::TypeSize::operator unsigned long long();
          v13 = 1;
          MetalModulePass::cacheStaticBoundsInfo(this, v8, &v9);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }
}

void std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void MTLGEPAnalysisPass::trackSource(MTLGEPAnalysisPass *this, llvm::Value *a2)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v21 = a2;
  v23[0] = *(a2 + 1);
  v23[1] = 0;
  llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v24, v23);
  v4 = *(a2 + 16);
  v5 = v4 > 0x3B;
  v6 = (1 << v4) & 0x800000000200008;
  if (!v5 && v6 != 0)
  {
    v8 = *(this + 8);
    v23[0] = &v21;
    v9 = std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>((v8 + 168), &v21);
    v23[0] = v21;
    std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::__emplace_unique_key_args<llvm::Value *,llvm::Value *>(v9 + 3, v23);
  }

  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  for (i = v25; v25; i = v25)
  {
    v11 = *(v24 + i - 1);
    v25 = i - 1;
    v18 = v11;
    v22 = 0;
    v23[0] = v11;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>(v19, v23, &v22) & 1) == 0)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v19, &v18, v23);
      v12 = *(this + 8);
      v22 = v18;
      v23[0] = &v22;
      v13 = std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value *&&>,std::tuple<>>((v12 + 168), &v22);
      v23[0] = v21;
      std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::__emplace_unique_key_args<llvm::Value *,llvm::Value *>(v13 + 3, v23);
      v14 = v18;
      v15 = *(v18 + 16);
      if (!v18 || v15 < 0x1C)
      {
        if (!v18)
        {
          continue;
        }

        if (v15 != 5)
        {
          continue;
        }

        v16 = *(v18 + 9);
        if (v16 > 0x37 || ((1 << v16) & 0x83800430022000) == 0)
        {
          continue;
        }

        goto LABEL_16;
      }

      if (MTLGEPAnalysisPass::shouldFollowInstruction(this, v15 - 28, v18))
      {
        v14 = v18;
LABEL_16:
        llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v24, v24 + 8 * v25, *(v14 + 1), 0);
      }
    }
  }

  llvm::DenseMap<llvm::User *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::User *,void>,llvm::detail::DenseSetPair<llvm::User *>>::~DenseMap(v19);
  if (v24 != v26)
  {
    free(v24);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2579D12C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  if (a20 != &a22)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGEPAnalysisPass::shouldFollowInstruction(MTLGEPAnalysisPass *this, int a2, llvm::Instruction *a3)
{
  if (a3 && *(a3 + 16) == 84)
  {
    result = *(a3 - 4);
    if (!result)
    {
      return result;
    }

    if (*(result + 16))
    {
      return 0;
    }

    if (*(result + 24) != *(a3 + 9))
    {
      return 0;
    }

    Name = llvm::Value::getName(result);
    if (v5 < 7)
    {
      return 0;
    }

    if (*Name != 779250017 || *(Name + 3) != 1684300078)
    {
      if (v5 < 0xB)
      {
        return 0;
      }

      v7 = 0x626F756E64732E66;
      v8 = bswap64(*Name);
      if (v8 == 0x626F756E64732E66 && (v7 = 0x6E64732E666F6C64, v8 = bswap64(*(Name + 3)), v8 == 0x6E64732E666F6C64))
      {
        v9 = 0;
      }

      else
      {
        v9 = v8 < v7 ? -1 : 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return (a2 - 13) <= 0x2A && ((0x41C00218011uLL >> (a2 - 13)) & 1) != 0;
}

void *llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(void *a1, uint64_t *a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_2579D1460(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_2579D1714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::__emplace_unique_key_args<llvm::Value *,llvm::Value *>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value *&&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_2579D1C6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t llvm::Function::args(llvm::Function *this)
{
  if (*(this + 9))
  {
    llvm::Function::BuildLazyArguments(this);
    v2 = *(this + 11);
    if (*(this + 9))
    {
      llvm::Function::BuildLazyArguments(this);
      v3 = *(this + 11);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *(this + 11);
  }

  v3 = v2;
LABEL_6:
  v4 = v3 + 40 * *(this + 12);
  return v2;
}

uint64_t llvm::InstVisitor<MTLGEPAnalysisPass::BacktrackVisitor,void>::visit(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *a1 = v4;
  DataLayout = llvm::Module::getDataLayout(v4);
  v6 = **a1;
  *(a1 + 8) = v6;
  *(a1 + 16) = DataLayout;
  *(a1 + 24) = llvm::Type::getInt32Ty(v6, v7);
  v8 = *(a2 + 80);

  return llvm::InstVisitor<MTLGEPAnalysisPass::BacktrackVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock,false,false,void>,false,false>>(a1, v8, a2 + 72);
}

{
  v2 = *(a2 + 16);
  if ((v2 - 61) > 0x22)
  {
    if ((v2 - 29) >= 0x1F)
    {
      return MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitLoadInst(a1, a2);
    }
  }

  else if (((1 << (v2 - 61)) & 0x7FF7FFFFELL) == 0)
  {
    if (v2 == 61)
    {
      return MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitStoreInst(a1, a2);
    }

    else
    {
      return MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitCallInst(a1, a2);
    }
  }

  return a1;
}

uint64_t llvm::InstVisitor<MTLGEPAnalysisPass::BacktrackVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock,false,false,void>,false,false>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = *(a2 + 8);
      if (a2)
      {
        v6 = a2 - 24;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 48);
      v8 = v6 + 40;
      if (v7 != v6 + 40)
      {
        do
        {
          v9 = *(v7 + 8);
          if (v7)
          {
            v10 = v7 - 24;
          }

          else
          {
            v10 = 0;
          }

          result = llvm::InstVisitor<MTLGEPAnalysisPass::BacktrackVisitor,void>::visit(v4, v10);
          v7 = v9;
        }

        while (v9 != v8);
      }

      a2 = v5;
    }

    while (v5 != a3);
  }

  return result;
}

void *MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitLoadInst(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v6 = (llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), **(**(a2 - 32) + 16)) + 7) >> 3;
  llvm::TypeSize::operator unsigned long long();
  llvm::ConstantInt::get();
  return MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(a1, a2, *(a2 - 32));
}

void *MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v11[0] = a3;
  v4 = *(*a3 + 8);
  if ((v4 & 0xFE) == 0x12)
  {
    v4 = *(**(*a3 + 16) + 8);
  }

  if ((v4 >> 8) - 1 <= 1)
  {
    v5 = result[4];
    ++*(result[5] + 8);
    v11[2] = v11;
    result = std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>((v5 + 168), v11);
    v6 = result[6];
    if (v6 < 2)
    {
      v8 = v3[5];
      v9 = (v8 + 16);
      v10 = (v8 + 12);
      if (v6)
      {
        v7 = v9;
      }

      else
      {
        v7 = v10;
      }
    }

    else
    {
      v7 = (v3[5] + 12);
    }

    ++*v7;
  }

  return result;
}

void *MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitStoreInst(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v6 = (llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), **(**(a2 - 32) + 16)) + 7) >> 3;
  llvm::TypeSize::operator unsigned long long();
  llvm::ConstantInt::get();
  return MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(a1, a2, *(a2 - 32));
}

void *MemoryOpVisitor<MTLGEPAnalysisPass::BacktrackVisitor>::visitCallInst(uint64_t a1, uint64_t a2)
{
  result = *(a2 - 32);
  if (!result || *(result + 16) || result[3] != *(a2 + 72))
  {
    return result;
  }

  result = llvm::Value::getName(result);
  if (v5 < 0xB)
  {
    if (v5 != 10)
    {
      return result;
    }

    if (*result != 0x6D6F74612E726961 || *(result + 4) != 25449)
    {
      return result;
    }

    goto LABEL_45;
  }

  v8 = *result != 0x6D656D2E6D766C6CLL || *(result + 3) != 0x7970636D656D2E6DLL;
  v9 = 0x6C6C766D2E6D656DLL;
  v10 = bswap64(*result);
  if (v10 == 0x6C6C766D2E6D656DLL && (v9 = 0x6D2E6D656D636D70, v10 = bswap64(*(result + 3)), v10 == 0x6D2E6D656D636D70))
  {
    v11 = 0;
  }

  else if (v10 < v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (!v8 || v11 == 0)
  {
    v13 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    v14 = v13[4];
    v15 = v13[8];
    MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(a1, a2, *v13);
    v16 = a1;
    v17 = a2;
    v18 = v14;
LABEL_48:

    return MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(v16, v17, v18);
  }

  if (*result == 0x6D656D2E6D766C6CLL && *(result + 3) == 0x7465736D656D2E6DLL)
  {
    v25 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    v18 = *v25;
    v26 = v25[8];
    v16 = a1;
    v17 = a2;
    goto LABEL_48;
  }

  if (*result == 0x6D6F74612E726961 && *(result + 4) == 25449)
  {
LABEL_45:
    v22 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    PtrTypeFromIntrinsicNameSuffix = getPtrTypeFromIntrinsicNameSuffix(result, v5, *(a1 + 8));
    goto LABEL_46;
  }

  if (*result == 0x662E73646E756F62 && *(result + 3) == 0x646C6F662E73646ELL)
  {
    v22 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    PtrTypeFromIntrinsicNameSuffix = **(*v22 + 16);
LABEL_46:
    v24 = *(a1 + 24);
    v27 = (llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), PtrTypeFromIntrinsicNameSuffix) + 7) >> 3;
    llvm::TypeSize::operator unsigned long long();
    llvm::ConstantInt::get();
    return MTLGEPAnalysisPass::BacktrackVisitor::visitPointerOperand(a1, a2, v22);
  }

  return result;
}

void MTLBoundsCheckPass::~MTLBoundsCheckPass(void **this)
{
  *this = &unk_2868EC018;
  if (*(this + 839) < 0)
  {
    operator delete(this[102]);
  }

  v2 = this[68];
  if (v2 != this + 70)
  {
    free(v2);
  }

  v3 = this[34];
  if (v3 != this + 36)
  {
    free(v3);
  }

  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table((this + 29));
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap((this + 20));
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap((this + 17));

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EC018;
  if (*(this + 839) < 0)
  {
    operator delete(this[102]);
  }

  v2 = this[68];
  if (v2 != this + 70)
  {
    free(v2);
  }

  v3 = this[34];
  if (v3 != this + 36)
  {
    free(v3);
  }

  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table((this + 29));
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap((this + 20));
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap((this + 17));
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLBoundsCheckPass::runOnModule(MTLBoundsCheckPass *this, llvm::Module *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  if ((*(*(*(this + 8) + 64) + 651) & 1) == 0)
  {
    MTLBoundsCheckPass::initLocalsWithModule(this, a2);
    MetalMetadata = MTLBoundsCheck::getMetalMetadata(a2, v54);
    if (v56 == 1)
    {
      *(this + 23) = v55;
      v5 = llvm::dbgs(MetalMetadata);
      v6 = llvm::raw_ostream::operator<<(v5, "Bounds checking ", 0x10uLL);
      v7 = *(this + 839);
      if (v7 >= 0)
      {
        v8 = this + 816;
      }

      else
      {
        v8 = *(this + 102);
      }

      if (v7 >= 0)
      {
        v9 = *(this + 839);
      }

      else
      {
        v9 = *(this + 103);
      }

      v10 = llvm::raw_ostream::write(v6, v8);
      llvm::raw_ostream::operator<<(v10, "\n", 1uLL);
      v11 = *(this + 23);
      v12 = *(v11 + 8);
      v13 = -v12;
      v53 = *(*(v11 - 8 * v12) + 128);
      *(this + 840) = 1;
      for (i = *(a2 + 2); i != (a2 + 8); i = i[1])
      {
        v15 = i - 7;
        if (!i)
        {
          v15 = 0;
        }

        v16 = *(*v15 + 8);
        if ((v16 & 0xFE) == 0x12)
        {
          v16 = *(**(*v15 + 16) + 8);
        }

        v17 = (v16 >> 8) - 1;
        if (v17 < 2 || (v15[33] & 0x1C) != 0)
        {
          *(this + 840) = 0;
          v18 = *(*(this + 8) + 64);
          v19 = *(v18 + 648);
          v20 = (v19 >> 1) & 1;
          if (v17 < 2)
          {
            v20 = 1;
          }

          if (v20)
          {
            v21 = 2;
          }

          else
          {
            v21 = 0;
          }

          *(v18 + 648) = v21 | v19 & 0xFD;
          v11 = *(this + 23);
          v13 = -*(v11 + 8);
          break;
        }
      }

      v22 = *(v11 + 8 * v13 + 16);
      v23 = *(v22 + 8);
      if (v23)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = v22;
        do
        {
          String = llvm::MDString::getString(*(*(v27 - 8 * v23) - 8 * *(*(v27 - 8 * v23) + 8) + 8));
          if (v29 == 10)
          {
            if (*String == 0x666675622E726961 && *(String + 8) == 29285)
            {
              v33 = v53;
              if (*(v53 + 9))
              {
                llvm::Function::BuildLazyArguments(v53);
                v33 = v53;
              }

              String = llvm::Value::hasNUsesOrMore((*(v33 + 11) + v24));
              v26 |= String;
            }
          }

          else if (v29 == 19)
          {
            v30 = *String == 0x69646E692E726961 && *(String + 8) == 0x6675625F74636572;
            if (v30 && *(String + 11) == 0x7265666675625F74)
            {
              *(this + 840) = 0;
              *(*(*(this + 8) + 64) + 648) |= 4u;
              v26 = 1;
            }
          }

          ++v25;
          v23 = *(v22 + 8);
          v27 += 8;
          v24 += 40;
        }

        while (v25 < v23);
        if (v26)
        {
          v34 = *(*(*(this + 8) + 64) + 648);
          if ((v34 & 4) != 0)
          {
            v35 = llvm::dbgs(String);
            String = llvm::raw_ostream::operator<<(v35, "Instrumentation failure: argumentBuffer\n", 0x28uLL);
            v34 = *(*(*(this + 8) + 64) + 648);
          }

          if ((v34 & 2) != 0)
          {
            v36 = llvm::dbgs(String);
            llvm::raw_ostream::operator<<(v36, "Instrumentation failure: globalConstants\n", 0x29uLL);
          }

          for (j = *(a2 + 4); j != (a2 + 24); j = j[1])
          {
            if (j)
            {
              v38 = (j - 7);
            }

            else
            {
              v38 = 0;
            }

            if ((llvm::GlobalValue::isDeclaration(v38) & 1) == 0 && !llvm::Value::getMetadata())
            {
              MTLBoundsCheckPass::instrumentFunction(this, v38);
            }
          }

          v39 = *(this + 70);
          if (v39)
          {
            v40 = *(this + 34);
            v41 = 8 * v39;
            do
            {
              v42 = *v40++;
              llvm::Instruction::setMetadata();
              v41 -= 8;
            }

            while (v41);
          }

          *(this + 70) = 0;
          v43 = *(this + 138);
          if (v43)
          {
            v44 = *(this + 68);
            v45 = 8 * v43;
            do
            {
              v46 = *v44++;
              llvm::Instruction::eraseFromParent(v46);
              v45 -= 8;
            }

            while (v45);
          }

          *(this + 138) = 0;
          v47 = *(v53 + 3);
          v57[0] = "mtl.instrument_wrapper";
          v58 = 259;
          v48 = llvm::Function::Create(v47, 0, v57, *(this + 6));
          *(v53 + 8) = *(v53 + 8) & 0xFFFFBFC0 | 0x4007;
          llvm::GlobalValue::setLinkage(v48, 0);
          *(v48 + 14) = *(v53 + 14);
          v49 = *(this + 5);
          v57[0] = "entry";
          v58 = 259;
          llvm::BasicBlock::Create(v49, v57, v48, 0, v50);
        }
      }
    }
  }

  result = 0;
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579D2A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (a18 != v28)
  {
    free(a18);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a28);
  _Unwind_Resume(a1);
}

void MTLBoundsCheckPass::initLocalsWithModule(MTLBoundsCheckPass *this, llvm::Module *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = this + 72;
  v3 = *(this + 9);
  *(v4 + 15) = llvm::PointerType::get();
  v5 = *(v4 - 5);
  if (*(v5 + 4))
  {
    if ((*(v5 + 21) & 0x20) != 0)
    {
      v6 = this + 80;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = this + 88;
  }

  v7 = *v6;
  *(this + 25) = llvm::PointerType::get();
  v8 = *(this + 9);
  *(this + 26) = llvm::PointerType::get();
  v9 = *(this + 12);
  *(this + 27) = llvm::PointerType::get();
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 29);
  std::string::operator=(this + 34, (*(this + 6) + 192));
  v10 = *(this + 6);
  v26.__r_.__value_.__r.__words[0] = "air.requestHash";
  v27 = 259;
  if (llvm::Module::getNamedMetadata(v10, &v26))
  {
    v11 = *(this + 6);
    v26.__r_.__value_.__r.__words[0] = "air.requestHash";
    v27 = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(v11, &v26);
    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    *&v28 = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
    *(&v28 + 1) = v14;
    llvm::StringRef::str(&v28, __p);
    if (*(this + 839) >= 0)
    {
      v15 = *(this + 839);
    }

    else
    {
      v15 = *(this + 103);
    }

    v16 = &v26;
    std::string::basic_string[abi:ne200100](&v26, v15 + 1);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v26.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      if (*(this + 839) >= 0)
      {
        v17 = this + 816;
      }

      else
      {
        v17 = *(this + 102);
      }

      memmove(v16, v17, v15);
    }

    *(&v16->__r_.__value_.__l.__data_ + v15) = 58;
    if ((v25 & 0x80u) == 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v19 = v25;
    }

    else
    {
      v19 = __p[1];
    }

    v20 = std::string::append(&v26, v18, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    *&v28 = v20->__r_.__value_.__l.__size_;
    *(&v28 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (*(this + 839) < 0)
    {
      operator delete(*(this + 102));
    }

    *(this + 102) = v21;
    *(this + 103) = v28;
    *(this + 831) = *(&v28 + 7);
    *(this + 839) = v22;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2579D2D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void MTLBoundsCheckPass::instrumentFunction(llvm::DataLayout **this, llvm::Function *a2)
{
  v72[32] = *MEMORY[0x277D85DE8];
  v70 = v72;
  v71 = 0x800000000;
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 == a2 + 72)
  {
    goto LABEL_109;
  }

  v54 = **(a2 + 5);
  do
  {
    v5 = v3 - 24;
    if (!v3)
    {
      v5 = 0;
    }

    v6 = v5 + 40;
    for (i = *(v5 + 6); i != v6; i = i[1])
    {
      if (i)
      {
        v8 = i - 3;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v8 + 16);
      if (i && v9 == 60)
      {
        if (*(this[4] + 8))
        {
          v59 = *(v8 - 4);
          v65 = ((llvm::DataLayout::getTypeSizeInBits(this[7], **(*v59 + 2)) + 7) >> 3);
          v66 = v10 == 1;
          v11 = *(*v59 + 2);
          if ((v11 & 0xFE) == 0x12)
          {
            v11 = *(**(*v59 + 2) + 8);
          }

          if ((v11 >> 8) - 1 <= 1)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        if (i && v9 == 61)
        {
          if ((*(this[4] + 8) & 2) != 0)
          {
            v59 = *(v8 - 4);
            v65 = ((llvm::DataLayout::getTypeSizeInBits(this[7], **(*v59 + 2)) + 7) >> 3);
            v66 = v12 == 1;
            v13 = *(*v59 + 2);
            if ((v13 & 0xFE) == 0x12)
            {
              v13 = *(**(*v59 + 2) + 8);
            }

            if ((v13 >> 8) - 1 <= 1)
            {
              v55[0] = (i - 3);
              LOBYTE(v64) = 0;
              llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::TypeSize &,BOOL>(&v70, v55, &v59, &v65, &v64);
            }
          }

          continue;
        }

        if (!i)
        {
          continue;
        }

        if (v9 != 84)
        {
          continue;
        }

        v14 = *(v8 - 4);
        if (!v14 || *(v14 + 16) || *(v14 + 24) != v8[9])
        {
          continue;
        }

        Name = llvm::Value::getName(v14);
        if (v16 >= 0xB)
        {
          v17 = *Name == 0x6D656D2E6D766C6CLL && *(Name + 3) == 0x7970636D656D2E6DLL;
          v18 = !v17;
          v19 = *Name ^ 0x6D656D2E6D766C6CLL | *(Name + 3) ^ 0x706D636D656D2E6DLL;
          v17 = v19 == 0;
          v20 = v19 != 0;
          v21 = v17;
          LOBYTE(v63) = v21;
          if (v18)
          {
            v22 = !v20;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            v23 = &v8[-4 * (*(v8 + 5) & 0x7FFFFFF)];
            v65 = *v23;
            v24 = v23[4];
            v59 = v24;
            v55[0] = v23[8];
            v25 = *(*v65 + 8);
            if ((v25 & 0xFE) == 0x12)
            {
              v25 = *(**(*v65 + 16) + 8);
            }

            if ((v25 >> 8) - 1 <= 1)
            {
              v64 = (i - 3);
              llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(&v70, &v64, &v65, v55, &v63);
              v24 = v59;
            }

            v26 = *v24;
            v27 = *(*v24 + 8);
            if ((v27 & 0xFE) == 0x12)
            {
              v27 = *(**(v26 + 16) + 8);
            }

            if ((v27 >> 8) - 1 <= 1)
            {
              v64 = (i - 3);
              LOBYTE(v58) = 1;
              llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(&v70, &v64, &v59, v55, &v58);
            }

            continue;
          }

          if (*Name == 0x6D656D2E6D766C6CLL && *(Name + 3) == 0x7465736D656D2E6DLL)
          {
            v33 = &v8[-4 * (*(v8 + 5) & 0x7FFFFFF)];
            v65 = *v33;
            v59 = v33[8];
            v34 = *(*v65 + 8);
            if ((v34 & 0xFE) == 0x12)
            {
              v34 = *(**(*v65 + 16) + 8);
            }

            if ((v34 >> 8) - 1 <= 1)
            {
              v55[0] = (i - 3);
              LOBYTE(v64) = 0;
              llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(&v70, v55, &v65, &v59, &v64);
            }

            continue;
          }
        }

        else
        {
          LOBYTE(v63) = 0;
          if (v16 != 10)
          {
            continue;
          }
        }

        if (*Name == 0x6D6F74612E726961 && *(Name + 8) == 25449)
        {
          v59 = v8[-4 * (*(v8 + 5) & 0x7FFFFFF)];
          if (*(*v59 + 8) != 15)
          {
            goto LABEL_109;
          }

          PtrTypeFromIntrinsicNameSuffix = getPtrTypeFromIntrinsicNameSuffix(Name, v16, v54);
          v65 = ((llvm::DataLayout::getTypeSizeInBits(this[7], PtrTypeFromIntrinsicNameSuffix) + 7) >> 3);
          v66 = v31 == 1;
          v32 = *(*v59 + 2);
          if ((v32 & 0xFE) == 0x12)
          {
            v32 = *(**(*v59 + 2) + 8);
          }

          if ((v32 >> 8) - 1 <= 1)
          {
LABEL_16:
            v55[0] = (i - 3);
            LOBYTE(v64) = 1;
            llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::TypeSize &,BOOL>(&v70, v55, &v59, &v65, &v64);
            continue;
          }
        }
      }
    }

    v3 = *(v3 + 1);
  }

  while (v3 != v2);
  v35 = v71;
  v36 = v70;
  *this[106] += v71;
  if (v35)
  {
    v37 = &v36[4 * v35];
    do
    {
      v64 = *v36;
      MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(&v65, &v64);
      v38 = *v64;
      v63 = v36[1];
      v39 = **(*v63 + 16);
      if (v39)
      {
        v40 = *(v39 + 8) == 15;
      }

      else
      {
        v40 = 0;
      }

      if (!v40 || ((v41 = **(v39 + 16)) != 0 ? (v42 = *(v41 + 8) == 16) : (v42 = 0), !v42 || !isSpecialStructType(v41)))
      {
        if ((*(this[4] + 20) & 0x20) != 0)
        {
          v43 = this[8];
          v59 = &v63;
          for (j = std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(v43 + 21, &v63)[5]; j; j = *j)
          {
            MetalModulePass::getStaticBoundsInfo(this, j[2], &v59);
          }
        }

        MetalModulePass::getStaticBoundsInfo(this, v64, &v59);
        if (v62 != 1 || (v61 & 1) == 0)
        {
          MetalModulePass::getStaticBoundsInfo(this, v63, &v59);
          if (v62 != 1 || (v61 & 1) == 0)
          {
            MTLBoundsCheckPass::emitPointerCheck(this, &v65, v63, v36[2], &v59);
            if ((v59 & 1) == 0)
            {
              v45 = this[106];
              if (*(v60 + 16) >= 0x15u)
              {
                ++*(v45 + 24);
              }

              ++*(v45 + 1);
              llvm::IRBuilderBase::SetInsertPoint(&v65, v64);
              v46 = this[4];
              if (*(v46 + 3) == 1)
              {
                v57 = 0;
                v58 = 0;
                if (llvm::Value::hasNUsesOrMore(*v36))
                {
                  v56 = 257;
                  PHI = llvm::IRBuilderBase::CreatePHI(&v65, v38, 0, v55, v47);
                  llvm::SplitBlockAndInsertIfThenElse();
                  llvm::Value::replaceAllUsesWith();
                  llvm::IRBuilderBase::SetInsertPoint(&v65, v57);
                  MTLBoundsCheckPass::emitBadAccessNotice(this, &v65, &v59, v64, v63, v36);
                  llvm::Instruction::moveBefore();
                  llvm::PHINode::addIncoming(PHI, v64, *(v58 + 40));
                  NullValue = llvm::Constant::getNullValue(v38, v49);
                  llvm::PHINode::addIncoming(PHI, NullValue, *(v57 + 5));
                }

                else
                {
                  llvm::SplitBlockAndInsertIfThenElse();
                  llvm::IRBuilderBase::SetInsertPoint(&v65, v57);
                  MTLBoundsCheckPass::emitBadAccessNotice(this, &v65, &v59, v64, v63, v36);
                  llvm::Instruction::moveBefore();
                }
              }

              else if ((*(v46 + 20) & 2) != 0)
              {
                v56 = 257;
                llvm::IRBuilderBase::CreateNot(&v65, v60, v55);
                inserted = llvm::SplitBlockAndInsertIfThen();
                llvm::IRBuilderBase::SetInsertPoint(&v65, inserted);
                MTLBoundsCheckPass::emitBadAccessNotice(this, &v65, &v59, v64, v63, v36);
              }

              llvm::IRBuilderBase::SetInsertPoint(&v65, v64);
              v52 = MTLBoundsCheckPass::emitPointerConvert(this, &v65, &v59, v63);
              if (v52 && v52 != v63)
              {
                llvm::User::replaceUsesOfWith();
              }
            }
          }
        }
      }

      llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v69);
      llvm::IRBuilderFolder::~IRBuilderFolder(&v68);
      if (v65 != &v67)
      {
        free(v65);
      }

      v36 += 4;
    }

    while (v36 != v37);
  }

LABEL_109:
  if (v70 != v72)
  {
    free(v70);
  }

  v53 = *MEMORY[0x277D85DE8];
}

void sub_2579D35D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  if (a53 != a11)
  {
    free(a53);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, const void *a2, size_t a3)
{
  v6 = *(this + 3);
  v5 = *(this + 4);
  if (a3 <= v6 - v5)
  {
    if (a3)
    {
      memcpy(v5, a2, a3);
      *(this + 4) += a3;
    }

    return this;
  }

  else
  {

    return llvm::raw_ostream::write(this, a2);
  }
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::TypeSize &,BOOL>(uint64_t a1, llvm::Instruction **a2, llvm::Value **a3, uint64_t a4, char *a5)
{
  v7 = *(a1 + 8);
  if (v7 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>::growAndEmplaceBack<llvm::Instruction *,llvm::Value *&,llvm::TypeSize &,BOOL>(a1, a2, a3, a4, a5);
  }

  else
  {
    v8 = (*a1 + 32 * v7);
    v9 = *a2;
    v10 = *a3;
    v11 = llvm::TypeSize::operator unsigned long long();
    MTLBoundsCheckPass::MemoryAccessInfo::MemoryAccessInfo(v8, v9, v10, v11, *a5);
    v12 = (*(a1 + 8) + 1);
    *(a1 + 8) = v12;
    return *a1 + 32 * v12 - 32;
  }
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheckPass::MemoryAccessInfo>::emplace_back<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, char *a5)
{
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>::growAndEmplaceBack<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(a1, a2, a3, a4, a5);
  }

  v6 = *a1;
  v7 = *a1 + 32 * v5;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  *v7 = *a2;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  v11 = (v5 + 1);
  *(a1 + 8) = v11;
  return v6 + 32 * v11 - 32;
}

void MTLBoundsCheckPass::emitPointerCheck(MTLBoundsCheckPass *this@<X0>, MTLIRBuilder *a2@<X1>, llvm::Value *a3@<X3>, llvm::Value *a4@<X4>, uint64_t a5@<X8>)
{
  *(a5 + 8) = 0u;
  v7 = (a5 + 8);
  *(a5 + 52) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 24) = 0u;
  *a5 = 0;
  v8 = *(this + 4);
  if (!*(v8 + 4))
  {
    return;
  }

  if ((*(v8 + 20) & 0x20) == 0)
  {
    goto LABEL_53;
  }

  v13 = MTLBoundsCheckPass::backtracePointer(this, a3);
  if (!v13)
  {
    ++*(*(this + 106) + 12);
    goto LABEL_53;
  }

  getStaticBoundsInfo(v13, &v152);
  if (v155 == 1)
  {
    *a5 = 1;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    v14 = *(this + 13);
    *(a5 + 8) = llvm::ConstantInt::get();
    *(a5 + 40) = 0;
    return;
  }

  v148 = a2;
  if (v154 == 1)
  {
    v15 = *(this + 11);
    v16 = llvm::ConstantInt::get();
  }

  else
  {
    v16 = 0;
  }

  *(a5 + 40) = v16;
  v17 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::find<llvm::Value *>(this + 29, &v152);
  if (v17)
  {
    goto LABEL_38;
  }

  v157 = 0;
  Add = 0;
  v160 = 0;
  UDiv = 0;
  v18 = *(a2 + 6);
  v145 = (a2 + 48);
  v146 = *(a2 + 7);
  v19 = *(*(v18 + 56) + 80);
  if (v19)
  {
    v20 = (v19 - 24);
  }

  else
  {
    v20 = 0;
  }

  FirstNonPHIOrDbg = llvm::BasicBlock::getFirstNonPHIOrDbg(v20);
  for (i = *(FirstNonPHIOrDbg + 16); i == 59; i = *(v26 + 16))
  {
    v23 = *(FirstNonPHIOrDbg + 32);
    v24 = *(FirstNonPHIOrDbg + 40) + 40;
    FirstNonPHIOrDbg = v23 - 24;
    if (v23)
    {
      v25 = v23 == v24;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23 - 24;
    }
  }

  llvm::IRBuilderBase::SetInsertPoint(a2, FirstNonPHIOrDbg);
  v27 = *(v152 + 16);
  if (v27 < 4 || v27 == 59)
  {
    v28 = *(this + 9);
    WORD4(v164) = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a2, 47, v152, v28, &v162);
    v157 = Cast;
    v30 = *(this + 9);
    v31 = llvm::ConstantInt::get();
    WORD4(v164) = 257;
    Add = llvm::IRBuilderBase::CreateAdd(v148, Cast, v31, &v162, 0, 0);
    v32 = *(this + 10);
    UDiv = llvm::ConstantInt::get();
LABEL_26:
    v160 = 1;
    goto LABEL_27;
  }

  if (v154 == 1)
  {
    v120 = MTLBoundsCheck::SharedPassData::getOrInsertCheckBufferGV(*(this + 8));
    v121 = *(v120 + 24);
    WORD4(v164) = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a2, v121, v120, 0, 0, &v162);
    v124 = *(*(this + 4) + 20);
    if ((v124 & 0x2000) == 0)
    {
      Int64Ty = llvm::Type::getInt64Ty(**(this + 6), v122);
      WORD4(v164) = 257;
      ConstGEP1_32 = llvm::IRBuilderBase::CreateConstGEP1_32(v148, Int64Ty, AlignedLoad, 2 * v153, &v162);
      WORD4(v164) = 257;
      v143 = llvm::IRBuilderBase::CreateConstGEP1_32(v148, Int64Ty, AlignedLoad, (2 * v153) | 1, &v162);
      WORD4(v164) = 257;
      v157 = llvm::IRBuilderBase::CreateAlignedLoad(v148, Int64Ty, ConstGEP1_32, 0, 0, &v162);
      WORD4(v164) = 257;
      Add = llvm::IRBuilderBase::CreateAlignedLoad(v148, Int64Ty, v143, 0, 0, &v162);
      v124 = *(*(this + 4) + 20);
    }

    if ((v124 & 0x100) != 0)
    {
      if ((v124 & 0x2000) != 0)
      {
        Int32Ty = llvm::Type::getInt32Ty(**(this + 6), v122);
        WORD4(v164) = 257;
        ConstGEP1_64 = llvm::IRBuilderBase::CreateConstGEP1_64(v148, Int32Ty, AlignedLoad, v153, &v162);
        WORD4(v164) = 257;
        v128 = llvm::IRBuilderBase::CreateAlignedLoad(v148, Int32Ty, ConstGEP1_64, 0, 0, &v162);
      }

      else
      {
        WORD4(v164) = 257;
        Sub = llvm::IRBuilderBase::CreateSub(v148, Add, v157, &v162, 0, 0);
        v127 = *(this + 10);
        v174 = 257;
        v128 = llvm::IRBuilderBase::CreateCast(v148, 38, Sub, v127, v173);
      }

      UDiv = v128;
    }

    if (*(*(this + 4) + 21))
    {
      v133 = *(v152 + 8);
      if (!v133)
      {
        goto LABEL_26;
      }

      v134 = -1;
      do
      {
        v135 = *(v133 + 24);
        v173[0] = 0;
        if (v135)
        {
          v136 = MTLBoundsCheck::lookThroughPointerOps(v135, 0);
          v163 = xmmword_257A6DA40;
          v164 = xmmword_257A6DA50;
          v162 = "bounds.fold";
          v165 = 3;
          v166 = v173;
          if (llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::class_match<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::class_match<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::class_match<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>>::match<llvm::Value>(&v162, v136))
          {
            v137 = (v173[0] + 24);
            if (*(v173[0] + 32) >= 0x41u)
            {
              v137 = *v137;
            }

            v138 = *v137;
            if (v134 >= v138)
            {
              v134 = v138;
            }
          }
        }

        v133 = *(v133 + 8);
      }

      while (v133);
      if (v134 == -1)
      {
        goto LABEL_26;
      }

      v160 = v134;
      v139 = UDiv;
      v140 = *(this + 10);
      v141 = llvm::ConstantInt::get();
      WORD4(v164) = 257;
      UDiv = llvm::IRBuilderBase::CreateUDiv(v148, v139, v141, &v162, 0);
      v142 = *(this + 106) + 4 * log2(v134);
      ++*(v142 + 36);
    }
  }

LABEL_27:
  if (v18)
  {
    llvm::IRBuilderBase::SetInsertPoint(v148, v18, v146);
  }

  else
  {
    *v145 = 0;
    v145[1] = 0;
  }

  if (Add)
  {
    v33 = v157 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (!v33 || UDiv)
  {
    v17 = std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::__emplace_unique_key_args<llvm::Value *,llvm::Value *&,MTLBoundsCheckPass::KnownBufferData&>(this + 29, &v152);
  }

  if (v17)
  {
LABEL_38:
    v35 = v17[3];
    v34 = v17[4];
    v36 = v17[5];
    v37 = *(v17 + 12);
    *(a5 + 16) = v35;
    *(a5 + 24) = v34;
    *(a5 + 32) = v36;
    v38 = *(*(this + 4) + 20);
    if ((v38 & 0x100) != 0)
    {
      v150[0] = 0;
      v171 = 0;
      v172 = 0;
      v170 = 0;
      v39 = MTLBoundsCheck::lookThroughPointerOps(a3, 0);
      v163 = xmmword_257A6DA40;
      v162 = "bounds.fold";
      *&v164 = v150;
      *(&v164 + 1) = 1;
      v165 = &v172;
      v166 = 2;
      v167 = &v170;
      v168 = 3;
      v169 = &v171;
      if (llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>>::match<llvm::Value>(&v162, v39))
      {
        v40 = v172;
        WORD4(v164) = 257;
        v41 = llvm::IRBuilderBase::CreateUDiv(v148, v170, v171, &v162, 0);
        AddSat = MTLIRBuilder::CreateAddSat(v148, v40, v41);
        *(a5 + 48) = v150[0];
        *(a5 + 56) = AddSat;
        v43 = v171 + 3;
        if (*(v171 + 8) >= 0x41u)
        {
          v43 = *v43;
        }

        if (*v43 != v37)
        {
          v44 = v172;
          v45 = *(this + 10);
          WORD4(v164) = 257;
          v46 = llvm::IRBuilderBase::CreateCast(v148, 38, v170, v45, &v162);
          v174 = 257;
          v47 = llvm::IRBuilderBase::CreateUDiv(v148, v46, v171, v173, 0);
          v48 = *(this + 10);
          v49 = llvm::ConstantInt::get();
          v161 = 257;
          v50 = llvm::IRBuilderBase::CreateSub(v148, v47, v49, &v157, 0, 0);
          v172 = MTLIRBuilder::CreateAddSat(v148, v44, v50);
        }

        WORD4(v164) = 257;
        ICmp = llvm::IRBuilderBase::CreateICmp(v148, 35, v36, AddSat, &v162);
        *v7 = ICmp;
        if (*(ICmp + 16) == 16)
        {
          v52 = *(ICmp + 32);
          if (v52 > 0x40)
          {
            v53 = llvm::APInt::countLeadingZerosSlowCase((ICmp + 24)) == v52 - 1;
          }

          else
          {
            v53 = *(ICmp + 24) == 1;
          }

          v129 = v53;
          *a5 = v129;
        }

        *(a5 + 1) = 1;
        v130 = v171 + 3;
        if (*(v171 + 8) >= 0x41u)
        {
          v130 = *v130;
        }

        *(a5 + 64) = *v130;
        ++*(*(this + 106) + 20);
        return;
      }

      ++*(*(this + 106) + 56);
      v38 = *(*(this + 4) + 20);
    }

    if ((v38 & 0x100) == 0)
    {
      v54 = *(this + 9);
      WORD4(v164) = 257;
      v55 = llvm::IRBuilderBase::CreateCast(v148, 47, a3, v54, &v162);
      if ((*(*(this + 4) + 20) & 4) != 0)
      {
        WORD4(v164) = 257;
        v55 = llvm::IRBuilderBase::CreateAnd(v148, v55, 0x3FFFFFFFFFFFFuLL, &v162);
      }

      WORD4(v164) = 257;
      NSWFoldAdd = MTLIRBuilder::CreateNSWFoldAdd(v148, v55, a4, &v162);
      WORD4(v164) = 257;
      v57 = llvm::IRBuilderBase::CreateICmp(v148, 35, NSWFoldAdd, v35, &v162);
      v174 = 257;
      v58 = llvm::IRBuilderBase::CreateICmp(v148, 37, NSWFoldAdd, v34, v173);
      v161 = 257;
      *v7 = llvm::IRBuilderBase::CreateAnd(v148, v57, v58, &v157);
      return;
    }
  }

  a2 = v148;
LABEL_53:
  if ((*(*(this + 4) + 21) & 0x10) != 0)
  {
    *a5 = 1;
  }

  else
  {
    v59 = *(this + 9);
    WORD4(v164) = 257;
    v60 = llvm::IRBuilderBase::CreateCast(a2, 47, a3, v59, &v162);
    v61 = v60;
    if (*(this + 840) == 1)
    {
      v62 = *(this + 13);
      v63 = llvm::ConstantInt::get();
    }

    else
    {
      WORD4(v164) = 257;
      v64 = *v60;
      v65 = llvm::ConstantInt::get();
      LShr = llvm::IRBuilderBase::CreateLShr(a2, v61, v65, &v162, 0);
      v67 = *(this + 13);
      v174 = 257;
      v63 = llvm::IRBuilderBase::CreateCast(a2, 38, LShr, v67, v173);
    }

    v68 = v63;
    WORD4(v164) = 257;
    v69 = *v61;
    v70 = llvm::ConstantInt::get();
    v71 = llvm::IRBuilderBase::CreateLShr(a2, v61, v70, &v162, 0);
    WORD4(v164) = 257;
    v72 = *v71;
    v73 = llvm::ConstantInt::get();
    v74 = llvm::IRBuilderBase::CreateAnd(a2, v71, v73, &v162);
    WORD4(v164) = 257;
    v75 = *v74;
    v76 = llvm::ConstantInt::get();
    *(a5 + 40) = llvm::IRBuilderBase::CreateLShr(a2, v74, v76, &v162, 0);
    if ((*(*(this + 4) + 20) & 4) != 0)
    {
      WORD4(v164) = 257;
      v77 = *v61;
      v78 = llvm::ConstantInt::get();
      v61 = llvm::IRBuilderBase::CreateAnd(a2, v61, v78, &v162);
    }

    WORD4(v164) = 257;
    v149 = MTLIRBuilder::CreateNSWFoldAdd(a2, v61, a4, &v162);
    v79 = *(this + 9);
    WORD4(v164) = 257;
    PHI = llvm::IRBuilderBase::CreatePHI(a2, v79, 0, &v162, v80);
    v82 = *(this + 9);
    WORD4(v164) = 257;
    v84 = llvm::IRBuilderBase::CreatePHI(a2, v82, 0, &v162, v83);
    v171 = 0;
    v172 = 0;
    v147 = PHI;
    llvm::SplitBlockAndInsertIfThenElse();
    if (*(v68 + 16) >= 0x15u)
    {
      ++*(*(this + 106) + 96);
    }

    llvm::IRBuilderBase::SetInsertPoint(a2, v172);
    v85 = MTLBoundsCheck::SharedPassData::getOrInsertCheckBufferGV(*(this + 8));
    v86 = *(v85 + 3);
    WORD4(v164) = 257;
    v87 = llvm::IRBuilderBase::CreateAlignedLoad(a2, v86, v85, 0, 0, &v162);
    v88 = a2;
    v89 = *(this + 8);
    Name = llvm::Value::getName(v85);
    GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v89, Name, v91);
    WORD4(v164) = 257;
    v93 = llvm::IRBuilderBase::CreateInBoundsGEP(v88, GVBaseType, v87, v74, &v162);
    v94 = *(this + 8);
    v95 = llvm::Value::getName(v85);
    v97 = MTLBoundsCheck::SharedPassData::getGVBaseType(v94, v95, v96);
    v98 = *(this + 9);
    v99 = llvm::ConstantInt::get();
    WORD4(v164) = 257;
    v100 = MTLIRBuilder::CreateNSWFoldAdd(v88, v74, v99, &v162);
    v174 = 257;
    v101 = llvm::IRBuilderBase::CreateInBoundsGEP(v88, v97, v87, v100, v173);
    v102 = *(v93 + 72);
    WORD4(v164) = 257;
    v103 = llvm::IRBuilderBase::CreateAlignedLoad(v88, v102, v93, 0, 0, &v162);
    v104 = *(v101 + 72);
    WORD4(v164) = 257;
    v105 = llvm::IRBuilderBase::CreateAlignedLoad(v88, v104, v101, 0, 0, &v162);
    llvm::PHINode::addIncoming(v147, v103, v172[5]);
    NullValue = llvm::Constant::getNullValue(*v103, v106);
    llvm::PHINode::addIncoming(v147, NullValue, v171[5]);
    llvm::PHINode::addIncoming(v84, v105, v172[5]);
    AllOnesValue = llvm::Constant::getAllOnesValue(*v105, v108);
    llvm::PHINode::addIncoming(v84, AllOnesValue, v171[5]);
    v110 = *(v84 + 32);
    if (v110)
    {
      v111 = v110 == *(v84 + 40) + 40;
    }

    else
    {
      v111 = 1;
    }

    if (v111)
    {
      v112 = 0;
    }

    else
    {
      v112 = (v110 - 24);
    }

    llvm::IRBuilderBase::SetInsertPoint(v88, v112);
    *(a5 + 16) = v147;
    *(a5 + 24) = v84;
    v113 = *(a5 + 40);
    v114 = *(this + 9);
    v115 = llvm::ConstantInt::get();
    WORD4(v164) = 257;
    v116 = llvm::IRBuilderBase::CreateICmp(v88, 37, v113, v115, &v162);
    v174 = 257;
    v117 = llvm::IRBuilderBase::CreateICmp(v88, 35, v149, v147, v173);
    v161 = 257;
    v118 = llvm::IRBuilderBase::CreateICmp(v88, 37, v149, v84, &v157);
    v156 = 257;
    v119 = llvm::IRBuilderBase::CreateAnd(v88, v117, v118, &v152);
    v151 = 257;
    *(a5 + 8) = llvm::IRBuilderBase::CreateAnd(v88, v116, v119, v150);
  }
}

uint64_t MTLBoundsCheckPass::emitBadAccessNotice(uint64_t result, llvm::Constant **a2, uint64_t a3, llvm::Instruction *a4, uint64_t *a5, uint64_t a6)
{
  if ((*(*(result + 32) + 20) & 2) != 0)
  {
    v10 = result;
    v11 = *(result + 80);
    MTLBoundsCheck::SharedPassData::indexForInstruction(*(result + 64), a4);
    v12 = llvm::ConstantInt::get();
    v13 = *(v10 + 88);
    v14 = llvm::ConstantInt::get();
    v15 = *(a3 + 40);
    if (!v15)
    {
      v16 = v14;
      __p[0] = 0;
      __p[1] = 0;
      v59 = 0;
      llvm::raw_string_ostream::raw_string_ostream(v61, __p);
      llvm::Value::print(*(a3 + 48), v61);
      v17 = *v16;
      v15 = llvm::ConstantInt::get();
      llvm::raw_ostream::~raw_ostream(v61);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v57 = v12;
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertReportBufferGV(*(v10 + 64));
    v19 = *(inserted + 24);
    v62 = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a2, v19, inserted, 0, 0, v61);
    v21 = MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(*(v10 + 64));
    v22 = *(v21 + 24);
    v62 = 257;
    v23 = llvm::IRBuilderBase::CreateAlignedLoad(a2, v22, v21, 0, 0, v61);
    if ((*(*(v10 + 32) + 21) & 2) != 0)
    {
      v26 = MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(*(v10 + 64));
      v27 = *(v26 + 24);
      v62 = 257;
      result = llvm::IRBuilderBase::CreateAlignedLoad(a2, v27, v26, 0, 0, v61);
    }

    else
    {
      Int8PtrTy = llvm::Type::getInt8PtrTy(*(v10 + 40), 0);
      result = llvm::ConstantPointerNull::get(Int8PtrTy, v25);
    }

    v28 = result;
    v29 = *(*(v10 + 32) + 20);
    if (*(a3 + 1) == 1)
    {
      if ((v29 & 0x2000) != 0)
      {
        v30 = *(a3 + 56);
        v31 = *(v10 + 72);
        v62 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(a2, 39, v30, v31, v61);
        ImageIDFunction = MTLBoundsCheck::SharedPassData::getOrInsertGetImageIDFunction(*(v10 + 64));
        if (ImageIDFunction)
        {
          v34 = *(ImageIDFunction + 24);
        }

        else
        {
          v34 = 0;
        }

        v62 = 257;
        v52 = llvm::IRBuilderBase::CreateCall(a2, v34, ImageIDFunction, 0, 0, v61, 0);
        v53 = *(v10 + 88);
        v60 = 257;
        v54 = llvm::IRBuilderBase::CreateCast(a2, 38, v15, v53, __p);
        v55 = *(v10 + 88);
        *(a6 + 24);
        v56 = llvm::ConstantInt::get();
        return MTLIRBuilder::CreateBadAccessCall(a2, AlignedLoad, v23, v28, v52, Cast, v54, v56, v12, 0);
      }
    }

    else
    {
      if ((v29 & 8) != 0)
      {
        v35 = *a5;
        v36 = *(v10 + 72);
        v62 = 257;
        v37 = llvm::IRBuilderBase::CreateCast(a2, 47, a5, v36, v61);
        v62 = 257;
        v38 = *v37;
        v39 = llvm::ConstantInt::get();
        v40 = llvm::IRBuilderBase::CreateAnd(a2, v37, v39, v61);
        v62 = 257;
        a5 = llvm::IRBuilderBase::CreateCast(a2, 48, v40, v35, v61);
      }

      v41 = *(v10 + 72);
      v62 = 257;
      v42 = llvm::IRBuilderBase::CreateCast(a2, 47, a5, v41, v61);
      v43 = *(a3 + 16);
      v60 = 257;
      Sub = llvm::IRBuilderBase::CreateSub(a2, v42, v43, __p, 0, 0);
      v45 = MTLBoundsCheck::SharedPassData::getOrInsertGetImageIDFunction(*(v10 + 64));
      if (v45)
      {
        v46 = *(v45 + 24);
      }

      else
      {
        v46 = 0;
      }

      v62 = 257;
      v47 = llvm::IRBuilderBase::CreateCall(a2, v46, v45, 0, 0, v61, 0);
      v48 = *(v10 + 88);
      v60 = 257;
      v49 = llvm::IRBuilderBase::CreateCast(a2, 38, v15, v48, __p);
      v50 = *(v10 + 88);
      *(a6 + 24);
      v51 = llvm::ConstantInt::get();
      return MTLIRBuilder::CreateBadAccessCall(a2, AlignedLoad, v23, v28, v47, Sub, v49, v51, v57, 0);
    }
  }

  return result;
}

void sub_2579D4934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateNot(unsigned int **this, llvm::Value *a2, const llvm::Twine *a3)
{
  if (!a2 || *(a2 + 16) > 0x14u)
  {
    Not = llvm::BinaryOperator::CreateNot();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, Not, a3);
  }

  v5 = (*(*this[9] + 208))(this[9], a2);
  if (v5)
  {
    v6 = *(v5 + 16) >= 0x1Cu;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return v5;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, a3);
}

uint64_t MTLBoundsCheckPass::emitPointerConvert(uint64_t a1, llvm::IRBuilderBase *a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  if ((*(v7 + 20) & 8) != 0)
  {
    v9 = *a4;
    v10 = *(a1 + 72);
    v19 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a2, 47, v4, v10, v18);
    v19 = 257;
    v12 = *Cast;
    v13 = llvm::ConstantInt::get();
    v14 = llvm::IRBuilderBase::CreateAnd(a2, Cast, v13, v18);
    v19 = 257;
    v4 = llvm::IRBuilderBase::CreateCast(a2, 48, v14, v9, v18);
    v7 = *(a1 + 32);
  }

  if (*(v7 + 4) && *(v7 + 12) == 2)
  {
    v15 = *(a3 + 48);
    v16 = *v4;
    v19 = 257;
    return llvm::IRBuilderBase::CreateCast(a2, 49, v15, v16, v18);
  }

  return v4;
}

uint64_t llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>::growAndEmplaceBack<llvm::Instruction *,llvm::Value *&,llvm::TypeSize &,BOOL>(uint64_t a1, llvm::Instruction **a2, llvm::Value **a3, uint64_t a4, char *a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = llvm::TypeSize::operator unsigned long long();
  MTLBoundsCheckPass::MemoryAccessInfo::MemoryAccessInfo(v15, v7, v8, v9, *a5);
  v10 = llvm::SmallVectorTemplateCommon<MTLBoundsCheckPass::MemoryAccessInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>>(a1, v15, 1);
  v11 = (*a1 + 32 * *(a1 + 8));
  v12 = v10[1];
  *v11 = *v10;
  v11[1] = v12;
  v13 = (*(a1 + 8) + 1);
  *(a1 + 8) = v13;
  return *a1 + 32 * v13 - 32;
}

MTLBoundsCheckPass::MemoryAccessInfo *MTLBoundsCheckPass::MemoryAccessInfo::MemoryAccessInfo(MTLBoundsCheckPass::MemoryAccessInfo *this, llvm::Instruction *a2, llvm::Value *a3, unint64_t a4, char a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = 0;
  *(this + 24) = a5;
  v6 = *llvm::Instruction::getModule(a2);
  llvm::IntegerType::get();
  *(this + 2) = llvm::ConstantInt::get();
  return this;
}

unint64_t llvm::SmallVectorTemplateCommon<MTLBoundsCheckPass::MemoryAccessInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 32 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = a2 - *a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

uint64_t llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>::growAndEmplaceBack<llvm::Instruction *,llvm::Value *&,llvm::Value *&,BOOL &>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, char *a5)
{
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v14[0] = *a2;
  v14[1] = v6;
  v14[2] = v7;
  v15 = v8;
  v9 = llvm::SmallVectorTemplateCommon<MTLBoundsCheckPass::MemoryAccessInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheckPass::MemoryAccessInfo,true>>(a1, v14, 1);
  v10 = (*a1 + 32 * *(a1 + 8));
  v11 = v9[1];
  *v10 = *v9;
  v10[1] = v11;
  v12 = (*(a1 + 8) + 1);
  *(a1 + 8) = v12;
  return *a1 + 32 * v12 - 32;
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(uint64_t a1, llvm::Value **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

uint64_t MTLBoundsCheckPass::backtracePointer(MTLBoundsCheckPass *this, llvm::Value *a2)
{
  v11 = a2;
  if (!a2)
  {
    return 0;
  }

  v3 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::find<llvm::Value *>((*(this + 8) + 128), &v11);
  if (v3)
  {
    return v3[3];
  }

  v5 = *(v11 + 16);
  if (v5 <= 0x1B)
  {
    v6 = 0;
  }

  else
  {
    v6 = v11;
  }

  v10 = v6;
  if (!v6)
  {
    if (v5 == 5)
    {
      PointerOperand = getPointerOperand(v11);
      return MTLBoundsCheckPass::backtracePointer(this, PointerOperand);
    }

    else
    {
      MetadataImpl = 0;
      ++*(*(this + 106) + 92);
    }

    return MetadataImpl;
  }

  if (!*(v6 + 6) && (*(v6 + 23) & 0x20) == 0 || (MetadataImpl = llvm::Instruction::getMetadataImpl()) == 0)
  {
    v7 = getPointerOperand(v6);
    if (v7)
    {
      MetadataImpl = MTLBoundsCheckPass::backtracePointer(this, v7);
      if (MetadataImpl)
      {
        llvm::Instruction::setMetadata();
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(this + 272, &v10);
      }

      return MetadataImpl;
    }

    return 0;
  }

  return MetadataImpl;
}

uint64_t llvm::IRBuilderBase::CreateConstGEP1_32(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unsigned int a4, const llvm::Twine *a5)
{
  llvm::Type::getInt32Ty(this[8], a2);
  v11 = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, &v11, 1, 0);
  if (!result)
  {
    v10 = llvm::GetElementPtrInst::Create(a2, a3, &v11, 1);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a5);
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateConstGEP1_64(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unint64_t a4, const llvm::Twine *a5)
{
  llvm::Type::getInt64Ty(this[8], a2);
  v11 = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, &v11, 1, 0);
  if (!result)
  {
    v10 = llvm::GetElementPtrInst::Create(a2, a3, &v11, 1);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a5);
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateUDiv(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, char a5)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    if (a5)
    {
      v10 = llvm::BinaryOperator::Create();
      llvm::Instruction::setIsExact(v10);
      v11 = this;
      v12 = v10;
    }

    else
    {
      v12 = llvm::BinaryOperator::Create();
      v11 = this;
    }

    return llvm::IRBuilderBase::Insert<llvm::CastInst>(v11, v12, a4);
  }

  v7 = (*(*this[9] + 104))(this[9]);
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
}

uint64_t llvm::IRBuilderBase::CreateAnd(llvm::IRBuilderBase *this, llvm::Value *a2, unint64_t a3, const llvm::Twine *a4)
{
  v7 = *a2;
  v8 = llvm::ConstantInt::get();

  return llvm::IRBuilderBase::CreateAnd(this, a2, v8, a4);
}

uint64_t llvm::IRBuilderBase::CreateInBoundsGEP(llvm::IRBuilderBase *this, llvm::Type *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a4;
  result = (*(**(this + 9) + 48))(*(this + 9), a2, a3, &v13, 1, 1);
  if (!result)
  {
    v14 = 257;
    v10 = llvm::GetElementPtrInst::Create(a2, a3, &v12, 1);
    llvm::GetElementPtrInst::setIsInBounds(v10);
    result = llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a5);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>::match<llvm::Value>(unsigned int *a1, uint64_t a2)
{
  v2 = 84;
  if (a2)
  {
    v3 = *(a2 + 16) == 84;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v3)
  {
    v5 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * *a1);
    if (v5)
    {
      v6 = *(v5 + 16) == 16;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      **(a1 + 1) = v5;
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v4 & v2;
}

BOOL call_match<llvm::StringRef>::match<llvm::Value>(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a2 + 16) != 84)
  {
    return 0;
  }

  v3 = *(a2 - 32);
  if (!v3 || *(v3 + 16) || *(v3 + 24) != *(a2 + 72))
  {
    v3 = 0;
  }

  Name = llvm::Value::getName(v3);
  v5 = *(a1 + 8);
  return v6 >= v5 && (!v5 || !memcmp(Name, *a1, v5));
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::__emplace_unique_key_args<llvm::Value *,llvm::Value *&,MTLBoundsCheckPass::KnownBufferData&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

BOOL llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>::match<llvm::Value>(uint64_t a1, uint64_t a2)
{
  result = llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>::match<llvm::Value>(a1, a2);
  if (result)
  {
    result = 0;
    if (a2)
    {
      if (*(a2 + 16) == 84)
      {
        v5 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * *(a1 + 32));
        if (v5)
        {
          **(a1 + 40) = v5;
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>::match<llvm::Value>(uint64_t a1, uint64_t a2)
{
  result = call_match<llvm::StringRef>::match<llvm::Value>(a1, a2);
  if (result)
  {
    result = 0;
    if (a2)
    {
      if (*(a2 + 16) == 84)
      {
        v5 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * *(a1 + 16));
        if (v5)
        {
          **(a1 + 24) = v5;
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateLShr(unsigned int **this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, char a5)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    if (a5)
    {
      v10 = llvm::BinaryOperator::Create();
      llvm::Instruction::setIsExact(v10);
      v11 = this;
      v12 = v10;
    }

    else
    {
      v12 = llvm::BinaryOperator::Create();
      v11 = this;
    }

    return llvm::IRBuilderBase::Insert<llvm::CastInst>(v11, v12, a4);
  }

  v7 = (*(*this[9] + 160))(this[9]);
  if (v7)
  {
    v8 = *(v7 + 16) >= 0x1Cu;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
}

uint64_t llvm::raw_string_ostream::raw_string_ostream(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = MEMORY[0x277D821F8] + 16;
  *(a1 + 64) = a2;
  llvm::raw_ostream::SetUnbuffered(a1);
  return a1;
}

uint64_t llvm::raw_ostream::SetUnbuffered(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  return MEMORY[0x2821F1EA8](this, 0, 0, 0);
}

uint64_t llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>::growAndEmplaceBack<llvm::Value *&,llvm::Value *&,MTLGPUOperation,int>(uint64_t a1, void *a2, uint64_t *a3, int *a4, int *a5)
{
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v13[0] = *a2;
  v13[1] = v6;
  v14 = v7;
  v15 = v8;
  v9 = llvm::SmallVectorTemplateCommon<MTLBoundsCheck::MemoryAccessOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>>(a1, v13, 1);
  v10 = *a1 + 24 * *(a1 + 8);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 16);
  *v10 = v11;
  LODWORD(v10) = *(a1 + 8) + 1;
  *(a1 + 8) = v10;
  return *a1 + 24 * v10 - 24;
}

unint64_t llvm::SmallVectorTemplateCommon<MTLBoundsCheck::MemoryAccessOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 24 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = a2 - *a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::InsertIntoBucketImpl<llvm::Function *>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::InsertIntoBucketImpl<llvm::Function *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x259C6A8D0](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::moveFromOldBuckets(a1, v4, v4 + 2 * v3);

    return llvm::deallocate_buffer(v4, (16 * v3));
  }

  else
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
      v16 = (result + 16);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_257A6D000)));
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
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
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
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_257A6D000)));
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
      v15 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(v5, a2, &v15);
      v14 = v15;
      *v15 = *a2;
      v14[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<MTLBoundsCheck::DebugSubProgram,true>::push_back(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = *result + 12 * v3;
  *v4 = a2;
  *(v4 + 8) = a3;
  ++*(result + 8);
  return result;
}

void llvm::SmallVectorTemplateBase<std::string,false>::moveElementsForGrow(__int128 **a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = 24 * v2;
    do
    {
      v5 = *v3;
      *(a2 + 16) = *(v3 + 2);
      *a2 = v5;
      a2 += 24;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      *v3 = 0;
      v3 = (v3 + 24);
      v4 -= 24;
    }

    while (v4);
    v6 = *(a1 + 2);
    if (v6)
    {
      v7 = *a1 + 24 * v6 - 1;
      v8 = -24 * v6;
      v9 = v7;
      do
      {
        v10 = *v9;
        v9 -= 24;
        if (v10 < 0)
        {
          operator delete(*(v7 - 23));
        }

        v7 = v9;
        v8 += 24;
      }

      while (v8);
    }
  }
}

uint64_t llvm::SmallVector<llvm::Metadata *,4u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_2579D604C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVector<llvm::Metadata *,3u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x300000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_2579D60AC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DumpModulePass::DumpModulePass(uint64_t a1, const void *a2, size_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = &DumpModulePass::ID;
  *(a1 + 24) = 4;
  *a1 = &unk_2868EC0B8;
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  v5 = (a1 + 32);
  *(a1 + 55) = a3;
  if (a3)
  {
    memmove(v5, a2, a3);
  }

  *(v5 + a3) = 0;
  return a1;
}

void DumpModulePass::~DumpModulePass(void **this)
{
  *this = &unk_2868EC0B8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EC0B8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t DumpModulePass::runOnModule(DumpModulePass *this, llvm::Module *a2)
{
  v3 = MTLGetShaderCachePath();
  v27[0] = "air.requestHash";
  LOWORD(v30[0].__locale_) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, v27);
  if (NamedMetadata)
  {
    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    v27[0] = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
    v27[1] = v6;
    llvm::StringRef::str(v27, &v33);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v27);
    v7 = [v3 UTF8String];
    v8 = strlen(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v7, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "/bounds-logs", 12);
    std::stringbuf::str();
    v26 = 260;
    v25.__r_.__value_.__r.__words[0] = __p;
    llvm::sys::fs::create_directory();
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "/", 1);
    if ((v35 & 0x80u) == 0)
    {
      v10 = &v33;
    }

    else
    {
      v10 = v33;
    }

    if ((v35 & 0x80u) == 0)
    {
      v11 = v35;
    }

    else
    {
      v11 = v34;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    std::stringbuf::str();
    v26 = 260;
    v25.__r_.__value_.__r.__words[0] = __p;
    llvm::sys::fs::create_directory();
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    std::stringbuf::str();
    v27[0] = *MEMORY[0x277D82818];
    v12 = *(MEMORY[0x277D82818] + 72);
    *(v27 + *(v27[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v28 = v12;
    v29 = MEMORY[0x277D82878] + 16;
    if (v31 < 0)
    {
      operator delete(v30[7].__locale_);
    }

    v29 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v30);
    std::iostream::~basic_iostream();
    MEMORY[0x259C6B820](&v32);
    if (v35 < 0)
    {
      operator delete(v33);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v22, &unk_257A6F51A);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!v22.__r_.__value_.__l.__size_)
    {
LABEL_35:
      operator delete(v22.__r_.__value_.__l.__data_);
      return 0;
    }
  }

  else if (!*(&v22.__r_.__value_.__s + 23))
  {
    return 0;
  }

  LODWORD(v33) = 0;
  v34 = std::system_category();
  std::operator+<char>();
  v13 = std::string::append(&v25, ".ll");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28 = v13->__r_.__value_.__r.__words[2];
  *v27 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v28 >= 0)
  {
    v15 = v27;
  }

  else
  {
    v15 = v27[0];
  }

  if (v28 >= 0)
  {
    v16 = HIBYTE(v28);
  }

  else
  {
    v16 = v27[1];
  }

  std::string::append(&v22, v15, v16);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v17 = llvm::raw_fd_ostream::raw_fd_ostream();
  v18 = llvm::dbgs(v17);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v22;
  }

  else
  {
    v19 = v22.__r_.__value_.__r.__words[0];
  }

  v20 = llvm::raw_ostream::write(v18, v19);
  llvm::raw_ostream::operator<<(v20, "\n", 1uLL);
  llvm::Module::print();
  MEMORY[0x259C6A800](v27);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_35;
  }

  return 0;
}

void sub_2579D66B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2579D69EC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x259C6B820](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C6B7D0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2579D6AA8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C6B720](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C6B730](v13);
  return a1;
}

void sub_2579D6D18(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C6B730](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2579D6CF8);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2579D6F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::__function::__value_func<BOOL ()(llvm::Function const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void CallingConvFixPass::~CallingConvFixPass(CallingConvFixPass *this)
{
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t CallingConvFixPass::runOnFunction(CallingConvFixPass *this, Function *a2)
{
  v2 = *(a2 + 10);
  if (v2 == (a2 + 72))
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      if (v2)
      {
        v4 = v2 - 24;
      }

      else
      {
        v4 = 0;
      }

      v5 = v4 + 40;
      for (i = *(v4 + 48); i != v5; i = *(i + 8))
      {
        if (i)
        {
          if (*(i - 8) == 84)
          {
            v7 = *(i - 56);
            if (v7)
            {
              if (!*(v7 + 16) && *(v7 + 24) == *(i + 48))
              {
                v8 = (*(v7 + 18) >> 4) & 0x3FF;
                v9 = *(i - 6);
                if (v8 != ((v9 >> 2) & 0x3FF))
                {
                  *(i - 6) = v9 & 0xF003 | (4 * v8);
                  v3 = 1;
                }
              }
            }
          }
        }
      }

      v2 = *(v2 + 8);
    }

    while (v2 != (a2 + 72));
  }

  return v3 & 1;
}

void MemoryIndirectionPass::~MemoryIndirectionPass(MemoryIndirectionPass *this)
{
  *this = &unk_2868EC1F8;
  v2 = this + 160;
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 216);
  llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::~DenseMap(this + 192);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EC1F8;
  v2 = this + 160;
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 216);
  llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::~DenseMap(this + 192);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MemoryIndirectionPass::runOnModule(MTLBoundsCheck **this, llvm::Module *a2)
{
  v2 = a2;
  v124[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear((this + 24));
  this[31] = 0;
  *(this + 60) = llvm::Module::getMDKindID();
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear((this + 27));
  this[23] = MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(this[8]);
  MemoryIndirectionPass::replaceGlobalBindings(this);
  MemoryIndirectionPass::markGlobalsForSkip(this);
  v4 = this[6];
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v6 = GlobalVariable;
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(this[8]);
    this[31] = inserted;
    v8 = this[8];
    Operand = inserted;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v8 + 208, &Operand, &v115);
    if ((*(*(this[8] + 9) + 23) & 0x40) != 0 && MTLBoundsCheck::isLibraryModule(this[6], v9))
    {
      v10 = this[6];
      v11 = llvm::Module::getOrInsertNamedMetadata();
      *&v115 = v116;
      *(&v115 + 1) = 0x400000000;
      NumOperands = llvm::NamedMDNode::getNumOperands(v11);
      if (HIDWORD(v115) < NumOperands)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = llvm::NamedMDNode::getNumOperands(v11);
      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          Operand = llvm::NamedMDNode::getOperand(v11);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v115, &Operand);
        }
      }

      llvm::NamedMDNode::clearOperands(v11);
      v15 = DWORD2(v115);
      if (DWORD2(v115))
      {
        v16 = 0;
        do
        {
          if (*(*(*(v115 + 8 * v16) - 8 * *(*(v115 + 8 * v16) + 8) + 8) + 128) != v6)
          {
            llvm::NamedMDNode::addOperand();
            v15 = DWORD2(v115);
          }

          ++v16;
        }

        while (v16 < v15);
      }

      if (v115 != v116)
      {
        free(v115);
      }
    }

    v115 = v6[1];
    llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&Operand, &v115);
    v17 = Operand;
    if (v123)
    {
      v18 = v2;
      v19 = 8 * v123;
      do
      {
        v20 = *v17;
        if (*v17 && *(v20 + 16) == 60)
        {
          v21 = llvm::User::operator new(0x40);
          v22 = this[9];
          v23 = this[31];
          LOWORD(v117) = 257;
          v24 = *(v20 + 9);
          llvm::LoadInst::LoadInst();
          llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&v115, v20, 0, 0, 0);
          v25 = *v20;
          v114[8] = 257;
          llvm::IRBuilderBase::CreateCast(&v115, 48, v21, v25, v113);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v20);
          llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v121);
          llvm::IRBuilderFolder::~IRBuilderFolder(&v120);
          if (v115 != v116)
          {
            free(v115);
          }
        }

        else
        {
          v26 = *this[31];
          llvm::UndefValue::get();
          llvm::User::replaceUsesOfWith();
          v27 = *v20;
          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
          if (*(v20 + 16) >= 0x1Cu)
          {
            llvm::Instruction::eraseFromParent(v20);
          }
        }

        ++v17;
        v19 -= 8;
      }

      while (v19);
      v17 = Operand;
      v2 = v18;
    }

    if (v17 != v124)
    {
      free(v17);
    }

    llvm::GlobalVariable::eraseFromParent(v6);
  }

  else
  {
    this[31] = 0;
  }

  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (EntryFunction && !MTLBoundsCheck::isLibraryModule(this[6], v28))
  {
    v30 = this[6];
    *&v115 = MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(this[8]);
    *(&v115 + 1) = MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(this[8]);
    v116[0] = MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(this[8]);
    v116[1] = MTLBoundsCheck::SharedPassData::getOrInsertReportBufferGV(this[8]);
    v117 = MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(this[8]);
    v118 = MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(this[8]);
    v119 = MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(this[8]);
    llvm::appendToUsed();
    if ((*(*(this[8] + 9) + 20) & 0x200000001) != 0)
    {
      v31 = this[6];
      *&v115 = MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(this[8]);
      *(&v115 + 1) = MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(this[8]);
      llvm::appendToUsed();
    }

    v100 = *(EntryFunction + 24);
    Operand = v124;
    v123 = 0x800000000;
    v113[0] = v114;
    v113[1] = 0x800000000;
    v111[0] = &v112;
    v111[1] = 0x800000000;
    v109[0] = &v110;
    v109[1] = 0x800000000;
    v107[0] = &v108;
    v107[1] = 0x800000000;
    LODWORD(v101) = 0;
    if (!*(EntryFunction + 96))
    {
LABEL_89:
      if (!*(this + 30) && *(**(v100 + 16) + 8) != 7)
      {
        *(*(this[8] + 8) + 640) &= 0x5555555555555555uLL;
      }

      v57 = v123;
      v58 = llvm::ArrayType::get(this[9], 0x1F);
      TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(this[7], v58);
      v61 = v60;
      PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(this[7], v58);
      LODWORD(v99) = 2;
      *&v115 = MetalModulePass::getMDTuple<unsigned long,char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(this, v57, "air.buffer", "air.location_index", 50, 1, "air.read", "air.address_space", v99, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v61 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.user_arguments_int");
      v105.n128_u64[0] = llvm::PointerType::get();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&Operand, &v105);
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v109, &v115);
      v63 = llvm::ArrayType::get(this[9], 0x1F);
      v64 = llvm::DataLayout::getTypeSizeInBits(this[7], v63);
      LODWORD(TypeSizeInBits) = v65;
      v66 = llvm::DataLayout::getPrefTypeAlignment(this[7], v63);
      *&v115 = MetalModulePass::getMDTuple<unsigned long,char const*,char const*,unsigned int,int,char const*,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(this, v57 + 1, "air.buffer", "air.location_index", 53, 1, "air.read", "air.arg_type_size", (v64 + 7) >> 3, TypeSizeInBits == 1, "air.arg_type_align_size", v66, "air.arg_type_name", "int", "air.arg_name", "debug.user_argument_strides_int");
      v105.n128_u64[0] = llvm::PointerType::get();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&Operand, &v105);
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v109, &v115);
      v67 = **(v100 + 16);
      v68 = llvm::FunctionType::get();
      v69 = *(EntryFunction + 32);
      *&v115 = "mtl.indirection_wrapper";
      LOWORD(v117) = 259;
      v70 = llvm::Function::Create(v68, v69 & 0xF, &v115, this[6]);
      llvm::GlobalObject::copyMetadata();
      v71 = this[5];
      llvm::MDTuple::getImpl();
      llvm::Value::setMetadata();
      llvm::Function::setSubprogram();
      *(EntryFunction + 32) = *(EntryFunction + 32) & 0xFFFFBFC0 | 0x4007;
      *&v115 = *(EntryFunction + 112);
      Attributes = llvm::AttributeList::getAttributes(&v115);
      v72 = llvm::AttributeSet::begin(&Attributes);
      v73 = llvm::AttributeSet::end(&Attributes);
      while (v72 != v73)
      {
        v74 = *v72;
        llvm::Function::addFnAttr();
        ++v72;
      }

      *&v115 = *(EntryFunction + 112);
      v102 = llvm::AttributeList::getAttributes(&v115);
      v75 = llvm::AttributeSet::begin(&v102);
      v76 = llvm::AttributeSet::end(&v102);
      while (v75 != v76)
      {
        v77 = *v75;
        llvm::compat::addAttribute();
        ++v75;
      }

      v78 = this[16];
      MetalModulePass::getMetadata(this, v70);
      llvm::MDNode::replaceOperandWith();
      v79 = this[16];
      v80 = this[5];
      llvm::MDTuple::getImpl();
      llvm::MDNode::replaceOperandWith();
      v81 = this[5];
      *&v115 = "entry";
      LOWORD(v117) = 259;
      llvm::BasicBlock::Create(v81, &v115, v70, 0, v82);
    }

    v32 = 0;
    while (1)
    {
      if (*(EntryFunction + 18))
      {
        llvm::Function::BuildLazyArguments(EntryFunction);
        v32 = v101;
      }

      v33 = (*(EntryFunction + 88) + 40 * v32);
      Attributes = *v33;
      v34 = (this[16] - *(this[16] + 2))[2];
      v102 = *(v34 - 8 * *(v34 + 8) + 8 * v32);
      String = llvm::MDString::getString(*&v102[-2 * v102[2] + 2]);
      v37 = v36;
      if (!isBufferMetadata(v102))
      {
        goto LABEL_42;
      }

      v38 = *(Attributes + 8);
      if ((v38 & 0xFE) == 0x12)
      {
        v38 = *(**(Attributes + 16) + 8);
      }

      if ((v38 & 0xFFFFFF00) != 0x300)
      {
        v105.n128_u64[0] = &unk_257A6F51A;
        v105.n128_u64[1] = 0;
        v106 = 1;
        MTLBoundsCheck::getArgName(v102, &v105, &v115);
        if (*(&v115 + 1) >= 6uLL && *v115 == 1969382756 && *(v115 + 4) == 11879)
        {
          goto LABEL_87;
        }

        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v113, &v102);
        LocationIndex = MTLBoundsCheck::getLocationIndex(v102);
        if (llvm::Value::hasNUsesOrMore(v33))
        {
          v105.n128_u64[0] = "air.read_write";
          v105.n128_u64[1] = 14;
          v106 = 1;
          MTLBoundsCheck::getArgAccessType(v102, &v105, &v115);
          v104 = v115;
          v54 = 2 * LocationIndex;
          if (llvm::StringRef::find() != -1)
          {
            *(*(this[8] + 8) + 640) |= 1 << v54;
          }

          goto LABEL_75;
        }
      }

      else
      {
LABEL_42:
        v39 = *&v102[-2 * v102[2] + 2];
        if (*v39 || (v40 = llvm::MDString::getString(v39), v41 != 17) || (*v40 == 0x666675622E726961 ? (v42 = *(v40 + 8) == 0x64697274735F7265) : (v42 = 0), v42 ? (v43 = *(v40 + 16) == 101) : (v43 = 0), !v43))
        {
          if (v37 == 30)
          {
            v44 = *String == 0x746E6F632E726961 && String[1] == 0x6E696F705F6C6F72;
            v45 = v44 && String[2] == 0x5F7865646E695F74;
            if (v45 && *(String + 22) == 0x7265666675625F78)
            {
              v47 = v101;
              v48 = llvm::DataLayout::getTypeSizeInBits(this[7], **(Attributes + 16));
              if (v49 == 1)
              {
                v2 = (v2 & 0xFFFFFFFF00000000) + 1;
              }

              else
              {
                v2 &= 0xFFFFFFFF00000000;
              }

              ABITypeAlignment = llvm::DataLayout::getABITypeAlignment(this[7], **(Attributes + 16));
              LODWORD(v99) = 1;
              v102 = MetalModulePass::getMDTuple<unsigned int,char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(this, v47, "air.buffer", "air.location_index", 43, 1, "air.read", "air.address_space", v99, "air.arg_type_size", (v48 + 7) >> 3, v2, "air.arg_type_align_size", ABITypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.control_point_index_buffer");
              v51 = this[9];
              Attributes = llvm::PointerType::get();
            }
          }

LABEL_87:
          llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(v107, &v101);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&Operand, &Attributes);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v109, &v102);
          MetalModulePass::getMetadata<unsigned long long>(this);
          llvm::MDNode::replaceOperandWith();
          goto LABEL_88;
        }

        v105.n128_u64[0] = &unk_257A6F51A;
        v105.n128_u64[1] = 0;
        v106 = 1;
        MTLBoundsCheck::getArgName(v102, &v105, &v115);
        if (*(&v115 + 1) >= 6uLL && *v115 == 1969382756 && *(v115 + 4) == 11879)
        {
          goto LABEL_87;
        }

        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v111, &v102);
        v56 = MTLBoundsCheck::getLocationIndex(v102);
        if (llvm::Value::hasNUsesOrMore(v33))
        {
          v105.n128_u64[0] = "air.read_write";
          v105.n128_u64[1] = 14;
          v106 = 1;
          MTLBoundsCheck::getArgAccessType(v102, &v105, &v115);
          v104 = v115;
          v54 = 2 * v56;
          if (llvm::StringRef::find() != -1)
          {
            *(*(this[8] + 8) + 640) |= 1 << v54;
          }

LABEL_75:
          if (llvm::StringRef::find() != -1)
          {
            *(*(this[8] + 8) + 640) |= 2 << v54;
          }
        }
      }

LABEL_88:
      LODWORD(v101) = v101 + 1;
      v32 = v101;
      if (*(EntryFunction + 96) <= v101)
      {
        goto LABEL_89;
      }
    }
  }

  MemoryIndirectionPass::fixupIntersectionFunctions(this);
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(&v115, *(v2 + 32), v2 + 24);
  v83 = v115;
  if (DWORD2(v115))
  {
    v84 = 8 * DWORD2(v115);
    do
    {
      v85 = *v83;
      Name = llvm::Value::getName(*v83);
      if (v87 >= 0x11 && (*Name == 0x726575712E6C746DLL ? (v88 = *(Name + 8) == 0x79726F6D656D5F79) : (v88 = 0), v88 ? (v89 = *(Name + 16) == 46) : (v89 = 0), v89))
      {
        MemoryIndirectionPass::handleMemoryQueryFunction(this, v85);
      }

      else if (MemoryIndirectionPass::shouldModifyFunction(this, v85))
      {
        MemoryIndirectionPass::fixupInstructions(this, v85);
      }

      ++v83;
      v84 -= 8;
    }

    while (v84);
    v83 = v115;
  }

  if (v83 != v116)
  {
    free(v83);
  }

  for (j = *(v2 + 32); j != v2 + 24; j = *(j + 8))
  {
    v91 = *(this + 60);
    llvm::Value::setMetadata();
  }

  if (*(this + 56))
  {
    v92 = *(this + 58);
    if (v92)
    {
      v93 = 16 * v92;
      v94 = this[27];
      while ((*v94 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v94 += 2;
        v93 -= 16;
        if (!v93)
        {
          goto LABEL_124;
        }
      }
    }

    else
    {
      v94 = this[27];
    }

    v97 = this[27] + 16 * v92;
    while (v94 != v97)
    {
      v98 = **v94;
      llvm::UndefValue::get();
      llvm::Value::replaceNonMetadataUsesWith();
      **v94 = *v94[1];
      llvm::ValueAsMetadata::handleRAUW();
      llvm::Function::eraseFromParent(*v94);
      do
      {
        v94 += 2;
      }

      while (v94 != v97 && (*v94 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_124:
  v95 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_2579D87F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a38 != &a40)
  {
    free(a38);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&STACK[0x258]);
  if (a48 != a21)
  {
    free(a48);
  }

  if (a54 != a22)
  {
    free(a54);
  }

  if (a64 != a23)
  {
    free(a64);
  }

  if (STACK[0x208] != a24)
  {
    free(STACK[0x208]);
  }

  v66 = *(v64 - 176);
  if (v66 != a25)
  {
    free(v66);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::init(uint64_t result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 16) = v4;
    result = MEMORY[0x259C6A8D0](16 * v4, 8);
    *v2 = result;
    *(v2 + 8) = 0;
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (result + 16);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_257A6D000)));
        if (v12.i8[0])
        {
          *(v11 - 2) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 4;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = *(result + 16);
    if (v1 <= 4 * *(result + 8) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = 0;
        v3 = v1 + 0xFFFFFFFFFFFFFFFLL;
        v4 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) - (v3 & 1) + 2;
        v6 = vdupq_n_s64(v4);
        v7 = (*result + 16);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v2), xmmword_257A6D000)));
          if (v8.i8[0])
          {
            *(v7 - 2) = -4096;
          }

          if (v8.i8[4])
          {
            *v7 = -4096;
          }

          v2 += 2;
          v7 += 4;
        }

        while (v5 != v2);
      }

      *(result + 8) = 0;
    }

    else
    {
      return llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::shrink_and_clear(result);
    }
  }

  return result;
}

void MemoryIndirectionPass::replaceGlobalBindings(MemoryIndirectionPass *this)
{
  v85[7] = *MEMORY[0x277D85DE8];
  __p = 0;
  v80 = 0;
  v81 = 0;
  v2 = *(this + 6);
  v82[0] = "air.global_bindings";
  v83[8] = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v2, v82);
  v4 = NamedMetadata;
  if (NamedMetadata)
  {
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    v70 = v4;
    if (NumOperands)
    {
      v68 = 0;
      v69 = NumOperands;
      v6 = 0;
      while (1)
      {
        Operand = llvm::NamedMDNode::getOperand(v70);
        v7 = Operand - 8 * *(Operand + 8);
        v8 = *(v7 + 16);
        v9 = *(*(v7 + 8) + 128);
        LocationIndex = MTLBoundsCheck::getLocationIndex(v8);
        String = llvm::MDString::getString(*(v8 - 8 * *(v8 + 8) + 8));
        v13 = v12;
        if (*(v9 + 8))
        {
          v75.n128_u64[0] = "air.read_write";
          v75.n128_u64[1] = 14;
          LOBYTE(v76) = 1;
          MTLBoundsCheck::getArgAccessType(v8, &v75, v82);
          v72[0] = *v82;
          v14 = 2 * LocationIndex;
          if (llvm::StringRef::find() != -1)
          {
            *(*(*(this + 8) + 64) + 640) |= 1 << v14;
          }

          if (llvm::StringRef::find() != -1)
          {
            *(*(*(this + 8) + 64) + 640) |= 2 << v14;
          }
        }

        if (v13 != 11 || (*String == 0x747865742E726961 ? (v15 = *(String + 3) == 0x657275747865742ELL) : (v15 = 0), !v15 && (*String == 0x706D61732E726961 ? (v16 = *(String + 3) == 0x72656C706D61732ELL) : (v16 = 0), !v16)))
        {
          if (MTLBoundsCheck::getAddressSpace(v8) != 3)
          {
            break;
          }
        }

        std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&__p, &Operand);
        v68 = 1;
LABEL_80:
        if (++v6 == v69)
        {
          goto LABEL_83;
        }
      }

      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      v17 = *(v9 + 8);
      if (!v17)
      {
        goto LABEL_79;
      }

      do
      {
        v18 = *(v17 + 24);
        v82[0] = v18;
        v19 = v18[16];
        if (v18)
        {
          v20 = v19 >= 0x1C;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          std::deque<llvm::User *>::push_back(&v75, v82);
        }

        else
        {
          if (v18)
          {
            v21 = v19 == 5;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            llvm::ConstantExpr::isCast(v18);
            v18 = v82[0];
          }

          for (i = *(v18 + 1); i; i = *(i + 8))
          {
            *&v72[0] = *(i + 24);
            if (*&v72[0])
            {
              v23 = *(*&v72[0] + 16) >= 0x1Cu;
            }

            else
            {
              v23 = 0;
            }

            if (v23)
            {
              std::deque<llvm::User *>::push_back(&v75, v72);
            }
          }
        }

        v17 = *(v17 + 8);
      }

      while (v17);
      v24 = *(&v77 + 1);
      if (!*(&v77 + 1))
      {
LABEL_79:
        std::deque<llvm::User *>::~deque[abi:ne200100](&v75);
        goto LABEL_80;
      }

      while (1)
      {
        v25 = *(*(v75.n128_u64[1] + ((v77 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v77 & 0x1FF));
        *&v77 = v77 + 1;
        *(&v77 + 1) = v24 - 1;
        if (v77 >= 0x400)
        {
          operator delete(*v75.n128_u64[1]);
          v75.n128_u64[1] += 8;
          *&v77 = v77 - 512;
        }

        if (*(v25 + 16) <= 0x1Bu)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        v74 = v26;
        if (!v26)
        {
          goto LABEL_78;
        }

        MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(v82, &v74);
        inserted = MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(*(this + 8));
        v28 = *(inserted + 3);
        v73 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v82, v28, inserted, 0, 0, v72);
        v30 = *(this + 8);
        v71 = AlignedLoad;
        llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v30 + 208, &v71, v72);
        v31 = *(this + 8);
        Name = llvm::Value::getName(inserted);
        GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v31, Name, v33);
        v73 = 257;
        ConstInBoundsGEP2_64 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_64(v82, GVBaseType, AlignedLoad, 0, LocationIndex, v72);
        v36 = *(this + 8);
        v37 = llvm::Value::getName(inserted);
        v39 = **(MTLBoundsCheck::SharedPassData::getGVBaseType(v36, v37, v38) + 16);
        v73 = 257;
        v40 = llvm::IRBuilderBase::CreateAlignedLoad(v82, v39, ConstInBoundsGEP2_64, 259, 0, v72);
        v41 = *(this + 5);
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
        v42 = *(this + 5);
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
        if (*(v25 + 16) != 84)
        {
          goto LABEL_75;
        }

        v43 = *(v25 - 32);
        if (!v43 || *(v43 + 16) || *(v43 + 24) != *(v25 + 72))
        {
          v43 = 0;
        }

        *&v72[0] = llvm::Value::getName(v43);
        *(&v72[0] + 1) = v44;
        v45 = llvm::StringRef::find();
        if (v45 != -1)
        {
          v46 = **(v25 - 32 * (*(v25 + 20) & 0x7FFFFFF) + 32);
          v73 = 257;
          BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(v82, v40, v46, v72);
          v48 = v25 - 32 * (*(v25 + 20) & 0x7FFFFFF);
          v49 = (v48 + 32);
          if (*(v48 + 32))
          {
            v50 = *(v48 + 40);
            **(v48 + 48) = v50;
            if (v50)
            {
              *(v50 + 16) = *(v48 + 48);
            }
          }

          *v49 = BitOrPointerCast;
          if (BitOrPointerCast)
          {
            v53 = *(BitOrPointerCast + 1);
            v51 = (BitOrPointerCast + 8);
            v52 = v53;
            *(v48 + 40) = v53;
            if (v53)
            {
              *(v52 + 16) = v48 + 40;
            }

            *(v48 + 48) = v51;
            *v51 = v49;
          }
        }

        v54 = *(v25 - 32);
        if (!v54 || *(v54 + 16) || *(v54 + 24) != *(v25 + 72))
        {
          v54 = 0;
        }

        *&v72[0] = llvm::Value::getName(v54);
        *(&v72[0] + 1) = v55;
        if (llvm::StringRef::find() != -1)
        {
          v56 = **(v25 - 32 * (*(v25 + 20) & 0x7FFFFFF));
          v73 = 257;
          v57 = llvm::IRBuilderBase::CreateBitOrPointerCast(v82, v40, v56, v72);
          v58 = v25 - 32 * (*(v25 + 20) & 0x7FFFFFF);
          if (*v58)
          {
            v59 = *(v58 + 8);
            **(v58 + 16) = v59;
            if (v59)
            {
              *(v59 + 16) = *(v58 + 16);
            }
          }

          *v58 = v57;
          if (v57)
          {
            v62 = *(v57 + 1);
            v60 = (v57 + 8);
            v61 = v62;
            *(v58 + 8) = v62;
            if (v62)
            {
              *(v61 + 16) = v58 + 8;
            }

            *(v58 + 16) = v60;
            *v60 = v58;
          }

          goto LABEL_76;
        }

        if (v45 == -1)
        {
LABEL_75:
          v63 = *v74;
          v73 = 257;
          llvm::IRBuilderBase::CreateBitOrPointerCast(v82, v40, v63, v72);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v74);
        }

LABEL_76:
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v85);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v84);
        if (v82[0] != v83)
        {
          free(v82[0]);
        }

LABEL_78:
        v24 = *(&v77 + 1);
        if (!*(&v77 + 1))
        {
          goto LABEL_79;
        }
      }
    }

    v68 = 0;
LABEL_83:
    llvm::NamedMDNode::clearOperands(v70);
    v64 = __p;
    v65 = v80;
    while (v64 != v65)
    {
      v66 = *v64;
      llvm::NamedMDNode::addOperand();
      ++v64;
    }

    if ((v68 & 1) == 0)
    {
      llvm::NamedMDNode::clearOperands(v70);
      llvm::NamedMDNode::eraseFromParent(v70);
    }
  }

  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  v67 = *MEMORY[0x277D85DE8];
}

void sub_2579D92F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MemoryIndirectionPass::markGlobalsForSkip(MemoryIndirectionPass *this)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = 0x400000000;
  v1 = *(this + 6);
  v2 = v1 + 8;
  v3 = *(v1 + 16);
  if (v3 != v1 + 8)
  {
    do
    {
      if (v3)
      {
        v5 = v3 - 56;
      }

      else
      {
        v5 = 0;
      }

      if ((*(v5 + 33) & 0x1C) == 0 && MemoryIndirectionPass::indirectAddressSpace(this, *(v5 + 24)))
      {
        v13[0] = v5;
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v14, v13);
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
    while (1)
    {
      do
      {
        if (!v15)
        {
          goto LABEL_18;
        }

        v6 = *(v14 + v15 - 1);
        LODWORD(v15) = v15 - 1;
        v11 = v6;
        v12 = 0;
        v7 = *(this + 8);
        v13[0] = v6;
      }

      while ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>((v7 + 208), v13, &v12) & 1) != 0);
      llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(*(this + 8) + 208, &v11, v13);
      v8 = v11;
      v9 = *(v11 + 16);
      if (v9 == 61)
      {
        v13[0] = *(v11 - 64);
        if (*(v13[0] + 16) == 59)
        {
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v14, v13);
          v8 = v11;
        }

LABEL_16:
        llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v14, v14 + 8 * v15, *(v8 + 8), 0);
      }

      else if (v9 != 84)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  if (v14 != v16)
  {
    free(v14);
  }

  v10 = *MEMORY[0x277D85DE8];
}