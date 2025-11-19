void sub_2579FD408(_Unwind_Exception *a1)
{
  llvm::ValueHandleBase::~ValueHandleBase((v2 + 8));
  llvm::ValueHandleBase::~ValueHandleBase((v1 + 8));
  _Unwind_Resume(a1);
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::shrink_and_clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::destroyAll(a1);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == *(a1 + 16))
  {

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(a1);
  }

  else
  {
    llvm::deallocate_buffer(*a1, (88 * v2));

    llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::init(a1, v5);
  }
}

void MTLRuntimeStackTrace::MTLRuntimeStackTrace(MTLRuntimeStackTrace *this, MTLBoundsCheck::SharedPassData *a2)
{
  v3 = MetalModulePass::MetalModulePass(this, &MTLRuntimeStackTrace::ID, a2);
  *v3 = &unk_2868ECA18;
  v3[25] = 0;
  v3[24] = 0;
  v4 = v3 + 24;
  v3[23] = v3 + 24;
  v5 = v3 + 23;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy((v3 + 23), 0);
  *v5 = v4;
  *(this + 25) = 0;
  *v4 = 0;
}

void MTLRuntimeStackTrace::~MTLRuntimeStackTrace(MTLRuntimeStackTrace *this)
{
  *this = &unk_2868ECA18;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(this + 184, *(this + 24));
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868ECA18;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(this + 184, *(this + 24));
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLRuntimeStackTrace::runOnModule(llvm::Type **this, llvm::Module *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy((this + 23), this[24]);
  this[24] = 0;
  this[25] = 0;
  this[23] = (this + 24);
  v4 = this[14];
  v25[0] = this[10];
  v25[1] = v4;
  v5 = llvm::StructType::create();
  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (EntryFunction)
  {
    v7 = *(EntryFunction + 80);
    v8 = v7 ? (v7 - 24) : 0;
    llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v25, v8, 0, 0, 0);
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v8);
    llvm::IRBuilderBase::SetInsertPoint(v25, v8, FirstInsertionPt);
    Int8PtrTy = llvm::Type::getInt8PtrTy(this[5], 0);
    v12 = llvm::ConstantPointerNull::get(Int8PtrTy, v11);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(this[8]);
    llvm::IRBuilderBase::CreateAlignedStore(v25, v12, inserted, 0);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v28);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v27);
    if (v25[0] != &v26)
    {
      free(v25[0]);
    }
  }

  v14 = a2 + 24;
  for (i = *(a2 + 4); i != v14; i = *(i + 8))
  {
    if (i)
    {
      v16 = (i - 56);
    }

    else
    {
      v16 = 0;
    }

    if ((llvm::GlobalValue::isDeclaration(v16) & 1) == 0 && !llvm::Value::getMetadata())
    {
      for (j = *(v16 + 10); j != (v16 + 72); j = j[1])
      {
        v18 = j - 3;
        if (!j)
        {
          v18 = 0;
        }

        v19 = v18 + 5;
        for (k = v18[6]; k != v19; k = k[1])
        {
          if (k)
          {
            v21 = (k - 3);
          }

          else
          {
            v21 = 0;
          }

          if (k && *(v21 + 16) == 84 && MTLRuntimeStackTrace::checkIfValidForStackTrace(this, v21))
          {
            v22 = MTLRuntimeStackTrace::getOrInsertFrameAlloca(this, v16, v5);
            MTLRuntimeStackTrace::addCallStackTrace(this, v16, v21, v5, v22);
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

void std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

BOOL MTLRuntimeStackTrace::checkIfValidForStackTrace(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 32);
  result = 1;
  if (v2 && !*(v2 + 16) && *(v2 + 24) == *(a2 + 72))
  {
    Name = llvm::Value::getName(*(a2 - 32));
    if (v5 >= 4 && *Name == 779250017)
    {
      v11 = llvm::Value::getName(v2);
      if (v12 < 0xD)
      {
        return 0;
      }

      if (*v11 != 0x65746E692E726961 || *(v11 + 5) != 0x746365737265746ELL)
      {
        return 0;
      }
    }

    if (llvm::Value::getMetadata())
    {
      return 0;
    }

    v6 = llvm::Value::getName(v2);
    if (v7 >= 4 && *v6 == 778859629)
    {
      return 0;
    }

    v8 = llvm::Value::getName(v2);
    if (v9 >= 5 && *v8 == 1836477548 && *(v8 + 4) == 46)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MTLRuntimeStackTrace::getOrInsertFrameAlloca(MTLRuntimeStackTrace *this, llvm::Function *a2, llvm::Type *a3)
{
  v19[7] = *MEMORY[0x277D85DE8];
  v15 = a2;
  for (i = *(this + 24); i; i = *i)
  {
    v6 = i[4];
    if (v6 <= a2)
    {
      if (v6 >= a2)
      {
        v16[0] = &v15;
        Alloca = std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::__emplace_unique_key_args<llvm::Function *,std::piecewise_construct_t const&,std::tuple<llvm::Function * const&>,std::tuple<>>(this + 184, &v15)[5];
        goto LABEL_12;
      }

      ++i;
    }
  }

  v7 = *(a2 + 10);
  if (v7)
  {
    v8 = (v7 - 24);
  }

  else
  {
    v8 = 0;
  }

  FirstNonPHIOrDbg = llvm::BasicBlock::getFirstNonPHIOrDbg(v8);
  v13[0] = v8;
  MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(v16, v13);
  llvm::IRBuilderBase::SetInsertPoint(v16, FirstNonPHIOrDbg);
  v14 = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca(v16, a3, 0, v13);
  v13[0] = &v15;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::__emplace_unique_key_args<llvm::Function *,std::piecewise_construct_t const&,std::tuple<llvm::Function * const&>,std::tuple<>>(this + 184, &v15)[5] = Alloca;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v19);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v18);
  if (v16[0] != &v17)
  {
    free(v16[0]);
  }

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return Alloca;
}

void sub_2579FDC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MTLRuntimeStackTrace::addCallStackTrace(uint64_t a1, int a2, llvm::Instruction *a3, llvm::Type *a4, llvm::Value *a5)
{
  v28[7] = *MEMORY[0x277D85DE8];
  if (MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a3) != -1)
  {
    v24 = *(a3 + 5);
    MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *&>(v25, &v24);
    llvm::IRBuilderBase::SetInsertPoint(v25, a3);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(*(a1 + 64));
    v23 = 257;
    ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(v25, a4, a5, 0, 1u, v22);
    v11 = *(inserted + 24);
    v23 = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v25, v11, inserted, 0, 0, v22);
    llvm::IRBuilderBase::CreateAlignedStore(v25, AlignedLoad, ConstInBoundsGEP2_32, 0);
    v23 = 257;
    v13 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(v25, a4, a5, 0, 0, v22);
    v14 = *(a1 + 80);
    v15 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateAlignedStore(v25, v15, v13, 0);
    v16 = *(a1 + 112);
    v23 = 257;
    PointerBitCastOrAddrSpaceCast = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(v25, a5, v16, v22);
    llvm::IRBuilderBase::CreateAlignedStore(v25, PointerBitCastOrAddrSpaceCast, inserted, 0);
    v18 = *(a3 + 4);
    if (v18)
    {
      v19 = v18 == *(a3 + 5) + 40;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = (v18 - 24);
    }

    llvm::IRBuilderBase::SetInsertPoint(v25, v20);
    llvm::IRBuilderBase::CreateAlignedStore(v25, AlignedLoad, inserted, 0);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v28);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v27);
    if (v25[0] != &v26)
    {
      free(v25[0]);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2579FDE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::__emplace_unique_key_args<llvm::Function *,std::piecewise_construct_t const&,std::tuple<llvm::Function * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void MTLMemoryCheckPass::~MTLMemoryCheckPass(MTLMemoryCheckPass *this)
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

uint64_t MTLMemoryCheckPass::runOnModule(MTLMemoryCheckPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  for (i = *(a2 + 4); i != (a2 + 24); i = i[1])
  {
    if (i)
    {
      v5 = (i - 7);
    }

    else
    {
      v5 = 0;
    }

    if ((*(v5 + 8) & 0xF) != 1 && (llvm::GlobalValue::isDeclaration(v5) & 1) == 0 && !llvm::Value::getMetadata())
    {
      MTLMemoryCheckPass::runOnFunction(this, v5);
    }
  }

  return 1;
}

uint64_t MTLMemoryCheckPass::runOnFunction(MTLMemoryCheckPass *this, llvm::Function *a2)
{
  v25[12] = *MEMORY[0x277D85DE8];
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

      v6 = *(v5 + 6);
      v7 = (v6 - 24);
      if (v6)
      {
        v8 = v6 - 24;
      }

      else
      {
        v8 = 0;
      }

      v22 = v25;
      v24 = 4;
      if (*(v8 + 16) - 29 >= 0xB)
      {
        do
        {
          v23 = 0;
          MTLBoundsCheck::gatherMemoryOperands(v7, &v22);
          if ((std::__any_of[abi:ne200100]<MTLBoundsCheck::MemoryAccessOperand *,MTLBoundsCheck::MemoryAccessOperand *,std::__identity,MTLMemoryCheckPass::runOnFunction(llvm::Function &)::{lambda(MTLBoundsCheck::MemoryAccessOperand * const&)#1}>(v22, v22 + 3 * v23) & 1) == 0 || !v23)
          {
            goto LABEL_17;
          }

          v9 = v22;
          v10 = 24 * v23;
          while (1)
          {
            v11 = *(this + 8);
            v12 = *v9;
            v20 = 0;
            v21 = v12;
            if ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>((v11 + 208), &v21, &v20) & 1) == 0)
            {
              break;
            }

            v9 += 3;
            v10 -= 24;
            if (!v10)
            {
              goto LABEL_17;
            }
          }

          if (v23 && (v14 = MTLMemoryCheckPass::createCheckedInstructionCall(this, v7)) != 0)
          {
            llvm::ReplaceInstWithInst(v7, v14, v13);
          }

          else
          {
LABEL_17:
            v14 = v7;
          }

          v15 = *(v14 + 4);
          v7 = (v15 - 24);
          if (v15)
          {
            v16 = v15 == *(v14 + 5) + 40;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v17 = 0;
          }

          else
          {
            v17 = v15 - 24;
          }
        }

        while (*(v17 + 16) - 29 > 0xA);
        if (v22 != v25)
        {
          free(v22);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_2579FE340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMemoryCheckPass::createCheckedInstructionCall(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) || (*(a2 + 23) & 0x20) != 0) && llvm::Instruction::getMetadataImpl())
  {
    return 0;
  }

  v5 = *(a2 + 16);
  switch(v5)
  {
    case 'T':

      return MTLMemoryCheckPass::createCheckedFunction(a1, a2);
    case '=':

      return MTLMemoryCheckPass::createCheckedStoreCall(a1, a2);
    case '<':

      return MTLMemoryCheckPass::createCheckedLoadCall(a1, a2);
    default:
      return 0;
  }
}

uint64_t std::__any_of[abi:ne200100]<MTLBoundsCheck::MemoryAccessOperand *,MTLBoundsCheck::MemoryAccessOperand *,std::__identity,MTLMemoryCheckPass::runOnFunction(llvm::Function &)::{lambda(MTLBoundsCheck::MemoryAccessOperand * const&)#1}>(uint64_t **a1, uint64_t **a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  do
  {
    v2 = **a1;
    v3 = *(v2 + 8);
    if ((v3 & 0xFE) == 0x12)
    {
      v3 = *(**(v2 + 16) + 8);
    }

    v4 = (v3 >> 8) - 1 >= 2 || *(a1 + 4) == 0;
    v5 = !v4;
    if (!v4)
    {
      break;
    }

    a1 += 3;
  }

  while (a1 != a2);
  return v5;
}

uint64_t MTLMemoryCheckPass::createCheckedLoadCall(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = **(a2 - 32);
  if (!a2 || (v4 = a2, *(a2 + 16) != 60))
  {
    v4 = *(a2 - 64);
  }

  v5 = *v4;
  v6 = *(a2 + 18);
  v7 = *(a1 + 48);
  v16[0] = "mtl.checked_load.";
  v16[2] = (1 << (v6 >> 1));
  v17 = 2307;
  v21[0] = v16;
  v21[2] = ".";
  v22 = 770;
  v19[0] = v21;
  v19[2] = (v6 & 1);
  v20 = 2306;
  v8 = getMangledFunction<llvm::Type *&,llvm::Type *&>(v7, v19, *a2, &v18, (a1 + 80));
  if (llvm::GlobalValue::isDeclaration(v8))
  {
    *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    v9 = *(a1 + 40);
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v10 = *(a1 + 40);
    v19[0] = "entry";
    v20 = 259;
    llvm::BasicBlock::Create(v10, v19, v8, 0, v11);
  }

  if (v8)
  {
    v12 = *(v8 + 24);
  }

  else
  {
    v12 = 0;
  }

  v21[0] = *(a2 - 32);
  v13 = *(a1 + 80);
  MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
  v21[1] = llvm::ConstantInt::get();
  v20 = 257;
  result = llvm::CallInst::Create(v12, v8, v21, 2, 0, 0);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579FEB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MTLMemoryCheckPass::createCheckedStoreCall(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = **(a2 - 32);
  if (!a2 || (v4 = a2, *(a2 + 16) != 60))
  {
    v4 = *(a2 - 64);
  }

  v5 = *v4;
  v6 = *(a2 + 18);
  v19 = 1 << (v6 >> 1);
  v20 = v5;
  v7 = *(a1 + 48);
  v17[0] = "mtl.checked_store.";
  v17[2] = &v19;
  v18 = 3075;
  v24[0] = v17;
  v25 = ".";
  v26 = 770;
  v22[0] = v24;
  v22[2] = (v6 & 1);
  v23 = 2306;
  v8 = getMangledFunction<llvm::Type *&,llvm::Type *&,llvm::Type *&>(v7, v22, *a2, &v21, &v20, (a1 + 80));
  if (llvm::GlobalValue::isDeclaration(v8))
  {
    *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    v9 = *(a1 + 40);
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v10 = *(a1 + 40);
    v22[0] = "entry";
    v23 = 259;
    llvm::BasicBlock::Create(v10, v22, v8, 0, v11);
  }

  if (v8)
  {
    v12 = *(v8 + 24);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 - 64);
  v24[0] = *(a2 - 32);
  v24[1] = v13;
  v14 = *(a1 + 80);
  MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
  v25 = llvm::ConstantInt::get();
  v23 = 257;
  result = llvm::CallInst::Create(v12, v8, v24, 3, 0, 0);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579FF238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MTLMemoryCheckPass::createCheckedFunction(uint64_t a1, uint64_t a2)
{
  v76[12] = *MEMORY[0x277D85DE8];
  v2 = *(a2 - 32);
  if (!v2 || *(v2 + 16) || (v4 = *(a2 + 72), *(v2 + 24) != v4) || !llvm::GlobalValue::isDeclaration(*(a2 - 32)) || llvm::Value::getMetadata() || (Name = llvm::Value::getName(v2), v60 = Name, v61 = v7, v7 < 4) || *Name != 779250017 && (v7 == 4 || (*Name == 1836477548 ? (v8 = Name[4] == 46) : (v8 = 0), !v8)))
  {
    v9 = 0;
    goto LABEL_14;
  }

  v74 = v76;
  v75 = 0x400000000;
  MTLBoundsCheck::gatherMemoryArguments(v2, &v74);
  v12 = v74;
  if (v75)
  {
    v13 = 0;
    while (1)
    {
      v14 = *v74[v13];
      v15 = *(v14 + 8);
      if ((v15 & 0xFE) == 0x12)
      {
        v15 = *(**(v14 + 16) + 8);
      }

      if ((v15 >> 8) - 1 < 2)
      {
        break;
      }

      v13 += 3;
      if (3 * v75 == v13)
      {
        goto LABEL_21;
      }
    }

    v16 = *(v4 + 12);
    v62[0] = 0;
    llvm::SmallVector<unsigned long,6u>::SmallVector(&v72, (v16 + 62) >> 6, v62);
    v17 = v16 - 1;
    v73[12] = v16 - 1;
    v70[0] = v71;
    v70[1] = 0x400000000;
    v67 = v69;
    v68 = xmmword_257A6DAA0;
    llvm::raw_svector_ostream::raw_svector_ostream(v58, &v67);
    llvm::raw_ostream::operator<<(v58, "mtl.checked.", 0xCuLL);
    llvm::raw_ostream::operator<<(v58, v60, v61);
    if (v61 < 0xB)
    {
      goto LABEL_65;
    }

    if ((*v60 != 0x6D656D2E6D766C6CLL || *(v60 + 3) != 0x7970636D656D2E6DLL) && (*v60 != 0x6D656D2E6D766C6CLL || *(v60 + 3) != 0x7465736D656D2E6DLL))
    {
      if (v61 == 11)
      {
LABEL_65:
        v37 = *(a1 + 48);
        v38 = *v59;
        v39 = v59[1];
        Function = llvm::Module::getFunction();
        if (!Function)
        {
          llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::init(v66, 64);
          v66[24] = 0;
          v66[48] = 0;
          v64[0] = &v65;
          v64[1] = 0x400000000;
          v45 = *(v4 + 12);
          if (v45 != 1)
          {
            v46 = 0;
            do
            {
              if (((*(v72 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
              {
                v62[0] = *(*(v4 + 16) + 8 * (v46 + 1));
                llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v64, v62);
                v62[0] = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * v46);
                llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v70, v62);
                v45 = *(v4 + 12);
              }

              ++v46;
            }

            while (v46 < (v45 - 1));
          }

          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v64, (a1 + 80));
          v47 = *(a1 + 80);
          MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
          v62[0] = llvm::ConstantInt::get();
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v70, v62);
          v48 = **(v4 + 16);
          v49 = llvm::FunctionType::get();
          v51 = *v59;
          v50 = v59[1];
          v63 = 261;
          v62[0] = v51;
          v62[1] = v50;
          v52 = llvm::Function::Create(v49, 7, v62, *(a1 + 48));
          *(v52 + 9) = *(v52 + 9) & 0xC00F | *(v2 + 18) & 0x3FF0;
          v53 = *(a1 + 40);
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
          llvm::Function::addFnAttr();
          llvm::Function::addFnAttr();
          v54 = *(a1 + 40);
          v62[0] = "entry";
          v63 = 259;
          llvm::BasicBlock::Create(v54, v62, v52, 0, v55);
        }

        v41 = *(v4 + 12);
        if (v41 != 1)
        {
          v42 = 0;
          v43 = a2;
          do
          {
            if (((*(v72 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              v62[0] = *(v43 - 32 * (*(a2 + 20) & 0x7FFFFFF));
              llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v70, v62);
              v41 = *(v4 + 12);
            }

            ++v42;
            v43 += 32;
          }

          while (v42 < (v41 - 1));
        }

        v44 = *(a1 + 80);
        MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
        v62[0] = llvm::ConstantInt::get();
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v70, v62);
        llvm::raw_ostream::~raw_ostream(v58);
        if (v67 != v69)
        {
          free(v67);
        }

        v56 = *(Function + 24);
        v63 = 257;
        v9 = llvm::CallInst::Create(v56);
        v57 = *(v9 + 18) & 0xFFFC | *(a2 + 18) & 3;
        *(v9 + 18) = v57;
        *(v9 + 18) = v57 & 0xF003 | *(a2 + 18) & 0xFFC;
        if (v70[0] != v71)
        {
          free(v70[0]);
        }

        if (v72 != v73)
        {
          free(v72);
        }

        v12 = v74;
        goto LABEL_85;
      }

      if (*v60 != 0x6D656D2E6D766C6CLL || *(v60 + 2) != 1702260589)
      {
        if (v61 >= 0x11)
        {
          v21 = *v60 == 0x6D6F74612E726961 && *(v60 + 1) == 0x61626F6C672E6369;
          if (v21 && v60[16] == 108)
          {
            v23 = llvm::StringRef::find() == -1 ? -3 : -4;
            v24 = v23 + v17;
            if (__CFADD__(v23, v17))
            {
              v25 = a2 + 32 * v24;
              do
              {
                *(v72 + (v24 >> 6)) |= 1 << v24;
                v26 = *(v25 - 32 * (*(a2 + 20) & 0x7FFFFFF));
                v27 = (v26 + 24);
                if (*(v26 + 32) >= 0x41u)
                {
                  v27 = *v27;
                }

                v28 = *v27;
                llvm::raw_ostream::operator<<(v58, ".", 1uLL);
                llvm::raw_ostream::operator<<();
                LODWORD(v24) = v24 + 1;
                v25 += 32;
              }

              while (!__CFADD__(v23++, 1));
            }
          }
        }

        goto LABEL_65;
      }
    }

    if (v17 >= 4)
    {
      v30 = 3;
      if (v16 == 6)
      {
        v30 = 4;
      }

      *v72 |= 1 << v30;
      v31 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * v30);
      v32 = (v31 + 24);
      if (*(v31 + 32) >= 0x41u)
      {
        v32 = *v32;
      }

      v33 = *v32;
      llvm::raw_ostream::operator<<(v58, ".", 1uLL);
      llvm::raw_ostream::operator<<();
      if (v17 == 5)
      {
        *v72 |= 8uLL;
        v34 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 96);
        v35 = (v34 + 24);
        if (*(v34 + 32) >= 0x41u)
        {
          v35 = *v35;
        }

        v36 = *v35;
        llvm::raw_ostream::operator<<(v58, ".", 1uLL);
        llvm::raw_ostream::operator<<();
      }
    }

    goto LABEL_65;
  }

LABEL_21:
  v9 = 0;
LABEL_85:
  if (v12 != v76)
  {
    free(v12);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_257A00104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  llvm::raw_ostream::~raw_ostream(&a35);
  if (STACK[0x280] != a18)
  {
    free(STACK[0x280]);
  }

  if (STACK[0x2D8] != a19)
  {
    free(STACK[0x2D8]);
  }

  if (STACK[0x308] != &STACK[0x318])
  {
    free(STACK[0x308]);
  }

  v37 = *(v35 - 224);
  if (v37 != a20)
  {
    free(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLMemoryCheckPass::createQueryMemoryUsageCall(void *a1, MTLBoundsCheck *a2, int a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = *(**(*a2 + 16) + 8);
  }

  v6 = a3 - 1;
  if ((a3 - 1) <= 2)
  {
    v7 = qword_257A6DD50[v6];
    v8 = off_27984E588[v6];
    v9 = a1[6];
    v18 = 261;
    v17[0] = v8;
    v17[1] = v7;
    v10 = a1[12];
    v19[0] = llvm::PointerType::get();
    v11 = getMangledFunction<llvm::PointerType *>(v9, v17, v10, v19);
    if (!llvm::Value::getMetadata())
    {
      v12 = a1[5];
      llvm::MDTuple::getImpl();
      llvm::Value::setMetadata();
    }

    if (llvm::Value::getMetadata())
    {
      if (v11)
      {
LABEL_8:
        v13 = *(v11 + 24);
LABEL_12:
        v19[0] = a2;
        v18 = 257;
        result = llvm::CallInst::Create(v13, v11, v19, 1, 0, 0);
        goto LABEL_13;
      }
    }

    else
    {
      v15 = a1[5];
      llvm::MDTuple::getImpl();
      llvm::Value::setMetadata();
      if (v11)
      {
        goto LABEL_8;
      }
    }

    v13 = 0;
    goto LABEL_12;
  }

  result = 0;
LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::IRBuilderBase::CreateBr(unsigned int **this, llvm::BasicBlock *a2, llvm::Instruction *a3)
{
  v4 = llvm::BranchInst::Create(a2, 0, a3);
  v7 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v4, v6);
}

uint64_t llvm::BranchInst::setSuccessor(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result - 32 * a2;
  v5 = *(v3 - 32);
  v4 = v3 - 32;
  if (v5)
  {
    v6 = *(v4 + 8);
    **(v4 + 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(v4 + 16);
    }
  }

  *v4 = a3;
  if (a3)
  {
    v9 = *(a3 + 8);
    v7 = (a3 + 8);
    v8 = v9;
    *(v4 + 8) = v9;
    if (v9)
    {
      *(v8 + 16) = v4 + 8;
    }

    *(v4 + 16) = v7;
    *v7 = v4;
  }

  return result;
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  v5 = llvm::User::operator new(0x40);
  MEMORY[0x259C6A270](v5, this, a2);
  return v5;
}

void *llvm::SmallVector<unsigned long,6u>::SmallVector(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  llvm::SmallVectorImpl<unsigned long>::assign(a1, a2, *a3);
  return a1;
}

void sub_257A005A0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<unsigned long>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) < a2)
  {
    llvm::SmallVectorTemplateBase<llvm::Value *,true>::growAndAssign(a1);
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    v6 = 0;
    v7 = (v5 + 1) & 0x1FFFFFFFELL;
    v8 = vdupq_n_s64(v5 - 1);
    v9 = (v3 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_257A6D000)));
      if (v10.i8[0])
      {
        *(v9 - 1) = a3;
      }

      if (v10.i8[4])
      {
        *v9 = a3;
      }

      v6 += 2;
      v9 += 2;
    }

    while (v7 != v6);
  }

  v11 = a2 - v4;
  if (a2 > v4)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v11 - 1);
    v14 = (v3 + 8 * v4 + 8);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_257A6D000)));
      if (v15.i8[0])
      {
        *(v14 - 1) = a3;
      }

      if (v15.i8[4])
      {
        *v14 = a3;
      }

      v12 += 2;
      v14 += 2;
    }

    while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
  }

  *(a1 + 8) = a2;
  return a1;
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::init(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(a1 + 16) = v4;
    *a1 = MEMORY[0x259C6A8D0](v4 << 6, 8);

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(a1);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t AddSat(uint64_t a1, uint64_t a2)
{
  if ((a2 + a1) >> 32)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (a2 + a1);
  }
}

double MTLGEPConversionPass::MTLGEPConversionPass(uint64_t a1, uint64_t a2)
{
  v3 = MetalModulePass::MetalModulePass(a1, &MTLGEPConversionPass::ID, a2);
  *v3 = &unk_2868ECB58;
  *(v3 + 184) = 0;
  *(v3 + 208) = *(a2 + 80);
  *(v3 + 216) = v3 + 232;
  *(v3 + 224) = 0x2000000000;
  result = 0.0;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 1065353216;
  *(v3 + 528) = 0u;
  *(v3 + 544) = 0u;
  *(v3 + 560) = 1065353216;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 600) = 1065353216;
  *(v3 + 608) = 0u;
  *(v3 + 624) = 0u;
  *(v3 + 640) = 1065353216;
  return result;
}

void MTLGEPConversionPass::~MTLGEPConversionPass(MTLGEPConversionPass *this)
{
  *this = &unk_2868ECB58;
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 608);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 568);
  std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>>>::~__hash_table(this + 528);
  std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>>>::~__hash_table(this + 488);
  v2 = *(this + 27);
  if (v2 != this + 232)
  {
    free(v2);
  }

  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868ECB58;
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 608);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 568);
  std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>>>::~__hash_table(this + 528);
  std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>>>::~__hash_table(this + 488);
  v2 = *(this + 27);
  if (v2 != this + 232)
  {
    free(v2);
  }

  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLGEPConversionPass::doInitialization(MTLGEPConversionPass *this, llvm::Module *a2)
{
  v3 = MetalModulePass::doInitialization(this, a2);
  *(this + 46) = llvm::Module::getMDKindID();
  *(this + 47) = llvm::Module::getMDKindID();
  return v3;
}

uint64_t MTLGEPConversionPass::runOnModule(uint64_t **this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>>>::clear((this + 61));
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 71);
  v4 = a2 + 24;
  for (i = *(a2 + 4); i != v4; i = *(i + 8))
  {
    if (i)
    {
      v6 = (i - 56);
    }

    else
    {
      v6 = 0;
    }

    if ((llvm::GlobalValue::isDeclaration(v6) & 1) == 0)
    {
      MTLGEPConversionPass::runOnFunction(this, v6);
    }
  }

  v7 = *(this + 56);
  if (v7)
  {
    v8 = this[27];
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v11 = *(this + 46);
      llvm::Instruction::setMetadata();
      v9 -= 8;
    }

    while (v9);
  }

  *(this + 56) = 0;
  return 0;
}

uint64_t std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = v2;
      v2 = *v2;
      if (*(v3 + 240) == 1)
      {
        v4 = v3[4];
        if (v4 != v3 + 6)
        {
          free(v4);
        }
      }

      operator delete(v3);
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4 != v2 + 5)
      {
        free(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void MTLGEPConversionPass::runOnFunction(llvm::DataLayout **this, llvm::Function *a2)
{
  v37[7] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 10);
  if (v4)
  {
    v5 = (v4 - 24);
  }

  else
  {
    v5 = 0;
  }

  v30 = v5;
  MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(&v34, &v30);
  v29 = this;
  llvm::InstVisitor<MTLGEPConversionPass::FoldVisitor,void>::visit(v28, a2);
  for (i = this[63]; i; i = *i)
  {
    v7 = *(i + 2);
    v27 = v7;
    if (*(i + 8))
    {
      MetalModulePass::getStaticBoundsInfo(this, v7, v26);
      if (v26[24] == 1 && v26[21] != 0)
      {
        v9 = *(i + 8);
        if (v9)
        {
          v10 = *(i + 3);
          v11 = v10 + 16 * v9;
          v12 = 1;
          do
          {
            v25 = *(v10 + 8);
            v13 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(this + 66, &v25);
            llvm::optional_detail::OptionalStorage<GEPExpressionSum,false>::OptionalStorage(&v30, (v13 + 3));
            llvm::DataLayout::getTypeAllocSize(this[7], **(*v25 + 16));
            v14 = llvm::TypeSize::operator unsigned long long();
            if (v12 >= v14)
            {
              v15 = v14;
            }

            else
            {
              v15 = v12;
            }

            if (v15 == 1)
            {
              v16 = 1;
            }

            else
            {
              do
              {
                v16 = v15;
                canStrideFold = GEPExpressionSum::canStrideFold(&v30, v15, 1);
                v15 = 0;
              }

              while ((canStrideFold & 1) == 0);
            }

            if (v16 < v12)
            {
              v12 = v16;
            }

            if (v33 == 1 && v31 != v32)
            {
              free(v31);
            }

            v10 += 16;
          }

          while (v10 != v11);
        }

        else
        {
          v12 = 1;
        }

        v30 = &v27;
        v18 = std::__hash_table<std::__hash_value_type<llvm::Value *,ArgumentLoadInfo>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,ArgumentLoadInfo>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,ArgumentLoadInfo>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,ArgumentLoadInfo>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(this + 71, &v27);
        *(v18 + 6) = v12;
        v19 = *(i + 8);
        if (v19)
        {
          v20 = *(i + 3);
          v21 = &v20[2 * v19];
          do
          {
            v22 = *v20;
            v25 = v20[1];
            v23 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(this + 66, &v25);
            llvm::optional_detail::OptionalStorage<GEPExpressionSum,false>::OptionalStorage(&v30, (v23 + 3));
            if (v33 == 1 && GEPExpressionSum::canStrideFold(&v30, *(v18 + 6), 1))
            {
              MTLGEPConversionPass::foldLoad(this, v27, v22, v25, &v30, *(v18 + 6));
            }

            if (v33 == 1 && v31 != v32)
            {
              free(v31);
            }

            v20 += 2;
          }

          while (v20 != v21);
        }
      }
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v37);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v36);
  if (v34 != &v35)
  {
    free(v34);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>>>::__deallocate_node(a1, *(a1 + 16));
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

uint64_t GEPExpressionSum::canStrideFold(uint64_t this, unsigned int a2, int a3)
{
  if (a3)
  {
    v3 = (*this + 24);
    if (*(*this + 32) >= 0x41u)
    {
      v3 = *v3;
    }

    if (*v3 % a2)
    {
      return 0;
    }
  }

  v4 = *(this + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = *(this + 8);
  v6 = 24 * v4;
  LOBYTE(this) = 1;
  do
  {
    v7 = (*v5 + 24);
    if (*(*v5 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    this = (*v7 % a2 == 0) & this;
    v5 += 24;
    v6 -= 24;
  }

  while (v6);
  return this;
}

void MTLGEPConversionPass::foldLoad(MTLGEPConversionPass *this, llvm::Value *a2, llvm::Instruction *a3, llvm::Value *a4, uint64_t **a5, unsigned int a6)
{
  v70[7] = *MEMORY[0x277D85DE8];
  v64 = a3;
  MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(v67, &v64);
  v11 = GEPExpressionSum::emitDynamicALUOps(a5, v67);
  v65[0] = 0;
  *&v39 = 0;
  *&v41 = &v39;
  *(&v41 + 1) = v65;
  v42 = v65;
  v43 = v65;
  v44 = v65;
  v45 = v65;
  v46 = v65;
  v47 = &v39;
  v48 = &v39;
  v49 = v65;
  v50 = v65;
  v51 = v65;
  v52 = v65;
  v53 = v65;
  v54 = v65;
  v55 = &v39;
  v56 = &v39;
  v57 = v65;
  v58 = v65;
  v59 = v65;
  v60 = v65;
  v61 = v65;
  v62 = v65;
  v63 = &v39;
  if (llvm::PatternMatch::match_combine_or<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>,40u>>>::match<llvm::Value>(&v41, v11, &v39))
  {
    v11 = v39;
    v12 = v65[0] + 24;
    if (*(v65[0] + 8) >= 0x41u)
    {
      v12 = *v12;
    }

    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *a4;
  v15 = **(*a4 + 16);
  TypeForStride = MetalModulePass::getTypeForStride(this, a6);
  if (!TypeForStride)
  {
    v17 = llvm::dbgs(0);
    llvm::raw_ostream::operator<<(v17, "[GEP->ADD] Nonstandard stride ", 0x1EuLL);
    v18 = llvm::raw_ostream::operator<<();
    llvm::raw_ostream::operator<<(v18, "\n", 1uLL);
    TypeForStride = v15;
  }

  if (TypeForStride != v14)
  {
    if ((*(v14 + 8) & 0xFE) == 0x12)
    {
      v19 = *(**(v14 + 16) + 8);
    }

    TypeForStride = llvm::PointerType::get();
  }

  v20 = *(this + 6);
  *&v41 = "bounds.fold";
  LOWORD(v44) = 259;
  v65[0] = *a2;
  v21 = getMangledFunction<llvm::Type *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(v20, &v41, TypeForStride, v65, this + 10, this + 10, this + 10);
  MetalModulePass::getStaticBoundsInfo(this, a2, &v41);
  v39 = v41;
  v40 = v42;
  v38 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), **(v14 + 16)) + 7) >> 3;
  v22 = *a5 + 3;
  if (*(*a5 + 8) >= 0x41u)
  {
    v22 = *v22;
  }

  v23 = *v22;
  llvm::TypeSize::operator unsigned long long();
  if (v21)
  {
    v24 = *(v21 + 24);
  }

  else
  {
    v24 = 0;
  }

  v65[0] = a2;
  v65[1] = v11;
  v25 = *(this + 10);
  v65[2] = llvm::ConstantInt::get();
  v26 = *(this + 10);
  v65[3] = llvm::ConstantInt::get();
  LOWORD(v44) = 257;
  v27 = llvm::IRBuilderBase::CreateCall(v67, v24, v21, v65, 4, &v41, 0);
  MetalModulePass::cacheStaticBoundsInfo(this, v27, &v39);
  v28 = *(this + 10);
  v29 = *a5 + 3;
  if (*(*a5 + 8) >= 0x41u)
  {
    v29 = *v29;
  }

  v30 = **(*v27 + 16);
  v31 = (*v29 / a6) + v13;
  v32 = llvm::ConstantInt::get();
  v33 = *(this + 9);
  LOWORD(v44) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v67, 39, v32, v33, &v41);
  v66 = 257;
  v35 = llvm::IRBuilderBase::CreateInBoundsGEP(v67, v30, v27, Cast, v65);
  MetalModulePass::cacheStaticBoundsInfo(this, v35, &v39);
  LOWORD(v44) = 257;
  v36 = llvm::IRBuilderBase::CreateCast(v67, 49, v35, v14, &v41);
  MetalModulePass::cacheStaticBoundsInfo(this, v36, &v39);
  llvm::User::replaceUsesOfWith();
  MetalModulePass::cacheStaticBoundsInfo(this, v64, &v39);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v70);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v69);
  if (v67[0] != &v68)
  {
    free(v67[0]);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void llvm::InstVisitor<MTLGEPConversionPass::FoldVisitor,void>::visit(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *a1 = v4;
  DataLayout = llvm::Module::getDataLayout(v4);
  v6 = **a1;
  *(a1 + 8) = v6;
  *(a1 + 16) = DataLayout;
  *(a1 + 24) = llvm::Type::getInt32Ty(v6, v7);
  v8 = *(a2 + 80);

  llvm::InstVisitor<MTLGEPConversionPass::FoldVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock,false,false,void>,false,false>>(a1, v8, a2 + 72);
}

void llvm::InstVisitor<MTLGEPConversionPass::FoldVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock,false,false,void>,false,false>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
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
            v10 = (v7 - 24);
          }

          else
          {
            v10 = 0;
          }

          llvm::InstVisitor<MTLGEPConversionPass::FoldVisitor,void>::visit(a1, v10);
          v7 = v9;
        }

        while (v9 != v8);
      }

      a2 = v5;
    }

    while (v5 != a3);
  }
}

void llvm::InstVisitor<MTLGEPConversionPass::FoldVisitor,void>::visit(uint64_t a1, llvm::Instruction *a2)
{
  v2 = *(a2 + 16);
  if ((v2 - 61) > 0x22)
  {
    if ((v2 - 29) >= 0x1F)
    {
      MemoryOpVisitor<MTLGEPConversionPass::FoldVisitor>::visitLoadInst(a1, a2);
    }
  }

  else if (((1 << (v2 - 61)) & 0x7FF7FFFFELL) == 0)
  {
    if (v2 == 61)
    {
      MemoryOpVisitor<MTLGEPConversionPass::FoldVisitor>::visitStoreInst(a1, a2);
    }

    else
    {
      MemoryOpVisitor<MTLGEPConversionPass::FoldVisitor>::visitCallInst(a1, a2);
    }
  }
}

void MemoryOpVisitor<MTLGEPConversionPass::FoldVisitor>::visitLoadInst(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 24);
  v5 = (llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), **(**(a2 - 4) + 16)) + 7) >> 3;
  llvm::TypeSize::operator unsigned long long();
  llvm::ConstantInt::get();
  MTLGEPConversionPass::FoldVisitor::visitPointerOperand(a1, a2, *(a2 - 4));
}

void MTLGEPConversionPass::FoldVisitor::visitPointerOperand(uint64_t a1, llvm::Instruction *a2, llvm::GetElementPtrInst *a3)
{
  v15[24] = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  if (MTLBoundsCheck::checkAddressSpace(a3))
  {
    v5 = *(*(a1 + 32) + 64);
    v13 = v12;
    v6 = std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>((v5 + 168), v12);
    if (v6[6] == 1)
    {
      GEPExpressionSum::GEPExpressionSum(&v13, *(*(a1 + 32) + 40));
      PointerOperand = v12[0];
      for (i = v12[0]; PointerOperand; i = PointerOperand)
      {
        if (*(PointerOperand + 16) == 62)
        {
          GEPExpressionSum::accumulateGEP(&v13, *(*(a1 + 32) + 56), PointerOperand);
          PointerOperand = i;
        }

        PointerOperand = getPointerOperand(PointerOperand);
        if (std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::find<llvm::Value *>(v6 + 3, &i))
        {
          v8 = *(a1 + 32);
          v12[2] = v12;
          v9 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>((v8 + 528), v12);
          llvm::optional_detail::OptionalStorage<GEPExpressionSum,false>::operator=((v9 + 3), &v13);
          MTLGEPConversionPass::addMemUser(*(a1 + 32), i, a2, v12[0]);
        }
      }

      if (v14 != v15)
      {
        free(v14);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t GEPExpressionSum::accumulateGEP(uint64_t **this, const llvm::DataLayout *a2, llvm::GetElementPtrInst *a3)
{
  if (!llvm::GetElementPtrInst::hasAllConstantIndices(a3))
  {
    result = llvm::GEPOperator::getSourceElementType(a3);
    v10 = *(a3 + 5);
    if ((v10 & 0x40000000) != 0)
    {
      v12 = *(a3 - 1);
      v13 = v12 + 32;
      v36 = (v12 + 32);
      v37 = result | 4;
      v11 = v10 & 0x7FFFFFF;
    }

    else
    {
      v11 = v10 & 0x7FFFFFF;
      v12 = a3 - 32 * v11;
      v13 = v12 + 32;
      v36 = (v12 + 32);
      v37 = result | 4;
    }

    v14 = &v12[32 * v11];
    if (v13 == v14)
    {
      return result;
    }

    while (1)
    {
      if ((v37 & 4) != 0)
      {
        TypeAtIndex = (v37 & 0xFFFFFFFFFFFFFFF8);
        if ((v37 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          v23 = *v13;
          TypeAtIndex = llvm::StructType::getTypeAtIndex();
        }

        TypeAllocSize = llvm::DataLayout::getTypeAllocSize(a2, TypeAtIndex);
        v34 = TypeAllocSize;
        LODWORD(v35) = v25;
        v26 = *v36;
        if (*v36)
        {
          v27 = *(*v36 + 16) == 16;
        }

        else
        {
          v27 = 0;
        }

        if (v27)
        {
          v28 = *this + 3;
          if (*(*this + 8) >= 0x41u)
          {
            v28 = *v28;
          }

          v29 = (v26 + 24);
          if (*(v26 + 32) >= 0x41u)
          {
            v29 = *v29;
          }

          v30 = **this;
          v31 = *v28;
          v32 = *v29 * TypeAllocSize;
          v33 = v35;
          llvm::TypeSize::operator unsigned long long();
          goto LABEL_32;
        }

        v32 = *v36;
        llvm::SmallVectorImpl<GEPExpressionSum::IndexPair>::emplace_back<llvm::TypeSize &,llvm::Value *>((this + 1), &v34, &v32);
      }

      else if ((v37 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v15 = *v13;
        StructLayout = llvm::DataLayout::getStructLayout();
        v17 = (v15 + 24);
        if (*(v15 + 32) >= 0x41u)
        {
          v17 = *v17;
        }

        v18 = *(StructLayout + 8 * *v17 + 16);
        v19 = **this;
        v20 = *this + 3;
        if (*(*this + 8) >= 0x41u)
        {
          v20 = *v20;
        }

        v21 = (*v20 + v18);
LABEL_32:
        *this = llvm::ConstantInt::get();
      }

      result = llvm::generic_gep_type_iterator<llvm::Use const*>::operator++(&v36);
      v13 = v36;
      if (v36 == v14)
      {
        return result;
      }
    }
  }

  LODWORD(v37) = 64;
  v36 = 0;
  result = llvm::GetElementPtrInst::accumulateConstantOffset();
  if (result)
  {
    v7 = **this;
    v8 = *this + 3;
    if (*(*this + 8) >= 0x41u)
    {
      v8 = *v8;
    }

    v9 = (*v8 + v36);
    result = llvm::ConstantInt::get();
    *this = result;
  }

  if (v37 >= 0x41)
  {
    result = v36;
    if (v36)
    {
      return MEMORY[0x259C6B870](v36, 0x1000C8000313F17);
    }
  }

  return result;
}

void sub_257A01AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{
  if (a14 >= 0x41)
  {
    GEPExpressionSum::accumulateGEP(&a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGEPConversionPass::addMemUser(MTLGEPConversionPass *this, llvm::Value *a2, llvm::Instruction *a3, llvm::Value *a4)
{
  v7 = a3;
  v8[0] = a2;
  v6 = a4;
  v8[2] = v8;
  v4 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(this + 61, v8);
  return llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::MDTuple *>>::emplace_back<llvm::Instruction *,llvm::MDTuple *&>((v4 + 3), &v7, &v6);
}

void GEPExpressionSum::GEPExpressionSum(GEPExpressionSum *this, llvm::LLVMContext *a2)
{
  *this = 0;
  *(this + 1) = this + 24;
  *(this + 2) = 0x800000000;
  llvm::Type::getInt32Ty(a2, a2);
  *this = llvm::ConstantInt::get();
}

void sub_257A01B68(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *(v1 + 8);
  if (v5 != v3)
  {
    free(v5);
  }

  _Unwind_Resume(exception_object);
}

unint64_t llvm::generic_gep_type_iterator<llvm::Use const*>::getIndexedType(uint64_t **a1)
{
  v2 = a1[1];
  result = v2 & 0xFFFFFFFFFFFFFFF8;
  if ((v2 & 4) == 0 || !result)
  {
    v4 = **a1;
    return llvm::StructType::getTypeAtIndex();
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<GEPExpressionSum::IndexPair>::emplace_back<llvm::TypeSize &,llvm::Value *>(uint64_t a1, uint64_t a2, llvm::Value **a3)
{
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<GEPExpressionSum::IndexPair,true>::growAndEmplaceBack<llvm::TypeSize &,llvm::Value *>(a1, a2, a3);
  }

  else
  {
    v6 = (*a1 + 24 * v5);
    v7 = llvm::TypeSize::operator unsigned long long();
    GEPExpressionSum::IndexPair::IndexPair(v6, v7, *a3);
    v8 = *(a1 + 8) + 1;
    *(a1 + 8) = v8;
    return *a1 + 24 * v8 - 24;
  }
}

uint64_t llvm::generic_gep_type_iterator<llvm::Use const*>::operator++(uint64_t a1)
{
  IndexedType = llvm::generic_gep_type_iterator<llvm::Use const*>::getIndexedType(a1);
  v3 = *(IndexedType + 8);
  if (IndexedType && v3 == 17 || IndexedType && (v3 & 0xFE) == 0x12)
  {
    v4 = *(IndexedType + 24) | 4;
  }

  else if (v3 == 16)
  {
    v4 = IndexedType & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4;
  *a1 += 32;
  return a1;
}

uint64_t llvm::SmallVectorTemplateBase<GEPExpressionSum::IndexPair,true>::growAndEmplaceBack<llvm::TypeSize &,llvm::Value *>(uint64_t a1, uint64_t a2, llvm::Value **a3)
{
  v5 = llvm::TypeSize::operator unsigned long long();
  GEPExpressionSum::IndexPair::IndexPair(v10, v5, *a3);
  v6 = llvm::SmallVectorTemplateCommon<MTLBoundsCheck::MemoryAccessOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLBoundsCheck::MemoryAccessOperand,true>>(a1, v10, 1);
  v7 = *a1 + 24 * *(a1 + 8);
  v8 = *v6;
  *(v7 + 16) = *(v6 + 16);
  *v7 = v8;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  return *a1 + 24 * v7 - 24;
}

GEPExpressionSum::IndexPair *GEPExpressionSum::IndexPair::IndexPair(GEPExpressionSum::IndexPair *this, unint64_t a2, llvm::Value *a3)
{
  *(this + 1) = a3;
  *(this + 16) = 0;
  Context = llvm::Value::getContext(a3);
  llvm::Type::getInt32Ty(Context, v5);
  *this = llvm::ConstantInt::get();
  v6 = *(this + 1);
  v9 = &v10;
  v10 = 0;
  if (llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::Value>,39u>::match<llvm::Value>(&v9, v6))
  {
    *(this + 1) = v10;
  }

  else
  {
    v7 = *(this + 1);
    v9 = &v10;
    if (llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::Value>,40u>::match<llvm::Value>(&v9, v7))
    {
      *(this + 1) = v10;
      *(this + 16) = 1;
    }
  }

  return this;
}

uint64_t llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::Value>,39u>::match<llvm::Value>(void **a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v5 = v3 <= 0x1B && v3 != 5 || a2 == 0;
  v6 = !v5;
  if (!v5)
  {
    v7 = v3 - 28;
    if (v3 < 0x1C)
    {
      v7 = *(a2 + 18);
    }

    if (v7 == 39)
    {
      v8 = *(a2 + 20);
      if ((v8 & 0x40000000) != 0)
      {
        v9 = *(a2 - 8);
      }

      else
      {
        v9 = (a2 - 32 * (v8 & 0x7FFFFFF));
      }

      v2 = *v9;
      if (v2)
      {
        **a1 = v2;
        LODWORD(v2) = 1;
      }
    }

    else
    {
      LODWORD(v2) = 0;
    }
  }

  return v6 & v2;
}

uint64_t llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::Value>,40u>::match<llvm::Value>(void **a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v5 = v3 <= 0x1B && v3 != 5 || a2 == 0;
  v6 = !v5;
  if (!v5)
  {
    v7 = v3 - 28;
    if (v3 < 0x1C)
    {
      v7 = *(a2 + 18);
    }

    if (v7 == 40)
    {
      v8 = *(a2 + 20);
      if ((v8 & 0x40000000) != 0)
      {
        v9 = *(a2 - 8);
      }

      else
      {
        v9 = (a2 - 32 * (v8 & 0x7FFFFFF));
      }

      v2 = *v9;
      if (v2)
      {
        **a1 = v2;
        LODWORD(v2) = 1;
      }
    }

    else
    {
      LODWORD(v2) = 0;
    }
  }

  return v6 & v2;
}

void *std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::find<llvm::Value *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v5 == v10)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t llvm::optional_detail::OptionalStorage<GEPExpressionSum,false>::operator=(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 216);
  v5 = *a2;
  v4 = (a2 + 1);
  *a1 = v5;
  v6 = (a1 + 8);
  if (v3 == 1)
  {
    llvm::SmallVectorImpl<GEPExpressionSum::IndexPair>::operator=(v6, v4);
  }

  else
  {
    llvm::SmallVector<GEPExpressionSum::IndexPair,8u>::SmallVector(v6, v4);
    *(a1 + 216) = 1;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<GEPExpressionSum::IndexPair>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 24 * v4 - 7);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 24 * v5 - 7);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 24 * v5), (*a2 + 24 * v5), 24 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

void *llvm::SmallVector<GEPExpressionSum::IndexPair,8u>::SmallVector(void *a1, uint64_t a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<GEPExpressionSum::IndexPair>::operator=(a1, a2);
  }

  return a1;
}

void sub_257A02114(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(void *a1, void *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<llvm::Value *,llvm::SmallVector<std::pair<llvm::Instruction *,llvm::Value *>,8u>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3 != __p + 5)
    {
      free(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void MemoryOpVisitor<MTLGEPConversionPass::FoldVisitor>::visitStoreInst(uint64_t a1, llvm::Instruction *a2)
{
  v4 = *(a1 + 24);
  v5 = (llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), **(**(a2 - 4) + 16)) + 7) >> 3;
  llvm::TypeSize::operator unsigned long long();
  llvm::ConstantInt::get();
  MTLGEPConversionPass::FoldVisitor::visitPointerOperand(a1, a2, *(a2 - 4));
}

void MemoryOpVisitor<MTLGEPConversionPass::FoldVisitor>::visitCallInst(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 32);
  if (!v3 || *(v3 + 16) || *(v3 + 24) != *(a2 + 72))
  {
    return;
  }

  Name = llvm::Value::getName(v3);
  if (v6 < 0xB)
  {
    if (v6 != 10)
    {
      return;
    }

    if (*Name != 0x6D6F74612E726961 || *(Name + 8) != 25449)
    {
      return;
    }

    goto LABEL_45;
  }

  v9 = *Name != 0x6D656D2E6D766C6CLL || *(Name + 3) != 0x7970636D656D2E6DLL;
  v10 = 0x6C6C766D2E6D656DLL;
  v11 = bswap64(*Name);
  if (v11 == 0x6C6C766D2E6D656DLL && (v10 = 0x6D2E6D656D636D70, v11 = bswap64(*(Name + 3)), v11 == 0x6D2E6D656D636D70))
  {
    v12 = 0;
  }

  else if (v11 < v10)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (!v9 || v12 == 0)
  {
    v14 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF);
    v15 = *(v14 + 32);
    v16 = *(v14 + 64);
    MTLGEPConversionPass::FoldVisitor::visitPointerOperand(a1, a2, *v14);
    v17 = a1;
    v18 = a2;
    v19 = v15;
LABEL_48:

    MTLGEPConversionPass::FoldVisitor::visitPointerOperand(v17, v18, v19);
    return;
  }

  if (*Name == 0x6D656D2E6D766C6CLL && *(Name + 3) == 0x7465736D656D2E6DLL)
  {
    v26 = a2 - 32 * (*(a2 + 20) & 0x7FFFFFF);
    v19 = *v26;
    v27 = *(v26 + 64);
    v17 = a1;
    v18 = a2;
    goto LABEL_48;
  }

  if (*Name == 0x6D6F74612E726961 && *(Name + 8) == 25449)
  {
LABEL_45:
    v23 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    PtrTypeFromIntrinsicNameSuffix = getPtrTypeFromIntrinsicNameSuffix(Name, v6, *(a1 + 8));
    goto LABEL_46;
  }

  if (*Name == 0x662E73646E756F62 && *(Name + 3) == 0x646C6F662E73646ELL)
  {
    v23 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    PtrTypeFromIntrinsicNameSuffix = **(*v23 + 16);
LABEL_46:
    v25 = *(a1 + 24);
    v28 = (llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), PtrTypeFromIntrinsicNameSuffix) + 7) >> 3;
    llvm::TypeSize::operator unsigned long long();
    llvm::ConstantInt::get();
    MTLGEPConversionPass::FoldVisitor::visitPointerOperand(a1, a2, v23);
  }
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(void *a1, void *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<llvm::Value *,llvm::Optional<GEPExpressionSum>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 240) == 1)
    {
      v3 = __p[4];
      if (v3 != __p + 6)
      {
        free(v3);
      }
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

_BYTE *llvm::optional_detail::OptionalStorage<GEPExpressionSum,false>::OptionalStorage(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[216] = 0;
  if (*(a2 + 216) == 1)
  {
    llvm::optional_detail::OptionalStorage<GEPExpressionSum,false>::emplace<GEPExpressionSum const&>(a1, a2);
  }

  return a1;
}

void sub_257A02AFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 216) == 1)
  {
    v3 = *(v1 + 8);
    if (v3 != (v1 + 24))
    {
      free(v3);
    }

    *(v1 + 216) = 0;
  }

  _Unwind_Resume(exception_object);
}

void *llvm::optional_detail::OptionalStorage<GEPExpressionSum,false>::emplace<GEPExpressionSum const&>(uint64_t a1, void *a2)
{
  if (*(a1 + 216) == 1)
  {
    v4 = *(a1 + 8);
    if (v4 != (a1 + 24))
    {
      free(v4);
    }

    *(a1 + 216) = 0;
  }

  *a1 = *a2;
  result = llvm::SmallVector<GEPExpressionSum::IndexPair,8u>::SmallVector((a1 + 8), (a2 + 1));
  *(a1 + 216) = 1;
  return result;
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,ArgumentLoadInfo>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,ArgumentLoadInfo>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,ArgumentLoadInfo>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,ArgumentLoadInfo>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(void *a1, void *a2)
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

unsigned __int8 *GEPExpressionSum::emitDynamicALUOps(uint64_t **this, MTLIRBuilder *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = **this;
  v3 = *(this + 4);
  if (v3)
  {
    NSWFoldAdd = 0;
    v7 = this[1];
    v8 = 24 * v3;
    while (1)
    {
      Cast = v7[1];
      v10 = *(*Cast + 8) >> 8;
      v11 = *(v2 + 8);
      if (v10 < v11 >> 8)
      {
        break;
      }

      if (v10 > v11 >> 8)
      {
        v27 = 257;
        v12 = a2;
        v13 = 38;
LABEL_9:
        Cast = llvm::IRBuilderBase::CreateCast(v12, v13, Cast, v2, v26);
      }

      v14 = (*v7 + 24);
      if (*(*v7 + 32) >= 0x41u)
      {
        v14 = *v14;
      }

      v15 = *v14;
      v16 = llvm::ConstantInt::get();
      v27 = 257;
      NSWFoldMul = MTLIRBuilder::CreateNSWFoldMul(a2, v16, Cast, v26);
      if (NSWFoldMul)
      {
        v18 = NSWFoldMul[16] >= 0x1Cu;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        llvm::Value::getContext(*this);
        v19 = *v7;
        v26[0] = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
      }

      if (NSWFoldAdd && ((v20 = *NSWFoldMul, *(*NSWFoldAdd + 8) >> 8 >= *(*NSWFoldMul + 8) >> 8) || (v27 = 257, NSWFoldAdd = llvm::IRBuilderBase::CreateCast(a2, 39, NSWFoldAdd, v20, v26), v2 = *NSWFoldMul, NSWFoldAdd)))
      {
        v27 = 257;
        NSWFoldAdd = MTLIRBuilder::CreateNSWFoldAdd(a2, NSWFoldAdd, NSWFoldMul, v26);
      }

      else
      {
        NSWFoldAdd = NSWFoldMul;
      }

      if (NSWFoldAdd)
      {
        v21 = NSWFoldAdd[16] >= 0x1Cu;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        llvm::Value::getContext(*this);
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
      }

      v7 += 3;
      v8 -= 24;
      if (!v8)
      {
        v22 = *MEMORY[0x277D85DE8];
        return NSWFoldAdd;
      }
    }

    if (*(v7 + 16) == 1)
    {
      v27 = 257;
      v12 = a2;
      v13 = 40;
    }

    else
    {
      v27 = 257;
      v12 = a2;
      v13 = 39;
    }

    goto LABEL_9;
  }

  v24 = *MEMORY[0x277D85DE8];
  v25 = **this;

  return llvm::ConstantInt::get();
}

uint64_t getMangledFunction<llvm::Type *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void **a4, void **a5, int64_t *a6, uint64_t *a7)
{
  v48 = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v43, this);
  MTLBoundsCheck::getMangledTypeStr(a3, v13, &v42);
  v14 = std::string::insert(&v42, 0, ".");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v45 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v45 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v45 >= 0)
  {
    v17 = HIBYTE(v45);
  }

  else
  {
    v17 = __p[1];
  }

  std::string::append(&v43, v16, v17);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v19 = 0;
  memset(&v42, 0, sizeof(v42));
  v20 = *a5;
  __p[0] = *a4;
  __p[1] = v20;
  v21 = *a7;
  v45 = *a6;
  v46 = v21;
  do
  {
    v22 = __p[v19];
    MTLBoundsCheck::getMangledTypeStr(v22, v18, &v39);
    v23 = std::string::insert(&v39, 0, ".");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v41 = v23->__r_.__value_.__r.__words[2];
    *v40 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v41 >= 0)
    {
      v25 = v40;
    }

    else
    {
      v25 = v40[0];
    }

    if (v41 >= 0)
    {
      v26 = HIBYTE(v41);
    }

    else
    {
      v26 = v40[1];
    }

    std::string::append(&v43, v25, v26);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[0]);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    size = v42.__r_.__value_.__l.__size_;
    if (v42.__r_.__value_.__l.__size_ >= v42.__r_.__value_.__r.__words[2])
    {
      v29 = (v42.__r_.__value_.__l.__size_ - v42.__r_.__value_.__r.__words[0]) >> 3;
      if ((v29 + 1) >> 61)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v30 = (v42.__r_.__value_.__r.__words[2] - v42.__r_.__value_.__r.__words[0]) >> 2;
      if (v30 <= v29 + 1)
      {
        v30 = v29 + 1;
      }

      if (v42.__r_.__value_.__r.__words[2] - v42.__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
      {
        v31 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      if (v31)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v42, v31);
      }

      v32 = (8 * v29);
      *v32 = v22;
      v28 = 8 * v29 + 8;
      v33 = v32 - (v42.__r_.__value_.__l.__size_ - v42.__r_.__value_.__r.__words[0]);
      memcpy(v33, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_ - v42.__r_.__value_.__r.__words[0]);
      v34 = v42.__r_.__value_.__r.__words[0];
      v42.__r_.__value_.__r.__words[0] = v33;
      *&v42.__r_.__value_.__r.__words[1] = v28;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v42.__r_.__value_.__l.__size_ = v22;
      v28 = size + 8;
    }

    v42.__r_.__value_.__l.__size_ = v28;
    ++v19;
  }

  while (v19 != 4);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v36 = llvm::FunctionType::get();
    v47 = 260;
    __p[0] = &v43;
    Function = llvm::Function::Create(v36, 0, __p, a1);
  }

  if (v42.__r_.__value_.__r.__words[0])
  {
    v42.__r_.__value_.__l.__size_ = v42.__r_.__value_.__r.__words[0];
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v37 = *MEMORY[0x277D85DE8];
  return Function;
}

void sub_257A033E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::PatternMatch::match_combine_or<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>,40u>>>::match<llvm::Value>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>::match<llvm::Value>(a1, a2, a3) & 1) != 0 || (llvm::PatternMatch::CastClass_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>,39u>::match<llvm::Value>(a1 + 8, a2))
  {
    return 1;
  }

  return llvm::PatternMatch::CastClass_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>,40u>::match<llvm::Value>(a1 + 16, a2);
}

uint64_t llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>::match<llvm::Value>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5 == 5)
  {
    LODWORD(a3) = *(a2 + 18);
    if (a3 == 13)
    {
      a3 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
      if (a3)
      {
        **a1 = a3;
        if (llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>::match<llvm::Value>(a1 + 1, *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32)))
        {
          return 1;
        }
      }
    }
  }

  else
  {
    if (v5 != 41)
    {
      goto LABEL_10;
    }

    a3 = *(a2 - 64);
    if (a3)
    {
      **a1 = a3;
      if (llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>::match<llvm::Value>(a1 + 1, *(a2 - 32)))
      {
        return 1;
      }
    }
  }

  v5 = *(a2 + 16);
LABEL_10:
  if (v5 == 41)
  {
    result = llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>::match<llvm::Value>(a1 + 4, *(a2 - 64));
    if (result)
    {
      v7 = *(a2 - 32);
      if (v7)
      {
        *a1[7] = v7;
        return 1;
      }

      return 0;
    }
  }

  else
  {
    if (v5 == 5)
    {
      if (*(a2 + 18) == 13 && llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>::match<llvm::Value>(a1 + 4, *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF))))
      {
        a3 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32);
        if (a3)
        {
          *a1[7] = a3;
          LOBYTE(a3) = 1;
        }
      }

      else
      {
        LOBYTE(a3) = 0;
      }
    }

    return (v5 == 5) & a3;
  }

  return result;
}

uint64_t llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>::match<llvm::Value>(uint64_t **a1, uint64_t a2)
{
  if (a2 && *(a2 + 16) == 16)
  {
    **a1 = a2;
    return 1;
  }

  if (llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>::match<llvm::Value>(a1 + 1, a2))
  {
    return 1;
  }

  return llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>::match<llvm::Value>(a1 + 2, a2);
}

uint64_t llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>::match<llvm::Value>(void **a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v5 = v3 <= 0x1B && v3 != 5 || a2 == 0;
  v6 = !v5;
  if (!v5)
  {
    v7 = v3 - 28;
    if (v3 < 0x1C)
    {
      v7 = *(a2 + 18);
    }

    if (v7 == 39 && ((v8 = *(a2 + 20), (v8 & 0x40000000) != 0) ? (v9 = *(a2 - 8)) : (v9 = (a2 - 32 * (v8 & 0x7FFFFFF))), (v10 = *v9) != 0 ? (v11 = *(v10 + 16) == 16) : (v11 = 0), v11))
    {
      **a1 = v10;
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v6 & v2;
}

uint64_t llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>::match<llvm::Value>(void **a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v5 = v3 <= 0x1B && v3 != 5 || a2 == 0;
  v6 = !v5;
  if (!v5)
  {
    v7 = v3 - 28;
    if (v3 < 0x1C)
    {
      v7 = *(a2 + 18);
    }

    if (v7 == 40 && ((v8 = *(a2 + 20), (v8 & 0x40000000) != 0) ? (v9 = *(a2 - 8)) : (v9 = (a2 - 32 * (v8 & 0x7FFFFFF))), (v10 = *v9) != 0 ? (v11 = *(v10 + 16) == 16) : (v11 = 0), v11))
    {
      **a1 = v10;
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v6 & v2;
}

uint64_t llvm::PatternMatch::CastClass_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>,39u>::match<llvm::Value>(void **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4 = v2 > 0x1B || v2 == 5;
  if (!a2 || !v4)
  {
    return 0;
  }

  v5 = v2 >= 0x1C;
  v6 = v2 - 28;
  if (!v5)
  {
    v6 = *(a2 + 18);
  }

  if (v6 != 39)
  {
    return 0;
  }

  v7 = *(a2 + 20);
  if ((v7 & 0x40000000) != 0)
  {
    v8 = *(a2 - 8);
  }

  else
  {
    v8 = (a2 - 32 * (v7 & 0x7FFFFFF));
  }

  return llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>::match<llvm::Value>(a1, *v8, v8);
}

uint64_t llvm::PatternMatch::CastClass_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>,40u>::match<llvm::Value>(void **a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4 = v2 > 0x1B || v2 == 5;
  if (!a2 || !v4)
  {
    return 0;
  }

  v5 = v2 >= 0x1C;
  v6 = v2 - 28;
  if (!v5)
  {
    v6 = *(a2 + 18);
  }

  if (v6 != 40)
  {
    return 0;
  }

  v7 = *(a2 + 20);
  if ((v7 & 0x40000000) != 0)
  {
    v8 = *(a2 - 8);
  }

  else
  {
    v8 = (a2 - 32 * (v7 & 0x7FFFFFF));
  }

  return llvm::PatternMatch::match_combine_or<llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::bind_ty<llvm::Value>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,13u,false>,llvm::PatternMatch::BinaryOp_match<llvm::PatternMatch::match_combine_or<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,llvm::PatternMatch::match_combine_or<llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,39u>,llvm::PatternMatch::CastClass_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>,40u>>>,llvm::PatternMatch::bind_ty<llvm::Value>,13u,false>>::match<llvm::Value>(a1, *v8, v8);
}

uint64_t **deserializeCompilerOutputData(uint64_t **result, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v5 = *a3 + 8;
  v6 = *(result + *a3);
  *a3 = v5;
  if (v6)
  {
    v10 = result;
    do
    {
      v11 = *(v10 + v5);
      *a3 = v5 + 8;
      v13 = v11;
      v12 = *(v10 + v5 + 8);
      *a3 = v5 + 16;
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::find<CompilerOutputType>(a4, &v13);
      if (!result || !result[3])
      {
        if (v12)
        {
          dispatch_data_create(v10 + *a3, v12, 0, 0);
          result = std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,NSObject  {objcproto16OS_dispatch_data}*>(a5, &v13);
        }
      }

      v5 = *a3 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      *a3 = v5;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::find<CompilerOutputType>(void *a1, char *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,NSObject  {objcproto16OS_dispatch_data}*>(void *a1, char *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void ConstantGlobalToArgPass::~ConstantGlobalToArgPass(ConstantGlobalToArgPass *this)
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

uint64_t ConstantGlobalToArgPass::runOnModule(llvm::DataLayout **this, llvm::Module *a2)
{
  v121[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  v102[0] = 0;
  v102[1] = 0;
  v103 = 0;
  v4 = this[6];
  v108[0] = "air.global_bindings";
  v109[8] = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v4, v108);
  v6 = NamedMetadata;
  if (NamedMetadata)
  {
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    if (NumOperands)
    {
      for (i = 0; i != NumOperands; ++i)
      {
        Operand = llvm::NamedMDNode::getOperand(v6);
        v10 = Operand - 8 * *(Operand + 8);
        v11 = *(*(v10 + 8) + 128);
        String = llvm::MDString::getString(*(*(v10 + 16) - 8 * *(*(v10 + 16) + 8) + 8));
        if (v13 == 11)
        {
          if (*String == 0x747865742E726961 && *(String + 3) == 0x657275747865742ELL)
          {
            continue;
          }

          if (*String == 0x706D61732E726961 && *(String + 3) == 0x72656C706D61732ELL)
          {
            continue;
          }
        }

        *&v120 = llvm::Value::getName(v11);
        *(&v120 + 1) = v16;
        llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>(v102, &v120, v108);
      }
    }
  }

  *&v120 = v121;
  *(&v120 + 1) = 0x800000000;
  v17 = a2 + 8;
  v18 = *(a2 + 2);
  if (v18 == a2 + 8)
  {
    v30 = 0;
    goto LABEL_140;
  }

  do
  {
    if (v18)
    {
      v19 = v18 - 56;
    }

    else
    {
      v19 = 0;
    }

    if (ConstantGlobalToArgPass::shouldConvertGlobal(this, v19))
    {
      v108[0] = v19;
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v120, v108);
    }

    else if (*(*v19 + 8) == 15 && MTLBoundsCheck::checkAddressSpace(v19))
    {
      v108[0] = llvm::Value::getName(v19);
      v108[1] = v20;
      v115 = 0;
      if ((llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v102, v108, &v115) & 1) == 0)
      {
        MTLBoundsCheck::SharedPassData::skipIndirectionDeep(this[8], v19);
      }
    }

    v18 = *(v18 + 1);
  }

  while (v18 != v17);
  if (!DWORD2(v120))
  {
    v30 = 0;
    goto LABEL_140;
  }

  inserted = MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsTableGV(this[8]);
  v117 = 128;
  v115 = MEMORY[0x259C6A8D0](6144, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(&v115);
  LOBYTE(v118[0]) = 0;
  v119 = 0;
  if (DWORD2(v120))
  {
    LODWORD(v22) = 0;
    v23 = v120;
    v24 = 8 * DWORD2(v120);
    do
    {
      v112 = *v23;
      v25 = *(v112 + 3);
      PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(this[7], v25);
      v108[0] = llvm::DataLayout::getTypeAllocSize(this[7], v25);
      LODWORD(v108[1]) = v27;
      v28 = llvm::TypeSize::operator unsigned long long();
      LODWORD(v104) = (v22 + PrefTypeAlignment - 1) / PrefTypeAlignment * PrefTypeAlignment;
      HIDWORD(v104) = v28 - v22 + v104;
      llvm::SmallVectorImpl<MTLBoundsCheck::ConstantDataHeader>::emplace_back<MTLBoundsCheck::ConstantDataHeader&>(*(this[8] + 8) + 592, &v104);
      v29 = v104;
      *llvm::ValueMap<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::operator[](&v115, &v112) = v29;
      v22 = (HIDWORD(v104) + v22);
      ++v23;
      v24 -= 8;
    }

    while (v24);
  }

  else
  {
    v22 = 0;
  }

  llvm::SmallVectorImpl<unsigned char>::resizeImpl<false>((*(this[8] + 8) + 608), v22);
  v31 = v115;
  v32 = v117;
  if (v116)
  {
    v108[0] = v115;
    v108[1] = &v115[48 * v117];
    llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>,false>::AdvancePastEmptyBuckets(v108);
    v33 = *v108;
    v31 = v115;
    v32 = v117;
  }

  else
  {
    v33 = vdupq_n_s64(&v115[48 * v117]);
  }

  v101 = v33;
  v96 = &v31[48 * v32];
LABEL_38:
  if (v101.i64[0] != v96)
  {
    v34 = *(v101.i64[0] + 24);
    v97 = *(v101.i64[0] + 40);
    ConstantGlobalToArgPass::serializeConstantValue(this, *(v34 - 4), v97);
    v108[0] = v34[1];
    v108[1] = 0;
    llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v112, v108);
    while (1)
    {
      while (1)
      {
        if (!v113)
        {
          llvm::GlobalVariable::dropAllReferences(v34);
          llvm::GlobalVariable::eraseFromParent(v34);
          if (v112 != &v114)
          {
            free(v112);
          }

          v101.i64[0] += 48;
          llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>,false>::AdvancePastEmptyBuckets(v101.i64);
          goto LABEL_38;
        }

        v35 = *(v112 + --v113);
        v36 = v35[16];
        v37 = v36 <= 0x1B ? 0 : v35;
        v100 = v37;
        if (!v37)
        {
          break;
        }

        MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(v108, &v100);
        if (*(v100 + 16) == 83 && v100 != 0)
        {
          v39 = *(v100 + 5);
          v40 = v39 & 0x7FFFFFF;
          if ((v39 & 0x7FFFFFF) != 0)
          {
            v41 = 0;
            while (1)
            {
              v42 = v100 - 32 * v40;
              if ((v39 & 0x40000000) != 0)
              {
                v42 = *(v100 - 1);
              }

              if (*&v42[32 * v41] == v34)
              {
                break;
              }

              if (++v41 == v40)
              {
                goto LABEL_132;
              }
            }

            v80 = *&v42[32 * *(v100 + 15) + 8 * v41];
            v81 = *(v80 + 40);
            if (v81 == v80 + 40)
            {
              v84 = 0;
            }

            else
            {
              v82 = (v81 - 24);
              if (v81)
              {
                v83 = v81 - 24;
              }

              else
              {
                v83 = 0;
              }

              if (*(v83 + 16) - 29 >= 0xB)
              {
                v84 = 0;
              }

              else
              {
                v84 = v82;
              }
            }

            llvm::IRBuilderBase::SetInsertPoint(v108, v84);
          }
        }

LABEL_132:
        v86 = *(inserted + 3);
        v107 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v108, v86, inserted, 0, 0, &v104);
        v88 = this[8];
        Name = llvm::Value::getName(inserted);
        GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v88, Name, v90);
        v107 = 257;
        ConstGEP1_32 = llvm::IRBuilderBase::CreateConstGEP1_32(v108, GVBaseType, AlignedLoad, v97, &v104);
        v93 = *v34;
        v107 = 257;
        llvm::IRBuilderBase::CreateCast(v108, 49, ConstGEP1_32, v93, &v104);
        llvm::User::replaceUsesOfWith();
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v111);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v110);
        v85 = v108[0];
        if (v108[0] != v109)
        {
LABEL_133:
          free(v85);
        }
      }

      if (v36 == 5)
      {
        v43 = v35;
      }

      else
      {
        v43 = 0;
      }

      v99 = v43;
      if (v43)
      {
        v108[0] = v109;
        v108[1] = 0x400000000;
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v108, &v99);
        v44 = LODWORD(v108[1]);
        if (LODWORD(v108[1]))
        {
          v45 = 0;
          do
          {
            v46 = *(*(v108[0] + v45) + 8);
            if (v46)
            {
              do
              {
                v47 = *(v46 + 24);
                if (v47[16] != 5)
                {
                  v47 = 0;
                }

                v104 = v47;
                if (v47)
                {
                  llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v108, &v104);
                }

                v46 = *(v46 + 8);
              }

              while (v46);
              v44 = LODWORD(v108[1]);
            }

            ++v45;
          }

          while (v44 > v45);
          v48 = v108[0];
          if (v44)
          {
            v49 = v108[0] + 8 * v44;
            do
            {
              v51 = *(v49 - 1);
              v49 -= 8;
              v50 = v51;
              v98[0] = *(v51 + 1);
              v98[1] = 0;
              llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v104, v98);
              v52 = v104;
              if (v105)
              {
                v53 = v104 + 8 * v105;
                do
                {
                  v54 = *v52;
                  AsInstruction = llvm::ConstantExpr::getAsInstruction(v99, 0);
                  v98[0] = AsInstruction;
                  v56 = *(v54 + 16);
                  if (v56 != 83 || v54 == 0)
                  {
                    if (v56 < 0x1C || v54 == 0)
                    {
                      llvm::Value::dump(v50);
                      llvm::Value::dump(v54);
                    }

                    else
                    {
                      llvm::Instruction::insertBefore(AsInstruction, v54);
                    }
                  }

                  else
                  {
                    v59 = *(v54 + 20);
                    v60 = v59 & 0x7FFFFFF;
                    if ((v59 & 0x7FFFFFF) != 0)
                    {
                      v61 = 0;
                      v62 = 0;
                      v63 = 32 * v60;
                      v64 = v54 - 32 * v60;
                      while (1)
                      {
                        v65 = v64;
                        if ((v59 & 0x40000000) != 0)
                        {
                          v65 = *(v54 - 8);
                        }

                        if (*(v65 + v62) == v50)
                        {
                          break;
                        }

                        v62 += 32;
                        v61 += 8;
                        if (v63 == v62)
                        {
                          goto LABEL_110;
                        }
                      }

                      v66 = *(v65 + 32 * *(v54 + 60) + v61);
                      v67 = *(v66 + 40);
                      if (v67 == v66 + 40)
                      {
                        v70 = 0;
                      }

                      else
                      {
                        v68 = (v67 - 24);
                        if (v67)
                        {
                          v69 = v67 - 24;
                        }

                        else
                        {
                          v69 = 0;
                        }

                        if (*(v69 + 16) - 29 >= 0xB)
                        {
                          v70 = 0;
                        }

                        else
                        {
                          v70 = v68;
                        }
                      }

                      llvm::Instruction::insertBefore(AsInstruction, v70);
                      v71 = *(v54 + 20);
                      if ((v71 & 0x40000000) != 0)
                      {
                        v72 = *(v54 - 8);
                      }

                      else
                      {
                        v72 = v54 - 32 * (v71 & 0x7FFFFFF);
                      }

                      v73 = v98[0];
                      v74 = v72 + v62;
                      if (*(v72 + v62))
                      {
                        v75 = *(v74 + 8);
                        **(v74 + 16) = v75;
                        if (v75)
                        {
                          *(v75 + 16) = *(v74 + 16);
                        }
                      }

                      *v74 = v73;
                      if (v73)
                      {
                        v78 = *(v73 + 8);
                        v76 = (v73 + 8);
                        v77 = v78;
                        v79 = v72 + v62;
                        *(v79 + 8) = v78;
                        if (v78)
                        {
                          *(v77 + 16) = v79 + 8;
                        }

                        *(v79 + 16) = v76;
                        *v76 = v74;
                      }
                    }
                  }

LABEL_110:
                  llvm::User::replaceUsesOfWith();
                  if (v50 == v99)
                  {
                    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v112, v98);
                  }

                  v52 += 8;
                }

                while (v52 != v53);
                v52 = v104;
              }

              if (v52 != &v106)
              {
                free(v52);
              }
            }

            while (v49 != v48);
            v48 = v108[0];
          }
        }

        else
        {
          v48 = v108[0];
        }

        if (v48 != v109)
        {
          v85 = v48;
          goto LABEL_133;
        }
      }

      else
      {
        llvm::Value::dump(v35);
      }
    }
  }

  if (v119 == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap(v118);
    v119 = 0;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::~DenseMap(&v115);
  v30 = 1;
LABEL_140:
  if (v120 != v121)
  {
    free(v120);
  }

  llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::~DenseMap(v102);
  v94 = *MEMORY[0x277D85DE8];
  return v30;
}

void sub_257A04624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  if (*(v55 - 208) == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap((v55 - 232));
    *(v55 - 208) = 0;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::~DenseMap((v55 - 256));
  v57 = *(v55 - 192);
  if (v57 != a9)
  {
    free(v57);
  }

  llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::~DenseMap(&a22);
  _Unwind_Resume(a1);
}

uint64_t ConstantGlobalToArgPass::shouldConvertGlobal(ConstantGlobalToArgPass *this, llvm::GlobalVariable *a2)
{
  if ((*(a2 + 33) & 0x1C) != 0)
  {
    return 0;
  }

  if (*(a2 + 80) & 1) == 0 && (llvm::GlobalValue::isDeclaration(a2) & 1) != 0 || (llvm::GlobalValue::isDeclaration(a2))
  {
    return 0;
  }

  result = llvm::Value::hasNUsesOrMore(a2);
  if (result)
  {
    if ((*(a2 + 80) & 2) != 0)
    {
      return 0;
    }

    result = ConstantGlobalToArgPass::shouldConvertType(this, *a2);
    if (!result)
    {
      return result;
    }

    if ((*(a2 + 23) & 0x10) != 0)
    {
      Name = llvm::Value::getName(a2);
      if (v6 >= 0x13)
      {
        v7 = *Name == 0x61735F7269615F5FLL && Name[1] == 0x74735F72656C706DLL;
        if (v7 && *(Name + 11) == 0x65746174735F7265)
        {
          return 0;
        }
      }
    }

    v9 = *(a2 + 1);
    if (v9)
    {
      while (1)
      {
        v10 = *(v9 + 24);
        if (v10 && *(v10 + 16) == 5 && *(v10 + 9) == 49)
        {
          v12 = *v10;
          if (*(v12 + 8) == 15)
          {
            v13 = **(v12 + 16);
            if (*(v13 + 8) == 16)
            {
              if (*(v13 + 24))
              {
                v14 = llvm::StructType::getName(v13);
                if (v15 >= 0x11)
                {
                  v16 = *v14 == 0x5F2E746375727473 && *(v14 + 8) == 0x5F72656C706D6173;
                  if (v16 && *(v14 + 16) == 116)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

        v9 = *(v9 + 8);
        result = 1;
        if (!v9)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<MTLBoundsCheck::ConstantDataHeader>::emplace_back<MTLBoundsCheck::ConstantDataHeader&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1, *a2);
    v4 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 8 * v3) = *a2;
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 8 * v4 - 8;
}

void *llvm::ValueMap<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t *a1, llvm::Value **a2)
{
  llvm::CallbackVH::CallbackVH(&v5, *a2);
  v5 = &unk_2868ECC98;
  v6[3] = a1;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::FindAndConstruct(a1, &v5);
  llvm::ValueHandleBase::~ValueHandleBase(v6);
  return v3 + 5;
}

uint64_t ConstantGlobalToArgPass::serializeConstantValue(llvm::DataLayout **this, llvm::Type **a2, unint64_t a3)
{
  TypeAllocSize = llvm::DataLayout::getTypeAllocSize(this[7], *a2);
  v42 = v6;
  v7 = llvm::TypeSize::operator unsigned long long();
  v8 = *(a2 + 16);
  if ((v8 & 0xFE) == 0xE)
  {
    RawDataValues = llvm::ConstantDataSequential::getRawDataValues(a2);
    v11 = v10;
    v12 = (*(*(this[8] + 8) + 608) + a3);
    p_src = RawDataValues;
    v14 = v11;
LABEL_10:
    memcpy(v12, p_src, v14);
    return v7;
  }

  if (v8 == 17)
  {
    TypeAllocSize = (llvm::DataLayout::getTypeSizeInBits(this[7], *a2) + 7) >> 3;
    v42 = v17 == 1;
    llvm::APFloat::bitcastToAPInt(&v38, (a2 + 3));
    LimitedValue = llvm::APInt::getLimitedValue(&v38, 0xFFFFFFFFFFFFFFFFLL);
    if (v39 >= 0x41 && v38)
    {
      MEMORY[0x259C6B870](v38, 0x1000C8000313F17);
    }

    __src = LimitedValue;
    v19 = *(*(this[8] + 8) + 608);
    v14 = llvm::TypeSize::operator unsigned long long();
    v12 = (v19 + a3);
    p_src = &__src;
    goto LABEL_10;
  }

  if (v8 == 16)
  {
    TypeAllocSize = (llvm::DataLayout::getTypeSizeInBits(this[7], *a2) + 7) >> 3;
    v42 = v15 == 1;
    v38 = llvm::APInt::getLimitedValue(a2 + 3, 0xFFFFFFFFFFFFFFFFLL);
    v16 = *(*(this[8] + 8) + 608);
    v14 = llvm::TypeSize::operator unsigned long long();
    v12 = (v16 + a3);
    p_src = &v38;
    goto LABEL_10;
  }

  if ((v8 - 11) <= 2)
  {
    TypeAllocSize = (llvm::DataLayout::getTypeSizeInBits(this[7], *a2) + 7) >> 3;
    v42 = v21 == 1;
    v22 = *(*(this[8] + 8) + 608);
    v23 = llvm::TypeSize::operator unsigned long long();
    bzero((v22 + a3), v23);
    return v7;
  }

  if (v8 != 9)
  {
    if ((v8 - 11) < 0xFDu)
    {
      llvm::Value::dump(a2);
      return v7;
    }

    v32 = *a2;
    v33 = *(*a2 + 8);
    if (v33 == 16)
    {
      v34 = *(v32 + 3);
    }

    else
    {
      if (v33 != 17 && v33 != 18)
      {
        v35 = 1;
LABEL_29:
        for (i = 0; i != v35; ++i)
        {
          AggregateElement = llvm::Constant::getAggregateElement(a2);
          a3 += ConstantGlobalToArgPass::serializeConstantValue(this, AggregateElement, a3);
        }

        return v7;
      }

      v34 = *(v32 + 8);
    }

    if (!v34)
    {
      return v7;
    }

    v35 = v34;
    goto LABEL_29;
  }

  v24 = *a2;
  v25 = this[7];
  StructLayout = llvm::DataLayout::getStructLayout();
  v27 = *(v24 + 3);
  if (v27)
  {
    v28 = 0;
    v29 = StructLayout + 16;
    do
    {
      v30 = *(v29 + 8 * v28);
      v31 = llvm::Constant::getAggregateElement(a2);
      ConstantGlobalToArgPass::serializeConstantValue(this, v31, v30 + a3);
      ++v28;
    }

    while (v27 != v28);
  }

  return v7;
}

void sub_257A04CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  if (a11 >= 0x41)
  {
    GEPExpressionSum::accumulateGEP(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::InsertIntoBucketImpl<llvm::StringRef>(a1, a2, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 16 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    v6 = *a1;
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = v4 - 1;
    v10 = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue() & (v4 - 1);
    v11 = v6 + 16 * v10;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v11, *(v11 + 8)))
    {
      result = 1;
    }

    else
    {
      v13 = 0;
      v14 = 1;
      while (*v11 != -1)
      {
        if (v13)
        {
          v15 = 0;
        }

        else
        {
          v15 = *v11 == -2;
        }

        if (v15)
        {
          v13 = v11;
        }

        v19 = v13;
        v16 = v14 + 1;
        v10 = (v10 + v14) & v9;
        v11 = v6 + 16 * v10;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v11, *(v11 + 8));
        v13 = v19;
        v18 = isEqual;
        result = 1;
        v14 = v16;
        if (v18)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v13)
      {
        v11 = v13;
      }
    }
  }

  else
  {
    v11 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v11;
  return result;
}

BOOL llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(char *a1, size_t __n, void *__s2, uint64_t a4)
{
  if (__s2 == -2)
  {
    return a1 + 2 == 0;
  }

  if (__s2 == -1)
  {
    return a1 + 1 == 0;
  }

  if (__n != a4)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s2, __n) == 0;
  }

  return 1;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(uint64_t a1, int a2)
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(a1, v4, v4 + v3);

    return llvm::deallocate_buffer(v4, (16 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 16 * v10;
      do
      {
        *result++ = xmmword_257A6DAF0;
        v11 -= 16;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::moveFromOldBuckets(uint64_t result, _OWORD *a2, _OWORD *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = 16 * v6;
    do
    {
      *v7++ = xmmword_257A6DAF0;
      v8 -= 16;
    }

    while (v8);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v5, a2, &v9);
      *v9 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

uint64_t ConstantGlobalToArgPass::shouldConvertType(ConstantGlobalToArgPass *this, llvm::Type *a2)
{
  while (1)
  {
    v4 = *(a2 + 2);
    if (v4 != 15)
    {
      break;
    }

    if ((v4 & 0xFE) == 0x12)
    {
      v4 = *(**(a2 + 2) + 8);
    }

    if ((v4 & 0xFFFFFF00) != 0x200)
    {
      return 0;
    }

LABEL_7:
    a2 = **(a2 + 2);
  }

  if (v4 == 17)
  {
    goto LABEL_7;
  }

  if (v4 != 16)
  {
    return 1;
  }

  if (*(a2 + 3))
  {
    Name = llvm::StructType::getName(a2);
    if (v6 >= 0x15)
    {
      v7 = *Name == 0x6D2E746375727473 && Name[1] == 0x61733A3A6C617465;
      if (v7 && *(Name + 13) == 0x72656C706D61733ALL)
      {
        return 0;
      }
    }
  }

  if (!*(a2 + 3))
  {
    return 1;
  }

  v9 = 0;
  do
  {
    result = ConstantGlobalToArgPass::shouldConvertType(this, *(*(a2 + 2) + 8 * v9));
    if ((result & 1) == 0)
    {
      break;
    }

    ++v9;
  }

  while (v9 < *(a2 + 3));
  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(uint64_t *a1)
{
  a1[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v7[2] = -4096;
  v8 = 0;
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = *a1;
    v3 = *a1 + 48 * v1;
    v4 = (*a1 + 8);
    do
    {
      v5 = llvm::ValueHandleBase::ValueHandleBase(v4, (LODWORD(v7[0]) >> 1) & 3, v7);
      v6 = v5 - 8;
      *(v5 - 1) = &unk_2868ECC98;
      *(v5 + 3) = v8;
      v4 = (v5 + 48);
      v2 += 48;
    }

    while (v6 + 48 != v3);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v7);
}

void llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v4, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v3 = &unk_2868ECC98;
  v4[3] = v2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::erase(v2, &v3);
  llvm::ValueHandleBase::~ValueHandleBase(v4);
}

void llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v13, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v12 = &unk_2868ECC98;
  v14 = v4;
  v9[0] = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(v4, &v12, v9);
  v6 = *v4;
  if (v5)
  {
    v7 = v9[0];
  }

  else
  {
    v7 = *v4 + 48 * v4[2].u32[0];
  }

  if (*v14 + 48 * v14[2].u32[0] != v7)
  {
    v8 = *(v7 + 40);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::erase(v14, v7);
    v10 = a2;
    v11 = v8;
    llvm::ValueMap<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::insert(v14, &v10, v9);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v13);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::erase(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v6);
  if (v3)
  {
    v4 = v6;
    v7[0] = 2;
    v7[1] = 0;
    v7[2] = -8192;
    v8 = 0;
    v6 = &unk_2868ECC98;
    llvm::ValueHandleBase::operator=((v4 + 1), v7);
    v4[4] = v8;
    llvm::ValueHandleBase::~ValueHandleBase(v7);
    *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
  }

  return v3;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v17[0] = 2;
    v17[1] = 0;
    v17[2] = -4096;
    v17[3] = 0;
    v16[3] = 0;
    v16[4] = &unk_2868ECC98;
    v16[0] = 2;
    v16[1] = 0;
    v16[2] = -8192;
    v5 = *(a2 + 24);
    v6 = v3 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v3 - 1);
    v8 = v4 + 48 * v7;
    v9 = *(v8 + 24);
    if (v5 == v9)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      v10 = 1;
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
        v8 = v4 + 48 * (v15 & v6);
        v9 = *(v8 + 24);
        if (v5 == v9)
        {
          goto LABEL_4;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }

LABEL_4:
    *a3 = v8;
    llvm::ValueHandleBase::~ValueHandleBase(v16);
    llvm::ValueHandleBase::~ValueHandleBase(v17);
  }

  else
  {
    v10 = 0;
    *a3 = 0;
  }

  return v10;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::erase(int32x2_t *a1, uint64_t a2)
{
  v5[0] = 2;
  v5[1] = 0;
  v5[2] = -8192;
  v6 = 0;
  llvm::ValueHandleBase::operator=((a2 + 8), v5);
  *(a2 + 32) = v6;
  llvm::ValueHandleBase::~ValueHandleBase(v5);
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

double llvm::ValueMap<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::insert@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  llvm::CallbackVH::CallbackVH(&v7, *a2);
  v7 = &unk_2868ECC98;
  v9 = a1;
  llvm::ValueHandleBase::ValueHandleBase(v11, (LODWORD(v8[0]) >> 1) & 3, v8);
  v10 = &unk_2868ECC98;
  v11[3] = v9;
  v12 = *(a2 + 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::try_emplace<unsigned int>(a1, &v10, &v12, &v13);
  llvm::ValueHandleBase::~ValueHandleBase(v11);
  llvm::ValueHandleBase::~ValueHandleBase(v8);
  result = *&v13;
  *a3 = v13;
  *(a3 + 16) = v14;
  return result;
}

void sub_257A057E4(_Unwind_Exception *a1)
{
  llvm::ValueHandleBase::~ValueHandleBase((v2 + 8));
  llvm::ValueHandleBase::~ValueHandleBase((v1 + 8));
  _Unwind_Resume(a1);
}

void llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>,false>::AdvancePastEmptyBuckets(uint64_t *a1)
{
  v4[0] = 2;
  v4[1] = 0;
  v4[2] = -4096;
  v4[3] = 0;
  v3[3] = 0;
  v3[4] = &unk_2868ECC98;
  v3[0] = 2;
  v3[1] = 0;
  v3[2] = -8192;
  v2 = *a1;
  v1 = a1[1];
  while (v2 != v1 && (*(v2 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v2 += 48;
    *a1 = v2;
  }

  llvm::ValueHandleBase::~ValueHandleBase(v3);
  llvm::ValueHandleBase::~ValueHandleBase(v4);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::try_emplace<unsigned int>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, a2, v12);
    result = llvm::ValueHandleBase::operator=((v9 + 1), (a2 + 8));
    v9[4] = *(a2 + 32);
    *(v9 + 10) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 48 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a3, &v10);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  v11[0] = 2;
  v11[1] = 0;
  v11[2] = -4096;
  v11[3] = 0;
  v10 = &unk_2868ECC98;
  if (a4[3] != -4096)
  {
    --*(a1 + 12);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v11);
  return a4;
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x259C6A8D0](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 48 * v3);

    llvm::deallocate_buffer(v4, (48 * v3));
  }

  else
  {

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(a1);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(a1);
  v13[0] = 2;
  v13[1] = 0;
  v14 = -4096;
  v15 = 0;
  v11 = 0;
  v12 = &unk_2868ECC98;
  v9[0] = 2;
  v9[1] = 0;
  v10 = -8192;
  while (a2 != a3)
  {
    v6 = *(a2 + 24);
    if (v6 != v14 && v6 != v10)
    {
      v16 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v16);
      v8 = v16;
      llvm::ValueHandleBase::operator=((v16 + 8), (a2 + 8));
      *(v8 + 32) = *(a2 + 32);
      *(v8 + 40) = *(a2 + 40);
      ++*(a1 + 8);
    }

    llvm::ValueHandleBase::~ValueHandleBase((a2 + 8));
    a2 += 48;
  }

  llvm::ValueHandleBase::~ValueHandleBase(v9);
  llvm::ValueHandleBase::~ValueHandleBase(v13);
}

void sub_257A05C54(_Unwind_Exception *a1)
{
  llvm::ValueHandleBase::~ValueHandleBase((v2 + 8));
  llvm::ValueHandleBase::~ValueHandleBase((v1 + 8));
  _Unwind_Resume(a1);
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::FindAndConstruct(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>>(a1, a2, a2, v7);
    llvm::ValueHandleBase::operator=((v5 + 1), (a2 + 8));
    v5[4] = *(a2 + 32);
    *(v5 + 10) = 0;
  }

  return v5;
}

void llvm::SmallVectorImpl<unsigned char>::resizeImpl<false>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (a1[2] < a2)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (a2 != v2)
      {
        bzero((*a1 + v2), a2 - v2);
      }
    }

    a1[1] = a2;
  }
}

uint64_t llvm::APFloat::bitcastToAPInt(llvm::APFloat *this)
{
  v1 = this + 8;
  v2 = *(this + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v2)
  {

    return MEMORY[0x2821F55E8](v1);
  }

  else
  {

    return MEMORY[0x2821F5610](v1);
  }
}

uint64_t *llvm::APInt::getLimitedValue(uint64_t ***this, unint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= 0x41)
  {
    if (v4 - llvm::APInt::countLeadingZerosSlowCase(this) > 0x40)
    {
      return a2;
    }

    v5 = **this;
  }

  else
  {
    v5 = *this;
  }

  if (v5 <= a2)
  {
    return v5;
  }

  return a2;
}

unsigned int *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::~DenseMap(unsigned int *a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (48 * a1[4]));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v6[0] = 2;
    v6[1] = 0;
    v6[2] = -4096;
    v6[3] = 0;
    v5[3] = 0;
    v5[4] = &unk_2868ECC98;
    v5[0] = 2;
    v5[1] = 0;
    v5[2] = -8192;
    v2 = 48 * v1;
    v3 = (*a1 + 8);
    do
    {
      llvm::ValueHandleBase::~ValueHandleBase(v3);
      v3 = (v4 + 48);
      v2 -= 48;
    }

    while (v2);
    llvm::ValueHandleBase::~ValueHandleBase(v5);
    llvm::ValueHandleBase::~ValueHandleBase(v6);
  }
}

size_t *CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(size_t *a1, const void *a2, size_t a3, uint64_t a4, const void *a5, size_t a6)
{
  if (*(a4 + 16))
  {
    v10 = LLVMGetBufferStart();
  }

  else
  {
    v10 = 0;
  }

  if (*(a4 + 8))
  {
    v11 = LLVMGetBufferStart();
  }

  else
  {
    v11 = 0;
  }

  if (*(a4 + 16))
  {
    v12 = LLVMGetBufferSize();
  }

  else
  {
    v12 = 0;
  }

  v27 = v10;
  if (!*(a4 + 8))
  {
    v18 = 0;
    v14 = *(a4 + 16);
    if (v14)
    {
      v13 = 0;
      goto LABEL_28;
    }

    v13 = 0;
    goto LABEL_27;
  }

  v13 = LLVMGetBufferSize();
  v14 = *(a4 + 8);
  if (!*(a4 + 16))
  {
    v18 = 0;
LABEL_27:
    v18 |= v14 != 0;
    goto LABEL_28;
  }

  if (!v14)
  {
    v18 = 0;
    goto LABEL_28;
  }

  v15 = *v11;
  AirReflection::Reflection::Hash((v10 + *v10), &v32);
  AirReflection::Reflection::Hash((v11 + v15), &v30);
  v16 = v32;
  v17 = v30;
  if (v33 - v32 != v31 - v30)
  {
    v18 = 0;
    if (!v30)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v18 = memcmp(v32, v30, v33 - v32) == 0;
  if (v17)
  {
LABEL_22:
    v31 = v17;
    operator delete(v17);
    v16 = v32;
  }

LABEL_23:
  if (v16)
  {
    v33 = v16;
    operator delete(v16);
  }

  if (!*(a4 + 16))
  {
    v14 = *(a4 + 8);
    goto LABEL_27;
  }

LABEL_28:
  v19 = (a3 + 87) & 0xFFFFFFFFFFFFFFF8;
  v20 = ((a3 + 87) | 7) + a6;
  v21 = v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = ((v20 | 7) + v13) & 0xFFFFFFFFFFFFFFF8;
  if (v18)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v12 = v13;
    v24 = v22;
  }

  else
  {
    v24 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *a1 = v24;
  v25 = malloc_type_malloc(v24, 0xECC150FBuLL);
  a1[1] = v25;
  *v25 = xmmword_257A6DD70;
  v25[2] = 80;
  v25[3] = a3;
  v25[4] = v23;
  v25[5] = v12;
  v25[6] = v21;
  v25[7] = v13;
  v25[8] = v19;
  v25[9] = a6;
  if (a3)
  {
    memcpy((a1[1] + 80), a2, a3);
  }

  if (a6)
  {
    memcpy((a1[1] + v19), a5, a6);
  }

  if (v13)
  {
    memcpy((a1[1] + v21), v11, v13);
  }

  if (!(v18 & 1 | (v12 == 0)))
  {
    memcpy((a1[1] + v23), v27, v12);
  }

  return a1;
}

void sub_257A061E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AirReflection::Reflection::Hash@<X0>(AirReflection::Reflection *this@<X0>, unsigned __int8 **a2@<X8>)
{
  CC_SHA256_Init(&c);
  AirReflection::Reflection::HashImpl(this, &c);
  return flatbuffers::SignatureBuilder::Create(&c, a2);
}

uint64_t **addBlocksForOutput(uint64_t **result, void *a2, uint64_t *a3, void *a4)
{
  v6 = result;
  if (a3)
  {
    v9 = *a3;
    v8 = a3[1];
    v18 = 0;
    if (v8)
    {
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(result, &v18);
    }

    v11 = a3[4];
    v10 = a3[5];
    v18 = 3;
    if (v10)
    {
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }

    v13 = a3[6];
    v12 = a3[7];
    v18 = 4;
    if (v12)
    {
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }
  }

  if (a2)
  {
    if (a2[5])
    {
      v14 = a2[4];
      v18 = 1;
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }

    if (*a4)
    {
      v15 = a4[1];
      v18 = 2;
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }

    if (a2[8])
    {
      v16 = a2[7];
      v18 = 6;
      result = std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }

    if (a2[19])
    {
      v17 = a2[18];
      v18 = 7;
      return std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType&,CompilerOutputBlock>(v6, &v18);
    }
  }

  return result;
}

uint64_t sizeOfSerializedCompilerBlocks(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return 8;
  }

  result = 8;
  do
  {
    result += ((v1[3] + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v1 = *v1;
  }

  while (v1);
  return result;
}

void *serializeCompilerBlocks(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  *result = *(a3 + 24);
  if (v4)
  {
    v6 = result;
    v7 = 8;
    do
    {
      v8 = *(v4 + 16);
      v9 = (v6 + v7);
      v10 = v4[3];
      *v9 = v8;
      v9[1] = v10;
      v11 = v7 + 16;
      if (v10)
      {
        v12 = v4[4];
        if (v12)
        {
          result = memcpy(v6 + v11, v12, v10);
        }
      }

      if (a4)
      {
        *(a4 + 8 * v8) = v11;
      }

      v7 = ((v4[3] + 7) & 0xFFFFFFFFFFFFFFF8) + v11;
      v4 = *v4;
    }

    while (v4);
  }

  return result;
}

uint64_t AirReflection::Reflection::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Reflection", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    Air::Version::HashImpl((a1 + v5), c);
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7 + *(a1 + v7));
    data = *v8;
    CC_SHA256_Update(c, &data, 4u);
    v9 = *v8;
    if (v9)
    {
      v10 = v8 + 1;
      v11 = v8 + 1;
      do
      {
        v12 = *v11++;
        AirReflection::Node::HashImpl((v10 + v12), c);
        v10 = v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14 + *(a1 + v14));
    data = *v15;
    CC_SHA256_Update(c, &data, 4u);
    v16 = *v15;
    if (v16)
    {
      v17 = (v15 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v18 = *v17++;
        data = v18;
        CC_SHA256_Update(c, &data, 4u);
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v19 = (a1 - *a1);
  if (*v19 >= 0xBu && (v20 = v19[5]) != 0)
  {
    v21 = (a1 + v20 + *(a1 + v20));
    data = *v21;
    CC_SHA256_Update(c, &data, 4u);
    v22 = *v21;
    if (v22)
    {
      v23 = (v21 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v24 = *v23++;
        data = v24;
        CC_SHA256_Update(c, &data, 4u);
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v25 = (a1 - *a1);
  if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
  {
    v27 = (a1 + v26 + *(a1 + v26));
    data = *v27;
    CC_SHA256_Update(c, &data, 4u);
    v28 = *v27;
    if (v28)
    {
      v29 = (v27 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v30 = *v29++;
        data = v30;
        CC_SHA256_Update(c, &data, 4u);
        --v28;
      }

      while (v28);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v31 = (a1 - *a1);
  if (*v31 >= 0xFu && (v32 = v31[7]) != 0)
  {
    v33 = (a1 + v32 + *(a1 + v32));
    data = *v33;
    CC_SHA256_Update(c, &data, 4u);
    v34 = *v33;
    if (v34)
    {
      v35 = (v33 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v36 = *v35++;
        data = v36;
        CC_SHA256_Update(c, &data, 4u);
        --v34;
      }

      while (v34);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v37 = (a1 - *a1);
  if (*v37 >= 0x11u && (v38 = v37[8]) != 0)
  {
    v39 = (a1 + v38 + *(a1 + v38));
    data = *v39;
    CC_SHA256_Update(c, &data, 4u);
    v40 = *v39;
    if (v40)
    {
      v41 = (v39 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v42 = *v41++;
        data = v42;
        CC_SHA256_Update(c, &data, 4u);
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v43 = (a1 - *a1);
  if (*v43 >= 0x13u && (v44 = v43[9]) != 0)
  {
    v45 = (a1 + v44 + *(a1 + v44));
    data = *v45;
    CC_SHA256_Update(c, &data, 4u);
    v46 = *v45;
    if (v46)
    {
      v47 = (v45 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v48 = *v47++;
        data = v48;
        CC_SHA256_Update(c, &data, 4u);
        --v46;
      }

      while (v46);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v49 = (a1 - *a1);
  if (*v49 >= 0x15u && (v50 = v49[10]) != 0)
  {
    v51 = (a1 + v50 + *(a1 + v50));
    data = *v51;
    CC_SHA256_Update(c, &data, 4u);
    v52 = *v51;
    if (v52)
    {
      v53 = (v51 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v54 = *v53++;
        data = v54;
        CC_SHA256_Update(c, &data, 4u);
        --v52;
      }

      while (v52);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v55 = (a1 - *a1);
  if (*v55 >= 0x17u && (v56 = v55[11]) != 0)
  {
    v57 = (a1 + v56 + *(a1 + v56));
    data = *v57;
    CC_SHA256_Update(c, &data, 4u);
    v58 = *v57;
    if (v58)
    {
      v59 = (v57 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v60 = *v59++;
        data = v60;
        CC_SHA256_Update(c, &data, 4u);
        --v58;
      }

      while (v58);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v61 = (a1 - *a1);
  if (*v61 >= 0x19u && (v62 = v61[12]) != 0)
  {
    v63 = (a1 + v62 + *(a1 + v62));
    data = *v63;
    CC_SHA256_Update(c, &data, 4u);
    v64 = *v63;
    if (v64)
    {
      v65 = v63 + 1;
      v66 = v63 + 1;
      do
      {
        v67 = *v66++;
        AirReflection::LocalAllocation::HashImpl((v65 + v67), c);
        v65 = v66;
        --v64;
      }

      while (v64);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v68 = (a1 - *a1);
  if (*v68 >= 0x1Bu && (v69 = v68[13]) != 0)
  {
    v70 = (a1 + v69 + *(a1 + v69));
    data = *v70;
    CC_SHA256_Update(c, &data, 4u);
    v71 = *v70;
    if (v71)
    {
      v72 = (v70 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v73 = *v72++;
        data = v73;
        CC_SHA256_Update(c, &data, 4u);
        --v71;
      }

      while (v71);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v74 = (a1 - *a1);
  if (*v74 >= 0x1Du && (v75 = v74[14]) != 0)
  {
    v76 = (a1 + v75 + *(a1 + v75));
    data = *v76;
    CC_SHA256_Update(c, &data, 4u);
    v77 = *v76;
    if (v77)
    {
      v78 = (v76 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v79 = *v78++;
        data = v79;
        CC_SHA256_Update(c, &data, 4u);
        --v77;
      }

      while (v77);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v80 = (a1 - *a1);
  if (*v80 >= 0x1Fu && (v81 = v80[15]) != 0)
  {
    v82 = (a1 + v81 + *(a1 + v81));
    data = *v82;
    CC_SHA256_Update(c, &data, 4u);
    v83 = *v82;
    if (v83)
    {
      v84 = (v82 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v85 = *v84++;
        data = v85;
        CC_SHA256_Update(c, &data, 4u);
        --v83;
      }

      while (v83);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v86 = (a1 - *a1);
  if (*v86 >= 0x21u && (v87 = v86[16]) != 0)
  {
    v88 = (a1 + v87 + *(a1 + v87));
    data = *v88;
    result = CC_SHA256_Update(c, &data, 4u);
    v90 = *v88;
    if (v90)
    {
      v91 = (v88 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v92 = *v91++;
        data = v92;
        result = CC_SHA256_Update(c, &data, 4u);
        --v90;
      }

      while (v90);
    }
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }

  return result;
}

void sub_257A06DDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::Version::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "Air.Version", 0xBu);
  data = *a1;
  CC_SHA256_Update(c, &data, 4u);
  v6 = a1[1];
  CC_SHA256_Update(c, &v6, 4u);
  v7 = a1[2];
  return CC_SHA256_Update(c, &v7, 4u);
}

uint64_t AirReflection::Node::HashImpl(AirReflection::Node *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.Node", 0x12u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 5u)
  {
    goto LABEL_195;
  }

  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_195;
  }

  v8 = *(a1 + v7);
  if (v8 >= 286720)
  {
    if (v8 < 532480)
    {
      if (v8 <= 524292)
      {
        if (v8 > 294917)
        {
          if (v8 > 0x80000)
          {
            if (v8 > 524290)
            {
              if (v8 == 524291)
              {
                v73 = AirReflection::Node::node_as_MeshTypeInfo(a1);
                return AirReflection::MeshTypeInfo::HashImpl(v73, c);
              }

              else
              {
                v44 = AirReflection::Node::node_as_GlobalBinding(a1);
                return AirReflection::GlobalBinding::HashImpl(v44, c);
              }
            }

            else if (v8 == 524289)
            {
              v69 = AirReflection::Node::node_as_StructTypeInfo(a1);
              return AirReflection::StructTypeInfo::HashImpl(v69, c);
            }

            else
            {
              v31 = AirReflection::Node::node_as_StitchingArgument(a1);
              return AirReflection::StitchingArgument::HashImpl(v31, c);
            }
          }

          if (v8 <= 294919)
          {
            if (v8 == 294918)
            {
              v67 = AirReflection::Node::node_as_CIMatrixArg(a1);
              return AirReflection::CIMatrixArg::HashImpl(v67, c);
            }

            else
            {
              v24 = AirReflection::Node::node_as_CISamplerArg(a1);
              return AirReflection::CISamplerArg::HashImpl(v24, c);
            }
          }

          if (v8 == 294920)
          {
            v71 = AirReflection::Node::node_as_CIImageblockArg(a1);
            return AirReflection::CIImageblockArg::HashImpl(v71, c);
          }

          if (v8 == 0x80000)
          {
            v42 = AirReflection::Node::node_as_FunctionConstant(a1);
            return AirReflection::FunctionConstant::HashImpl(v42, c);
          }
        }

        else
        {
          if (v8 > 294913)
          {
            if (v8 > 294915)
            {
              if (v8 == 294916)
              {
                v72 = AirReflection::Node::node_as_CITextureArg(a1);
                return AirReflection::CITextureArg::HashImpl(v72, c);
              }

              else
              {
                v43 = AirReflection::Node::node_as_CIBuiltinArg(a1);
                return AirReflection::CIBuiltinArg::HashImpl(v43, c);
              }
            }

            else if (v8 == 294914)
            {
              v68 = AirReflection::Node::node_as_CIPointerArg(a1);
              return AirReflection::CIPointerArg::HashImpl(v68, c);
            }

            else
            {
              v30 = AirReflection::Node::node_as_CIStructArg(a1);
              return AirReflection::CIStructArg::HashImpl(v30, c);
            }
          }

          if (v8 >= 294912)
          {
            if (v8 == 294912)
            {
              v70 = AirReflection::Node::node_as_CIArrayArg(a1);
              return AirReflection::CIArrayArg::HashImpl(v70, c);
            }

            AirReflection::Node::node_as_CIPaddingArg(a1);
            v16 = "AirReflection.CIPaddingArg";
LABEL_177:
            v17 = c;
            v18 = 26;
            return CC_SHA256_Update(v17, v16, v18);
          }

          if (v8 == 286720)
          {
            v66 = AirReflection::Node::node_as_MeshArg(a1);
            return AirReflection::MeshArg::HashImpl(v66, c);
          }

          if (v8 == 290816)
          {
            v19 = AirReflection::Node::node_as_MeshGridPropertiesArg(a1);
            return AirReflection::MeshGridPropertiesArg::HashImpl(v19, c);
          }
        }

        goto LABEL_195;
      }

      switch(v8)
      {
        case 528384:
          v13 = AirReflection::Node::node_as_OpaqueType(a1);
          result = AirReflection::OpaqueType::HashImpl(v13, c);
          break;
        case 528385:
          v198 = AirReflection::Node::node_as_VoidType(a1);
          result = AirReflection::VoidType::HashImpl(v198, c);
          break;
        case 528386:
          v193 = AirReflection::Node::node_as_BoolType(a1);
          result = AirReflection::BoolType::HashImpl(v193, c);
          break;
        case 528387:
          v196 = AirReflection::Node::node_as_CharType(a1);
          result = AirReflection::CharType::HashImpl(v196, c);
          break;
        case 528388:
          v188 = AirReflection::Node::node_as_UCharType(a1);
          result = AirReflection::UCharType::HashImpl(v188, c);
          break;
        case 528389:
          v201 = AirReflection::Node::node_as_ShortType(a1);
          result = AirReflection::ShortType::HashImpl(v201, c);
          break;
        case 528390:
          v204 = AirReflection::Node::node_as_UShortType(a1);
          result = AirReflection::UShortType::HashImpl(v204, c);
          break;
        case 528391:
          v197 = AirReflection::Node::node_as_IntType(a1);
          result = AirReflection::IntType::HashImpl(v197, c);
          break;
        case 528392:
          v207 = AirReflection::Node::node_as_UIntType(a1);
          result = AirReflection::UIntType::HashImpl(v207, c);
          break;
        case 528393:
          v190 = AirReflection::Node::node_as_LongType(a1);
          result = AirReflection::LongType::HashImpl(v190, c);
          break;
        case 528394:
          v206 = AirReflection::Node::node_as_ULongType(a1);
          result = AirReflection::ULongType::HashImpl(v206, c);
          break;
        case 528395:
          v187 = AirReflection::Node::node_as_LLongType(a1);
          result = AirReflection::LLongType::HashImpl(v187, c);
          break;
        case 528396:
          v189 = AirReflection::Node::node_as_ULLongType(a1);
          result = AirReflection::ULLongType::HashImpl(v189, c);
          break;
        case 528397:
          v203 = AirReflection::Node::node_as_HalfType(a1);
          result = AirReflection::HalfType::HashImpl(v203, c);
          break;
        case 528398:
          v186 = AirReflection::Node::node_as_FloatType(a1);
          result = AirReflection::FloatType::HashImpl(v186, c);
          break;
        case 528399:
          v195 = AirReflection::Node::node_as_DoubleType(a1);
          result = AirReflection::DoubleType::HashImpl(v195, c);
          break;
        case 528400:
          v185 = AirReflection::Node::node_as_BFloatType(a1);
          result = AirReflection::BFloatType::HashImpl(v185, c);
          break;
        case 528401:
          v199 = AirReflection::Node::node_as_VectorType(a1);
          result = AirReflection::VectorType::HashImpl(v199, c);
          break;
        case 528402:
          v205 = AirReflection::Node::node_as_PackedVectorType(a1);
          result = AirReflection::PackedVectorType::HashImpl(v205, c);
          break;
        case 528403:
          v209 = AirReflection::Node::node_as_MatrixType(a1);
          result = AirReflection::MatrixType::HashImpl(v209, c);
          break;
        case 528404:
          v200 = AirReflection::Node::node_as_FunctionType(a1);
          result = AirReflection::FunctionType::HashImpl(v200, c);
          break;
        case 528405:
          v202 = AirReflection::Node::node_as_PointerType(a1);
          result = AirReflection::PointerType::HashImpl(v202, c);
          break;
        case 528406:
          v208 = AirReflection::Node::node_as_LValueReferenceType(a1);
          result = AirReflection::LValueReferenceType::HashImpl(v208, c);
          break;
        case 528407:
          v210 = AirReflection::Node::node_as_RValueReferenceType(a1);
          result = AirReflection::RValueReferenceType::HashImpl(v210, c);
          break;
        case 528408:
          v192 = AirReflection::Node::node_as_ArrayType(a1);
          result = AirReflection::ArrayType::HashImpl(v192, c);
          break;
        case 528409:
          v191 = AirReflection::Node::node_as_EnumType(a1);
          result = AirReflection::EnumType::HashImpl(v191, c);
          break;
        case 528410:
          v213 = AirReflection::Node::node_as_RecordBase(a1);
          result = AirReflection::RecordBase::HashImpl(v213, c);
          break;
        case 528411:
          v184 = AirReflection::Node::node_as_RecordField(a1);
          result = AirReflection::RecordField::HashImpl(v184, c);
          break;
        case 528412:
          v211 = AirReflection::Node::node_as_StructType(a1);
          result = AirReflection::StructType::HashImpl(v211, c);
          break;
        case 528413:
          v212 = AirReflection::Node::node_as_UnionType(a1);
          result = AirReflection::UnionType::HashImpl(v212, c);
          break;
        default:
          if (v8 == 524293)
          {
            v194 = AirReflection::Node::node_as_InlineTypeInfo(a1);
            result = AirReflection::InlineTypeInfo::HashImpl(v194, c);
          }

          else
          {
            if (v8 != 524294)
            {
              goto LABEL_195;
            }

            v50 = AirReflection::Node::node_as_VisibleFunctionReference(a1);
            result = AirReflection::VisibleFunctionReference::HashImpl(v50, c);
          }

          break;
      }

      return result;
    }

    if (v8 < 540672)
    {
      switch(v8)
      {
        case 532480:
          v11 = AirReflection::Node::node_as_ArrayOfType(a1);
          result = AirReflection::ArrayOfType::HashImpl(v11, c);
          break;
        case 532481:
          v165 = AirReflection::Node::node_as_ArrayRefOfType(a1);
          result = AirReflection::ArrayRefOfType::HashImpl(v165, c);
          break;
        case 532482:
          v167 = AirReflection::Node::node_as_Texture1dType(a1);
          result = AirReflection::Texture1dType::HashImpl(v167, c);
          break;
        case 532483:
          v162 = AirReflection::Node::node_as_Texture1dArrayType(a1);
          result = AirReflection::Texture1dArrayType::HashImpl(v162, c);
          break;
        case 532484:
          v158 = AirReflection::Node::node_as_Texture2dType(a1);
          result = AirReflection::Texture2dType::HashImpl(v158, c);
          break;
        case 532485:
          v155 = AirReflection::Node::node_as_Texture2dArrayType(a1);
          result = AirReflection::Texture2dArrayType::HashImpl(v155, c);
          break;
        case 532486:
          v161 = AirReflection::Node::node_as_Texture3dType(a1);
          result = AirReflection::Texture3dType::HashImpl(v161, c);
          break;
        case 532487:
          v153 = AirReflection::Node::node_as_TextureCubeType(a1);
          result = AirReflection::TextureCubeType::HashImpl(v153, c);
          break;
        case 532488:
          v154 = AirReflection::Node::node_as_TextureCubeArrayType(a1);
          result = AirReflection::TextureCubeArrayType::HashImpl(v154, c);
          break;
        case 532489:
          v159 = AirReflection::Node::node_as_Texture2dMsType(a1);
          result = AirReflection::Texture2dMsType::HashImpl(v159, c);
          break;
        case 532490:
          v166 = AirReflection::Node::node_as_Texture2dMsArrayType(a1);
          result = AirReflection::Texture2dMsArrayType::HashImpl(v166, c);
          break;
        case 532491:
          v170 = AirReflection::Node::node_as_TextureBuffer1dType(a1);
          result = AirReflection::TextureBuffer1dType::HashImpl(v170, c);
          break;
        case 532492:
          v148 = AirReflection::Node::node_as_Depth2dType(a1);
          result = AirReflection::Depth2dType::HashImpl(v148, c);
          break;
        case 532493:
          v163 = AirReflection::Node::node_as_Depth2dArrayType(a1);
          result = AirReflection::Depth2dArrayType::HashImpl(v163, c);
          break;
        case 532494:
          v171 = AirReflection::Node::node_as_DepthCubeType(a1);
          result = AirReflection::DepthCubeType::HashImpl(v171, c);
          break;
        case 532495:
          v176 = AirReflection::Node::node_as_DepthCubeArrayType(a1);
          result = AirReflection::DepthCubeArrayType::HashImpl(v176, c);
          break;
        case 532496:
          v164 = AirReflection::Node::node_as_Depth2dMsType(a1);
          result = AirReflection::Depth2dMsType::HashImpl(v164, c);
          break;
        case 532497:
          v173 = AirReflection::Node::node_as_Depth2dMsArrayType(a1);
          result = AirReflection::Depth2dMsArrayType::HashImpl(v173, c);
          break;
        case 532498:
          v175 = AirReflection::Node::node_as_SamplerType(a1);
          result = AirReflection::SamplerType::HashImpl(v175, c);
          break;
        case 532499:
          v157 = AirReflection::Node::node_as_PatchControlPointType(a1);
          result = AirReflection::PatchControlPointType::HashImpl(v157, c);
          break;
        case 532500:
          v149 = AirReflection::Node::node_as_ImageblockType(a1);
          result = AirReflection::ImageblockType::HashImpl(v149, c);
          break;
        case 532501:
          v146 = AirReflection::Node::node_as_R8UNormType(a1);
          result = AirReflection::R8UNormType::HashImpl(v146, c);
          break;
        case 532502:
          v147 = AirReflection::Node::node_as_R8SNormType(a1);
          result = AirReflection::R8SNormType::HashImpl(v147, c);
          break;
        case 532503:
          v168 = AirReflection::Node::node_as_R16UNormType(a1);
          result = AirReflection::R16UNormType::HashImpl(v168, c);
          break;
        case 532504:
          v141 = AirReflection::Node::node_as_R16SNormType(a1);
          result = AirReflection::R16SNormType::HashImpl(v141, c);
          break;
        case 532505:
          v140 = AirReflection::Node::node_as_RG8UNormType(a1);
          result = AirReflection::RG8UNormType::HashImpl(v140, c);
          break;
        case 532506:
          v151 = AirReflection::Node::node_as_RG8SNormType(a1);
          result = AirReflection::RG8SNormType::HashImpl(v151, c);
          break;
        case 532507:
          v172 = AirReflection::Node::node_as_RG16UNormType(a1);
          result = AirReflection::RG16UNormType::HashImpl(v172, c);
          break;
        case 532508:
          v178 = AirReflection::Node::node_as_RG16SNormType(a1);
          result = AirReflection::RG16SNormType::HashImpl(v178, c);
          break;
        case 532509:
          v156 = AirReflection::Node::node_as_RGBA8UNormType(a1);
          result = AirReflection::RGBA8UNormType::HashImpl(v156, c);
          break;
        case 532510:
          v143 = AirReflection::Node::node_as_RGBA8SNormType(a1);
          result = AirReflection::RGBA8SNormType::HashImpl(v143, c);
          break;
        case 532511:
          v180 = AirReflection::Node::node_as_RGBA16UNormType(a1);
          result = AirReflection::RGBA16UNormType::HashImpl(v180, c);
          break;
        case 532512:
          v160 = AirReflection::Node::node_as_RGBA16SNormType(a1);
          result = AirReflection::RGBA16SNormType::HashImpl(v160, c);
          break;
        case 532513:
          v179 = AirReflection::Node::node_as_SRGBA8UNormType(a1);
          result = AirReflection::SRGBA8UNormType::HashImpl(v179, c);
          break;
        case 532514:
          v169 = AirReflection::Node::node_as_RGB10A2Type(a1);
          result = AirReflection::RGB10A2Type::HashImpl(v169, c);
          break;
        case 532515:
          v145 = AirReflection::Node::node_as_RG11B10FType(a1);
          result = AirReflection::RG11B10FType::HashImpl(v145, c);
          break;
        case 532516:
          v182 = AirReflection::Node::node_as_RGB9E5Type(a1);
          result = AirReflection::RGB9E5Type::HashImpl(v182, c);
          break;
        case 532517:
          v181 = AirReflection::Node::node_as_CommandBufferType(a1);
          result = AirReflection::CommandBufferType::HashImpl(v181, c);
          break;
        case 532518:
          v136 = AirReflection::Node::node_as_ComputePipelineStateType(a1);
          result = AirReflection::ComputePipelineStateType::HashImpl(v136, c);
          break;
        case 532519:
          v174 = AirReflection::Node::node_as_RenderPipelineStateType(a1);
          result = AirReflection::RenderPipelineStateType::HashImpl(v174, c);
          break;
        case 532520:
          v152 = AirReflection::Node::node_as_InterpolantType(a1);
          result = AirReflection::InterpolantType::HashImpl(v152, c);
          break;
        case 532521:
          v135 = AirReflection::Node::node_as_VisibleFunctionTableType(a1);
          result = AirReflection::VisibleFunctionTableType::HashImpl(v135, c);
          break;
        case 532522:
          v177 = AirReflection::Node::node_as_IntersectionFunctionTableType(a1);
          result = AirReflection::IntersectionFunctionTableType::HashImpl(v177, c);
          break;
        case 532523:
          v150 = AirReflection::Node::node_as_AccelerationStructureType(a1);
          result = AirReflection::AccelerationStructureType::HashImpl(v150, c);
          break;
        case 532524:
          v138 = AirReflection::Node::node_as_MeshType(a1);
          result = AirReflection::MeshType::HashImpl(v138, c);
          break;
        case 532525:
          v133 = AirReflection::Node::node_as_MeshGridPropertiesType(a1);
          result = AirReflection::MeshGridPropertiesType::HashImpl(v133, c);
          break;
        case 532526:
          goto LABEL_195;
        case 532527:
          v142 = AirReflection::Node::node_as_VertexValueType(a1);
          result = AirReflection::VertexValueType::HashImpl(v142, c);
          break;
        case 532528:
          v134 = AirReflection::Node::node_as_DepthStencilStateType(a1);
          result = AirReflection::DepthStencilStateType::HashImpl(v134, c);
          break;
        case 532529:
          v137 = AirReflection::Node::node_as_FunctionHandleType(a1);
          result = AirReflection::FunctionHandleType::HashImpl(v137, c);
          break;
        case 532530:
          v183 = AirReflection::Node::node_as_IntersectionFunctionHandleType(a1);
          result = AirReflection::IntersectionFunctionHandleType::HashImpl(v183, c);
          break;
        case 532531:
          v144 = AirReflection::Node::node_as_ExtentsType(a1);
          result = AirReflection::ExtentsType::HashImpl(v144, c);
          break;
        case 532532:
          v139 = AirReflection::Node::node_as_TensorType(a1);
          result = AirReflection::TensorType::HashImpl(v139, c);
          break;
        default:
          if (v8 != 536576)
          {
            goto LABEL_195;
          }

          v82 = AirReflection::Node::node_as_AddressSpaceTypeQual(a1);
          result = AirReflection::AddressSpaceTypeQual::HashImpl(v82, c);
          break;
      }

      return result;
    }

    if (v8 < 544768)
    {
      switch(v8)
      {
        case 540672:
          AirReflection::Node::node_as_ClipDistanceAttr(a1);
          v16 = "AirReflection.ClipDistanceAttr";
          v17 = c;
          v18 = 30;
          return CC_SHA256_Update(v17, v16, v18);
        case 540673:
          v80 = AirReflection::Node::node_as_FunctionConstantPredicateAttr(a1);
          return AirReflection::FunctionConstantPredicateAttr::HashImpl(v80, c);
        case 540674:
          v75 = AirReflection::Node::node_as_LocationIndexAttr(a1);
          return AirReflection::LocationIndexAttr::HashImpl(v75, c);
        case 540675:
          AirReflection::Node::node_as_PointSizeAttr(a1);
          v16 = "AirReflection.PointSizeAttr";
          goto LABEL_186;
        case 540676:
          AirReflection::Node::node_as_PositionAttr(a1);
          v16 = "AirReflection.PositionAttr";
          goto LABEL_177;
        case 540677:
          AirReflection::Node::node_as_PrimitiveCulledAttr(a1);
          v16 = "AirReflection.PrimitiveCulledAttr";
          v17 = c;
          v18 = 33;
          return CC_SHA256_Update(v17, v16, v18);
        case 540678:
          AirReflection::Node::node_as_PrimitiveIDAttr(a1);
          v16 = "AirReflection.PrimitiveIDAttr";
          v17 = c;
          v18 = 29;
          return CC_SHA256_Update(v17, v16, v18);
        case 540679:
          v79 = AirReflection::Node::node_as_RenderTargetAttr(a1);
          return AirReflection::RenderTargetAttr::HashImpl(v79, c);
        case 540680:
          AirReflection::Node::node_as_RenderTargetArrayIndexAttr(a1);
          v16 = "AirReflection.RenderTargetArrayIndexAttr";
          v17 = c;
          v18 = 40;
          return CC_SHA256_Update(v17, v16, v18);
        case 540681:
          AirReflection::Node::node_as_ViewportArrayIndexAttr(a1);
          v16 = "AirReflection.ViewportArrayIndexAttr";
          v17 = c;
          v18 = 36;
          return CC_SHA256_Update(v17, v16, v18);
        case 540682:
          v81 = AirReflection::Node::node_as_UserAttr(a1);
          return AirReflection::UserAttr::HashImpl(v81, c);
        case 540683:
          AirReflection::Node::node_as_InvariantAttr(a1);
          v16 = "AirReflection.InvariantAttr";
LABEL_186:
          v17 = c;
          v18 = 27;
          break;
        case 540684:
          AirReflection::Node::node_as_SharedAttr(a1);
          v16 = "AirReflection.SharedAttr";
          v17 = c;
          v18 = 24;
          return CC_SHA256_Update(v17, v16, v18);
        default:
          goto LABEL_195;
      }

      return CC_SHA256_Update(v17, v16, v18);
    }

    if (v8 <= 544770)
    {
      if (v8 == 544768)
      {
        v78 = AirReflection::Node::node_as_MeshEmulationValueGroup(a1);
        return AirReflection::MeshEmulation::ValueGroup::HashImpl(v78, c);
      }

      else if (v8 == 544769)
      {
        v74 = AirReflection::Node::node_as_MeshEmulationBlock(a1);
        return AirReflection::MeshEmulation::Block::HashImpl(v74, c);
      }

      else
      {
        v33 = AirReflection::Node::node_as_MeshEmulationMeshLayout(a1);
        return AirReflection::MeshEmulation::MeshLayout::HashImpl(v33, c);
      }
    }

    if (v8 <= 544772)
    {
      if (v8 == 544771)
      {
        v76 = AirReflection::Node::node_as_MeshEmulationMeshKernel(a1);
        return AirReflection::MeshEmulation::MeshKernel::HashImpl(v76, c);
      }

      else
      {
        v25 = AirReflection::Node::node_as_MeshEmulationMeshVertex(a1);
        return AirReflection::MeshEmulation::MeshVertex::HashImpl(v25, c);
      }
    }

    if (v8 == 544773)
    {
      v77 = AirReflection::Node::node_as_MeshEmulationObjectKernel(a1);
      return AirReflection::MeshEmulation::ObjectKernel::HashImpl(v77, c);
    }

    if (v8 == 544774)
    {
      v45 = AirReflection::Node::node_as_MeshEmulationFragmentAnalysisResult(a1);
      return AirReflection::MeshEmulation::FragmentAnalysisResult::HashImpl(v45, c);
    }

LABEL_195:
    v257 = 0;
    v16 = &v257;
    v17 = c;
    v18 = 4;
    return CC_SHA256_Update(v17, v16, v18);
  }

  if (v8 < 266240)
  {
    if (v8 <= 139265)
    {
      if (v8 > 4101)
      {
        if (v8 >= 135168)
        {
          if (v8 <= 135170)
          {
            if (v8 == 135168)
            {
              v119 = AirReflection::Node::node_as_RenderTargetRet(a1);
              return AirReflection::RenderTargetRet::HashImpl(v119, c);
            }

            else if (v8 == 135169)
            {
              v131 = AirReflection::Node::node_as_DepthRet(a1);
              return AirReflection::DepthRet::HashImpl(v131, c);
            }

            else
            {
              v38 = AirReflection::Node::node_as_StencilRet(a1);
              return AirReflection::StencilRet::HashImpl(v38, c);
            }
          }

          if (v8 >= 139264)
          {
            if (v8 == 139264)
            {
              v115 = AirReflection::Node::node_as_AcceptIntersectionRet(a1);
              return AirReflection::AcceptIntersectionRet::HashImpl(v115, c);
            }

            else
            {
              v49 = AirReflection::Node::node_as_ContinueSearchRet(a1);
              return AirReflection::ContinueSearchRet::HashImpl(v49, c);
            }
          }

          if (v8 == 135171)
          {
            v111 = AirReflection::Node::node_as_SampleMaskRet(a1);
            return AirReflection::SampleMaskRet::HashImpl(v111, c);
          }

          if (v8 == 135172)
          {
            v27 = AirReflection::Node::node_as_ImageblockDataRet(a1);
            return AirReflection::ImageblockDataRet::HashImpl(v27, c);
          }
        }

        else if (v8 <= 131073)
        {
          switch(v8)
          {
            case 4102:
              v117 = AirReflection::Node::node_as_UserAnnotationFnAttr(a1);
              return AirReflection::UserAnnotationFnAttr::HashImpl(v117, c);
            case 131072:
              v129 = AirReflection::Node::node_as_ClipDistanceRet(a1);
              return AirReflection::ClipDistanceRet::HashImpl(v129, c);
            case 131073:
              v36 = AirReflection::Node::node_as_PointSizeRet(a1);
              return AirReflection::PointSizeRet::HashImpl(v36, c);
          }
        }

        else
        {
          if (v8 <= 131075)
          {
            if (v8 == 131074)
            {
              v109 = AirReflection::Node::node_as_PositionRet(a1);
              return AirReflection::PositionRet::HashImpl(v109, c);
            }

            else
            {
              v21 = AirReflection::Node::node_as_RenderTargetArrayIndexRet(a1);
              return AirReflection::RenderTargetArrayIndexRet::HashImpl(v21, c);
            }
          }

          if (v8 == 131076)
          {
            v113 = AirReflection::Node::node_as_VertexOutputRet(a1);
            return AirReflection::VertexOutputRet::HashImpl(v113, c);
          }

          if (v8 == 131077)
          {
            v47 = AirReflection::Node::node_as_ViewportArrayIndexRet(a1);
            return AirReflection::ViewportArrayIndexRet::HashImpl(v47, c);
          }
        }
      }

      else if (v8 > 7)
      {
        if (v8 > 4097)
        {
          if (v8 > 4099)
          {
            if (v8 == 4100)
            {
              v114 = AirReflection::Node::node_as_PatchFnAttr(a1);
              return AirReflection::PatchFnAttr::HashImpl(v114, c);
            }

            else
            {
              v48 = AirReflection::Node::node_as_MaxMeshWorkgroupsFnAttr(a1);
              return AirReflection::MaxMeshWorkgroupsFnAttr::HashImpl(v48, c);
            }
          }

          else if (v8 == 4098)
          {
            v110 = AirReflection::Node::node_as_WorkgroupSizeHintFnAttr(a1);
            return AirReflection::WorkgroupSizeHintFnAttr::HashImpl(v110, c);
          }

          else
          {
            v26 = AirReflection::Node::node_as_WorkgroupMaxSizeFnAttr(a1);
            return AirReflection::WorkgroupMaxSizeFnAttr::HashImpl(v26, c);
          }
        }

        switch(v8)
        {
          case 8:
            v118 = AirReflection::Node::node_as_CIFunction(a1);
            return AirReflection::CIFunction::HashImpl(v118, c);
          case 4096:
            v130 = AirReflection::Node::node_as_VecTypeHintFnAttr(a1);
            return AirReflection::VecTypeHintFnAttr::HashImpl(v130, c);
          case 4097:
            v37 = AirReflection::Node::node_as_WorkgroupSizeFnAttr(a1);
            return AirReflection::WorkgroupSizeFnAttr::HashImpl(v37, c);
        }
      }

      else
      {
        if (v8 > 3)
        {
          if (v8 > 5)
          {
            if (v8 == 6)
            {
              v112 = AirReflection::Node::node_as_MeshFunction(a1);
              return AirReflection::MeshFunction::HashImpl(v112, c);
            }

            else
            {
              v46 = AirReflection::Node::node_as_ObjectFunction(a1);
              return AirReflection::ObjectFunction::HashImpl(v46, c);
            }
          }

          else if (v8 == 4)
          {
            v108 = AirReflection::Node::node_as_VisibleFunction(a1);
            return AirReflection::VisibleFunction::HashImpl(v108, c);
          }

          else
          {
            v15 = AirReflection::Node::node_as_IntersectionFunction(a1);
            return AirReflection::IntersectionFunction::HashImpl(v15, c);
          }
        }

        switch(v8)
        {
          case 1:
            v116 = AirReflection::Node::node_as_FragmentFunction(a1);
            return AirReflection::FragmentFunction::HashImpl(v116, c);
          case 2:
            v128 = AirReflection::Node::node_as_KernelFunction(a1);
            return AirReflection::KernelFunction::HashImpl(v128, c);
          case 3:
            v35 = AirReflection::Node::node_as_VertexFunction(a1);
            return AirReflection::VertexFunction::HashImpl(v35, c);
        }
      }
    }

    else
    {
      if (v8 > 147460)
      {
        switch(v8)
        {
          case 262144:
            v12 = AirReflection::Node::node_as_BufferArg(a1);
            result = AirReflection::BufferArg::HashImpl(v12, c);
            break;
          case 262145:
            v250 = AirReflection::Node::node_as_SamplerArg(a1);
            result = AirReflection::SamplerArg::HashImpl(v250, c);
            break;
          case 262146:
            v246 = AirReflection::Node::node_as_TextureArg(a1);
            result = AirReflection::TextureArg::HashImpl(v246, c);
            break;
          case 262147:
            v248 = AirReflection::Node::node_as_ConstantArg(a1);
            result = AirReflection::ConstantArg::HashImpl(v248, c);
            break;
          case 262148:
            v243 = AirReflection::Node::node_as_IndirectBufferArg(a1);
            result = AirReflection::IndirectBufferArg::HashImpl(v243, c);
            break;
          case 262149:
            v251 = AirReflection::Node::node_as_IndirectConstantArg(a1);
            result = AirReflection::IndirectConstantArg::HashImpl(v251, c);
            break;
          case 262150:
            v253 = AirReflection::Node::node_as_CommandBufferArg(a1);
            result = AirReflection::CommandBufferArg::HashImpl(v253, c);
            break;
          case 262151:
            v249 = AirReflection::Node::node_as_ComputePipelineStateArg(a1);
            result = AirReflection::ComputePipelineStateArg::HashImpl(v249, c);
            break;
          case 262152:
            v255 = AirReflection::Node::node_as_RenderPipelineStateArg(a1);
            result = AirReflection::RenderPipelineStateArg::HashImpl(v255, c);
            break;
          case 262153:
            v245 = AirReflection::Node::node_as_VisibleFunctionTableArg(a1);
            result = AirReflection::VisibleFunctionTableArg::HashImpl(v245, c);
            break;
          case 262154:
            v254 = AirReflection::Node::node_as_IntersectionFunctionTableArg(a1);
            result = AirReflection::IntersectionFunctionTableArg::HashImpl(v254, c);
            break;
          case 262155:
            v241 = AirReflection::Node::node_as_InstanceAccelerationStructureArg(a1);
            result = AirReflection::InstanceAccelerationStructureArg::HashImpl(v241, c);
            break;
          case 262156:
            v244 = AirReflection::Node::node_as_PrimitiveAccelerationStructureArg(a1);
            result = AirReflection::PrimitiveAccelerationStructureArg::HashImpl(v244, c);
            break;
          case 262157:
            v252 = AirReflection::Node::node_as_BufferStrideArg(a1);
            result = AirReflection::BufferStrideArg::HashImpl(v252, c);
            break;
          case 262158:
            v240 = AirReflection::Node::node_as_DepthStencilStateArg(a1);
            result = AirReflection::DepthStencilStateArg::HashImpl(v240, c);
            break;
          case 262159:
            v247 = AirReflection::Node::node_as_FunctionHandleArg(a1);
            result = AirReflection::FunctionHandleArg::HashImpl(v247, c);
            break;
          case 262160:
            v239 = AirReflection::Node::node_as_TensorArg(a1);
            result = AirReflection::TensorArg::HashImpl(v239, c);
            break;
          default:
            if (v8 == 147461)
            {
              v242 = AirReflection::Node::node_as_CISamplerRet(a1);
              result = AirReflection::CISamplerRet::HashImpl(v242, c);
            }

            else
            {
              if (v8 != 147462)
              {
                goto LABEL_195;
              }

              v52 = AirReflection::Node::node_as_CIImageblockRet(a1);
              result = AirReflection::CIImageblockRet::HashImpl(v52, c);
            }

            break;
        }

        return result;
      }

      if (v8 >= 147456)
      {
        if (v8 <= 147457)
        {
          if (v8 == 147456)
          {
            v58 = AirReflection::Node::node_as_CIPointerRet(a1);
            return AirReflection::CIPointerRet::HashImpl(v58, c);
          }

          else
          {
            v40 = AirReflection::Node::node_as_CIStructRet(a1);
            return AirReflection::CIStructRet::HashImpl(v40, c);
          }
        }

        else if (v8 == 147458)
        {
          v54 = AirReflection::Node::node_as_CITextureRet(a1);
          return AirReflection::CITextureRet::HashImpl(v54, c);
        }

        else if (v8 == 147459)
        {
          v56 = AirReflection::Node::node_as_CIBuiltinRet(a1);
          return AirReflection::CIBuiltinRet::HashImpl(v56, c);
        }

        else
        {
          v28 = AirReflection::Node::node_as_CIMatrixRet(a1);
          return AirReflection::CIMatrixRet::HashImpl(v28, c);
        }
      }

      if (v8 <= 143360)
      {
        if (v8 == 139266)
        {
          v57 = AirReflection::Node::node_as_DistanceRet(a1);
          return AirReflection::DistanceRet::HashImpl(v57, c);
        }

        if (v8 == 143360)
        {
          v39 = AirReflection::Node::node_as_MeshPrimitiveDataRet(a1);
          return AirReflection::MeshPrimitiveDataRet::HashImpl(v39, c);
        }
      }

      else
      {
        switch(v8)
        {
          case 143361:
            v53 = AirReflection::Node::node_as_MeshVertexDataRet(a1);
            return AirReflection::MeshVertexDataRet::HashImpl(v53, c);
          case 143362:
            v55 = AirReflection::Node::node_as_PrimitiveCulledRet(a1);
            return AirReflection::PrimitiveCulledRet::HashImpl(v55, c);
          case 143363:
            v23 = AirReflection::Node::node_as_PrimitiveIDRet(a1);
            return AirReflection::PrimitiveIDRet::HashImpl(v23, c);
        }
      }
    }

    goto LABEL_195;
  }

  if (v8 > 274434)
  {
    if (v8 > 278530)
    {
      switch(v8)
      {
        case 282624:
          v9 = AirReflection::Node::node_as_PayloadArg(a1);
          result = AirReflection::PayloadArg::HashImpl(v9, c);
          break;
        case 282625:
          v225 = AirReflection::Node::node_as_OriginArg(a1);
          result = AirReflection::OriginArg::HashImpl(v225, c);
          break;
        case 282626:
          v221 = AirReflection::Node::node_as_DirectionArg(a1);
          result = AirReflection::DirectionArg::HashImpl(v221, c);
          break;
        case 282627:
          v223 = AirReflection::Node::node_as_MinDistanceArg(a1);
          result = AirReflection::MinDistanceArg::HashImpl(v223, c);
          break;
        case 282628:
          v217 = AirReflection::Node::node_as_MaxDistanceArg(a1);
          result = AirReflection::MaxDistanceArg::HashImpl(v217, c);
          break;
        case 282629:
          v228 = AirReflection::Node::node_as_DistanceArg(a1);
          result = AirReflection::DistanceArg::HashImpl(v228, c);
          break;
        case 282630:
          v231 = AirReflection::Node::node_as_WorldSpaceOriginArg(a1);
          result = AirReflection::WorldSpaceOriginArg::HashImpl(v231, c);
          break;
        case 282631:
          v224 = AirReflection::Node::node_as_WorldSpaceDirectionArg(a1);
          result = AirReflection::WorldSpaceDirectionArg::HashImpl(v224, c);
          break;
        case 282632:
          v234 = AirReflection::Node::node_as_GeometryIDArg(a1);
          result = AirReflection::GeometryIDArg::HashImpl(v234, c);
          break;
        case 282633:
          v219 = AirReflection::Node::node_as_UserInstanceIDArg(a1);
          result = AirReflection::UserInstanceIDArg::HashImpl(v219, c);
          break;
        case 282634:
          v233 = AirReflection::Node::node_as_GeometryIntersectionFunctionTableOffsetArg(a1);
          result = AirReflection::GeometryIntersectionFunctionTableOffsetArg::HashImpl(v233, c);
          break;
        case 282635:
          v216 = AirReflection::Node::node_as_InstanceIntersectionFunctionTableOffsetArg(a1);
          result = AirReflection::InstanceIntersectionFunctionTableOffsetArg::HashImpl(v216, c);
          break;
        case 282636:
          v218 = AirReflection::Node::node_as_OpaquePrimitiveArg(a1);
          result = AirReflection::OpaquePrimitiveArg::HashImpl(v218, c);
          break;
        case 282637:
          v230 = AirReflection::Node::node_as_ObjectToWorldTransformArg(a1);
          result = AirReflection::ObjectToWorldTransformArg::HashImpl(v230, c);
          break;
        case 282638:
          v215 = AirReflection::Node::node_as_WorldToObjectTransformArg(a1);
          result = AirReflection::WorldToObjectTransformArg::HashImpl(v215, c);
          break;
        case 282639:
          v222 = AirReflection::Node::node_as_TimeArg(a1);
          result = AirReflection::TimeArg::HashImpl(v222, c);
          break;
        case 282640:
          v214 = AirReflection::Node::node_as_KeyFrameCountArg(a1);
          result = AirReflection::KeyFrameCountArg::HashImpl(v214, c);
          break;
        case 282641:
          started = AirReflection::Node::node_as_MotionStartTimeArg(a1);
          result = AirReflection::MotionStartTimeArg::HashImpl(started, c);
          break;
        case 282642:
          v232 = AirReflection::Node::node_as_MotionEndTimeArg(a1);
          result = AirReflection::MotionEndTimeArg::HashImpl(v232, c);
          break;
        case 282643:
          v237 = AirReflection::Node::node_as_PrimitiveDataArg(a1);
          result = AirReflection::PrimitiveDataArg::HashImpl(v237, c);
          break;
        case 282644:
          v227 = AirReflection::Node::node_as_InstanceIDCountArg(a1);
          result = AirReflection::InstanceIDCountArg::HashImpl(v227, c);
          break;
        case 282645:
          v229 = AirReflection::Node::node_as_UserInstanceIDCountArg(a1);
          result = AirReflection::UserInstanceIDCountArg::HashImpl(v229, c);
          break;
        case 282646:
          v236 = AirReflection::Node::node_as_CurveParameterArg(a1);
          result = AirReflection::CurveParameterArg::HashImpl(v236, c);
          break;
        case 282647:
          v238 = AirReflection::Node::node_as_FunctionIDArg(a1);
          result = AirReflection::FunctionIDArg::HashImpl(v238, c);
          break;
        case 282648:
          v220 = AirReflection::Node::node_as_UserDataBufferArg(a1);
          result = AirReflection::UserDataBufferArg::HashImpl(v220, c);
          break;
        default:
          if (v8 == 278531)
          {
            v235 = AirReflection::Node::node_as_ImageblockArg(a1);
            result = AirReflection::ImageblockArg::HashImpl(v235, c);
          }

          else
          {
            if (v8 != 278532)
            {
              goto LABEL_195;
            }

            v51 = AirReflection::Node::node_as_ImageblockDataArg(a1);
            result = AirReflection::ImageblockDataArg::HashImpl(v51, c);
          }

          break;
      }

      return result;
    }

    if (v8 <= 274439)
    {
      if (v8 <= 274436)
      {
        if (v8 == 274435)
        {
          v65 = AirReflection::Node::node_as_PointCoordArg(a1);
          return AirReflection::PointCoordArg::HashImpl(v65, c);
        }

        else
        {
          v41 = AirReflection::Node::node_as_RenderTargetArg(a1);
          return AirReflection::RenderTargetArg::HashImpl(v41, c);
        }
      }

      else if (v8 == 274437)
      {
        v59 = AirReflection::Node::node_as_RenderTargetArrayIndexArg(a1);
        return AirReflection::RenderTargetArrayIndexArg::HashImpl(v59, c);
      }

      else if (v8 == 274438)
      {
        v62 = AirReflection::Node::node_as_SampleIDArg(a1);
        return AirReflection::SampleIDArg::HashImpl(v62, c);
      }

      else
      {
        v29 = AirReflection::Node::node_as_SampleMaskArg(a1);
        return AirReflection::SampleMaskArg::HashImpl(v29, c);
      }
    }

    if (v8 >= 278528)
    {
      if (v8 == 278528)
      {
        v61 = AirReflection::Node::node_as_PixelPositionInTileArg(a1);
        return AirReflection::PixelPositionInTileArg::HashImpl(v61, c);
      }

      else if (v8 == 278529)
      {
        v64 = AirReflection::Node::node_as_PixelsPerTileArg(a1);
        return AirReflection::PixelsPerTileArg::HashImpl(v64, c);
      }

      else
      {
        v32 = AirReflection::Node::node_as_TileIndexArg(a1);
        return AirReflection::TileIndexArg::HashImpl(v32, c);
      }
    }

    switch(v8)
    {
      case 274440:
        v60 = AirReflection::Node::node_as_ViewportArrayIndexArg(a1);
        return AirReflection::ViewportArrayIndexArg::HashImpl(v60, c);
      case 274445:
        v63 = AirReflection::Node::node_as_BarycentricCoordArg(a1);
        return AirReflection::BarycentricCoordArg::HashImpl(v63, c);
      case 274446:
        v22 = AirReflection::Node::node_as_PrimitiveIDArg(a1);
        return AirReflection::PrimitiveIDArg::HashImpl(v22, c);
    }

    goto LABEL_195;
  }

  if (v8 >= 270336)
  {
    if (v8 >= 274432)
    {
      if (v8 == 274432)
      {
        v104 = AirReflection::Node::node_as_FragmentInputArg(a1);
        return AirReflection::FragmentInputArg::HashImpl(v104, c);
      }

      else if (v8 == 274433)
      {
        v100 = AirReflection::Node::node_as_FrontFacingArg(a1);
        return AirReflection::FrontFacingArg::HashImpl(v100, c);
      }

      else
      {
        v34 = AirReflection::Node::node_as_PositionArg(a1);
        return AirReflection::PositionArg::HashImpl(v34, c);
      }
    }

    else
    {
      switch(v8)
      {
        case 270336:
          v20 = AirReflection::Node::node_as_BaseInstanceArg(a1);
          result = AirReflection::BaseInstanceArg::HashImpl(v20, c);
          break;
        case 270337:
          v87 = AirReflection::Node::node_as_BaseVertexArg(a1);
          result = AirReflection::BaseVertexArg::HashImpl(v87, c);
          break;
        case 270338:
          v86 = AirReflection::Node::node_as_InstanceIDArg(a1);
          result = AirReflection::InstanceIDArg::HashImpl(v86, c);
          break;
        case 270339:
          v89 = AirReflection::Node::node_as_VertexIDArg(a1);
          result = AirReflection::VertexIDArg::HashImpl(v89, c);
          break;
        case 270340:
          v92 = AirReflection::Node::node_as_VertexInputArg(a1);
          result = AirReflection::VertexInputArg::HashImpl(v92, c);
          break;
        case 270341:
          v90 = AirReflection::Node::node_as_ControlPointIndexBufferArg(a1);
          result = AirReflection::ControlPointIndexBufferArg::HashImpl(v90, c);
          break;
        case 270342:
          v88 = AirReflection::Node::node_as_PatchIDArg(a1);
          result = AirReflection::PatchIDArg::HashImpl(v88, c);
          break;
        case 270343:
          v94 = AirReflection::Node::node_as_PositionInPatchArg(a1);
          result = AirReflection::PositionInPatchArg::HashImpl(v94, c);
          break;
        case 270344:
          v84 = AirReflection::Node::node_as_PatchInputArg(a1);
          result = AirReflection::PatchInputArg::HashImpl(v84, c);
          break;
        case 270345:
          v85 = AirReflection::Node::node_as_ControlPointInputArg(a1);
          result = AirReflection::ControlPointInputArg::HashImpl(v85, c);
          break;
        case 270346:
          v83 = AirReflection::Node::node_as_ControlPointField(a1);
          result = AirReflection::ControlPointField::HashImpl(v83, c);
          break;
        case 270350:
          v93 = AirReflection::Node::node_as_AmplificationCountArg(a1);
          result = AirReflection::AmplificationCountArg::HashImpl(v93, c);
          break;
        case 270351:
          v91 = AirReflection::Node::node_as_AmplificationIDArg(a1);
          result = AirReflection::AmplificationIDArg::HashImpl(v91, c);
          break;
        default:
          goto LABEL_195;
      }
    }
  }

  else
  {
    switch(v8)
    {
      case 266240:
        v14 = AirReflection::Node::node_as_ThreadPositionInGridArg(a1);
        result = AirReflection::ThreadPositionInGridArg::HashImpl(v14, c);
        break;
      case 266241:
        v107 = AirReflection::Node::node_as_ThreadsPerGridArg(a1);
        result = AirReflection::ThreadsPerGridArg::HashImpl(v107, c);
        break;
      case 266242:
        v102 = AirReflection::Node::node_as_ThreadgroupPositionInGridArg(a1);
        result = AirReflection::ThreadgroupPositionInGridArg::HashImpl(v102, c);
        break;
      case 266243:
        v105 = AirReflection::Node::node_as_ThreadgroupsPerGridArg(a1);
        result = AirReflection::ThreadgroupsPerGridArg::HashImpl(v105, c);
        break;
      case 266244:
        v98 = AirReflection::Node::node_as_ThreadPositionInThreadgroupArg(a1);
        result = AirReflection::ThreadPositionInThreadgroupArg::HashImpl(v98, c);
        break;
      case 266245:
        v122 = AirReflection::Node::node_as_ThreadsPerThreadgroupArg(a1);
        result = AirReflection::ThreadsPerThreadgroupArg::HashImpl(v122, c);
        break;
      case 266246:
        v124 = AirReflection::Node::node_as_DispatchThreadsPerThreadgroupArg(a1);
        result = AirReflection::DispatchThreadsPerThreadgroupArg::HashImpl(v124, c);
        break;
      case 266247:
        v106 = AirReflection::Node::node_as_ThreadIndexInThreadgroupArg(a1);
        result = AirReflection::ThreadIndexInThreadgroupArg::HashImpl(v106, c);
        break;
      case 266248:
        v127 = AirReflection::Node::node_as_ThreadExecutionWidthArg(a1);
        result = AirReflection::ThreadExecutionWidthArg::HashImpl(v127, c);
        break;
      case 266249:
        v101 = AirReflection::Node::node_as_StageInArg(a1);
        result = AirReflection::StageInArg::HashImpl(v101, c);
        break;
      case 266250:
        v126 = AirReflection::Node::node_as_StageInGridOriginArg(a1);
        result = AirReflection::StageInGridOriginArg::HashImpl(v126, c);
        break;
      case 266251:
        v97 = AirReflection::Node::node_as_StageInGridSizeArg(a1);
        result = AirReflection::StageInGridSizeArg::HashImpl(v97, c);
        break;
      case 266252:
        v99 = AirReflection::Node::node_as_ThreadIndexInSimdgroupArg(a1);
        result = AirReflection::ThreadIndexInSimdgroupArg::HashImpl(v99, c);
        break;
      case 266253:
        v123 = AirReflection::Node::node_as_ThreadsPerSimdgroupArg(a1);
        result = AirReflection::ThreadsPerSimdgroupArg::HashImpl(v123, c);
        break;
      case 266254:
        v96 = AirReflection::Node::node_as_SimdgroupIndexInThreadgroupArg(a1);
        result = AirReflection::SimdgroupIndexInThreadgroupArg::HashImpl(v96, c);
        break;
      case 266255:
        v103 = AirReflection::Node::node_as_SimdgroupsPerThreadgroupArg(a1);
        result = AirReflection::SimdgroupsPerThreadgroupArg::HashImpl(v103, c);
        break;
      case 266256:
        v95 = AirReflection::Node::node_as_DispatchSimdgroupsPerThreadgroupArg(a1);
        result = AirReflection::DispatchSimdgroupsPerThreadgroupArg::HashImpl(v95, c);
        break;
      case 266257:
        v120 = AirReflection::Node::node_as_ThreadIndexInQuadgroupArg(a1);
        result = AirReflection::ThreadIndexInQuadgroupArg::HashImpl(v120, c);
        break;
      case 266258:
        v125 = AirReflection::Node::node_as_QuadgroupIndexInThreadgroupArg(a1);
        result = AirReflection::QuadgroupIndexInThreadgroupArg::HashImpl(v125, c);
        break;
      case 266259:
        v132 = AirReflection::Node::node_as_QuadgroupsPerThreadgroupArg(a1);
        result = AirReflection::QuadgroupsPerThreadgroupArg::HashImpl(v132, c);
        break;
      case 266260:
        v121 = AirReflection::Node::node_as_DispatchQuadgroupsPerThreadgroupArg(a1);
        result = AirReflection::DispatchQuadgroupsPerThreadgroupArg::HashImpl(v121, c);
        break;
      default:
        goto LABEL_195;
    }
  }

  return result;
}

uint64_t AirReflection::LocalAllocation::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.LocalAllocation", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  v10 = v7;
  return CC_SHA256_Update(c, &v10, 4u);
}

uint64_t AirReflection::Node::node_as_FragmentFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 1) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FragmentFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FragmentFunction", 0x1Eu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 < 0xBu)
  {
    LOBYTE(v24) = 0;
  }

  else
  {
    v24 = v23[5];
    if (v24)
    {
      LOBYTE(v24) = *(a1 + v24) != 0;
    }
  }

  LOBYTE(data) = v24;
  CC_SHA256_Update(c, &data, 1u);
  v25 = (a1 - *a1);
  if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
  {
    v27 = v26;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v27);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_KernelFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 2) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::KernelFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.KernelFunction", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0xFu && (v30 = v29[7]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v32 = (a1 - *a1);
  if (*v32 >= 0x11u && (v33 = v32[8]) != 0)
  {
    v34 = v33;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v34);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v35 = (a1 - *a1);
  if (*v35 >= 0x13u && (v36 = v35[9]) != 0)
  {
    v37 = v36;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v37);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_VertexFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 3) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VertexFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VertexFunction", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_VisibleFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VisibleFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VisibleFunction", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    AirReflection::StitchingInfo::HashImpl((a1 + v12 + *(a1 + v12)), c);
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_IntersectionFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 5) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IntersectionFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IntersectionFunction", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 < 0xBu)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = v23[5];
    if (v24)
    {
      LODWORD(v24) = *(a1 + v24);
    }
  }

  data = v24;
  CC_SHA256_Update(c, &data, 4u);
  v25 = (a1 - *a1);
  if (*v25 < 0xDu)
  {
    LOBYTE(v26) = 0;
  }

  else
  {
    v26 = v25[6];
    if (v26)
    {
      LOBYTE(v26) = *(a1 + v26) != 0;
    }
  }

  LOBYTE(data) = v26;
  CC_SHA256_Update(c, &data, 1u);
  v27 = (a1 - *a1);
  if (*v27 < 0xFu)
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    v28 = v27[7];
    if (v28)
    {
      LOBYTE(v28) = *(a1 + v28) != 0;
    }
  }

  LOBYTE(data) = v28;
  CC_SHA256_Update(c, &data, 1u);
  v29 = (a1 - *a1);
  if (*v29 < 0x11u)
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    v30 = v29[8];
    if (v30)
    {
      LOBYTE(v30) = *(a1 + v30) != 0;
    }
  }

  LOBYTE(data) = v30;
  CC_SHA256_Update(c, &data, 1u);
  v31 = (a1 - *a1);
  if (*v31 < 0x13u)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = v31[9];
    if (v32)
    {
      LOBYTE(v32) = *(a1 + v32) != 0;
    }
  }

  LOBYTE(data) = v32;
  CC_SHA256_Update(c, &data, 1u);
  v33 = (a1 - *a1);
  if (*v33 < 0x15u)
  {
    LOBYTE(v34) = 0;
  }

  else
  {
    v34 = v33[10];
    if (v34)
    {
      LOBYTE(v34) = *(a1 + v34) != 0;
    }
  }

  LOBYTE(data) = v34;
  CC_SHA256_Update(c, &data, 1u);
  v35 = (a1 - *a1);
  if (*v35 < 0x17u)
  {
    LOBYTE(v36) = 0;
  }

  else
  {
    v36 = v35[11];
    if (v36)
    {
      LOBYTE(v36) = *(a1 + v36) != 0;
    }
  }

  LOBYTE(data) = v36;
  CC_SHA256_Update(c, &data, 1u);
  v37 = (a1 - *a1);
  if (*v37 < 0x19u)
  {
    LOBYTE(v38) = 0;
  }

  else
  {
    v38 = v37[12];
    if (v38)
    {
      LOBYTE(v38) = *(a1 + v38) != 0;
    }
  }

  LOBYTE(data) = v38;
  CC_SHA256_Update(c, &data, 1u);
  v39 = (a1 - *a1);
  if (*v39 < 0x1Bu)
  {
    LODWORD(v40) = 0;
  }

  else
  {
    v40 = v39[13];
    if (v40)
    {
      LODWORD(v40) = *(a1 + v40);
    }
  }

  data = v40;
  CC_SHA256_Update(c, &data, 4u);
  v41 = (a1 - *a1);
  if (*v41 < 0x1Du)
  {
    LOBYTE(v42) = 0;
  }

  else
  {
    v42 = v41[14];
    if (v42)
    {
      LOBYTE(v42) = *(a1 + v42) != 0;
    }
  }

  LOBYTE(data) = v42;
  CC_SHA256_Update(c, &data, 1u);
  v43 = (a1 - *a1);
  if (*v43 < 0x1Fu)
  {
    LOBYTE(v44) = 0;
  }

  else
  {
    v44 = v43[15];
    if (v44)
    {
      LOBYTE(v44) = *(a1 + v44) != 0;
    }
  }

  LOBYTE(data) = v44;
  CC_SHA256_Update(c, &data, 1u);
  v45 = (a1 - *a1);
  if (*v45 >= 0x21u && (v46 = v45[16]) != 0)
  {
    v47 = v46;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v47);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_MeshFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 6) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshFunction", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0xFu && (v30 = v29[7]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_ObjectFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 7) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ObjectFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ObjectFunction", 0x1Cu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0xFu && (v30 = v29[7]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v32 = (a1 - *a1);
  if (*v32 >= 0x11u && (v33 = v32[8]) != 0)
  {
    v34 = v33;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v34);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_CIFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 8) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIFunction::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIFunction", 0x18u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    p_data = (v6 + v7 + 4);
    v9 = *(v6 + v7);
    v10 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v10 = c;
    v9 = 4;
  }

  CC_SHA256_Update(v10, p_data, v9);
  v11 = (a1 - *a1);
  if (*v11 >= 7u && (v12 = v11[3]) != 0)
  {
    v13 = (a1 + v12 + *(a1 + v12));
    data = *v13;
    CC_SHA256_Update(c, &data, 4u);
    v14 = *v13;
    if (v14)
    {
      v15 = (v13 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v16 = *v15++;
        data = v16;
        CC_SHA256_Update(c, &data, 4u);
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v17 = (a1 - *a1);
  if (*v17 >= 9u && (v18 = v17[4]) != 0)
  {
    v19 = (a1 + v18 + *(a1 + v18));
    data = *v19;
    CC_SHA256_Update(c, &data, 4u);
    v20 = *v19;
    if (v20)
    {
      v21 = (v19 + 1);
      do
      {
        CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
        v22 = *v21++;
        data = v22;
        CC_SHA256_Update(c, &data, 4u);
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    data = 0;
    CC_SHA256_Update(c, &data, 4u);
  }

  v23 = (a1 - *a1);
  if (*v23 >= 0xBu && (v24 = v23[5]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_VecTypeHintFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 4096)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::VecTypeHintFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VecTypeHintFnAttr", 0x1Fu);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    v8 = *(v6 + v7);

    return CC_SHA256_Update(c, v6 + v7 + 4, v8);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }
}

uint64_t AirReflection::Node::node_as_WorkgroupSizeFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4097) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::WorkgroupSizeFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.WorkgroupSizeFnAttr", 0x21u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = v8;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v9);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = v11;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v12);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_WorkgroupSizeHintFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4098) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::WorkgroupSizeHintFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.WorkgroupSizeHintFnAttr", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v6);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v7 = (a1 - *a1);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = v8;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v9);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v10 = (a1 - *a1);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = v11;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v12);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_WorkgroupMaxSizeFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4099) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::WorkgroupMaxSizeFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.WorkgroupMaxSizeFnAttr", 0x24u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    v9 = *(a1 + v6);
    p_data = &v9;
  }

  else
  {
    data = 0;
    p_data = &data;
  }

  return CC_SHA256_Update(c, p_data, 4u);
}

uint64_t AirReflection::Node::node_as_PatchFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4100) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PatchFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PatchFnAttr", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LODWORD(v5) = *(a1 + v5);
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 4u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    v12 = *(a1 + v8);
    v9 = &v12;
  }

  else
  {
    v13 = 0;
    v9 = &v13;
  }

  return CC_SHA256_Update(c, v9, 4u);
}

uint64_t AirReflection::Node::node_as_MaxMeshWorkgroupsFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4101) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MaxMeshWorkgroupsFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MaxMeshWorkgroupsFnAttr", 0x25u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    v9 = *(a1 + v6);
    p_data = &v9;
  }

  else
  {
    data = 0;
    p_data = &data;
  }

  return CC_SHA256_Update(c, p_data, 4u);
}

uint64_t AirReflection::Node::node_as_UserAnnotationFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4102) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::UserAnnotationFnAttr::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.UserAnnotationFnAttr", 0x22u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    v8 = *(v6 + v7);

    return CC_SHA256_Update(c, v6 + v7 + 4, v8);
  }

  else
  {
    data = 0;
    return CC_SHA256_Update(c, &data, 4u);
  }
}

uint64_t AirReflection::Node::node_as_ClipDistanceRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 0x20000)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::ClipDistanceRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ClipDistanceRet", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 < 9u)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = v9[4];
    if (v10)
    {
      LOBYTE(v10) = *(a1 + v10) != 0;
    }
  }

  LOBYTE(data) = v10;
  CC_SHA256_Update(c, &data, 1u);
  v11 = (a1 - *a1);
  if (*v11 >= 0xBu && (v12 = v11[5]) != 0)
  {
    v13 = (a1 + v12);
    v14 = *v13;
    p_data = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v17 = c;
    v16 = 4;
  }

  CC_SHA256_Update(v17, p_data, v16);
  v18 = (a1 - *a1);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = (a1 + v19);
    v21 = *v20;
    v22 = (v20 + v21 + 4);
    v23 = *(v20 + v21);
    v24 = c;
  }

  else
  {
    data = 0;
    v22 = &data;
    v24 = c;
    v23 = 4;
  }

  return CC_SHA256_Update(v24, v22, v23);
}

uint64_t AirReflection::Node::node_as_PointSizeRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131073) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PointSizeRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PointSizeRet", 0x1Au);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_PositionRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131074) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PositionRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PositionRet", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v26 = v7;
  CC_SHA256_Update(c, &v26, 1u);
  v8 = (a1 - *a1);
  if (*v8 < 9u)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = v8[4];
    if (v9)
    {
      LOBYTE(v9) = *(a1 + v9) != 0;
    }
  }

  v27 = v9;
  CC_SHA256_Update(c, &v27, 1u);
  v10 = (a1 - *a1);
  if (*v10 >= 0xBu && (v11 = v10[5]) != 0)
  {
    v12 = (a1 + v11);
    v13 = *v12;
    v14 = (v12 + v13 + 4);
    v15 = *(v12 + v13);
    v16 = c;
  }

  else
  {
    v28 = 0;
    v14 = &v28;
    v16 = c;
    v15 = 4;
  }

  CC_SHA256_Update(v16, v14, v15);
  v17 = (a1 - *a1);
  if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    v21 = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    v29 = 0;
    v21 = &v29;
    v23 = c;
    v22 = 4;
  }

  return CC_SHA256_Update(v23, v21, v22);
}

uint64_t AirReflection::Node::node_as_RenderTargetArrayIndexRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131075) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderTargetArrayIndexRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderTargetArrayIndexRet", 0x27u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_VertexOutputRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131076) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VertexOutputRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VertexOutputRet", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    p_data = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, p_data, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = v14;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v15);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v16 = (a1 - *a1);
  if (*v16 < 0xBu)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = v16[5];
    if (v17)
    {
      LOBYTE(v17) = *(a1 + v17) != 0;
    }
  }

  LOBYTE(data) = v17;
  CC_SHA256_Update(c, &data, 1u);
  v18 = (a1 - *a1);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = (a1 + v19);
    v21 = *v20;
    v22 = (v20 + v21 + 4);
    v23 = *(v20 + v21);
    v24 = c;
  }

  else
  {
    data = 0;
    v22 = &data;
    v24 = c;
    v23 = 4;
  }

  CC_SHA256_Update(v24, v22, v23);
  v25 = (a1 - *a1);
  if (*v25 >= 0xFu && (v26 = v25[7]) != 0)
  {
    v27 = (a1 + v26);
    v28 = *v27;
    v29 = (v27 + v28 + 4);
    v30 = *(v27 + v28);
    v31 = c;
  }

  else
  {
    data = 0;
    v29 = &data;
    v31 = c;
    v30 = 4;
  }

  return CC_SHA256_Update(v31, v29, v30);
}

uint64_t AirReflection::Node::node_as_ViewportArrayIndexRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131077) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ViewportArrayIndexRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ViewportArrayIndexRet", 0x23u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LOBYTE(v7) = *(a1 + v7) != 0;
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 1u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}

uint64_t AirReflection::Node::node_as_RenderTargetRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 135168)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::RenderTargetRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderTargetRet", 0x1Du);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  LOBYTE(data) = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = v7;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v8);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v11);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v12 = (a1 - *a1);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = v13;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 < 0xDu)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = v15[6];
    if (v16)
    {
      LODWORD(v16) = *(a1 + v16);
    }
  }

  data = v16;
  CC_SHA256_Update(c, &data, 4u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = (a1 + v18);
    v20 = *v19;
    p_data = (v19 + v20 + 4);
    v22 = *(v19 + v20);
    v23 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, p_data, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0x11u && (v25 = v24[8]) != 0)
  {
    v26 = (a1 + v25);
    v27 = *v26;
    v28 = (v26 + v27 + 4);
    v29 = *(v26 + v27);
    v30 = c;
  }

  else
  {
    data = 0;
    v28 = &data;
    v30 = c;
    v29 = 4;
  }

  return CC_SHA256_Update(v30, v28, v29);
}

uint64_t AirReflection::Node::node_as_DepthRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135169) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DepthRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DepthRet", 0x16u);
  v4 = (a1 - *a1);
  if (*v4 < 5u)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = v4[2];
    if (v5)
    {
      LOBYTE(v5) = *(a1 + v5) != 0;
    }
  }

  data = v5;
  CC_SHA256_Update(c, &data, 1u);
  v6 = (a1 - *a1);
  if (*v6 < 7u)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = v6[3];
    if (v7)
    {
      LODWORD(v7) = *(a1 + v7);
    }
  }

  v24 = v7;
  CC_SHA256_Update(c, &v24, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v25 = 0;
    v12 = &v25;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, v12, v13);
  v15 = (a1 - *a1);
  if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
  {
    v17 = (a1 + v16);
    v18 = *v17;
    v19 = (v17 + v18 + 4);
    v20 = *(v17 + v18);
    v21 = c;
  }

  else
  {
    v26 = 0;
    v19 = &v26;
    v21 = c;
    v20 = 4;
  }

  return CC_SHA256_Update(v21, v19, v20);
}