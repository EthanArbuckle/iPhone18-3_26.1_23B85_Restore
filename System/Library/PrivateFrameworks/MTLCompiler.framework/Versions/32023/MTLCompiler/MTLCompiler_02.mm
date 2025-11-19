void sub_2579D9524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14 != v14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MetalModulePass::getMDTuple<unsigned int,char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(uint64_t a1, uint64_t a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, uint64_t a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, uint64_t a9, llvm::LLVMContext *a10, uint64_t a11, uint64_t a12, llvm::LLVMContext *a13, uint64_t a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17, llvm::LLVMContext *a18)
{
  v36 = *MEMORY[0x277D85DE8];
  v35 = *(a1 + 40);
  MetalModulePass::getMetadata<unsigned int>(a1);
  MetalModulePass::getMetadata(a1, a3, v23);
  MetalModulePass::getMetadata(a1, a4, v24);
  MetalModulePass::getMetadata<unsigned int>(a1);
  MetalModulePass::getMetadata<int>(a1);
  MetalModulePass::getMetadata(a1, a7, v25);
  MetalModulePass::getMetadata(a1, a8, v26);
  MetalModulePass::getMetadata<int>(a1);
  MetalModulePass::getMetadata(a1, a10, v27);
  MetalModulePass::getMetadata(a1);
  MetalModulePass::getMetadata(a1, a13, v28);
  MetalModulePass::getMetadata<unsigned long long>(a1);
  MetalModulePass::getMetadata(a1, a15, v29);
  MetalModulePass::getMetadata(a1, a16, v30);
  MetalModulePass::getMetadata(a1, a17, v31);
  MetalModulePass::getMetadata(a1, a18, v32);
  result = llvm::MDTuple::getImpl();
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(a1, *a2);
    v4 = *a1;
    v5 = *(a1 + 8);
  }

  else
  {
    v4 = *a1;
    *(*a1 + 4 * v3) = *a2;
    v5 = *(a1 + 8) + 1;
    *(a1 + 8) = v5;
  }

  return v4 + 4 * v5 - 4;
}

uint64_t MetalModulePass::getMDTuple<unsigned long,char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(uint64_t a1, uint64_t a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, uint64_t a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, uint64_t a9, llvm::LLVMContext *a10, uint64_t a11, uint64_t a12, llvm::LLVMContext *a13, uint64_t a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17, llvm::LLVMContext *a18)
{
  v36 = *MEMORY[0x277D85DE8];
  v35 = *(a1 + 40);
  MetalModulePass::getMetadata<unsigned long long>(a1);
  MetalModulePass::getMetadata(a1, a3, v23);
  MetalModulePass::getMetadata(a1, a4, v24);
  MetalModulePass::getMetadata<unsigned int>(a1);
  MetalModulePass::getMetadata<int>(a1);
  MetalModulePass::getMetadata(a1, a7, v25);
  MetalModulePass::getMetadata(a1, a8, v26);
  MetalModulePass::getMetadata<int>(a1);
  MetalModulePass::getMetadata(a1, a10, v27);
  MetalModulePass::getMetadata(a1);
  MetalModulePass::getMetadata(a1, a13, v28);
  MetalModulePass::getMetadata<unsigned long long>(a1);
  MetalModulePass::getMetadata(a1, a15, v29);
  MetalModulePass::getMetadata(a1, a16, v30);
  MetalModulePass::getMetadata(a1, a17, v31);
  MetalModulePass::getMetadata(a1, a18, v32);
  result = llvm::MDTuple::getImpl();
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MetalModulePass::getMDTuple<unsigned long,char const*,char const*,unsigned int,int,char const*,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(uint64_t a1, uint64_t a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, uint64_t a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, uint64_t a9, uint64_t a10, llvm::LLVMContext *a11, uint64_t a12, llvm::LLVMContext *a13, llvm::LLVMContext *a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16)
{
  v33 = *MEMORY[0x277D85DE8];
  v32 = *(a1 + 40);
  MetalModulePass::getMetadata<unsigned long long>(a1);
  MetalModulePass::getMetadata(a1, a3, v21);
  MetalModulePass::getMetadata(a1, a4, v22);
  MetalModulePass::getMetadata<unsigned int>(a1);
  MetalModulePass::getMetadata<int>(a1);
  MetalModulePass::getMetadata(a1, a7, v23);
  MetalModulePass::getMetadata(a1, a8, v24);
  MetalModulePass::getMetadata(a1);
  MetalModulePass::getMetadata(a1, a11, v25);
  MetalModulePass::getMetadata<unsigned long long>(a1);
  MetalModulePass::getMetadata(a1, a13, v26);
  MetalModulePass::getMetadata(a1, a14, v27);
  MetalModulePass::getMetadata(a1, a15, v28);
  MetalModulePass::getMetadata(a1, a16, v29);
  result = llvm::MDTuple::getImpl();
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::IRBuilderBase::CreateConstInBoundsGEP2_64(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unint64_t a4, unint64_t a5, const llvm::Twine *a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  llvm::Type::getInt64Ty(this[8], a2);
  v14[0] = llvm::ConstantInt::get();
  llvm::Type::getInt64Ty(this[8], v10);
  v14[1] = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, v14, 2, 1);
  if (!result)
  {
    v12 = llvm::GetElementPtrInst::Create(a2, a3, v14, 2);
    llvm::GetElementPtrInst::setIsInBounds(v12);
    result = llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v12, a6);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::IRBuilderBase::CreateRetVoid(llvm::ReturnInst **this, uint64_t a2, uint64_t a3, llvm::Instruction *a4)
{
  v5 = llvm::ReturnInst::Create(this[8], 0, 0, a4);
  v8 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, v7);
}

uint64_t llvm::IRBuilderBase::CreateRet(llvm::ReturnInst **this, llvm::Value *a2, uint64_t a3, llvm::Instruction *a4)
{
  v5 = llvm::ReturnInst::Create(this[8], a2, 0, a4);
  v8 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, v7);
}

void MemoryIndirectionPass::fixupIntersectionFunctions(llvm::Module **this)
{
  v54[1] = *MEMORY[0x277D85DE8];
  MemoryIndirectionPass::fixIntersectCalls(this, this[6]);
  if (*(this + 42))
  {
    v2 = *(this + 44);
    if (v2)
    {
      v3 = 16 * v2;
      v4 = this[20];
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v4 = (v4 + 16);
        v3 -= 16;
        if (!v3)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      v4 = this[20];
    }

    v5 = this[20] + 16 * v2;
    while (v4 != v5)
    {
      v44 = *v4;
      PrimitiveDataArgIndex = MemoryIndirectionPass::getPrimitiveDataArgIndex(this, *(v4 + 1));
      v7 = v44;
      if ((PrimitiveDataArgIndex & 0x80000000) == 0)
      {
        v8 = *(v44 + 10);
        if (v8)
        {
          v9 = (v8 - 24);
        }

        else
        {
          v9 = 0;
        }

        FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v9);
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v51, FirstNonPHI, 0, 0, 0);
        v11 = this[9];
        v12 = llvm::PointerType::get();
        inserted = MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(this[8]);
        v7 = v44;
        v14 = *(inserted + 24);
        v50 = 257;
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v51, v14, inserted, 0, 0, &v47);
        v16 = *AlignedLoad;
        v50 = 257;
        PointerBitCastOrAddrSpaceCast = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(v51, AlignedLoad, v12, &v47);
        v47 = 0;
        v48 = 0;
        v49 = 0;
        MemoryIndirectionPass::unpackAccelerationStructureValue(this, PointerBitCastOrAddrSpaceCast, v51, &v47);
        v18 = v47;
        BVHDataPointerIntrinsic = MemoryIndirectionPass::generateGetBVHDataPointerIntrinsic(this, v51, v44, v48, v16);
        if (*(v44 + 9))
        {
          llvm::Function::BuildLazyArguments(v44);
        }

        v20 = *(v44 + 11);
        v21 = *(BVHDataPointerIntrinsic + 32);
        if (v21)
        {
          v22 = v21 == *(BVHDataPointerIntrinsic + 40) + 40;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = (v21 - 24);
        }

        llvm::IRBuilderBase::SetInsertPoint(v51, v23);
        MemoryIndirectionPass::synthesizeAndInsertPrimitiveDataHandle(this, v51, (v20 + 40 * PrimitiveDataArgIndex), v18, BVHDataPointerIntrinsic);
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v54);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v53);
        if (v51[0] != v52)
        {
          free(v51[0]);
        }
      }

      v24 = llvm::Function::args(v7);
      v26 = v25;
      if (v24 != v25)
      {
        v27 = (v24 + 8);
        do
        {
          if (PrimitiveDataArgIndex)
          {
            v28 = *(v27 - 1);
            if (*(v28 + 8) == 15 && MemoryIndirectionPass::indirectAddressSpace(this, *(v27 - 1)))
            {
              v29 = *(v44 + 10);
              if (v29)
              {
                v30 = (v29 - 24);
              }

              else
              {
                v30 = 0;
              }

              llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v51, v30, 0, 0, 0);
              v31 = llvm::BasicBlock::getFirstNonPHI(v30);
              llvm::IRBuilderBase::SetInsertPoint(v51, v31);
              v32 = this[8];
              BitOrPointerCast = (v27 - 1);
              llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v32 + 208, &BitOrPointerCast, &v47);
              if ((*(v28 + 8) & 0xFE) == 0x12)
              {
                v33 = *(**(v28 + 16) + 8);
              }

              v34 = llvm::PointerType::get();
              v50 = 257;
              BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(v51, v27 - 1, v34, &v47);
              llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this[8] + 208, &BitOrPointerCast, &v47);
              v35 = **(*BitOrPointerCast + 16);
              v50 = 257;
              v36 = llvm::IRBuilderBase::CreateAlignedLoad(v51, v35, BitOrPointerCast, 259, 0, &v47);
              v37 = this[8];
              v45 = v36;
              llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v37 + 208, &v45, &v47);
              llvm::Value::replaceAllUsesWith();
              v38 = BitOrPointerCast;
              v39 = (BitOrPointerCast - 32);
              if (*(BitOrPointerCast - 4))
              {
                v40 = *(BitOrPointerCast - 3);
                **(BitOrPointerCast - 2) = v40;
                if (v40)
                {
                  *(v40 + 16) = *(v38 - 2);
                }
              }

              *(v38 - 4) = v27 - 1;
              v41 = *v27;
              *(v38 - 3) = *v27;
              if (v41)
              {
                *(v41 + 2) = v38 - 24;
              }

              *(v38 - 2) = v27;
              *v27 = v39;
              llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v54);
              llvm::IRBuilderFolder::~IRBuilderFolder(&v53);
              if (v51[0] != v52)
              {
                free(v51[0]);
              }
            }
          }

          --PrimitiveDataArgIndex;
          v42 = v27 + 4;
          v27 += 5;
        }

        while (v42 != v26);
      }

      do
      {
        v4 = (v4 + 16);
      }

      while (v4 != v5 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_44:
  v43 = *MEMORY[0x277D85DE8];
}

void sub_2579DA0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MemoryIndirectionPass::handleMemoryQueryFunction(MemoryIndirectionPass *this, llvm::Function *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  result = llvm::GlobalValue::isDeclaration(a2);
  if (result)
  {
    v6 = *(this + 5);
    v9 = 257;
    llvm::BasicBlock::Create(v6, &v8, a2, 0, v5);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL MemoryIndirectionPass::shouldModifyFunction(MemoryIndirectionPass *this, llvm::Function *a2)
{
  Name = llvm::Value::getName(a2);
  if (v4 >= 0x1A)
  {
    if (*Name == 0x6C6174656D5F5F5FLL && *(Name + 8) == 0x6E6F635F7465675FLL && *(Name + 16) == 0x696F705F6C6F7274 && *(Name + 24) == 29806)
    {
      return 0;
    }
  }

  else if (v4 < 0x15)
  {
    goto LABEL_32;
  }

  v8 = Name + v4;
  if (*(Name + v4 - 21) == 0x4E4F435F4C544D2ELL && *(Name + v4 - 13) == 0x494F505F4C4F5254 && *(Name + v4 - 8) == 0x4E465F544E494F50)
  {
    return 0;
  }

  if (v4 >= 0x1B)
  {
    v11 = *(v8 - 27);
    v12 = *(v8 - 19);
    v13 = *(v8 - 11);
    v14 = *(v8 - 8);
    v15 = v11 == 0x61705F6C6174656DLL && v12 == 0x746E6F635F686374;
    v16 = v15 && v13 == 0x6E696F705F6C6F72;
    if (v16 && v14 == 0x745F746E696F705FLL)
    {
      return 0;
    }
  }

LABEL_32:
  if (llvm::GlobalValue::isDeclaration(a2))
  {
    return 0;
  }

  return llvm::Value::getMetadata() == 0;
}

void MemoryIndirectionPass::fixupInstructions(MemoryIndirectionPass *this, llvm::Function *a2)
{
  v51[8] = *MEMORY[0x277D85DE8];
  v48 = v51;
  v50 = 8;
  v2 = *(a2 + 10);
  v42 = a2 + 72;
  if (v2 != a2 + 72)
  {
    do
    {
      v4 = v2 - 24;
      if (!v2)
      {
        v4 = 0;
      }

      v49 = 0;
      v5 = v4 + 40;
      v6 = *(v4 + 6);
      if (v6 != v4 + 40)
      {
        do
        {
          v7 = (v6 - 24);
          if (!v6)
          {
            v7 = 0;
          }

          v8 = v7[16] - 60;
          v9 = v8 > 0x18;
          v10 = (1 << v8) & 0x1000003;
          if (!v9 && v10 != 0)
          {
            v45 = v7;
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v48, &v45);
          }

          v6 = *(v6 + 1);
        }

        while (v6 != v5);
        if (v49)
        {
          v12 = v48;
          v13 = 8 * v49;
          do
          {
            v14 = *v12;
            v15 = *(*v12 + 16);
            switch(v15)
            {
              case '<':
                v33 = *(v14 - 32);
                v34 = *(this + 8);
                v45 = v33;
                v43[0] = 0;
                if ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>((v34 + 208), &v45, v43) & 1) == 0)
                {
                  if ((v35 = *v33, v36 = *v14, !*(v14 + 48)) && (*(v14 + 23) & 0x20) == 0 || !llvm::Instruction::getMetadataImpl())
                  {
                    if (MemoryIndirectionPass::indirectAddressSpace(this, v35))
                    {
                      v37 = *(v35 + 8);
                      if ((v37 & 0xFE) == 0x12)
                      {
                        v37 = *(**(v35 + 16) + 8);
                      }

                      IndirectLoad = MemoryIndirectionPass::createIndirectLoad(this, v33, v37 >> 8, v36, 1 << (*(v14 + 18) >> 1));
                      if (IndirectLoad != v14)
                      {
                        llvm::ReplaceInstWithInst(v14, IndirectLoad, v39);
                      }
                    }
                  }
                }

                break;
              case '=':
                v25 = *(v14 - 32);
                v26 = *(v14 - 64);
                if (!*(v14 + 48) && (*(v14 + 23) & 0x20) == 0 || (v27 = *v12, !llvm::Instruction::getMetadataImpl()))
                {
                  v28 = *(this + 8);
                  v45 = v25;
                  v43[0] = 0;
                  if ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>((v28 + 208), &v45, v43) & 1) == 0)
                  {
                    v29 = *v25;
                    if (MemoryIndirectionPass::indirectAddressSpace(this, *v25))
                    {
                      v30 = *(v29 + 2);
                      if ((v30 & 0xFE) == 0x12)
                      {
                        v30 = *(**(v29 + 2) + 8);
                      }

                      IndirectStore = MemoryIndirectionPass::createIndirectStore(this, v25, v30 >> 8, v26, 1 << (*(v14 + 18) >> 1));
                    }

                    else
                    {
                      IndirectStore = llvm::User::operator new(0x40);
                      v40 = *(v14 + 18);
                      llvm::StoreInst::StoreInst();
                    }

                    llvm::ReplaceInstWithInst(v14, IndirectStore, v31);
                  }
                }

                break;
              case 'T':
                v16 = *(v14 - 32);
                if (!v16 || *(v16 + 16) || *(v16 + 24) != *(v14 + 72))
                {
                  v16 = 0;
                }

                CheckedFunction = MemoryIndirectionPass::createCheckedFunction(this, *v12, v16);
                v18 = CheckedFunction;
                if (CheckedFunction)
                {
                  v19 = *(CheckedFunction + 24);
                  v20 = *(v14 + 20);
                  v21 = llvm::CallBase::arg_end(v14);
                  llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *,void>(&v45, (v14 - 32 * (v20 & 0x7FFFFFF)), v21);
                  v44 = 257;
                  v23 = llvm::CallInst::Create(v19, v18, v45, v46, 0, 0);
                  if (v45 != &v47)
                  {
                    free(v45);
                  }

                  v24 = *(v23 + 9) & 0xFFFC | *(v14 + 18) & 3;
                  *(v23 + 9) = v24;
                  *(v23 + 9) = v24 & 0xF003 | *(v14 + 18) & 0xFFC;
                  llvm::ReplaceInstWithInst(v14, v23, v22);
                }

                break;
            }

            ++v12;
            v13 -= 8;
          }

          while (v13);
        }
      }

      v2 = *(v2 + 1);
    }

    while (v2 != v42);
    if (v48 != v51)
    {
      free(v48);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void sub_2579DB034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  llvm::User::operator delete(v23);
  if (a23 != a9)
  {
    free(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::shrink_and_clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 8);
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

  if (v5 == v2)
  {
    *(result + 8) = 0;
    if (v2)
    {
      v6 = 0;
      v7 = v2 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (*result + 16);
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
    llvm::deallocate_buffer(*result, (16 * v2));

    return llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::init(v1, v5);
  }

  return result;
}

void *std::deque<llvm::User *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<llvm::User *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<llvm::User *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<llvm::User **>::emplace_back<llvm::User **&>(a1, &v10);
}

void sub_2579DB3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<llvm::User **>::emplace_back<llvm::User **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<llvm::User **>::emplace_front<llvm::User **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<llvm::User **>::emplace_back<llvm::User **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<llvm::User **>::emplace_front<llvm::User **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::User **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<llvm::User *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<llvm::User **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<llvm::User **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

BOOL MemoryIndirectionPass::indirectAddressSpace(MemoryIndirectionPass *this, llvm::Type *a2)
{
  v2 = *(a2 + 2);
  if (v2 != 15)
  {
    return 0;
  }

  v4 = **(a2 + 2);
  if (*(v4 + 8) == 16)
  {
    if (isSpecialStructType(v4))
    {
      return 0;
    }

    v2 = *(a2 + 2);
  }

  if ((v2 & 0xFE) == 0x12)
  {
    v2 = *(**(a2 + 2) + 8);
  }

  return (v2 >> 8) - 1 < 2;
}

uint64_t MetalModulePass::getMetadata<int>(uint64_t a1)
{
  v1 = *(a1 + 40);
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

uint64_t llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 4 * v2) = a2;
  ++*(result + 8);
  return result;
}

void *llvm::SmallVector<llvm::Value *,8u>::SmallVector(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(a1, a2, *a3);
  return a1;
}

void sub_2579DBAE8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<llvm::Value *>::assign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) < a2)
  {
    llvm::SmallVectorTemplateBase<llvm::Value *,true>::growAndAssign(a1);
  }

  v3 = *(a1 + 8);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    v5 = 0;
    v6 = (v4 + 1) & 0x1FFFFFFFELL;
    v7 = vdupq_n_s64(v4 - 1);
    v8 = (*a1 + 8);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_257A6D000)));
      if (v9.i8[0])
      {
        *(v8 - 1) = a3;
      }

      if (v9.i8[4])
      {
        *v8 = a3;
      }

      v5 += 2;
      v8 += 2;
    }

    while (v6 != v5);
  }

  v10 = a2 - v3;
  if (a2 > v3)
  {
    v11 = 0;
    v12 = vdupq_n_s64(v10 - 1);
    v13 = (*a1 + 8 * v3 + 8);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v11), xmmword_257A6D000)));
      if (v14.i8[0])
      {
        *(v13 - 1) = a3;
      }

      if (v14.i8[4])
      {
        *v13 = a3;
      }

      v11 += 2;
      v13 += 2;
    }

    while (((v10 + 1) & 0xFFFFFFFFFFFFFFFELL) != v11);
  }

  *(a1 + 8) = a2;
  return a1;
}

void MemoryIndirectionPass::fixIntersectCalls(MemoryIndirectionPass *this, llvm::Module *a2)
{
  v3 = this;
  v137[10] = *MEMORY[0x277D85DE8];
  v4 = *(this + 9);
  v120 = llvm::PointerType::get();
  v135 = v137;
  v136 = 0x500000000;
  v5 = a2 + 24;
  v6 = *(a2 + 4);
  if (v6 == v5)
  {
    goto LABEL_179;
  }

  do
  {
    if (v6)
    {
      v7 = (v6 - 56);
    }

    else
    {
      v7 = 0;
    }

    Name = llvm::Value::getName(v7);
    v128 = v8;
    if (llvm::StringRef::find() != -1 || llvm::StringRef::find() != -1)
    {
      v132 = v7;
      LODWORD(v124) = 2;
      llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v135, &v132, &v124);
    }

    if (v128 >= 4 && *Name == 779250017)
    {
      if (v128 < 0xD)
      {
        goto LABEL_77;
      }

      if (*Name != 0x65746E692E726961 || *(Name + 5) != 0x746365737265746ELL)
      {
        if (v128 >= 0x1C)
        {
          if (*Name == 0x657365722E726961 && *(Name + 1) == 0x737265746E695F74 && *(Name + 2) == 0x715F6E6F69746365 && *(Name + 6) == 2037540213)
          {
            v132 = v7;
            LODWORD(v124) = 1;
            llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v135, &v132, &v124);
            goto LABEL_77;
          }
        }

        else if (v128 < 0x17)
        {
          goto LABEL_77;
        }

        if (*(Name + v128 - 23) == 0x72656C656363615FLL && *(Name + v128 - 15) == 0x74735F6E6F697461 && *(Name + v128 - 8) == 0x6572757463757274)
        {
          if (v128 >= 0x1A && (*Name == 0x5F7465672E726961 ? (v18 = *(Name + 1) == 0x695F657571696E75) : (v18 = 0), v18 ? (v19 = *(Name + 2) == 0x65696669746E6564) : (v19 = 0), v19 ? (v20 = *(Name + 12) == 24434) : (v20 = 0), v20) || (*Name == 0x5F7465672E726961 ? (v21 = *(Name + 1) == 0x696F705F61746164) : (v21 = 0), v21 ? (v22 = *(Name + 13) == 0x5F7265746E696F70) : (v22 = 0), v22 || (*Name == 0x5F7465672E726961 ? (v23 = *(Name + 1) == 0x65636E6174736E69) : (v23 = 0), v23 ? (v24 = *(Name + 15) == 0x5F746E756F635F65) : (v24 = 0), v24)))
          {
            v132 = v7;
            LODWORD(v124) = 5;
            llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v135, &v132, &v124);
          }
        }

        goto LABEL_77;
      }

      if (v128 >= 0x1B && (*Name == 0x65746E692E726961 ? (v10 = *(Name + 1) == 0x69645F7463657372) : (v10 = 0), v10 ? (v11 = *(Name + 2) == 0x6363615F74636572) : (v11 = 0), v11 ? (v12 = *(Name + 19) == 0x7373656363615F74) : (v12 = 0), v12))
      {
        v132 = v7;
        LODWORD(v124) = 4;
        llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v135, &v132, &v124);
      }

      else
      {
        v132 = v7;
        LODWORD(v124) = 0;
        llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v135, &v132, &v124);
      }

LABEL_77:
      if (llvm::StringRef::find() != -1)
      {
        v132 = v7;
        LODWORD(v124) = 3;
        llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(&v135, &v132, &v124);
      }
    }

    v6 = *(v6 + 8);
  }

  while (v6 != v5);
  v25 = v135;
  if (v136)
  {
    v118 = &v135[2 * v136];
    v119 = v3;
    while (1)
    {
      v26 = *v25;
      v27 = v25[2];
      if (v27 <= 1)
      {
        if (!v27)
        {
LABEL_105:
          llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v132, v26[1], 0);
          v52 = v132;
          if (v133)
          {
            v116 = v25;
            v117 = v26;
            v53 = 8 * v133;
            do
            {
              v54 = *v52;
              if (*v52 && *(v54 + 16) == 84)
              {
                if (!*(v54 + 48) && (*(v54 + 23) & 0x20) == 0 || (v55 = *v52, !llvm::Instruction::getMetadataImpl()))
                {
                  v56 = *(v3 + 5);
                  llvm::MDTuple::getImpl();
                  llvm::Instruction::setMetadata();
                  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v54, 0, 0, 0);
                  v57 = *(v54 - 32 * (*(v54 + 20) & 0x7FFFFFF) + 128);
                  v58 = *v57;
                  v126 = 257;
                  PointerBitCastOrAddrSpaceCast = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(&Name, v57, v120, &v124);
                  v121 = 0;
                  v122 = 0;
                  v123 = 0;
                  MemoryIndirectionPass::unpackAccelerationStructureValue(v3, PointerBitCastOrAddrSpaceCast, &Name, &v121);
                  v60 = v121;
                  v61 = v122;
                  inserted = MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(*(v3 + 8));
                  llvm::IRBuilderBase::CreateAlignedStore(&Name, PointerBitCastOrAddrSpaceCast, inserted, 0);
                  v126 = 257;
                  Cast = llvm::IRBuilderBase::CreateCast(&Name, 48, v61, v58, &v124);
                  llvm::CallBase::setArgOperand(v54, 4u, Cast);
                  if (!v27)
                  {
                    MemoryIndirectionPass::generatePrimitiveDataHandle(v3, v117, v54, v60, v61, v58);
                  }

                  if ((*(*(*(v3 + 8) + 72) + 24) & 0x10) != 0)
                  {
                    v64 = MemoryIndirectionPass::createValidateAccelerationStructureTypeCall(v3, v54);
                    llvm::Instruction::insertBefore(v64, v54);
                    llvm::CallBase::setArgOperand(v64, 0, v57);
                  }

                  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v131);
                  llvm::IRBuilderFolder::~IRBuilderFolder(&v130);
                  if (Name != v129)
                  {
                    free(Name);
                  }
                }
              }

              v52 = (v52 + 8);
              v53 -= 8;
            }

            while (v53);
            v52 = v132;
            v25 = v116;
          }

          if (v52 == v134)
          {
            goto LABEL_175;
          }

          v65 = v52;
          goto LABEL_174;
        }

        if (v27 != 1)
        {
          goto LABEL_161;
        }

        llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v132, v26[1], 0);
        v28 = v132;
        if (v133)
        {
          v115 = v25;
          v29 = 8 * v133;
          do
          {
            v30 = *v28;
            if (*v28 && *(v30 + 16) == 84)
            {
              if (!*(v30 + 48) && (*(v30 + 23) & 0x20) == 0 || (v31 = *v28, !llvm::Instruction::getMetadataImpl()))
              {
                v32 = *(v3 + 5);
                llvm::MDTuple::getImpl();
                llvm::Instruction::setMetadata();
                llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v30, 0, 0, 0);
                v33 = *(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF) + 160);
                v126 = 257;
                v34 = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(&Name, v33, v120, &v124);
                v121 = 0;
                v122 = 0;
                v123 = 0;
                MemoryIndirectionPass::unpackAccelerationStructureValue(v3, v34, &Name, &v121);
                v36 = v121;
                v35 = v122;
                v37 = *(v3 + 5);
                v38 = *(v3 + 9);
                v124 = **(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF));
                v125 = v38;
                v39 = llvm::StructType::get();
                v40 = llvm::User::operator new(0x48);
                v126 = 257;
                llvm::BasicBlock::getFirstNonPHI(*(v30 + 40));
                llvm::AllocaInst::AllocaInst();
                v126 = 257;
                ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v39, v40, 0, 0, &v124);
                v126 = 257;
                v42 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v39, v40, 0, 1u, &v124);
                llvm::IRBuilderBase::CreateAlignedStore(&Name, v36, v42, 0);
                v3 = v119;
                AlignedStore = llvm::IRBuilderBase::CreateAlignedStore(&Name, *(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF)), ConstInBoundsGEP2_32, 0);
                v44 = **(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF) + 160);
                v126 = 257;
                v45 = llvm::IRBuilderBase::CreateCast(&Name, 48, v35, v44, &v124);
                llvm::CallBase::setArgOperand(v30, 5u, v45);
                v46 = *(v30 - 32 * (*(v30 + 20) & 0x7FFFFFF));
                v47 = *v46;
                v126 = 257;
                llvm::IRBuilderBase::CreateCast(&Name, 49, v40, v47, &v124);
                llvm::Value::replaceAllUsesWith();
                if (*(AlignedStore - 64))
                {
                  v48 = *(AlignedStore - 56);
                  **(AlignedStore - 48) = v48;
                  if (v48)
                  {
                    *(v48 + 16) = *(AlignedStore - 48);
                  }
                }

                *(AlignedStore - 64) = v46;
                v51 = v46[1];
                v50 = v46 + 1;
                v49 = v51;
                *(AlignedStore - 56) = v51;
                if (v51)
                {
                  *(v49 + 16) = AlignedStore - 56;
                }

                *(AlignedStore - 48) = v50;
                *v50 = AlignedStore - 64;
                llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v131);
                llvm::IRBuilderFolder::~IRBuilderFolder(&v130);
                if (Name != v129)
                {
                  free(Name);
                }
              }
            }

            v28 = (v28 + 8);
            v29 -= 8;
          }

          while (v29);
          v28 = v132;
          v25 = v115;
        }
      }

      else
      {
        switch(v27)
        {
          case 2:
            llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v132, v26[1], 0);
            v28 = v132;
            if (v133)
            {
              v66 = v25;
              v67 = 8 * v133;
              do
              {
                v68 = *v28;
                if (*v28 && *(v68 + 16) == 84)
                {
                  if (!*(v68 + 48) && (*(v68 + 23) & 0x20) == 0 || (v69 = *v28, !llvm::Instruction::getMetadataImpl()))
                  {
                    v70 = *(v3 + 5);
                    llvm::MDTuple::getImpl();
                    llvm::Instruction::setMetadata();
                    v71 = *(v68 + 32);
                    if (v71)
                    {
                      v72 = v71 == *(v68 + 40) + 40;
                    }

                    else
                    {
                      v72 = 1;
                    }

                    if (v72)
                    {
                      v73 = 0;
                    }

                    else
                    {
                      v73 = (v71 - 24);
                    }

                    llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v73, 0, 0, 0);
                    v74 = *(v3 + 5);
                    v75 = *(v3 + 9);
                    v124 = **(v68 - 32 * (*(v68 + 20) & 0x7FFFFFF));
                    v125 = v75;
                    v76 = llvm::StructType::get();
                    v77 = *(v68 - 32 * (*(v68 + 20) & 0x7FFFFFF));
                    v78 = llvm::PointerType::get();
                    v126 = 257;
                    v79 = llvm::IRBuilderBase::CreateCast(&Name, 49, v77, v78, &v124);
                    v126 = 257;
                    v80 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v76, v79, 0, 1u, &v124);
                    v121 = 0;
                    v122 = 0;
                    v123 = 0;
                    MemoryIndirectionPass::unpackAccelerationStructureValue(v119, v80, &Name, &v121);
                    v126 = 257;
                    v81 = llvm::IRBuilderBase::CreateCast(&Name, 48, v121, v120, &v124);
                    MemoryIndirectionPass::createIndirectPtrToBase(v119, v81);
                  }
                }

                v28 = (v28 + 8);
                v67 -= 8;
              }

              while (v67);
              v28 = v132;
              v25 = v66;
            }

            break;
          case 3:
            llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v132, v26[1], 0);
            v28 = v132;
            if (v133)
            {
              v82 = v25;
              v83 = (v132 + 8 * v133);
              do
              {
                v84 = *v28;
                if (*(*v28 + 16) == 84 && v84 != 0)
                {
                  v86 = 0;
                  v87 = *v28;
                  while (v86 < llvm::compat::getNumArgOperands(v84))
                  {
                    v88 = *(v87 - 32 * (*(v84 + 5) & 0x7FFFFFF));
                    if (*(*v88 + 8) == 15)
                    {
                      v89 = **(*v88 + 2);
                      if (*(v89 + 8) == 16)
                      {
                        Name = llvm::StructType::getName(v89);
                        v128 = v90;
                        if (llvm::StringRef::find() != -1)
                        {
                          v91 = *(v3 + 5);
                          v92 = *(v3 + 9);
                          Name = *v88;
                          v128 = v92;
                          v93 = llvm::StructType::get();
                          llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v84, 0, 0, 0);
                          v94 = llvm::PointerType::get();
                          v126 = 257;
                          v95 = llvm::IRBuilderBase::CreateCast(&Name, 49, v88, v94, &v124);
                          v126 = 257;
                          v96 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v93, v95, 0, 0, &v124);
                          v97 = *(v96 + 72);
                          v126 = 257;
                          AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(&Name, v97, v96, 0, 0, &v124);
                          v99 = v87 - 32 * (*(v84 + 5) & 0x7FFFFFF);
                          if (*v99)
                          {
                            v100 = *(v99 + 8);
                            **(v99 + 16) = v100;
                            if (v100)
                            {
                              *(v100 + 16) = *(v99 + 16);
                            }
                          }

                          *v99 = AlignedLoad;
                          if (AlignedLoad)
                          {
                            v103 = *(AlignedLoad + 8);
                            v101 = (AlignedLoad + 8);
                            v102 = v103;
                            *(v99 + 8) = v103;
                            if (v103)
                            {
                              *(v102 + 16) = v99 + 8;
                            }

                            *(v99 + 16) = v101;
                            *v101 = v99;
                          }

                          llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v131);
                          llvm::IRBuilderFolder::~IRBuilderFolder(&v130);
                          if (Name != v129)
                          {
                            free(Name);
                          }
                        }
                      }
                    }

                    ++v86;
                    v87 += 32;
                  }
                }

                v28 = (v28 + 8);
              }

              while (v28 != v83);
              v28 = v132;
              v25 = v82;
            }

            break;
          case 4:
            goto LABEL_105;
          default:
LABEL_161:
            llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v132, v26[1], 0);
            v28 = v132;
            if (v133)
            {
              v104 = 8 * v133;
              do
              {
                v105 = *v28;
                if (*v28 && *(v105 + 16) == 84)
                {
                  if (!*(v105 + 48) && (*(v105 + 23) & 0x20) == 0 || (v106 = *v28, !llvm::Instruction::getMetadataImpl()))
                  {
                    v107 = *(v3 + 5);
                    llvm::MDTuple::getImpl();
                    llvm::Instruction::setMetadata();
                    llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v105, 0, 0, 0);
                    v108 = *(v105 - 32 * (*(v105 + 20) & 0x7FFFFFF));
                    v126 = 257;
                    v109 = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(&Name, v108, v120, &v124);
                    v121 = 0;
                    v122 = 0;
                    v123 = 0;
                    MemoryIndirectionPass::unpackAccelerationStructureValue(v3, v109, &Name, &v121);
                    v110 = v122;
                    v111 = MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(*(v3 + 8));
                    llvm::IRBuilderBase::CreateAlignedStore(&Name, v109, v111, 0);
                    v112 = **(v105 - 32 * (*(v105 + 20) & 0x7FFFFFF));
                    v126 = 257;
                    v113 = llvm::IRBuilderBase::CreateCast(&Name, 48, v110, v112, &v124);
                    llvm::CallBase::setArgOperand(v105, 0, v113);
                    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v131);
                    llvm::IRBuilderFolder::~IRBuilderFolder(&v130);
                    if (Name != v129)
                    {
                      free(Name);
                    }
                  }
                }

                v28 = (v28 + 8);
                v104 -= 8;
              }

              while (v104);
              v28 = v132;
            }

            break;
        }
      }

      if (v28 != v134)
      {
        v65 = v28;
LABEL_174:
        free(v65);
      }

LABEL_175:
      v25 += 4;
      if (v25 == v118)
      {
        v25 = v135;
        break;
      }
    }
  }

  if (v25 != v137)
  {
    free(v25);
  }

LABEL_179:
  v114 = *MEMORY[0x277D85DE8];
}

void sub_2579DCC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v28 = *(v26 - 192);
  if (v28 != a10)
  {
    free(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MemoryIndirectionPass::getPrimitiveDataArgIndex(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8 * *(a2 + 8) + 16);
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0xFFFFFFFFLL;
  v6 = *(a2 - 8 * *(a2 + 8) + 16);
  do
  {
    v7 = *(v6 - 8 * v3);
    String = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8));
    if (v9 == 18)
    {
      v10 = *String == 0x6D6972702E726961 && *(String + 8) == 0x61645F6576697469;
      if (v10 && *(String + 16) == 24948)
      {
        v12 = *(*(v7 - 8 * *(v7 + 8)) + 128);
        v13 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v13 = *v13;
        }

        v5 = *v13;
      }
    }

    ++v4;
    v3 = *(v2 + 8);
    v6 += 8;
  }

  while (v4 < v3);
  return v5;
}

uint64_t MemoryIndirectionPass::unpackAccelerationStructureValue@<X0>(void *a1@<X0>, llvm::Type **a2@<X1>, llvm::IRBuilderBase *a3@<X2>, uint64_t *a4@<X8>)
{
  if ((*(*a2 + 2) & 0xFE) == 0x12)
  {
    v8 = *(**(*a2 + 2) + 8);
  }

  v9 = a1[12];
  v10 = llvm::PointerType::get();
  v38 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, a2, v10, v37);
  v12 = a1[12];
  v38 = 257;
  ConstInBoundsGEP1_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP1_32(a3, v12, BitOrPointerCast, 0, v37);
  v14 = a1[9];
  v15 = llvm::PointerType::get();
  v38 = 257;
  v16 = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, ConstInBoundsGEP1_32, v15, v37);
  v38 = 257;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a3, v14, v16, 0, 0, v37);
  v18 = a1[12];
  v38 = 257;
  v19 = llvm::IRBuilderBase::CreateConstInBoundsGEP1_32(a3, v18, BitOrPointerCast, 8u, v37);
  v20 = a1[9];
  v21 = llvm::PointerType::get();
  v38 = 257;
  v22 = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, v19, v21, v37);
  v38 = 257;
  v23 = llvm::IRBuilderBase::CreateAlignedLoad(a3, v14, v22, 0, 0, v37);
  v24 = 0;
  if ((*(*(a1[8] + 72) + 24) & 0x10) != 0)
  {
    v25 = a1[12];
    v38 = 257;
    v26 = llvm::IRBuilderBase::CreateConstInBoundsGEP1_32(a3, v25, BitOrPointerCast, 0x10u, v37);
    v27 = a1[9];
    v28 = llvm::PointerType::get();
    v38 = 257;
    v29 = llvm::IRBuilderBase::CreateBitOrPointerCast(a3, v26, v28, v37);
    v38 = 257;
    v24 = llvm::IRBuilderBase::CreateAlignedLoad(a3, v14, v29, 0, 0, v37);
    v30 = a1[5];
    llvm::MDTuple::getImpl();
    llvm::Instruction::setMetadata();
    v31 = a1[5];
    llvm::MDTuple::getImpl();
    llvm::Instruction::setMetadata();
  }

  v32 = a1[5];
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v33 = a1[5];
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v34 = a1[5];
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v35 = a1[5];
  llvm::MDTuple::getImpl();
  result = llvm::Instruction::setMetadata();
  *a4 = AlignedLoad;
  a4[1] = v23;
  if ((*(*(a1[8] + 72) + 24) & 0x10) != 0)
  {
    a4[2] = v24;
  }

  return result;
}

uint64_t MemoryIndirectionPass::generateGetBVHDataPointerIntrinsic(void *a1, uint64_t a2, llvm::Value *this, uint64_t a4, uint64_t a5)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v26 = a5;
  v23[0] = llvm::Value::getName(this);
  v23[1] = v8;
  v9 = llvm::StringRef::find();
  v10 = "air.get_data_pointer_instance_acceleration_structure";
  if (v9 == -1)
  {
    v10 = "air.get_data_pointer_primitive_acceleration_structure";
  }

  v11 = 52;
  if (v9 == -1)
  {
    v11 = 53;
  }

  v25[0] = v10;
  v25[1] = v11;
  v12 = a1[6];
  v13 = a1[12];
  v23[0] = llvm::PointerType::get();
  v14 = getOrInsertFunction<llvm::StringRef &,llvm::PointerType *,llvm::Type *&>(v12, v25, v23, &v26);
  v15 = *(v14 + 24);
  v16 = *(*(v15 + 16) + 8);
  v24 = 257;
  v27[0] = llvm::IRBuilderBase::CreateCast(a2, 48, a4, v16, v23);
  v22 = 257;
  v17 = llvm::IRBuilderBase::CreateCall(a2, v15, v14, v27, 1, v21, 0);
  v18 = a1[5];
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t MemoryIndirectionPass::synthesizeAndInsertPrimitiveDataHandle(uint64_t a1, llvm::IRBuilderBase *this, llvm::Type **a3, llvm::Value *a4, llvm::Type **a5)
{
  v10 = *(a1 + 72);
  v26 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(this, a3, v10, v25);
  v12 = *(a1 + 72);
  v26 = 257;
  v13 = llvm::IRBuilderBase::CreateBitOrPointerCast(this, a5, v12, v25);
  v24 = 257;
  Sub = llvm::IRBuilderBase::CreateSub(this, BitOrPointerCast, v13, v23, 0, 0);
  v22 = 257;
  llvm::IRBuilderBase::CreateAdd(this, a4, Sub, v21, 0, 0);
  NullValue = llvm::Constant::getNullValue(*(a1 + 72), v15);
  v26 = 257;
  llvm::IRBuilderBase::CreateICmp(this, 32, BitOrPointerCast, NullValue, v25);
  llvm::Constant::getNullValue(*(a1 + 72), v17);
  v26 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v19 = *a3;
  v26 = 257;
  llvm::IRBuilderBase::CreateBitOrPointerCast(this, Select, v19, v25);
  llvm::Value::replaceAllUsesWith();
  return llvm::User::setOperand(BitOrPointerCast, 0, a3);
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>>::emplace_back<llvm::Function *,MemoryIndirectionPass::fixIntersectCalls(llvm::Module *)::Handling>(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1, *a2, *a3);
    v5 = *a1;
    v7 = *(a1 + 8);
  }

  else
  {
    v5 = *a1;
    v6 = *a1 + 16 * v4;
    *v6 = *a2;
    *(v6 + 8) = *a3;
    v7 = v4 + 1;
    *(a1 + 8) = v7;
  }

  return v5 + 16 * v7 - 16;
}

void MemoryIndirectionPass::generatePrimitiveDataHandle(void *a1, llvm::Value *a2, llvm::Value *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53[1] = *MEMORY[0x277D85DE8];
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v50, this, 0, 0, 0);
  MemoryIndirectionPass::generateGetBVHDataPointerIntrinsic(a1, v50, a2, a5, a6);
  v11 = *(this + 4);
  if (v11)
  {
    v12 = v11 == *(this + 5) + 40;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v11 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint(v50, v13);
  LODWORD(v49[0]) = 4;
  v48 = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue(v50, this, v49, 1, v47);
  v15 = a1[23];
  v16 = *(v15 + 24);
  v48 = 257;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v50, v16, v15, 0, 0, v47);
  v18 = a1[8];
  Name = llvm::Value::getName(a1[23]);
  GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v18, Name, v20);
  v22 = a1[10];
  v49[0] = llvm::ConstantInt::get();
  v23 = a1[10];
  v49[1] = llvm::ConstantInt::get();
  v48 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP(v50, GVBaseType, AlignedLoad, v49, 2, v47);
  v25 = *(GEP + 72);
  v48 = 257;
  v26 = llvm::IRBuilderBase::CreateAlignedLoad(v50, v25, GEP, 259, 0, v47);
  v27 = a1[8];
  v49[0] = v26;
  llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v27 + 208, v49, v47);
  v28 = a1[5];
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v29 = a1[9];
  v48 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v50, 47, v26, v29, v47);
  v31 = a1[9];
  v48 = 257;
  BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(v50, Value, v31, v47);
  v48 = 257;
  Sub = llvm::IRBuilderBase::CreateSub(v50, BitOrPointerCast, Cast, v47, 0, 0);
  v34 = a1[9];
  v35 = llvm::ConstantInt::get();
  v48 = 257;
  v36 = llvm::IRBuilderBase::CreateAnd(v50, Sub, v35, v47);
  v37 = a1[9];
  v38 = llvm::ConstantInt::get();
  v48 = 257;
  llvm::IRBuilderBase::CreateAdd(v50, v38, v36, v47, 0, 0);
  NullValue = llvm::Constant::getNullValue(a1[9], v39);
  v48 = 257;
  llvm::IRBuilderBase::CreateICmp(v50, 32, BitOrPointerCast, NullValue, v47);
  llvm::Constant::getNullValue(a1[9], v41);
  v48 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *Value;
  v48 = 257;
  v44 = llvm::IRBuilderBase::CreateBitOrPointerCast(v50, Select, v43, v47);
  LODWORD(v49[0]) = 4;
  v48 = 257;
  InsertValue = llvm::IRBuilderBase::CreateInsertValue(v50, this, v44, v49, 1, v47);
  llvm::Value::replaceAllUsesWith();
  llvm::User::setOperand(Value, 0, this);
  llvm::User::setOperand(InsertValue, 0, this);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v53);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v52);
  if (v50[0] != &v51)
  {
    free(v50[0]);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_2579DD844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MemoryIndirectionPass::createValidateAccelerationStructureTypeCall(uint64_t a1, llvm::Instruction *a2)
{
  v21[5] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 72);
  llvm::PointerType::get();
  v5 = (a2 - 4 * (*(a2 + 5) & 0x7FFFFFF))[16];
  Module = llvm::Instruction::getModule(a2);
  Context = llvm::Value::getContext(a2);
  v19[0] = "mtl.validate_acceleration_structure_type";
  v20 = 259;
  VoidTy = llvm::Type::getVoidTy(Context, v8);
  v21[0] = *v5;
  v10 = getMangledFunction<llvm::Type *,llvm::Type *&>(Module, v19, VoidTy, v21, (a1 + 80));
  v11 = *(a1 + 80);
  MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
  v18 = llvm::ConstantInt::get();
  if (llvm::GlobalValue::isDeclaration(v10))
  {
    v12 = *(a1 + 40);
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v13 = *(a1 + 40);
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    *(v10 + 32) = *(v10 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    v19[0] = "entryBlock";
    v20 = 259;
    llvm::BasicBlock::Create(Context, v19, v10, 0, v14);
  }

  if (v10)
  {
    v15 = *(v10 + 24);
  }

  else
  {
    v15 = 0;
  }

  v21[0] = v5;
  v21[1] = v18;
  v20 = 257;
  result = llvm::CallInst::Create(v15, v10, v21, 2, 0, 0);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579DDE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MemoryIndirectionPass::createIndirectPtrToBase(MemoryIndirectionPass *this, MTLBoundsCheck **a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v3 = *(this + 6);
  v6 = "mtl.ind_ptr_to_base";
  v7 = 259;
  v4 = *(this + 12);
  v5 = llvm::PointerType::get();
  v8[0] = *a2;
  getMangledFunction<llvm::Type *>(v3, &v6, v5, v8);
}

void sub_2579DE218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t llvm::User::setOperand(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 20);
  if ((v3 & 0x40000000) != 0)
  {
    v4 = *(result - 8);
  }

  else
  {
    v4 = result - 32 * (v3 & 0x7FFFFFF);
  }

  v5 = v4 + 32 * a2;
  if (*v5)
  {
    v6 = *(v5 + 8);
    **(v5 + 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(v5 + 16);
    }
  }

  *v5 = a3;
  if (a3)
  {
    v9 = *(a3 + 8);
    v7 = (a3 + 8);
    v8 = v9;
    *(v5 + 8) = v9;
    if (v9)
    {
      *(v8 + 16) = v5 + 8;
    }

    *(v5 + 16) = v7;
    *v7 = v5;
  }

  return result;
}

uint64_t getMangledFunction<llvm::Type *,llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5)
{
  v32[2] = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v31, this);
  MTLBoundsCheck::getMangledTypeStr(a3, v9, &v30);
  v10 = std::string::insert(&v30, 0, ".");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v26 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v26 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (v26 >= 0)
  {
    v13 = HIBYTE(v26);
  }

  else
  {
    v13 = __p[1];
  }

  std::string::append(&v31, v12, v13);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v15 = 0;
  memset(&v30, 0, sizeof(v30));
  v16 = *a5;
  v32[0] = *a4;
  v32[1] = v16;
  do
  {
    v29 = v32[v15];
    MTLBoundsCheck::getMangledTypeStr(v29, v14, &v28);
    v17 = std::string::insert(&v28, 0, ".");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v26 = v17->__r_.__value_.__r.__words[2];
    *__p = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (v26 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if (v26 >= 0)
    {
      v20 = HIBYTE(v26);
    }

    else
    {
      v20 = __p[1];
    }

    std::string::append(&v31, v19, v20);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v30, &v29);
    ++v15;
  }

  while (v15 != 2);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v22 = llvm::FunctionType::get();
    v27 = 260;
    __p[0] = &v31;
    Function = llvm::Function::Create(v22, 0, __p, a1);
  }

  if (v30.__r_.__value_.__r.__words[0])
  {
    v30.__r_.__value_.__l.__size_ = v30.__r_.__value_.__r.__words[0];
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x277D85DE8];
  return Function;
}

void sub_2579DE4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateCondBr(unsigned int **a1, llvm::BasicBlock *a2, llvm::BranchInst *this, llvm::BasicBlock *a4, llvm::Instruction *a5, uint64_t a6)
{
  v9 = llvm::BranchInst::Create(this, a4, a2, 0, a5);
  v10 = llvm::IRBuilderBase::addBranchMetadata<llvm::BranchInst>(a1, v9, a5, a6);
  v13 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v10, v12);
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock * const&>(uint64_t a1, llvm::BasicBlock **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

uint64_t llvm::IRBuilderBase::addBranchMetadata<llvm::BranchInst>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    llvm::Instruction::setMetadata();
  }

  if (a4)
  {
    llvm::Instruction::setMetadata();
  }

  return a2;
}

uint64_t llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unsigned int a4, unsigned int a5, const llvm::Twine *a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  llvm::Type::getInt32Ty(this[8], a2);
  v14[0] = llvm::ConstantInt::get();
  llvm::Type::getInt32Ty(this[8], v10);
  v14[1] = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, v14, 2, 1);
  if (!result)
  {
    v12 = llvm::GetElementPtrInst::Create(a2, a3, v14, 2);
    llvm::GetElementPtrInst::setIsInBounds(v12);
    result = llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v12, a6);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getOrInsertFunction<llvm::StringRef &,llvm::PointerType *,llvm::Type *&>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  llvm::Module::getOrInsertFunction<llvm::Type *>(a1, *a2, a2[1], 0, *a3, *a4);
  result = v4;
  if (*(v4 + 16) == 5)
  {
    return *(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t llvm::Module::getOrInsertFunction<llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9 = a6;
  llvm::SmallVector<llvm::Type *,1u>::SmallVector(&v10, &v9, 1);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v10 != v11)
  {
    free(v10);
  }

  v7 = *MEMORY[0x277D85DE8];
  return inserted;
}

void MemoryIndirectionPass::createIndirectPtrToOffset(MemoryIndirectionPass *this, MTLBoundsCheck **a2)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v3 = *(this + 6);
  v5 = "mtl.ind_ptr_to_offset";
  v6 = 259;
  v4 = *(this + 9);
  v7[0] = *a2;
  getMangledFunction<llvm::Type *>(v3, &v5, v4, v7);
}

void sub_2579DEB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MemoryIndirectionPass::createIndirectPtrToLength(MemoryIndirectionPass *this, MTLBoundsCheck **a2)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v3 = *(this + 6);
  v5 = "mtl.ind_ptr_to_length";
  v6 = 259;
  v4 = *(this + 9);
  v7[0] = *a2;
  getMangledFunction<llvm::Type *>(v3, &v5, v4, v7);
}

void sub_2579DEEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

llvm::Instruction *llvm::IRBuilderBase::CreateShl(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    result = (*(**(this + 9) + 152))(*(this + 9), a2, a3, a5, a6);
    if (result)
    {
      v9 = *(result + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {

      return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, result, a4);
    }
  }

  else
  {

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 25, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t MemoryIndirectionPass::createCheckedFunction(MemoryIndirectionPass *a1, uint64_t a2, llvm::Value *this)
{
  v67[8] = *MEMORY[0x277D85DE8];
  if (!this)
  {
    goto LABEL_37;
  }

  Name = llvm::Value::getName(this);
  v55 = Name;
  v56 = v7;
  if (v7 >= 0x17)
  {
    if (*Name == 0x5F7465732E726961 && Name[1] == 0x746E656D67617266 && *(Name + 15) == 0x7265666675625F74)
    {
      goto LABEL_37;
    }

LABEL_13:
    if (*Name == 0x5F7465732E726961 && Name[1] == 0x625F6C656E72656BLL && *(Name + 13) == 0x7265666675625F6CLL)
    {
      goto LABEL_37;
    }

    v12 = *Name == 0x5F7465732E726961 && Name[1] == 0x625F786574726576;
    if (v12 && *(Name + 13) == 0x7265666675625F78)
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

  if (v7 >= 0x15)
  {
    goto LABEL_13;
  }

  if (v7 < 4)
  {
LABEL_37:
    Function = 0;
    goto LABEL_38;
  }

LABEL_27:
  if (*Name != 779250017)
  {
    if (v7 < 5)
    {
      goto LABEL_37;
    }

    if (*Name != 1836477548 || *(Name + 4) != 46)
    {
      goto LABEL_37;
    }
  }

  if ((*(a2 + 48) || (*(a2 + 23) & 0x20) != 0) && llvm::Instruction::getMetadataImpl())
  {
    goto LABEL_37;
  }

  v18 = *(this + 3);
  v52 = **(v18 + 16);
  v65 = v67;
  v66 = xmmword_257A6DAA0;
  llvm::raw_svector_ostream::raw_svector_ostream(v53, &v65);
  llvm::raw_ostream::operator<<(v53, "mtl.indirect.", 0xDuLL);
  llvm::raw_ostream::operator<<(v53, v55, v56);
  v62 = v64;
  v63 = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(&v62, (*(v18 + 12) - 1));
  if (v56 >= 0xB)
  {
    if (*v55 == 0x6D656D2E6D766C6CLL && *(v55 + 3) == 0x7970636D656D2E6DLL)
    {
      goto LABEL_71;
    }

    if (*v55 == 0x6D656D2E6D766C6CLL && *(v55 + 3) == 0x7465736D656D2E6DLL)
    {
      goto LABEL_71;
    }

    if (v56 != 11)
    {
      if (*v55 != 0x6D656D2E6D766C6CLL || *(v55 + 2) != 1702260589)
      {
        if (v56 >= 0x11)
        {
          v22 = *v55 == 0x6D6F74612E726961 && *(v55 + 1) == 0x61626F6C672E6369;
          if (v22 && v55[16] == 108)
          {
            v24 = llvm::StringRef::find();
            v25 = -4;
            if (v24 == -1)
            {
              v25 = -3;
            }

            v26 = v25 + v63;
            if (__CFADD__(v25, v63))
            {
              v27 = a2 + 32 * v26;
              do
              {
                v62[v26] = *(v27 - 32 * (*(a2 + 20) & 0x7FFFFFF));
                v28 = v62[v26];
                v29 = (v28 + 24);
                if (*(v28 + 32) >= 0x41u)
                {
                  v29 = *v29;
                }

                v30 = *v29;
                llvm::raw_ostream::operator<<(v53, ".", 1uLL);
                llvm::raw_ostream::operator<<();
                ++v26;
                v27 += 32;
              }

              while (v26 < v63);
            }
          }
        }

        goto LABEL_80;
      }

LABEL_71:
      if (v63 >= 4)
      {
        v31 = 3;
        if (v63 == 5)
        {
          v31 = 4;
        }

        v62[v31] = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * v31);
        v32 = v62[v31];
        v33 = (v32 + 24);
        if (*(v32 + 32) >= 0x41u)
        {
          v33 = *v33;
        }

        v34 = *v33;
        llvm::raw_ostream::operator<<(v53, ".", 1uLL);
        llvm::raw_ostream::operator<<();
        if (v63 == 5)
        {
          v35 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 96);
          v62[3] = v35;
          v36 = (v35 + 24);
          if (*(v35 + 32) >= 0x41u)
          {
            v36 = *v36;
          }

          v37 = *v36;
          llvm::raw_ostream::operator<<(v53, ".", 1uLL);
          llvm::raw_ostream::operator<<();
        }
      }
    }
  }

LABEL_80:
  v38 = *(a1 + 6);
  v39 = *v54;
  v40 = v54[1];
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v59 = v61;
    v60 = 0x200000000;
    MTLBoundsCheck::gatherMemoryArguments(this, &v59);
    if (v60)
    {
      v41 = 0;
      v42 = v59;
      v43 = 24 * v60;
      do
      {
        v41 += MemoryIndirectionPass::indirectAddressSpace(a1, **v42);
        v42 += 3;
        v43 -= 24;
      }

      while (v43);
      if (v41 && *(v52 + 8) != 15)
      {
        v45 = *v54;
        v44 = v54[1];
        v58 = 261;
        v57[0] = v45;
        v57[1] = v44;
        v46 = llvm::Function::Create(v18, 7, v57, *(a1 + 6));
        v47 = *(a1 + 5);
        llvm::MDTuple::getImpl();
        llvm::Value::setMetadata();
        llvm::Function::addFnAttr();
        llvm::Function::addFnAttr();
        if (v56 >= 0x18)
        {
          v49 = *v55 == 0x776172642E726961 && *(v55 + 1) == 0x64657865646E695FLL;
          if (v49 && *(v55 + 2) == 0x736568637461705FLL)
          {
            if (*(v46 + 18))
            {
              llvm::Function::BuildLazyArguments(v46);
            }

            v62[6] = *(v46 + 88) + 240;
          }
        }

        v51 = *(a1 + 5);
        v57[0] = "entry";
        v58 = 259;
        llvm::BasicBlock::Create(v51, v57, v46, 0, v48);
      }
    }

    Function = 0;
    if (v59 != v61)
    {
      free(v59);
    }
  }

  if (v62 != v64)
  {
    free(v62);
  }

  llvm::raw_ostream::~raw_ostream(v53);
  if (v65 != v67)
  {
    free(v65);
  }

LABEL_38:
  v16 = *MEMORY[0x277D85DE8];
  return Function;
}

void sub_2579DF7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  v58 = *(v56 - 232);
  if (v58 != v55)
  {
    free(v58);
  }

  llvm::raw_ostream::~raw_ostream(&a26);
  v59 = *(v56 - 184);
  if (v59 != v54)
  {
    free(v59);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::CallBase::arg_end(llvm::CallBase *this)
{
  v2 = *(this + 16);
  if (v2 == 84)
  {
    NumSubclassExtraOperandsDynamic = 0;
  }

  else if (v2 == 39)
  {
    NumSubclassExtraOperandsDynamic = llvm::CallBase::getNumSubclassExtraOperandsDynamic(this);
  }

  else
  {
    NumSubclassExtraOperandsDynamic = 2;
  }

  return this + -32 * llvm::CallBase::getNumTotalBundleOperands(this) + -32 * NumSubclassExtraOperandsDynamic - 32;
}

uint64_t MemoryIndirectionPass::createIndirectLoad(llvm::DataLayout **this, llvm::Value *a2, unsigned int a3, llvm::Type *a4, unsigned int a5)
{
  v21[5] = *MEMORY[0x277D85DE8];
  v18 = llvm::PointerType::get();
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    llvm::DataLayout::getPrefTypeAlignment(this[7], a4);
    v9 = 0;
  }

  v10 = this[6];
  v19[0] = "mtl.indirect_load.";
  v19[2] = v9;
  v20 = 2051;
  v21[0] = *a2;
  v11 = getMangledFunction<llvm::Type *,llvm::PointerType *&>(v10, v19, a4, v21, &v18);
  if (llvm::GlobalValue::isDeclaration(v11))
  {
    v12 = this[5];
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    *(v11 + 32) = *(v11 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    v13 = this[5];
    v20 = 257;
    llvm::BasicBlock::Create(v13, v19, v11, 0, v14);
  }

  if (v11)
  {
    v15 = *(v11 + 24);
  }

  else
  {
    v15 = 0;
  }

  v21[0] = a2;
  v21[1] = llvm::UndefValue::get();
  v20 = 257;
  result = llvm::CallInst::Create(v15, v11, v21, 2, 0, 0);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579DFC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MemoryIndirectionPass::createIndirectStore(llvm::DataLayout **this, llvm::Value *a2, unsigned int a3, llvm::Type **a4, unsigned int a5)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v9 = *a4;
  v23 = *a4;
  v22 = llvm::PointerType::get();
  if (a5)
  {
    PrefTypeAlignment = a5;
  }

  else
  {
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(this[7], v9);
  }

  v21 = PrefTypeAlignment;
  v24[0] = "mtl.indirect_store.";
  v24[2] = &v21;
  v25 = 3075;
  v12 = this[6];
  VoidTy = llvm::Type::getVoidTy(this[5], v10);
  v26[0] = *a2;
  v14 = getMangledFunction<llvm::Type *,llvm::Type *&,llvm::PointerType *&>(v12, v24, VoidTy, v26, &v23, &v22);
  if (llvm::GlobalValue::isDeclaration(v14))
  {
    v15 = this[5];
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    *(v14 + 32) = *(v14 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    v16 = this[5];
    v25 = 257;
    llvm::BasicBlock::Create(v16, v24, v14, 0, v17);
  }

  if (v14)
  {
    v18 = *(v14 + 24);
  }

  else
  {
    v18 = 0;
  }

  v26[0] = a2;
  v26[1] = a4;
  v26[2] = llvm::UndefValue::get();
  v25 = 257;
  result = llvm::CallInst::Create(v18, v14, v26, 3, 0, 0);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579DFF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t llvm::raw_svector_ostream::raw_svector_ostream(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = MEMORY[0x277D82200] + 16;
  *(a1 + 64) = a2;
  llvm::raw_ostream::SetUnbuffered(a1);
  return a1;
}

void llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    v3 = a2;
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = v3;
  }
}

unint64_t llvm::CallBase::getNumTotalBundleOperands(llvm::CallBase *this)
{
  result = llvm::CallBase::getNumOperandBundles(this);
  if (result)
  {
    v3 = *(llvm::User::getDescriptor(this) + 8);
    Descriptor = llvm::User::getDescriptor(this);
    return (*(Descriptor + v5 - 4) - v3);
  }

  return result;
}

unint64_t llvm::CallBase::getNumOperandBundles(llvm::CallBase *this)
{
  if ((*(this + 5) & 0x80000000) != 0)
  {
    Descriptor = llvm::User::getDescriptor(this);
    if ((*(this + 5) & 0x80000000) != 0)
    {
      v5 = llvm::User::getDescriptor(this);
      v3 = v5 + v6;
      return (v3 - Descriptor) >> 4;
    }
  }

  else
  {
    Descriptor = 0;
  }

  v3 = 0;
  return (v3 - Descriptor) >> 4;
}

void *llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *,void>(void *a1, char *a2, char *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(a1, a2, a3);
  return a1;
}

void sub_2579E018C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 5) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 32;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 5);
  return result;
}

uint64_t getMangledFunction<llvm::Type *,llvm::PointerType *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5)
{
  v32[2] = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v31, this);
  MTLBoundsCheck::getMangledTypeStr(a3, v9, &v30);
  v10 = std::string::insert(&v30, 0, ".");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v26 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v26 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (v26 >= 0)
  {
    v13 = HIBYTE(v26);
  }

  else
  {
    v13 = __p[1];
  }

  std::string::append(&v31, v12, v13);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v15 = 0;
  memset(&v30, 0, sizeof(v30));
  v16 = *a5;
  v32[0] = *a4;
  v32[1] = v16;
  do
  {
    v29 = v32[v15];
    MTLBoundsCheck::getMangledTypeStr(v29, v14, &v28);
    v17 = std::string::insert(&v28, 0, ".");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v26 = v17->__r_.__value_.__r.__words[2];
    *__p = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (v26 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if (v26 >= 0)
    {
      v20 = HIBYTE(v26);
    }

    else
    {
      v20 = __p[1];
    }

    std::string::append(&v31, v19, v20);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v30, &v29);
    ++v15;
  }

  while (v15 != 2);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v22 = llvm::FunctionType::get();
    v27 = 260;
    __p[0] = &v31;
    Function = llvm::Function::Create(v22, 0, __p, a1);
  }

  if (v30.__r_.__value_.__r.__words[0])
  {
    v30.__r_.__value_.__l.__size_ = v30.__r_.__value_.__r.__words[0];
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v23 = *MEMORY[0x277D85DE8];
  return Function;
}

void sub_2579E046C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getMangledFunction<llvm::Type *,llvm::Type *&,llvm::PointerType *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5, int64_t *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v32, this);
  MTLBoundsCheck::getMangledTypeStr(a3, v11, &v31);
  v12 = std::string::insert(&v31, 0, ".");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v34 = v12->__r_.__value_.__r.__words[2];
  v33 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v34 >= 0)
  {
    v14 = &v33;
  }

  else
  {
    v14 = v33;
  }

  if (v34 >= 0)
  {
    v15 = HIBYTE(v34);
  }

  else
  {
    v15 = *(&v33 + 1);
  }

  std::string::append(&v32, v14, v15);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v17 = 0;
  memset(&v31, 0, sizeof(v31));
  v18 = *a5;
  *&v33 = *a4;
  *(&v33 + 1) = v18;
  v34 = *a6;
  do
  {
    v30 = *(&v33 + v17);
    MTLBoundsCheck::getMangledTypeStr(v30, v16, &v27);
    v19 = std::string::insert(&v27, 0, ".");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v29 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v29 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v29 >= 0)
    {
      v22 = HIBYTE(v29);
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(&v32, v21, v22);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v31, &v30);
    v17 += 8;
  }

  while (v17 != 24);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v24 = llvm::FunctionType::get();
    v35 = 260;
    *&v33 = &v32;
    Function = llvm::Function::Create(v24, 0, &v33, a1);
  }

  if (v31.__r_.__value_.__r.__words[0])
  {
    v31.__r_.__value_.__l.__size_ = v31.__r_.__value_.__r.__words[0];
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v25 = *MEMORY[0x277D85DE8];
  return Function;
}

void sub_2579E075C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
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

void MTLICBIndirectionPass::~MTLICBIndirectionPass(MTLICBIndirectionPass *this)
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

uint64_t MTLICBIndirectionPass::runOnModule(MTLICBIndirectionPass *this, llvm::Module *a2)
{
  v64[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(&v62, *(a2 + 4), a2 + 24);
  v4 = v62;
  if (v63)
  {
    v5 = (v62 + 8 * v63);
    while (1)
    {
      if ((llvm::GlobalValue::isDeclaration(*v4) & 1) == 0)
      {
        goto LABEL_135;
      }

      Name = llvm::Value::getName(*v4);
      if (v7 < 4 || *Name != 779250017)
      {
        goto LABEL_135;
      }

      v8 = llvm::Value::getName(*v4);
      v10 = v8;
      v11 = v9;
      if (v9 >= 0x25)
      {
        break;
      }

      if (v9 == 36)
      {
        v12 = memcmp(v8, "air.set_vertex_buffer_render_command", 0x24uLL);
        v13 = MTLICBIndirectionPass::replaceSetBufferWithStride;
        if (!v12)
        {
          goto LABEL_126;
        }

        goto LABEL_24;
      }

      if (v9 >= 0x20)
      {
        goto LABEL_24;
      }

      if (v9 >= 0x1B)
      {
        v32 = *v8 == 0x5F7465672E726961 && v8[1] == 0x6D6F635F657A6973 && v8[2] == 0x6675625F646E616DLL && *(v8 + 19) == 0x7265666675625F64;
        v13 = MTLICBIndirectionPass::replaceICB;
        if (v32)
        {
LABEL_126:
          v54 = v13;
          llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v59, *(*v4 + 1), 0);
          v55 = v59;
          if (v60)
          {
            v56 = 8 * v60;
            do
            {
              if (*v55 && *(*v55 + 16) == 84)
              {
                v54(this);
              }

              v55 += 8;
              v56 -= 8;
            }

            while (v56);
            v55 = v59;
          }

          if (v55 != &v61)
          {
            free(v55);
          }

          goto LABEL_135;
        }
      }

      else if (v9 < 0x18)
      {
        if (v9 != 23)
        {
          goto LABEL_135;
        }

        v19 = v8[1];
        v20 = *(v8 + 15);
        v21 = *v8 == 0x79706F632E726961;
        v22 = 0x5F7265646E65725FLL;
        goto LABEL_76;
      }

LABEL_57:
      v34 = *v10 == 0x657365722E726961 && v10[1] == 0x7265646E65725F74 && v10[2] == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v34)
      {
        goto LABEL_126;
      }

      if (v11 >= 0x22)
      {
        v35 = memcmp(v10, "air.draw_primitives_render_command", 0x22uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v35)
        {
          goto LABEL_126;
        }
      }

      v36 = *v10 == 0x79706F632E726961 && v10[1] == 0x5F7265646E65725FLL;
      v37 = v36 && *(v10 + 15) == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v37)
      {
        goto LABEL_126;
      }

      if (v11 >= 0x26)
      {
        v40 = memcmp(v10, "air.set_pipeline_state_compute_command", 0x26uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v40)
        {
          goto LABEL_126;
        }
      }

      else if (v11 < 0x19)
      {
        v19 = v10[1];
        v20 = v10[2];
        v21 = *v10 == 0x79706F632E726961;
        v22 = 0x657475706D6F635FLL;
LABEL_76:
        v39 = v21 && v19 == v22 && v20 == 0x646E616D6D6F635FLL;
        v13 = MTLICBIndirectionPass::replaceICB;
        if (v39)
        {
          goto LABEL_126;
        }

        goto LABEL_135;
      }

      v43 = *v10 == 0x657365722E726961 && v10[1] == 0x7475706D6F635F74 && v10[2] == 0x6E616D6D6F635F65 && *(v10 + 24) == 100;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v43)
      {
        goto LABEL_126;
      }

      v44 = *v10 == 0x79706F632E726961 && v10[1] == 0x657475706D6F635FLL;
      v45 = v44 && v10[2] == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v45)
      {
        goto LABEL_126;
      }

      if (v11 >= 0x31)
      {
        v46 = memcmp(v10, "air.set_threadgroup_memory_length_compute_command", 0x31uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v46)
        {
          goto LABEL_126;
        }
      }

      else if (v11 < 0x1F)
      {
        goto LABEL_135;
      }

      v49 = *v10 == 0x5F7465732E726961 && v10[1] == 0x5F72656972726162 && v10[2] == 0x5F657475706D6F63 && *(v10 + 23) == 0x646E616D6D6F635FLL;
      v13 = MTLICBIndirectionPass::replaceICB;
      if (v49)
      {
        goto LABEL_126;
      }

      if (v11 >= 0x21)
      {
        v50 = memcmp(v10, "air.clear_barrier_compute_command", 0x21uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v50)
        {
          goto LABEL_126;
        }

        if (v11 >= 0x34)
        {
          v51 = memcmp(v10, "air.concurrent_dispatch_threadgroups_compute_command", 0x34uLL);
          v13 = MTLICBIndirectionPass::replaceICB;
          if (!v51)
          {
            goto LABEL_126;
          }
        }

        else if (v11 < 0x2F)
        {
          if (v11 < 0x27)
          {
            goto LABEL_135;
          }

          goto LABEL_125;
        }

        v52 = memcmp(v10, "air.concurrent_dispatch_threads_compute_command", 0x2FuLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v52)
        {
          goto LABEL_126;
        }

LABEL_125:
        v53 = memcmp(v10, "air.set_stage_in_region_compute_command", 0x27uLL);
        v13 = MTLICBIndirectionPass::replaceICB;
        if (!v53)
        {
          goto LABEL_126;
        }
      }

LABEL_135:
      if (++v4 == v5)
      {
        v4 = v62;
        goto LABEL_137;
      }
    }

    v14 = memcmp(v8, "air.set_kernel_buffer_compute_command", 0x25uLL);
    v13 = MTLICBIndirectionPass::replaceSetBufferWithStride;
    if (!v14)
    {
      goto LABEL_126;
    }

    v15 = memcmp(v10, "air.set_vertex_buffer_render_command", 0x24uLL);
    v13 = MTLICBIndirectionPass::replaceSetBufferWithStride;
    if (!v15)
    {
      goto LABEL_126;
    }

    if (v11 != 37)
    {
      v16 = memcmp(v10, "air.set_fragment_buffer_render_command", 0x26uLL);
      v13 = MTLICBIndirectionPass::replaceSetBuffer;
      if (!v16)
      {
        goto LABEL_126;
      }

      if (v11 >= 0x27)
      {
        v17 = memcmp(v10, "air.draw_indexed_patches_render_command", 0x27uLL);
        v13 = MTLICBIndirectionPass::replaceDrawIndexedPatches;
        if (!v17)
        {
          goto LABEL_126;
        }

        if (v11 >= 0x2A)
        {
          v18 = memcmp(v10, "air.draw_indexed_primitives_render_command", 0x2AuLL);
          v13 = MTLICBIndirectionPass::replaceICB;
          if (!v18)
          {
            goto LABEL_126;
          }
        }
      }
    }

LABEL_24:
    v25 = *v10 == 0x776172642E726961 && v10[1] == 0x736568637461705FLL && v10[2] == 0x5F7265646E65725FLL && v10[3] == 0x2E646E616D6D6F63;
    v13 = MTLICBIndirectionPass::replaceICB;
    if (v25)
    {
      goto LABEL_126;
    }

    v26 = *v10 == 0x5F7465672E726961 && v10[1] == 0x6D6F635F657A6973;
    v27 = v26 && v10[2] == 0x6675625F646E616DLL;
    v28 = v27 && *(v10 + 19) == 0x7265666675625F64;
    v13 = MTLICBIndirectionPass::replaceICB;
    if (v28)
    {
      goto LABEL_126;
    }

    if (v11 >= 0x25)
    {
      v29 = memcmp(v10, "air.set_pipeline_state_render_command", 0x25uLL);
      v13 = MTLICBIndirectionPass::replaceICB;
      if (!v29)
      {
        goto LABEL_126;
      }
    }

    goto LABEL_57;
  }

LABEL_137:
  if (v4 != v64)
  {
    free(v4);
  }

  v57 = *MEMORY[0x277D85DE8];
  return 0;
}

void MTLICBIndirectionPass::replaceSetBufferWithStride(uint64_t *a1, llvm::Instruction *this)
{
  Module = llvm::Instruction::getModule(this);
  Context = llvm::Value::getContext(this);
  v6 = *(this - 4);
  if (!v6 || *(v6 + 16) || *(v6 + 24) != *(this + 9))
  {
    v6 = 0;
  }

  v20[0] = llvm::Value::getName(v6);
  v20[1] = v7;
  v8 = &v21;
  llvm::StringRef::str(v20, &v21);
  std::string::replace(&v21, 0, 3uLL, "mtl");
  size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  v10 = v21.__r_.__value_.__r.__words[0];
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v21.__r_.__value_.__l.__size_;
    v8 = v21.__r_.__value_.__r.__words[0];
  }

  v11 = size - 4;
  if (size >= 4)
  {
    v13 = v8 + size;
    if (size >= 5)
    {
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v21;
      }

      v14 = v10->__r_.__value_.__r.__words + 4;
      do
      {
        v15 = memchr(v14, 46, v11);
        if (!v15)
        {
          break;
        }

        if (*v15 == 46)
        {
          goto LABEL_17;
        }

        v14 = v15 + 1;
        v11 = v13 - v14;
      }

      while (v13 - v14 > 0);
    }

    v15 = v13;
LABEL_17:
    if (v15 == v13)
    {
      v12 = -1;
    }

    else
    {
      v12 = v15 - v8;
    }
  }

  else
  {
    v12 = -1;
  }

  std::string::erase(&v21, v12, 0xFFFFFFFFFFFFFFFFLL);
  llvm::Instruction::getModule(this);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v20[0] = llvm::Type::getVoidTy(Context, v16);
    v18 = a1[12];
    v19 = llvm::PointerType::get();
    Function = getOrInsertFunction<std::string &,llvm::Type *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(Module, &v21, v20, &v19, a1 + 10, a1 + 9, a1 + 9, a1 + 10);
    llvm::Function::addFnAttr();
    llvm::GlobalValue::setLinkage(Function, 0);
    *(Function + 18) = *(Function + 18) & 0xC00F | *(v6 + 18) & 0x3FF0;
  }

  MTLICBIndirectionPass::replaceFunctionCall(a1, this, Function);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_2579E13B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLICBIndirectionPass::replaceSetBuffer(uint64_t *a1, llvm::Instruction *this)
{
  Module = llvm::Instruction::getModule(this);
  Context = llvm::Value::getContext(this);
  v6 = *(this - 4);
  if (!v6 || *(v6 + 16) || *(v6 + 24) != *(this + 9))
  {
    v6 = 0;
  }

  v20[0] = llvm::Value::getName(v6);
  v20[1] = v7;
  v8 = &v21;
  llvm::StringRef::str(v20, &v21);
  std::string::replace(&v21, 0, 3uLL, "mtl");
  size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  v10 = v21.__r_.__value_.__r.__words[0];
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v21.__r_.__value_.__l.__size_;
    v8 = v21.__r_.__value_.__r.__words[0];
  }

  v11 = size - 4;
  if (size >= 4)
  {
    v13 = v8 + size;
    if (size >= 5)
    {
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v21;
      }

      v14 = v10->__r_.__value_.__r.__words + 4;
      do
      {
        v15 = memchr(v14, 46, v11);
        if (!v15)
        {
          break;
        }

        if (*v15 == 46)
        {
          goto LABEL_17;
        }

        v14 = v15 + 1;
        v11 = v13 - v14;
      }

      while (v13 - v14 > 0);
    }

    v15 = v13;
LABEL_17:
    if (v15 == v13)
    {
      v12 = -1;
    }

    else
    {
      v12 = v15 - v8;
    }
  }

  else
  {
    v12 = -1;
  }

  std::string::erase(&v21, v12, 0xFFFFFFFFFFFFFFFFLL);
  llvm::Instruction::getModule(this);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v20[0] = llvm::Type::getVoidTy(Context, v16);
    v18 = a1[12];
    v19 = llvm::PointerType::get();
    Function = getOrInsertFunction<std::string &,llvm::Type *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(Module, &v21, v20, &v19, a1 + 10, a1 + 9, a1 + 10);
    llvm::Function::addFnAttr();
    llvm::GlobalValue::setLinkage(Function, 0);
    *(Function + 18) = *(Function + 18) & 0xC00F | *(v6 + 18) & 0x3FF0;
  }

  MTLICBIndirectionPass::replaceFunctionCall(a1, this, Function);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_2579E15D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLICBIndirectionPass::replaceDrawIndexedPatches(uint64_t a1, llvm::Instruction *this)
{
  v17[6] = *MEMORY[0x277D85DE8];
  Module = llvm::Instruction::getModule(this);
  v5 = *(this - 4);
  if (!v5 || *(v5 + 16) || (v6 = *(v5 + 24), v6 != *(this + 9)))
  {
    v5 = 0;
    v6 = MEMORY[0x18];
  }

  v16[0] = llvm::Value::getName(v5);
  v16[1] = v7;
  llvm::StringRef::str(v16, &v15);
  std::string::replace(&v15, 0, 3uLL, "mtl");
  llvm::Instruction::getModule(this);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    llvm::SmallVector<llvm::Type *,6u>::SmallVector<llvm::Type * const*,void>(v16, (*(v6 + 16) + 8), (*(v6 + 16) + 8 * *(v6 + 12)));
    v9 = *(a1 + 96);
    *v16[0] = llvm::PointerType::get();
    *(v16[0] + 6) = *(a1 + 72);
    v10 = **(v6 + 16);
    v11 = llvm::FunctionType::get();
    v14 = 260;
    v13 = &v15;
    Function = llvm::Function::Create(v11, 0, &v13, Module);
    *(Function + 112) = *(v5 + 112);
    *(Function + 18) = *(Function + 18) & 0xC00F | *(v5 + 18) & 0x3FF0;
    if (v16[0] != v17)
    {
      free(v16[0]);
    }
  }

  MTLICBIndirectionPass::replaceFunctionCall(a1, this, Function);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2579E17C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t *a21, uint64_t a22, uint64_t a23)
{
  if (a21 != &a23)
  {
    free(a21);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLICBIndirectionPass::replaceICB(int a1, llvm::Instruction *this)
{
  Module = llvm::Instruction::getModule(this);
  v5 = *(this - 4);
  if (!v5 || *(v5 + 16) || *(v5 + 24) != *(this + 9))
  {
    v5 = 0;
  }

  v9[0] = llvm::Value::getName(v5);
  v9[1] = v6;
  llvm::StringRef::str(v9, &v11);
  std::string::replace(&v11, 0, 3uLL, "mtl");
  llvm::Instruction::getModule(this);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v8 = *(v5 + 24);
    v10 = 260;
    v9[0] = &v11;
    Function = llvm::Function::Create(v8, 0, v9, Module);
    *(Function + 112) = *(v5 + 112);
    *(Function + 18) = *(Function + 18) & 0xC00F | *(v5 + 18) & 0x3FF0;
  }

  MTLICBIndirectionPass::replaceFunctionCall(a1, this, Function);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_2579E1944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getOrInsertFunction<std::string &,llvm::Type *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v8 = *(a2 + 23);
  v9 = *(a2 + 8);
  if (v8 < 0)
  {
    a2 = *a2;
  }

  if (v8 < 0)
  {
    v8 = v9;
  }

  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, a2, v8, 0, *a3, *a4, *a5, *a6, *a7, *a8);
  result = v10;
  if (*(v10 + 16) == 5)
  {
    return *(v10 - 32 * (*(v10 + 20) & 0x7FFFFFF));
  }

  return result;
}

void MTLICBIndirectionPass::replaceFunctionCall(int a1, llvm::CallBase *this, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 24);
  v16[0] = this - 32 * (*(this + 5) & 0x7FFFFFF);
  v16[1] = llvm::CallBase::arg_end(this);
  llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *>(&v18, v16);
  if (!v19)
  {
    goto LABEL_12;
  }

  v6 = 0;
  do
  {
    v7 = v18;
    v8 = *(v18 + v6);
    v9 = *(*(v5 + 16) + 8 * v6 + 8);
    if (*v8 != v9)
    {
      if (*(*v8 + 8) == 15 || *(v9 + 8) == 15)
      {
        v17 = 257;
        PointerCast = llvm::CastInst::CreatePointerCast();
        llvm::Instruction::insertBefore(PointerCast, this);
      }

      else
      {
        v11 = *(*(v5 + 16) + 8 * v6 + 8);
        PointerCast = llvm::UndefValue::get();
      }

      v7[v6] = PointerCast;
    }

    ++v6;
  }

  while (v19 > v6);
  if (a3)
  {
LABEL_12:
    v12 = *(a3 + 24);
  }

  else
  {
    v12 = 0;
  }

  v17 = 257;
  v13 = llvm::CallInst::Create(v12);
  llvm::ReplaceInstWithInst(this, v13, v14);
  if (v18 != v20)
  {
    free(v18);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2579E1B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16)
{
  if (a14 != &a16)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v13[0] = a6;
  v13[1] = a7;
  v13[2] = a8;
  v13[3] = a9;
  v13[4] = a10;
  llvm::SmallVector<llvm::Type *,5u>::SmallVector(&v14, v13, 5);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v14 != v15)
  {
    free(v14);
  }

  v11 = *MEMORY[0x277D85DE8];
  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,5u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x500000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_2579E1CF8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *>(void *a1, char **a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_2579E1D5C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::CallInst::Create(uint64_t a1)
{
  v2 = llvm::User::operator new(0x50);
  v3 = **(a1 + 16);
  llvm::Instruction::Instruction();
  *(v2 + 64) = 0;
  llvm::CallInst::init();
  return v2;
}

void sub_2579E1E24(_Unwind_Exception *a1)
{
  llvm::Instruction::~Instruction(v1);
  llvm::User::operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t getOrInsertFunction<std::string &,llvm::Type *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v7 = *(a2 + 23);
  v8 = *(a2 + 8);
  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (v7 < 0)
  {
    v7 = v8;
  }

  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, a2, v7, 0, *a3, *a4, *a5, *a6, *a7);
  result = v9;
  if (*(v9 + 16) == 5)
  {
    return *(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12[0] = a6;
  v12[1] = a7;
  v12[2] = a8;
  v12[3] = a9;
  llvm::SmallVector<llvm::Type *,4u>::SmallVector(&v13, v12, 4);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v13 != v14)
  {
    free(v13);
  }

  v10 = *MEMORY[0x277D85DE8];
  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,4u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_2579E201C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVector<llvm::Type *,6u>::SmallVector<llvm::Type * const*,void>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, a3);
  return a1;
}

void sub_2579E2078(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMetadata(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  return llvm::MDString::get();
}

uint64_t MTLMDBuilder::getMetadata(uint64_t *a1)
{
  llvm::TypeSize::operator unsigned long long();

  return MTLMDBuilder::getMetadata<unsigned long long>(a1);
}

void MTLBoundsCheck::SharedPassData::skipIndirectionDeep(MTLBoundsCheck::SharedPassData *this, llvm::Value *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v14 = a2;
  v19 = v21;
  v20 = 0x400000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v19, &v14);
  for (i = v20; v20; i = v20)
  {
    v4 = *(v19 + i - 1);
    LODWORD(v20) = i - 1;
    v13 = v4;
    v15 = 0;
    v16 = v4;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>(this + 26, &v16, &v15) & 1) == 0)
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v13, &v16);
      v5 = v13;
      v6 = *(v13 + 16);
      if (v13 && v6 >= 0x1C)
      {
        v16 = **(this + 29);
        v17 = &v19;
        v18 = 0;
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
        llvm::MDTuple::getImpl();
        llvm::Instruction::setMetadata();
        if (v17 != &v19)
        {
          free(v17);
        }

        v5 = v13;
        v6 = *(v13 + 16);
      }

      if (v6 < 0x1C)
      {
        if (v6 != 3)
        {
          if (v6 != 5)
          {
            continue;
          }

          v7 = *(v5 + 18);
          v8 = v7 > 0x31;
          v9 = (1 << v7) & 0x3800500000000;
          if (v8 || v9 == 0)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v11 = v6 - 60;
      if (v11 <= 0x11)
      {
        if (((1 << v11) & 0x38005) == 0)
        {
          if (v11 == 1)
          {
            v16 = *(v5 - 32);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v19, &v16);
          }

          continue;
        }

LABEL_19:
        llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v19, v19 + 8 * v20, *(v5 + 8), 0);
      }
    }
  }

  if (v19 != v21)
  {
    free(v19);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2579E2348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertGetImageIDFunction(MTLBoundsCheck::SharedPassData *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v11 = **(this + 29);
    v12 = &v14;
    v13 = 0;
    llvm::Type::getInt64Ty(v11, v3);
    v5 = llvm::FunctionType::get();
    v15[0] = "mtl.get_image_id";
    v16 = 259;
    v6 = llvm::Function::Create(v5, 7, v15, *(this + 29));
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v7 = **(this + 29);
    v16 = 257;
    llvm::BasicBlock::Create(v7, v15, v6, 0, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
  return Function;
}

void sub_2579E2788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  v27[5] = v27[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v27);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a27);
  if (a19 != v28)
  {
    free(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::GlobalValue::setVisibility(uint64_t this, char a2)
{
  v2 = this;
  v3 = *(this + 32) & 0xF;
  v4 = *(this + 32) & 0xFFFFFFCF | (16 * (a2 & 3));
  *(this + 32) = v4;
  if ((v3 - 7) < 2)
  {
    goto LABEL_5;
  }

  if (16 * (a2 & 3))
  {
    this = llvm::GlobalValue::hasExternalWeakLinkage(this);
    if ((this & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_5:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return this;
}

uint64_t MTLMDBuilder::getMDTuple<char const*,llvm::GlobalVariable *,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, const char *a3, llvm::LLVMContext *a4, llvm::LLVMContext *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::MDString::get(*a1, a2, a3);
  llvm::ValueAsMetadata::get();
  llvm::MDString::get(*a1, a4, v8);
  llvm::MDString::get(*a1, a5, v9);
  result = llvm::MDTuple::getImpl();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(MTLBoundsCheck::SharedPassData *this)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.draw_id_buffer", 18);
    llvm::PointerType::get();
    v4 = *(this + 29);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v8 = **(this + 29);
    v9 = v11;
    v10 = 0;
    v12[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v8, "air.buffer", "air.location_index", 33, 1, "air.read", "air.address_space", 2, "air.arg_type_name", "void", "air.arg_name", "debug.draw_id_buffer");
    v12[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v7 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v7, v12);
    if (v9 != v11)
    {
      free(v9);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_2579E2B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::getGVBaseType(uint64_t a1, void *a2, int64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3 > 20)
  {
    if (a3 > 22)
    {
      if (a3 != 26)
      {
        if (a3 != 23)
        {
          goto LABEL_40;
        }

        v9 = *a2 == 0x747865742E6C746DLL && a2[1] == 0x676173755F657275;
        if (!v9 || *(a2 + 15) != 0x656C6261745F6567)
        {
          goto LABEL_40;
        }

        goto LABEL_42;
      }

      v8 = "mtl.global_constants_table";
    }

    else
    {
      if (a3 == 21)
      {
        if (!memcmp(a2, "mtl.threadgroup_table", 0x15uLL))
        {
          v15 = *llvm::Type::getInt32Ty(**(a1 + 232), v14);
LABEL_41:
          result = llvm::StructType::get();
          v20 = *MEMORY[0x277D85DE8];
          return result;
        }

        goto LABEL_40;
      }

      v8 = "mtl.buffer_usage_table";
    }
  }

  else
  {
    if (a3 <= 17)
    {
      if (a3 != 16)
      {
        if (a3 == 17 && !memcmp(a2, "mtl.binding_table", 0x11uLL))
        {
          Int64Ty = llvm::Type::getInt64Ty(**(a1 + 232), v4);
          v6 = *MEMORY[0x277D85DE8];

          return llvm::ArrayType::get(Int64Ty, 0x1F);
        }

        goto LABEL_40;
      }

      if (!memcmp(a2, "mtl.check_buffer", 0x10uLL))
      {
        v12 = **(a1 + 232);
        if ((*(*(a1 + 72) + 21) & 0x20) != 0)
        {
          v13 = *MEMORY[0x277D85DE8];

          return llvm::Type::getInt32Ty(v12, v11);
        }

        goto LABEL_35;
      }

      goto LABEL_40;
    }

    if (a3 == 18)
    {
      if (!memcmp(a2, "mtl.draw_id_buffer", 0x12uLL))
      {
        v12 = **(a1 + 232);
LABEL_35:
        v16 = *MEMORY[0x277D85DE8];

        return llvm::Type::getInt64Ty(v12, v11);
      }

LABEL_40:
      v17 = **(a1 + 232);
      llvm::IntegerType::get();
      v18 = **(a1 + 232);
      llvm::IntegerType::get();
      v19 = *llvm::PointerType::get();
      goto LABEL_41;
    }

    if (a3 != 20)
    {
      goto LABEL_40;
    }

    v8 = "mtl.threadgroup_base";
  }

  if (memcmp(a2, v8, a3))
  {
    goto LABEL_40;
  }

LABEL_42:
  v21 = **(a1 + 232);
  v22 = *MEMORY[0x277D85DE8];

  return llvm::Type::getInt8Ty(v21, a2);
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.buffer_usage_table", 22);
    llvm::PointerType::get();
    v4 = *(this + 29);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v8 = **(this + 29);
    v9 = v11;
    v10 = 0;
    v12[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v8, "air.buffer", "air.location_index", 35, 1, "air.read", "air.address_space", 2, "air.arg_type_name", "void", "air.arg_name", "debug.buffer_usage_table");
    v12[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v7 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v7, v12);
    if (v9 != v11)
    {
      free(v9);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_2579E2FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, uint64_t a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, llvm::LLVMContext *a10, llvm::LLVMContext *a11, llvm::LLVMContext *a12)
{
  v25 = *MEMORY[0x277D85DE8];
  llvm::MDString::get(*a1, a2, a3);
  llvm::MDString::get(*a1, a3, v16);
  MTLMDBuilder::getMetadata<unsigned int>(a1);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a6, v17);
  llvm::MDString::get(*a1, a7, v18);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a9, v19);
  llvm::MDString::get(*a1, a10, v20);
  llvm::MDString::get(*a1, a11, v21);
  llvm::MDString::get(*a1, a12, v22);
  result = llvm::MDTuple::getImpl();
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.texture_usage_table", 23);
    llvm::PointerType::get();
    v4 = *(this + 29);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v8 = **(this + 29);
    v9 = v11;
    v10 = 0;
    v12[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v8, "air.buffer", "air.location_index", 36, 1, "air.read", "air.address_space", 2, "air.arg_type_name", "void", "air.arg_name", "debug.texture_usage_table");
    v12[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v7 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v7, v12);
    if (v9 != v11)
    {
      free(v9);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_2579E3358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    v4 = *(this + 29);
    v18 = *v4;
    v19 = v21;
    v20 = 0;
    DataLayout = llvm::Module::getDataLayout(v4);
    llvm::DataLayout::DataLayout(v24, DataLayout);
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.global_constants_table", 26);
    v7 = llvm::PointerType::get();
    if ((*(*(this + 9) + 23) & 0x40) != 0 && MTLBoundsCheck::isLibraryModule(*(this + 29), v6))
    {
      GlobalVariable = llvm::User::operator new(0x58);
      v8 = *(this + 29);
      llvm::UndefValue::get();
      v22[0] = "mtl.global_constants_table";
      v23 = 259;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setAlignment();
      llvm::GlobalValue::setVisibility(GlobalVariable, 1);
      v9 = *(this + 29);
      llvm::Module::getOrInsertNamedMetadata();
      MTLMDBuilder::getMDTuple<char const*,llvm::GlobalVariable *,char const*,char const*>(&v18, "air.externally_initialized", GlobalVariable, "device uint64_t *", "mtl.global_constants_table");
      llvm::NamedMDNode::addOperand();
    }

    else
    {
      v10 = *(this + 29);
      GlobalVariable = llvm::Module::getOrInsertGlobal();
      llvm::UndefValue::get();
      llvm::GlobalVariable::setInitializer();
      llvm::GlobalObject::setAlignment();
      *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
      TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(v24, v7);
      v13 = v12;
      PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(v24, v7);
      v22[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v18, "air.buffer", "air.location_index", 42, 1, "air.read", "air.address_space", 2, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v13 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.global_constants_table");
      v22[1] = llvm::MDString::get();
      llvm::MDTuple::getImpl();
      llvm::Value::setMetadata();
    }

    v17 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v17, v22);
    MEMORY[0x259C6A2B0](v24);
    if (v19 != v21)
    {
      free(v19);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_2579E36AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v28[5] = v28[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v28);
  MEMORY[0x259C6A2B0](&a28);
  if (a20 != v29)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, uint64_t a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, uint64_t a10, uint64_t a11, llvm::LLVMContext *a12, uint64_t a13, llvm::LLVMContext *a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17)
{
  v32 = *MEMORY[0x277D85DE8];
  llvm::MDString::get(*a1, a2, a3);
  llvm::MDString::get(*a1, a3, v21);
  MTLMDBuilder::getMetadata<unsigned int>(a1);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a6, v22);
  llvm::MDString::get(*a1, a7, v23);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a9, v24);
  llvm::TypeSize::operator unsigned long long();
  MTLMDBuilder::getMetadata<unsigned long long>(a1);
  llvm::MDString::get(*a1, a12, v25);
  MTLMDBuilder::getMetadata<unsigned long long>(a1);
  llvm::MDString::get(*a1, a14, v26);
  llvm::MDString::get(*a1, a15, v27);
  llvm::MDString::get(*a1, a16, v28);
  llvm::MDString::get(*a1, a17, v29);
  result = llvm::MDTuple::getImpl();
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(MTLBoundsCheck::SharedPassData *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    goto LABEL_10;
  }

  v4 = **(this + 29);
  v5 = llvm::IntegerType::get();
  DataLayout = llvm::Module::getDataLayout(*(this + 29));
  llvm::DataLayout::DataLayout(v24, DataLayout);
  v8 = *(this + 29);
  v19 = *v8;
  v20 = v22;
  v21 = 0;
  if ((*(*(this + 9) + 23) & 0x40) == 0)
  {
    goto LABEL_6;
  }

  if (!MTLBoundsCheck::isLibraryModule(v8, v7))
  {
    v12 = *(this + 29);
LABEL_6:
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    llvm::GlobalObject::setAlignment();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(v24, v5);
    v15 = v14;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(v24, v5);
    v22[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v19, "air.buffer", "air.location_index", 42, 1, "air.read", "air.address_space", 1, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v15 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "long", "air.arg_name", "debug.global_constants_table");
    v22[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    goto LABEL_7;
  }

  GlobalVariable = llvm::User::operator new(0x58);
  v9 = *(this + 29);
  llvm::Constant::getNullValue(v5, v10);
  v22[0] = "mtl.global_constants_handle";
  v23 = 259;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setAlignment();
  llvm::GlobalValue::setVisibility(GlobalVariable, 1);
  v11 = *(this + 29);
  llvm::Module::getOrInsertNamedMetadata();
  MTLMDBuilder::getMDTuple<char const*,llvm::GlobalVariable *,char const*,char const*>(&v19, "air.externally_initialized", GlobalVariable, "uint64_t", "mtl.global_constants_handle");
  llvm::NamedMDNode::addOperand();
LABEL_7:
  if (v20 != v22)
  {
    free(v20);
  }

  MEMORY[0x259C6A2B0](v24);
LABEL_10:
  v17 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_2579E3BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v26[5] = v26[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v26);
  if (a19 != v27)
  {
    free(a19);
  }

  MEMORY[0x259C6A2B0](&a26);
  _Unwind_Resume(a1);
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.device_indirection_table", 28);
    llvm::PointerType::get();
    v4 = *(this + 29);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v19 = **(this + 29);
    v20 = v22;
    v21 = 0;
    LODWORD(v8) = 1;
    v18 = MTLMDBuilder::getMDTuple<int,char const*,char const*,int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(&v19, 0, "air.buffer", "air.location_index", 0, 1, "air.read_write", "air.address_space", v8, "air.arg_type_name", "void", "air.arg_name", "debug.ptr");
    v17 = 0;
    v13 = **(this + 29);
    v14 = v16;
    v15 = 0;
    LODWORD(v23[0]) = 8;
    LODWORD(v12) = 0;
    MTLMDBuilder::emplace_back<unsigned int &,unsigned int,int,char const(&)[5],char const(&)[10],char const(&)[22],llvm::MDTuple *&>(&v13, &v17, v23, &v12, "void", "debug.ptr", "air.indirect_argument", &v18);
    v17 += 8;
    v12 = MTLMDBuilder::getMDTuple<int,char const*,char const*,int,int,char const*,char const*,char const*,char const*,char const*>(&v19, 1, "air.indirect_constant", "air.location_index", 1, 1, "air.read", "air.arg_type_name", "int", "air.arg_name", "debug.length");
    LODWORD(v23[0]) = v17 + 4;
    LODWORD(v11) = 0;
    MTLMDBuilder::emplace_back<unsigned int &,unsigned int,int,char const(&)[5],char const(&)[10],char const(&)[22],llvm::MDTuple *&>(&v13, &v17, v23, &v11, "int", "debug.length", "air.indirect_argument", &v12);
    v17 += 4;
    Impl = llvm::MDTuple::getImpl();
    LODWORD(v10) = 8;
    LODWORD(v9) = v17;
    v23[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,unsigned int,char const*,int,char const*,char const*,char const*,char const*>(&v19, "air.indirect_buffer", "air.location_index", 51, 1, "air.read", "air.address_space", 2, "air.struct_type_info", Impl, "air.arg_type_size", v9, "air.arg_type_align_size", v10, "air.arg_type_name", "int", "air.arg_name", "debug.device_indirection_table");
    v23[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v11 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v11, v23);
    if (v14 != v16)
    {
      free(v14);
    }

    if (v20 != v22)
    {
      free(v20);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_2579E3FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23 != v24)
  {
    free(a23);
  }

  v27 = *(v25 - 120);
  if (v27 != v23)
  {
    free(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMDTuple<int,char const*,char const*,int,int,char const*,char const*,int,char const*,char const*,char const*,char const*>(uint64_t *a1, uint64_t a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, uint64_t a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, uint64_t a9, llvm::LLVMContext *a10, llvm::LLVMContext *a11, llvm::LLVMContext *a12, llvm::LLVMContext *a13)
{
  v29 = *MEMORY[0x277D85DE8];
  v28 = *a1;
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a3, v18);
  llvm::MDString::get(*a1, a4, v19);
  MTLMDBuilder::getMetadata<int>(a1);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a7, v20);
  llvm::MDString::get(*a1, a8, v21);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a10, v22);
  llvm::MDString::get(*a1, a11, v23);
  llvm::MDString::get(*a1, a12, v24);
  llvm::MDString::get(*a1, a13, v25);
  result = llvm::MDTuple::getImpl();
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *MTLMDBuilder::emplace_back<unsigned int &,unsigned int,int,char const(&)[5],char const(&)[10],char const(&)[22],llvm::MDTuple *&>(uint64_t *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, llvm::LLVMContext *a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t *a8)
{
  v26 = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v25[0] = MTLMDBuilder::getMetadata<unsigned int>(a1);
  v16 = *a3;
  v25[1] = MTLMDBuilder::getMetadata<unsigned int>(a1);
  v17 = *a4;
  v25[2] = MTLMDBuilder::getMetadata<int>(a1);
  v25[3] = llvm::MDString::get(*a1, a5, v18);
  v25[4] = llvm::MDString::get(*a1, a6, v19);
  v21 = llvm::MDString::get(*a1, a7, v20);
  v22 = *a8;
  v25[5] = v21;
  v25[6] = v22;
  result = llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1 + 2, v25, &v26);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLMDBuilder::getMDTuple<int,char const*,char const*,int,int,char const*,char const*,char const*,char const*,char const*>(uint64_t *a1, uint64_t a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, uint64_t a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, llvm::LLVMContext *a9, llvm::LLVMContext *a10, llvm::LLVMContext *a11)
{
  v26 = *MEMORY[0x277D85DE8];
  v25 = *a1;
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a3, v16);
  llvm::MDString::get(*a1, a4, v17);
  MTLMDBuilder::getMetadata<int>(a1);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a7, v18);
  llvm::MDString::get(*a1, a8, v19);
  llvm::MDString::get(*a1, a9, v20);
  llvm::MDString::get(*a1, a10, v21);
  llvm::MDString::get(*a1, a11, v22);
  result = llvm::MDTuple::getImpl();
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,unsigned int,char const*,int,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, uint64_t a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, uint64_t a10, llvm::LLVMContext *a11, uint64_t a12, llvm::LLVMContext *a13, uint64_t a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17, llvm::LLVMContext *a18)
{
  v34 = *MEMORY[0x277D85DE8];
  llvm::MDString::get(*a1, a2, a3);
  llvm::MDString::get(*a1, a3, v22);
  MTLMDBuilder::getMetadata<unsigned int>(a1);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a6, v23);
  llvm::MDString::get(*a1, a7, v24);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a9, v25);
  llvm::MDString::get(*a1, a11, v26);
  MTLMDBuilder::getMetadata<unsigned int>(a1);
  llvm::MDString::get(*a1, a13, v27);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a15, v28);
  llvm::MDString::get(*a1, a16, v29);
  llvm::MDString::get(*a1, a17, v30);
  llvm::MDString::get(*a1, a18, v31);
  result = llvm::MDTuple::getImpl();
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(MTLBoundsCheck::SharedPassData *this)
{
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt64Ty(**(this + 29), v3);
    llvm::PointerType::get();
    v5 = *(this + 29);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v7 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v7, v8);
  }

  return GlobalVariable;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.binding_table", 17);
    llvm::PointerType::get();
    v4 = *(this + 29);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v6 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v6, v7);
  }

  return GlobalVariable;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(MTLBoundsCheck::SharedPassData *this)
{
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt32Ty(**(this + 29), v3);
    v5 = *(this + 29);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v7 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v7, v8);
  }

  return GlobalVariable;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(MTLBoundsCheck::SharedPassData *this)
{
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt8PtrTy(**(this + 29), 0);
    v4 = *(this + 29);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v6 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v6, v7);
  }

  return GlobalVariable;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertReportBufferGV(MTLBoundsCheck::SharedPassData *this)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt64Ty(**(this + 29), v3);
    v5 = llvm::PointerType::get();
    v6 = *(this + 29);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v7 = *(this + 29);
    v16 = *v7;
    v17 = v19;
    v18 = 0;
    DataLayout = llvm::Module::getDataLayout(v7);
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(DataLayout, v5);
    v11 = v10;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(DataLayout, v5);
    v20[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v16, "air.buffer", "air.location_index", 32, 1, "air.read_write", "air.address_space", 1, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v11 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.report_buffer");
    v20[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v15 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v15, v20);
    if (v17 != v19)
    {
      free(v17);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_2579E4B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20 != v20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertCheckBufferGV(MTLBoundsCheck::SharedPassData *this)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.check_buffer", 16);
    v4 = llvm::PointerType::get();
    v5 = *(this + 29);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v6 = *(this + 29);
    v16 = *v6;
    v17 = v19;
    v18 = 0;
    DataLayout = llvm::Module::getDataLayout(v6);
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(DataLayout, v4);
    v10 = v9;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(DataLayout, v4);
    LODWORD(v14) = 496;
    v20[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,unsigned int,char const*,char const*,char const*,char const*>(&v16, "air.buffer", "air.location_index", 31, 1, "air.read", "air.address_space", 1, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v10 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.buffer_size", v14, "air.arg_type_name", "int", "air.arg_name", "debug.data_buffer");
    v20[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v15 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v15, v20);
    if (v17 != v19)
    {
      free(v17);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_2579E4D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22 != v22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,unsigned int,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, uint64_t a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, uint64_t a10, uint64_t a11, llvm::LLVMContext *a12, uint64_t a13, llvm::LLVMContext *a14, uint64_t a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17, llvm::LLVMContext *a18, llvm::LLVMContext *a19)
{
  v35 = *MEMORY[0x277D85DE8];
  llvm::MDString::get(*a1, a2, a3);
  llvm::MDString::get(*a1, a3, v23);
  MTLMDBuilder::getMetadata<unsigned int>(a1);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a6, v24);
  llvm::MDString::get(*a1, a7, v25);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a9, v26);
  llvm::TypeSize::operator unsigned long long();
  MTLMDBuilder::getMetadata<unsigned long long>(a1);
  llvm::MDString::get(*a1, a12, v27);
  MTLMDBuilder::getMetadata<unsigned long long>(a1);
  llvm::MDString::get(*a1, a14, v28);
  MTLMDBuilder::getMetadata<unsigned int>(a1);
  llvm::MDString::get(*a1, a16, v29);
  llvm::MDString::get(*a1, a17, v30);
  llvm::MDString::get(*a1, a18, v31);
  llvm::MDString::get(*a1, a19, v32);
  result = llvm::MDTuple::getImpl();
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.threadgroup_table", 21);
    v5 = *(this + 29);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::PointerType::get();
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    DataLayout = llvm::Module::getDataLayout(*(this + 29));
    v14 = **(this + 29);
    v15 = v17;
    v16 = 0;
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(DataLayout, GVBaseType);
    v9 = v8;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(DataLayout, GVBaseType);
    v18[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v14, "air.buffer", "air.location_index", 34, 1, "air.read", "air.address_space", 2, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v9 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.threadgroup_table");
    v18[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v13 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v13, v18);
    if (v15 != v17)
    {
      free(v15);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_2579E51F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20 != v20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(MTLBoundsCheck::SharedPassData *this)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 29);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.threadgroup_base", 20);
    v5 = *(this + 29);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::PointerType::get();
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    DataLayout = llvm::Module::getDataLayout(*(this + 29));
    v14 = **(this + 29);
    v15 = v17;
    v16 = 0;
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(DataLayout, GVBaseType);
    v9 = v8;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(DataLayout, GVBaseType);
    v18[0] = MTLMDBuilder::getMDTuple<char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v14, "air.buffer", "air.location_index", 0, 1, "air.read_write", "air.address_space", 3, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v9 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.threadgroup_base");
    v18[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v13 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 208, &v13, v18);
    if (v15 != v17)
    {
      free(v15);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_2579E5454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20 != v20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMDTuple<char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(llvm::MDString **a1, llvm::LLVMContext *a2, char *a3, uint64_t a4, uint64_t a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7, uint64_t a8, llvm::LLVMContext *a9, uint64_t a10, uint64_t a11, llvm::LLVMContext *a12, uint64_t a13, llvm::LLVMContext *a14, llvm::LLVMContext *a15, llvm::LLVMContext *a16, llvm::LLVMContext *a17)
{
  v32 = *MEMORY[0x277D85DE8];
  llvm::MDString::get(*a1, a2, a3);
  llvm::MDString::get(*a1, a3, v21);
  MTLMDBuilder::getMetadata<int>(a1);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a6, v22);
  llvm::MDString::get(*a1, a7, v23);
  MTLMDBuilder::getMetadata<int>(a1);
  llvm::MDString::get(*a1, a9, v24);
  llvm::TypeSize::operator unsigned long long();
  MTLMDBuilder::getMetadata<unsigned long long>(a1);
  llvm::MDString::get(*a1, a12, v25);
  MTLMDBuilder::getMetadata<unsigned long long>(a1);
  llvm::MDString::get(*a1, a14, v26);
  llvm::MDString::get(*a1, a15, v27);
  llvm::MDString::get(*a1, a16, v28);
  llvm::MDString::get(*a1, a17, v29);
  result = llvm::MDTuple::getImpl();
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::runOnModule(MTLBoundsCheck::SharedPassData *this, llvm::Module *a2)
{
  *(this + 29) = a2;
  MTLBoundsCheck::SharedPassData::clear(this);
  v7 = "asan_data";
  v8 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, &v7);
  if (NamedMetadata)
  {
    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    MTLBoundsCheck::SerializedData::fromMetaData(*(this + 8), Operand);
  }

  MTLBoundsCheck::SharedPassData::earlyFragmentTests(this);
  return 1;
}

uint64_t MTLBoundsCheck::SharedPassData::clear(MTLBoundsCheck::SharedPassData *this)
{
  v2 = *(this + 8);
  llvm::SmallVectorImpl<std::string>::clear(v2);
  *(v2 + 120) = 0;
  *(v2 + 392) = 0;
  *(v2 + 600) = 0;
  *(v2 + 616) = 0;
  *(v2 + 632) = 0u;
  *(v2 + 648) = 0;
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(this + 60);
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 34);
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 39);
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 11);
  std::__hash_table<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,MTLBoundsCheckPass::KnownBufferData>>>::clear(this + 16);
  std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::clear(this + 168);

  return llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::clear(this + 208);
}

void MTLBoundsCheck::SharedPassData::earlyFragmentTests(MTLBoundsCheck::SharedPassData *this)
{
  v51 = *MEMORY[0x277D85DE8];
  if ((*(*(this + 9) + 20) & 2) == 0)
  {
    goto LABEL_99;
  }

  v2 = *(this + 5);
  if (!v2)
  {
    goto LABEL_99;
  }

  if (*v2)
  {
    goto LABEL_99;
  }

  MTLBoundsCheck::getMetalMetadata(*(this + 29), &v45);
  if (v45 != 1)
  {
    goto LABEL_99;
  }

  v43 = v46;
  v3 = *(v46 - 8 * *(v46 + 8) + 8);
  v4 = *(v3 + 8);
  if (!v4)
  {
    v7 = 0;
LABEL_23:
    v13 = *(this + 29);
    v14 = v13 + 24;
    v15 = *(v13 + 32);
    if (v15 == v13 + 24)
    {
LABEL_97:
      if ((v7 & 1) == 0)
      {
        v44 = **(this + 29);
        v39 = (v43 - 8 * *(v43 + 8));
        v40 = *(v39 + 2);
        v47 = *v39;
        v48 = v40;
        v49 = llvm::MDString::get();
        llvm::MDTuple::getImpl();
        v41 = *(this + 29);
        *&v47 = "air.fragment";
        v50 = 259;
        llvm::Module::getNamedMetadata(v41, &v47);
        llvm::NamedMDNode::setOperand();
      }

      goto LABEL_99;
    }

LABEL_24:
    v16 = v15 - 56;
    if (!v15)
    {
      v16 = 0;
    }

    v17 = v16 + 72;
    v18 = *(v16 + 80);
    if (v18 == v16 + 72)
    {
      v20 = 0;
    }

    else
    {
      do
      {
        v19 = v18 - 24;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = *(v19 + 48);
        if (v20 != v19 + 40)
        {
          break;
        }

        v18 = *(v18 + 8);
      }

      while (v18 != v17);
    }

    while (1)
    {
      if (v18 == v17)
      {
        v15 = *(v15 + 8);
        if (v15 == v14)
        {
          goto LABEL_97;
        }

        goto LABEL_24;
      }

      v21 = v20 ? v20 - 24 : 0;
      v22 = *(v21 + 16);
      if (v22 != 61)
      {
        break;
      }

      v26 = *(v21 - 32);
LABEL_45:
      v27 = *v26;
      if (v27)
      {
        v28 = *(v27 + 8);
        if ((v28 & 0xFE) == 0x12)
        {
          v28 = *(**(v27 + 16) + 8);
        }

        if ((v28 & 0xFFFFFF00) == 0x100)
        {
          goto LABEL_99;
        }
      }

LABEL_49:
      v20 = *(v20 + 8);
      v29 = v18 - 24;
      if (!v18)
      {
        v29 = 0;
      }

      while (v20 == v29 + 40)
      {
        v18 = *(v18 + 8);
        if (v18 == v17)
        {
          break;
        }

        v29 = v18 - 24;
        if (!v18)
        {
          v29 = 0;
        }

        v20 = *(v29 + 48);
      }
    }

    if (v22 != 84)
    {
      goto LABEL_49;
    }

    v23 = *(v21 - 32);
    if (!v23 || *(v23 + 16) || *(v23 + 24) != *(v21 + 72))
    {
      goto LABEL_49;
    }

    *&v47 = llvm::Value::getName(v23);
    *(&v47 + 1) = v24;
    if (llvm::compat::getNumArgOperands(v21))
    {
      v25 = *(**(v21 - 32 * (*(v21 + 20) & 0x7FFFFFF)) + 8) != 15;
    }

    else
    {
      v25 = 1;
    }

    v30 = *(&v47 + 1);
    if (*(&v47 + 1) >= 0xAuLL)
    {
      if (*v47 != 0x6D6F74612E726961 || *(v47 + 8) != 25449)
      {
LABEL_64:
        if (*v47 == 0x726F74732E726961 && *(v47 + 8) == 101)
        {
          v38 = (v21 - 32 * (*(v21 + 20) & 0x7FFFFFF) + 32);
LABEL_95:
          v26 = *v38;
          goto LABEL_45;
        }

        if (v30 < 0xB || (*v47 == 0x6D656D2E6D766C6CLL ? (v33 = *(v47 + 3) == 0x7970636D656D2E6DLL) : (v33 = 0), !v33 && (*v47 == 0x6D656D2E6D766C6CLL ? (v34 = *(v47 + 3) == 0x7465736D656D2E6DLL) : (v34 = 0), !v34)))
        {
          if (*v47 == 0x746972772E726961 && *(v47 + 8) == 101)
          {
            goto LABEL_99;
          }

          if (v30 >= 0x14)
          {
            v36 = *v47 == 0x637369642E726961 && *(v47 + 8) == 0x676172665F647261;
            if (v36 && *(v47 + 16) == 1953391981)
            {
              goto LABEL_99;
            }
          }

          goto LABEL_49;
        }

LABEL_94:
        v38 = (v21 - 32 * (*(v21 + 20) & 0x7FFFFFF));
        goto LABEL_95;
      }

      if (llvm::StringRef::find() == -1 && !v25)
      {
        goto LABEL_94;
      }

      v30 = *(&v47 + 1);
    }

    if (v30 < 9)
    {
      goto LABEL_49;
    }

    goto LABEL_64;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = -8 * v4;
  do
  {
    String = llvm::MDString::getString(*(*(v3 + v8) - 8 * *(*(v3 + v8) + 8)));
    switch(v10)
    {
      case 15:
        v7 |= memcmp(String, "air.sample_mask", 0xFuLL) == 0;
        break;
      case 11:
        v6 |= memcmp(String, "air.stencil", 0xBuLL) == 0;
        break;
      case 9:
        v12 = *String == 0x747065642E726961 && String[8] == 104;
        v5 |= v12;
        break;
    }

    v8 += 8;
  }

  while (v8);
  if (((v5 | v6) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_99:
  v42 = *MEMORY[0x277D85DE8];
}

void sub_2579E5C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::indexForString(uint64_t a1, const void *a2, size_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  Key = llvm::StringMapImpl::FindKey();
  if (Key != -1 && Key != *(a1 + 248))
  {
    return *(*(*(a1 + 240) + 8 * Key) + 8);
  }

  v8 = *(*(a1 + 64) + 8);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int &>((a1 + 240), a2, a3, &v8);
  llvm::SmallVectorImpl<std::string>::emplace_back<llvm::StringRef>(*(a1 + 64), v9);
  return v8;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int &>(llvm::StringMapImpl *a1, const void *a2, size_t a3, _DWORD *a4)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  v11 = MEMORY[0x259C6A8D0](a3 + 17, 8);
  v12 = v11;
  v13 = v11 + 16;
  if (a3)
  {
    memcpy((v11 + 16), a2, a3);
  }

  *(v13 + a3) = 0;
  *v12 = a3;
  *(v12 + 8) = *a4;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t MTLBoundsCheck::SharedPassData::indexForDISubProgram(uint64_t a1, unsigned __int8 *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v3 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::find<llvm::Value *>((a1 + 312), &v24);
  if (!v3)
  {
    v4 = *&v24[-8 * *(v24 + 2) + 16];
    if (v4)
    {
      String = llvm::MDString::getString(v4);
      v7 = v6;
    }

    else
    {
      String = 0;
      v7 = 0;
    }

    v23[1] = MTLBoundsCheck::SharedPassData::indexForString(a1, String, v7);
    v8 = v24;
    if (*v24 == 15 || (v8 = *&v24[-8 * *(v24 + 2)]) != 0)
    {
      v9 = *&v8[-8 * *(v8 + 2)];
      if (v9)
      {
        v9 = llvm::MDString::getString(v9);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = &unk_257A6F51A;
    }

    v27[4] = 261;
    v25 = v9;
    *&v26 = v10;
    if (llvm::sys::path::is_absolute())
    {
      v11 = v24;
      if (*v24 == 15 || (v11 = *&v24[-8 * *(v24 + 2)]) != 0)
      {
        v12 = *&v11[-8 * *(v11 + 2)];
        if (v12)
        {
          v13 = llvm::MDString::getString(v12);
          v15 = v14;
        }

        else
        {
          v15 = 0;
          v13 = 0;
        }
      }

      else
      {
        v15 = 0;
        v13 = &unk_257A6F51A;
      }

      v23[0] = MTLBoundsCheck::SharedPassData::indexForString(a1, v13, v15);
    }

    else
    {
      v25 = v27;
      v26 = xmmword_257A6DAC0;
      v16 = v24;
      v17 = *v24;
      v18 = v24;
      if (v17 == 15 || (v18 = *&v24[-8 * *(v24 + 2)]) != 0)
      {
        v19 = *&v18[-8 * *(v18 + 2) + 8];
        if (v19)
        {
          llvm::MDString::getString(v19);
          v16 = v24;
          v17 = *v24;
        }

        if (v17 == 15)
        {
          goto LABEL_26;
        }
      }

      v16 = *&v16[-8 * *(v16 + 2)];
      if (v16)
      {
LABEL_26:
        v20 = *&v16[-8 * *(v16 + 2)];
        if (v20)
        {
          llvm::MDString::getString(v20);
        }
      }

      llvm::sys::path::append();
      v23[0] = MTLBoundsCheck::SharedPassData::indexForString(a1, v25, v26);
      if (v25 != v27)
      {
        free(v25);
      }
    }

    v23[2] = *(v24 + 6);
    v25 = *(*(a1 + 64) + 392);
    v3 = std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::__emplace_unique_key_args<llvm::DISubprogram *,llvm::DISubprogram *&,unsigned long>((a1 + 312), &v24);
    llvm::SmallVectorImpl<MTLBoundsCheck::DebugSubProgram>::emplace_back<MTLBoundsCheck::DebugSubProgram&>(*(a1 + 64) + 384, v23);
  }

  result = *(v3 + 6);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579E6140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a33 != v33)
  {
    free(a33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::indexForDILocation(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v3 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::find<llvm::Value *>((a1 + 272), &v13);
  if (!v3)
  {
    Subprogram = llvm::DILocalScope::getSubprogram(*(v13 - 8 * *(v13 + 8)));
    v5 = MTLBoundsCheck::SharedPassData::indexForDISubProgram(a1, Subprogram);
    v6 = *(v13 + 8);
    v10 = __PAIR64__(*(v13 + 4), v5);
    v11 = *(v13 + 2);
    if (v6 == 2 && *(v13 - 8))
    {
      v7 = MTLBoundsCheck::SharedPassData::indexForDILocation(a1);
    }

    else
    {
      v7 = -1;
    }

    v12 = v7;
    v9 = *(*(a1 + 64) + 120);
    v3 = std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::__emplace_unique_key_args<llvm::DILocation *,llvm::DILocation *&,unsigned long>((a1 + 272), &v13);
    llvm::SmallVectorImpl<MTLBoundsCheck::DebugLocation>::emplace_back<MTLBoundsCheck::DebugLocation&>(*(a1 + 64) + 112, &v10);
  }

  return *(v3 + 6);
}

llvm::MDString *MTLBoundsCheck::SharedPassData::getNameOfParentFunction(MTLBoundsCheck::SharedPassData *this, llvm::Instruction *a2)
{
  v2 = *(a2 + 5);
  if (!v2)
  {
    return &unk_257A6F51A;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return &unk_257A6F51A;
  }

  Subprogram = llvm::Function::getSubprogram(*(v2 + 56));
  if (!Subprogram)
  {
    return llvm::Value::getName(v3);
  }

  result = *(Subprogram - 8 * *(Subprogram + 8) + 16);
  if (result)
  {
    return llvm::MDString::getString(result);
  }

  return result;
}

uint64_t MTLBoundsCheck::SharedPassData::indexForInstruction(MTLBoundsCheck::SharedPassData *this, llvm::Instruction *a2)
{
  if ((*(*(this + 8) + 650) & 1) == 0 && (*(a2 + 6) || (*(a2 + 23) & 0x20) != 0) && (v4 = llvm::Instruction::getMetadataImpl()) != 0)
  {

    return MTLBoundsCheck::SharedPassData::indexForDILocation(this, v4);
  }

  else if ((*(a2 + 6) || (*(a2 + 23) & 0x20) != 0) && llvm::Instruction::getMetadataImpl() && (MetadataImpl = llvm::Instruction::getMetadataImpl(), (v7 = *(MetadataImpl - 8 * *(MetadataImpl + 8))) != 0))
  {
    v8 = *(v7 + 128);
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    return *v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void MTLBoundsCheck::SharedPassData::expandConstantExprUsers(MTLBoundsCheck::SharedPassData *this, llvm::GlobalVariable *a2)
{
  v54[4] = *MEMORY[0x277D85DE8];
  llvm::Constant::removeDeadConstantUsers(a2);
  v41 = v45;
  v42 = v45;
  v43 = 8;
  v44 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  llvm::SmallVector<llvm::User *,16u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v49, *(a2 + 1), 0);
  while (v50)
  {
    v3 = *(v49 + --v50);
    v4 = v3[16];
    if (v3)
    {
      v5 = v4 >= 0x1C;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      llvm::SmallPtrSetImpl<llvm::Instruction *>::insert(&v41, v3, &v52);
    }

    else
    {
      if (v4 == 5)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }

      v48 = v6;
      if (v6)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v39, &v48, &v52);
        llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v49, *(v48 + 1), 0);
      }
    }
  }

  if (v42 == v41)
  {
    v7 = (&v43 + 4);
  }

  else
  {
    v7 = &v43;
  }

  v8 = *v7;
  if (v8)
  {
    v9 = 8 * v8;
    v10 = v42;
    while (*v10 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v10;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_67;
      }
    }
  }

  else
  {
    v10 = v42;
  }

  v11 = &v42[v8];
  while (v10 != v11)
  {
    v46 = *v10;
    llvm::SmallVector<llvm::Instruction *,4u>::SmallVector(&v52, 1uLL, &v46);
    v12 = v53;
    do
    {
      v13 = v52[--v12];
      v53 = v12;
      v14 = *(v13 + 20) & 0x7FFFFFF;
      if (v14)
      {
        v15 = 0;
        v16 = 8 * v14;
        v17 = 8;
        do
        {
          v18 = *(v13 + 20);
          if ((v18 & 0x40000000) != 0)
          {
            v19 = *(v13 - 8);
          }

          else
          {
            v19 = v13 - 32 * (v18 & 0x7FFFFFF);
          }

          v20 = *(v19 + v17 - 8);
          if (v20)
          {
            v21 = *(v20 + 16) == 5;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            v47 = 0;
            v48 = v20;
            if (llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>(v39, &v48, &v47))
            {
              v22 = v13;
              if (*(v13 + 16) == 83)
              {
                v23 = *(v13 + 20);
                if ((v23 & 0x40000000) != 0)
                {
                  v24 = *(v13 - 8);
                }

                else
                {
                  v24 = v13 - 32 * (v23 & 0x7FFFFFF);
                }

                v25 = *(v24 + 32 * *(v13 + 60) + v15);
                v26 = *(v25 + 40);
                if (v26 == v25 + 40)
                {
                  v22 = 0;
                }

                else
                {
                  v27 = (v26 - 24);
                  if (v26)
                  {
                    v28 = v26 - 24;
                  }

                  else
                  {
                    v28 = 0;
                  }

                  if (*(v28 + 16) - 29 >= 0xB)
                  {
                    v22 = 0;
                  }

                  else
                  {
                    v22 = v27;
                  }
                }
              }

              AsInstruction = llvm::ConstantExpr::getAsInstruction(v20, 0);
              llvm::Instruction::insertBefore(AsInstruction, v22);
              v30 = *(v13 + 20);
              if ((v30 & 0x40000000) != 0)
              {
                v31 = *(v13 - 8);
              }

              else
              {
                v31 = v13 - 32 * (v30 & 0x7FFFFFF);
              }

              v32 = (v31 + v17);
              v33 = (v31 + v17 - 8);
              if (*v33)
              {
                v34 = *v32;
                *v32[1] = *v32;
                if (v34)
                {
                  *(v34 + 16) = v32[1];
                }
              }

              *v33 = AsInstruction;
              if (AsInstruction)
              {
                v35 = AsInstruction + 1;
                v36 = AsInstruction[1];
                v37 = (v31 + v17);
                *v37 = v36;
                if (v36)
                {
                  *(v36 + 16) = v37;
                }

                v37[1] = v35;
                *v35 = v33;
              }

              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v52, AsInstruction);
              if (!*(v20 + 8))
              {
                llvm::Constant::destroyConstant(v20);
              }
            }
          }

          v15 += 8;
          v17 += 32;
        }

        while (v16 != v15);
        v12 = v53;
      }
    }

    while (v12);
    if (v52 != v54)
    {
      free(v52);
    }

    do
    {
      ++v10;
    }

    while (v10 != v11 && *v10 >= 0xFFFFFFFFFFFFFFFELL);
  }

LABEL_67:
  if (v49 != &v51)
  {
    free(v49);
  }

  llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ConstantExpr *,void>,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::~DenseMap(v39);
  if (v42 != v41)
  {
    free(v42);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void sub_2579E6738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  llvm::DenseMap<llvm::ConstantExpr *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::ConstantExpr *,void>,llvm::detail::DenseSetPair<llvm::ConstantExpr *>>::~DenseMap(&a9);
  if (a13 != a12)
  {
    free(a13);
  }

  _Unwind_Resume(a1);
}

void *llvm::SmallPtrSetImpl<llvm::Instruction *>::insert@<X0>(llvm::SmallPtrSetImplBase *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(a1, a2);
  v7 = *(a1 + 1);
  v8 = 16;
  if (v7 == *a1)
  {
    v8 = 20;
  }

  v9 = (v7 + 8 * *(a1 + v8));
  if (v9 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v9)
      {
        result = v9;
        break;
      }
    }
  }

  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v6;
  return result;
}

unsigned int *llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(unsigned int *result)
{
  if (result[3])
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *v1;
        result = *(*v1 + v3);
        if (result != -8 && result != 0)
        {
          result = llvm::deallocate_buffer(result, (*result + 17));
        }

        *(v5 + v3) = 0;
        v3 += 8;
      }

      while (v4 != v3);
    }

    v1[3] = 0;
    v1[4] = 0;
  }

  return result;
}

uint64_t MakeMDResolver<unsigned int>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_2868EC3D8;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

uint64_t MakeMDResolver<BOOL>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_2868EC420;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

uint64_t MakeMDResolver<llvm::Value *>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_2868EC468;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

llvm::MDString *getStaticBoundsInfo@<X0>(llvm::MDString *result@<X0>, uint64_t a2@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = a2 + 8;
  *(a2 + 12) = 0;
  v4 = a2 + 12;
  *(a2 + 16) = 0;
  *(a2 + 20) = 256;
  v5 = a2 + 20;
  *(a2 + 22) = 0;
  v6 = a2 + 22;
  v7 = *(result + 2);
  if (v7)
  {
    v8 = result;
    for (i = 0; i < v7; ++i)
    {
      result = *(v8 + i - v7);
      if (!*result)
      {
        v26[0] = llvm::MDString::getString(result);
        v26[1] = v10;
        memset(v27, 0, sizeof(v27));
        v28 = 0;
        v25[0] = &off_2868EC4B0;
        v25[1] = v4;
        v25[3] = v25;
        v11 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v26, "location_index", 14, v25);
        v24[0] = &unk_2868EC420;
        v24[1] = v5;
        v24[3] = v24;
        v12 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v11, "is_safe", 7, v24);
        v23[0] = &unk_2868EC3D8;
        v23[1] = v3;
        v23[3] = v23;
        v13 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v12, "deref", 5, v23);
        v22[0] = &unk_2868EC468;
        v22[1] = a2;
        v22[3] = v22;
        v14 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v13, "base_pointer", 12, v22);
        v21[0] = &unk_2868EC420;
        v21[1] = a2 + 21;
        v21[3] = v21;
        v15 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v14, "allowGEPFold", 12, v21);
        v20[0] = &unk_2868EC420;
        v20[1] = v6;
        v20[3] = v20;
        v16 = llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(v15, "isArgumentBuffer", 16, v20);
        v19[0] = &unk_2868EC4F8;
        v19[3] = v19;
        if (*(v16 + 48))
        {
          v17 = (v16 + 16);
        }

        else
        {
          v17 = v19;
        }

        std::__function::__value_func<void ()(llvm::Metadata *)>::__value_func[abi:ne200100](v29, v17);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v19);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v20);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v21);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v22);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v23);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v24);
        std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v25);
        if (v28 == 1)
        {
          std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v27);
        }

        std::function<void ()(llvm::Metadata *)>::operator()(v29, *(v8 + ++i - *(v8 + 2)));
        result = std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v29);
        v7 = *(v8 + 2);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579E6BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](&a30);
  std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](&a34);
  if (*(v35 - 136) == 1)
  {
    std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v34 + 16);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::StringSwitch<std::function<void ()(llvm::Metadata *)>,std::function<void ()(llvm::Metadata *)>>::Case(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = *(a1 + 8);
    if (v6 == a3 && (!v6 || !memcmp(*a1, a2, v6)))
    {
      llvm::optional_detail::OptionalStorage<std::function<void ()(llvm::Metadata *)>,false>::operator=(a1 + 16, a4);
    }
  }

  return a1;
}

uint64_t std::function<void ()(llvm::Metadata *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

BOOL isSpecialStructType(llvm::StructType *a1)
{
  if (!*(a1 + 3))
  {
    return 0;
  }

  Name = llvm::StructType::getName(a1);
  v3 = Name;
  v4 = v2;
  if (v2 >= 0x10)
  {
    if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F65727574786574)
    {
      return 1;
    }

    if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F72656C706D6173)
    {
      return 1;
    }
  }

  else if (v2 < 0xE)
  {
    return 0;
  }

  if (*Name != 0x5F2E746375727473 || *(Name + 6) != 0x5F68747065645F2ELL)
  {
    if (v2 >= 0x18)
    {
      if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F646E616D6D6F63 && *(Name + 16) == 0x745F726566667562)
      {
        return 1;
      }

      if (v2 >= 0x1F)
      {
        if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x705F7265646E6572 && *(Name + 16) == 0x5F656E696C657069 && *(Name + 23) == 0x745F65746174735FLL)
        {
          return 1;
        }

        if (v2 == 31)
        {
          if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x6C6F707265746E69 && *(Name + 13) == 0x745F746E616C6F70)
          {
            return 1;
          }

          v18 = *Name == 0x5F2E746375727473 && *(Name + 8) == 0x6365737265746E69;
          v19 = v18 && *(Name + 16) == 0x6575715F6E6F6974;
          if (v19 && *(Name + 24) == 1952414066)
          {
            return 1;
          }

          goto LABEL_113;
        }

        if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F657475706D6F63 && *(Name + 16) == 0x656E696C65706970 && *(Name + 24) == 0x745F65746174735FLL)
        {
          return 1;
        }

        v28 = *Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F656C6269736976;
        v29 = v28 && *(Name + 16) == 0x6E6F6974636E7566;
        if (v29 && *(Name + 24) == 0x745F656C6261745FLL)
        {
          return 1;
        }
      }
    }

    else if (v2 < 0x15)
    {
      if (v2 < 0xF)
      {
        return 0;
      }

      goto LABEL_123;
    }

    if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x6C6F707265746E69 && *(Name + 13) == 0x745F746E616C6F70)
    {
      return 1;
    }

    if (v2 >= 0x25)
    {
      if (!memcmp(Name, "struct._intersection_function_table_t", 0x25uLL))
      {
        return 1;
      }
    }

    else if (v2 < 0x1C)
    {
LABEL_123:
      v34 = *v3 == 0x4D2E746375727473 && *(v3 + 7) == 0x48564257534C544DLL;
      return v34 || v4 >= 0x21 && !memcmp(v3, "struct._MTLAxisAlignedBoundingBox", 0x21uLL);
    }

    if (*v3 == 0x5F2E746375727473 && v3[1] == 0x6365737265746E69 && v3[2] == 0x6575715F6E6F6974 && *(v3 + 6) == 1952414066)
    {
      return 1;
    }

    if (v4 >= 0x2A)
    {
      if (!memcmp(v3, "struct._primitive_acceleration_structure_t", 0x2AuLL))
      {
        return 1;
      }
    }

    else if (v4 != 41)
    {
      if (v4 < 0x1D)
      {
        return *v3 == 0x4D2E746375727473 && *(v3 + 7) == 0x48564257534C544DLL;
      }

      goto LABEL_113;
    }

    if (!memcmp(v3, "struct._instance_acceleration_structure_t", 0x29uLL))
    {
      return 1;
    }

LABEL_113:
    if (*v3 == 0x5F2E746375727473 && v3[1] == 0x6365737265746E69 && v3[2] == 0x7365725F6E6F6974 && *(v3 + 21) == 0x745F746C75736572)
    {
      return 1;
    }

    goto LABEL_123;
  }

  return 1;
}

uint64_t getPointerOperand(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (a1 && v1 == 5)
  {
    v2 = *(a1 + 18);
    if (v2 == 49 || v2 == 34)
    {
      v3 = *(a1 + 20);
      goto LABEL_6;
    }

    return 0;
  }

  v5 = 0;
  if (a1 && v1 >= 0x1C)
  {
    if (v1 == 77 || v1 == 62)
    {
      v3 = *(a1 + 20);
      if ((v3 & 0x40000000) != 0)
      {
        v4 = *(a1 - 8);
        return *v4;
      }

LABEL_6:
      v4 = a1 - 32 * (v3 & 0x7FFFFFF);
      return *v4;
    }

    return 0;
  }

  return v5;
}

void MTLRAUWUtility::replaceAllUsesWith(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72[4] = *MEMORY[0x277D85DE8];
  v65 = *(a2 + 8);
  v66 = 0;
  llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v70, &v65);
  v5 = v71;
  if (v71)
  {
    v58 = a3;
    do
    {
      v6 = v70[v5 - 1];
      v71 = v5 - 1;
      v7 = v6[16];
      if (v7 <= 0x1B)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6;
      }

      v61 = v8;
      if (v8)
      {
        MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(&v65, &v61);
        if (*(v61 + 16) == 83 && v61 != 0)
        {
          v10 = *(v61 + 5);
          v11 = v10 & 0x7FFFFFF;
          if ((v10 & 0x7FFFFFF) != 0)
          {
            v12 = 0;
            while (1)
            {
              v13 = v61 - 32 * v11;
              if ((v10 & 0x40000000) != 0)
              {
                v13 = *(v61 - 1);
              }

              if (*&v13[32 * v12] == a2)
              {
                break;
              }

              if (++v12 == v11)
              {
                goto LABEL_94;
              }
            }

            v19 = *&v13[32 * *(v61 + 15) + 8 * v12];
            v20 = *(v19 + 40);
            if (v20 == v19 + 40)
            {
              v23 = 0;
            }

            else
            {
              v21 = (v20 - 24);
              if (v20)
              {
                v22 = v20 - 24;
              }

              else
              {
                v22 = 0;
              }

              if (*(v22 + 16) - 29 >= 0xB)
              {
                v23 = 0;
              }

              else
              {
                v23 = v21;
              }
            }

            llvm::IRBuilderBase::SetInsertPoint(&v65, v23);
          }
        }

LABEL_94:
        v56 = *(a3 + 24);
        if (!v56)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v56 + 48))(v56, &v65);
        llvm::User::replaceUsesOfWith();
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v69);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v68);
        if (v65 != v67)
        {
          free(v65);
        }
      }

      else
      {
        if (v7 == 5)
        {
          v14 = v6;
        }

        else
        {
          v14 = 0;
        }

        v60 = v14;
        if (v14)
        {
          v65 = v67;
          v66 = 0x400000000;
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v65, &v60);
          v15 = v66;
          if (v66)
          {
            v16 = 0;
            do
            {
              v17 = *(*(v65 + v16) + 8);
              if (v17)
              {
                do
                {
                  v18 = *(v17 + 24);
                  if (v18[16] != 5)
                  {
                    v18 = 0;
                  }

                  v62 = v18;
                  if (v18)
                  {
                    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v65, &v62);
                  }

                  v17 = *(v17 + 8);
                }

                while (v17);
                v15 = v66;
              }

              ++v16;
            }

            while (v15 > v16);
          }

          else
          {
            v15 = 0;
          }

          v24 = v65;
          v25 = v65 + 8 * v15;
          while (v25 != v24)
          {
            v27 = *(v25 - 1);
            v25 -= 8;
            v26 = v27;
            v59[0] = *(v27 + 1);
            v59[1] = 0;
            llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v62, v59);
            v28 = v62;
            if (v63)
            {
              v29 = v62 + 8 * v63;
              do
              {
                v30 = *v28;
                AsInstruction = llvm::ConstantExpr::getAsInstruction(v26, 0);
                v59[0] = AsInstruction;
                v32 = *(v30 + 16);
                if (v32 != 83 || v30 == 0)
                {
                  if (v32 < 0x1C || v30 == 0)
                  {
                    llvm::Value::dump(v26);
                    llvm::Value::dump(v30);
                  }

                  else
                  {
                    llvm::Instruction::insertBefore(AsInstruction, v30);
                  }
                }

                else
                {
                  v35 = *(v30 + 20);
                  v36 = v35 & 0x7FFFFFF;
                  if ((v35 & 0x7FFFFFF) != 0)
                  {
                    v37 = 0;
                    v38 = 0;
                    v39 = 32 * v36;
                    v40 = v30 - 32 * v36;
                    while (1)
                    {
                      v41 = v40;
                      if ((v35 & 0x40000000) != 0)
                      {
                        v41 = *(v30 - 8);
                      }

                      if (*(v41 + v38) == v26)
                      {
                        break;
                      }

                      v38 += 32;
                      v37 += 8;
                      if (v39 == v38)
                      {
                        goto LABEL_82;
                      }
                    }

                    v42 = *(v41 + 32 * *(v30 + 60) + v37);
                    v43 = *(v42 + 40);
                    if (v43 == v42 + 40)
                    {
                      v46 = 0;
                    }

                    else
                    {
                      v44 = (v43 - 24);
                      if (v43)
                      {
                        v45 = v43 - 24;
                      }

                      else
                      {
                        v45 = 0;
                      }

                      if (*(v45 + 16) - 29 >= 0xB)
                      {
                        v46 = 0;
                      }

                      else
                      {
                        v46 = v44;
                      }
                    }

                    llvm::Instruction::insertBefore(AsInstruction, v46);
                    v47 = *(v30 + 20);
                    if ((v47 & 0x40000000) != 0)
                    {
                      v48 = *(v30 - 8);
                    }

                    else
                    {
                      v48 = v30 - 32 * (v47 & 0x7FFFFFF);
                    }

                    v49 = v59[0];
                    v50 = v48 + v38;
                    if (*(v48 + v38))
                    {
                      v51 = *(v50 + 8);
                      **(v50 + 16) = v51;
                      if (v51)
                      {
                        *(v51 + 16) = *(v50 + 16);
                      }
                    }

                    *v50 = v49;
                    if (v49)
                    {
                      v54 = *(v49 + 8);
                      v52 = (v49 + 8);
                      v53 = v54;
                      v55 = v48 + v38;
                      *(v55 + 8) = v54;
                      if (v54)
                      {
                        *(v53 + 16) = v55 + 8;
                      }

                      *(v55 + 16) = v52;
                      *v52 = v50;
                    }
                  }
                }

LABEL_82:
                llvm::User::replaceUsesOfWith();
                if (v26 == v60)
                {
                  llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v70, v59);
                }

                v28 += 8;
              }

              while (v28 != v29);
              v28 = v62;
            }

            if (v28 != &v64)
            {
              free(v28);
            }

            llvm::User::dropAllReferences(v26);
          }

          if (v65 != v67)
          {
            free(v65);
          }

          a3 = v58;
        }

        else
        {
          llvm::Value::dump(v6);
        }
      }

      v5 = v71;
    }

    while (v71);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  v57 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::User::dropAllReferences(uint64_t this)
{
  v1 = *(this + 20);
  if ((v1 & 0x40000000) != 0)
  {
    v3 = *(this - 8);
    v2 = v1 & 0x7FFFFFF;
    if (!v2)
    {
      return this;
    }
  }

  else
  {
    v2 = v1 & 0x7FFFFFF;
    v3 = this - 32 * v2;
    if (!v2)
    {
      return this;
    }
  }

  v4 = 32 * v2;
  v5 = (v3 + 16);
  do
  {
    if (*(v5 - 2))
    {
      v6 = *(v5 - 1);
      **v5 = v6;
      if (v6)
      {
        *(v6 + 16) = *v5;
      }
    }

    *(v5 - 2) = 0;
    v5 += 4;
    v4 -= 32;
  }

  while (v4);
  return this;
}

void MTLBoundsCheck::SharedPassData::~SharedPassData(MTLBoundsCheck::SharedPassData *this)
{
  *this = &unk_2868EC338;
  v2 = this + 88;
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 312);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 272);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(this + 240);
  llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::~DenseMap(this + 208);
  std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::~__hash_table(this + 168);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 128);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(v2);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EC338;
  v2 = this + 88;
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 312);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 272);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(this + 240);
  llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::~DenseMap(this + 208);
  std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::~__hash_table(this + 168);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(this + 128);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(v2);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

llvm::DataLayout *llvm::DataLayout::DataLayout(llvm::DataLayout *this, const llvm::DataLayout *a2)
{
  *(this + 40) = xmmword_257A6DAD0;
  *(this + 9) = 0x1000000000;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 4) = this + 56;
  *(this + 8) = this + 80;
  *(this + 26) = 0;
  *(this + 216) = 0u;
  *(this + 29) = this + 248;
  *(this + 30) = 0x800000000;
  *(this + 47) = 0;
  *(this + 48) = this + 400;
  *(this + 49) = 0x800000000;
  llvm::DataLayout::operator=(this, a2);
  return this;
}

void sub_2579E7938(_Unwind_Exception *exception_object)
{
  v7 = v2;
  v9 = *(v1 + 384);
  if (v9 != v7)
  {
    free(v9);
  }

  v10 = *(v1 + 232);
  if (v10 != v6)
  {
    free(v10);
  }

  if (*(v1 + 231) < 0)
  {
    operator delete(*v5);
  }

  v11 = *(v1 + 64);
  if (v11 != v4)
  {
    free(v11);
  }

  v12 = *(v1 + 32);
  if (v12 != v3)
  {
    free(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::DataLayout::operator=(uint64_t a1, uint64_t a2)
{
  llvm::DataLayout::clear(a1);
  std::string::operator=((a1 + 208), (a2 + 208));
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 24) = *(a2 + 24);
  llvm::SmallVectorImpl<unsigned char>::operator=(a1 + 32, a2 + 32);
  llvm::SmallVectorImpl<llvm::LayoutAlignElem>::operator=(a1 + 64, a2 + 64);
  llvm::SmallVectorImpl<llvm::PointerAlignElem>::operator=(a1 + 232, a2 + 232);
  llvm::SmallVectorImpl<unsigned int>::operator=(a1 + 384, a2 + 384);
  return a1;
}

uint64_t llvm::SmallVectorImpl<unsigned char>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, v4);
      }
    }

    else
    {
      if (*(a1 + 16) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, *(a1 + 8));
      }

      v6 = *(a2 + 8);
      if (v6 != v5)
      {
        memcpy((*a1 + v5), (*a2 + v5), v6 - v5);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::LayoutAlignElem>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4 - 2);
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
        memmove(*a1, *a2, 8 * v5 - 2);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::PointerAlignElem>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 16 * v4);
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
        memmove(*a1, *a2, 16 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 16 * v5), (*a2 + 16 * v5), 16 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 4 * v4);
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
        memmove(*a1, *a2, 4 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 4 * v5), (*a2 + 4 * v5), 4 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 == v5)
    {
      v6 = *(a2 + 8);
      v7 = *(a1 + 8);
      if (v7 >= v6)
      {
        if (v6)
        {
          memmove(*a1, v4, 4 * v6);
        }
      }

      else
      {
        if (*(a1 + 12) < v6)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v7)
        {
          memmove(*a1, v4, 4 * v7);
        }

        else
        {
          v7 = 0;
        }

        v8 = *(a2 + 8) - v7;
        if (v8)
        {
          memcpy((*a1 + 4 * v7), (*a2 + 4 * v7), 4 * v8);
        }
      }

      *(a1 + 8) = v6;
      *(a2 + 8) = 0;
    }

    else
    {
      llvm::SmallVectorImpl<llvm::CallInst *>::assignRemote(a1, a2);
    }
  }

  return a1;
}

void *llvm::SmallVector<llvm::Instruction *,4u>::SmallVector(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(a1, a2, *a3);
  return a1;
}

void sub_2579E7DA0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void llvm::SmallVectorImpl<std::string>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 24 * v2 - 1;
    v4 = -24 * v2;
    v5 = v3;
    do
    {
      v6 = *v5;
      v5 -= 24;
      if (v6 < 0)
      {
        operator delete(*(v3 - 23));
      }

      v3 = v5;
      v4 += 24;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

uint64_t llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,std::unordered_set<llvm::Value *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t MTLMDBuilder::getMetadata<int>(uint64_t *a1)
{
  v1 = *a1;
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

void *std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::__emplace_unique_key_args<llvm::DISubprogram *,llvm::DISubprogram *&,unsigned long>(void *a1, void *a2)
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

void *std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::__emplace_unique_key_args<llvm::DILocation *,llvm::DILocation *&,unsigned long>(void *a1, void *a2)
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

void *llvm::SmallVector<llvm::User *,16u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x1000000000;
  llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, a2, a3);
  return a1;
}

void sub_2579E84D4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::SmallPtrSetImplBase::insert_imp(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  v2 = *this;
  if (*(this + 1) != *this)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v5 = *(this + 5);
  if (!v5)
  {
LABEL_12:
    if (v5 < *(this + 4))
    {
      *(this + 5) = v5 + 1;
      *(v2 + 8 * v5) = a2;
      return (*this + 8 * v5);
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v6 = 0;
  v7 = 8 * v5;
  v3 = *this;
  while (*v3 != a2)
  {
    if (*v3 == -2)
    {
      v6 = v3;
    }

    ++v3;
    v7 -= 8;
    if (!v7)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      *v6 = a2;
      --*(this + 6);
      return v6;
    }
  }

  return v3;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868EC3D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0>,void ()(llvm::Metadata *)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 128);
  v3 = (v2 + 24);
  if (*(v2 + 32) >= 0x41u)
  {
    v3 = *v3;
  }

  **(result + 8) = *v3;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868EC420;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<BOOL>(BOOL &)::$_0>,void ()(llvm::Metadata *)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 128);
  v3 = (v2 + 24);
  if (*(v2 + 32) >= 0x41u)
  {
    v3 = *v3;
  }

  **(result + 8) = *v3 != 0;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<llvm::Value *>(llvm::Value * &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<llvm::Value *>(llvm::Value * &)::$_0>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868EC468;
  a2[1] = v2;
  return result;
}

uint64_t llvm::optional_detail::OptionalStorage<std::function<void ()(llvm::Metadata *)>,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    std::__function::__value_func<void ()(llvm::Metadata *)>::operator=[abi:ne200100](a1, a2);
  }

  else
  {
    std::__function::__value_func<void ()(llvm::Metadata *)>::__value_func[abi:ne200100](a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata *)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(llvm::Metadata *)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata *)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t std::__function::__value_func<void ()(llvm::Metadata *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(llvm::Optional<unsigned int> &)::{lambda(llvm::Metadata *)#1},std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(llvm::Optional<unsigned int> &)::{lambda(llvm::Metadata *)#1}>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_2868EC4B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(llvm::Optional<unsigned int> &)::{lambda(llvm::Metadata *)#1},std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(llvm::Optional<unsigned int> &)::{lambda(llvm::Metadata *)#1}>,void ()(llvm::Metadata *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v8 = 0;
  v9[0] = &unk_2868EC3D8;
  v9[1] = &v8;
  v9[3] = v9;
  std::function<void ()(llvm::Metadata *)>::operator()(v9, v3);
  v4 = *(a1 + 8);
  v5 = v8;
  if ((*(v4 + 4) & 1) == 0)
  {
    *(v4 + 4) = 1;
  }

  *v4 = v5;
  result = std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](v9);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579E8B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(llvm::Metadata *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t MTLDebugSymbolCollectionPass::runOnModule(MTLDebugSymbolCollectionPass *this, llvm::Module *a2)
{
  v2 = *(a2 + 4);
  v19 = (a2 + 24);
  if (v2 == (a2 + 24))
  {
    return 0;
  }

  v4 = 0;
  v5 = *a2;
  do
  {
    v6 = v2 - 56;
    if (!v2)
    {
      v6 = 0;
    }

    v20 = v2;
    if ((v6[33] & 0x20) == 0)
    {
      v7 = *(v6 + 10);
      for (i = v6 + 72; v7 != i; v7 = *(v7 + 8))
      {
        v8 = v7 - 24;
        if (!v7)
        {
          v8 = 0;
        }

        v9 = v8 + 40;
        for (j = *(v8 + 48); j != v9; j = *(j + 8))
        {
          if (j)
          {
            v11 = j - 24;
          }

          else
          {
            v11 = 0;
          }

          v12 = *(v11 + 16) - 60;
          v13 = v12 > 0x18;
          v14 = (1 << v12) & 0x1000003;
          v15 = v13 || v14 == 0;
          if (!v15 && (*(v11 + 48) || (*(v11 + 23) & 0x20) != 0))
          {
            MetadataImpl = llvm::Instruction::getMetadataImpl();
            if (MetadataImpl)
            {
              MTLBoundsCheck::SharedPassData::indexForDILocation(*(this + 8), MetadataImpl);
              v17 = *(this + 10);
              llvm::ConstantInt::get();
              llvm::ValueAsMetadata::get();
              v4 = 1;
              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
            }
          }
        }
      }
    }

    v2 = *(v20 + 1);
  }

  while (v2 != v19);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  MTLBoundsCheck::SerializedData::toMetaData(*(*(this + 8) + 64), v5);
  llvm::Module::getOrInsertNamedMetadata();
  llvm::NamedMDNode::addOperand();
  return 1;
}

void MTLDebugSymbolCollectionPass::~MTLDebugSymbolCollectionPass(MTLDebugSymbolCollectionPass *this)
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

void MTLFoldExpansionPass::~MTLFoldExpansionPass(MTLFoldExpansionPass *this)
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

uint64_t MTLFoldExpansionPass::runOnModule(MTLFoldExpansionPass *this, llvm::Module *a2)
{
  v25[16] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  v23 = v25;
  v24 = 0x1000000000;
  v4 = *(a2 + 4);
  if (v4 == (a2 + 24))
  {
    v19 = *(this + 184);
  }

  else
  {
    do
    {
      v5 = v4 - 7;
      if (!v4)
      {
        v5 = 0;
      }

      v6 = v5 + 9;
      for (i = v5[10]; i != v6; i = i[1])
      {
        v8 = i - 3;
        if (!i)
        {
          v8 = 0;
        }

        v9 = v8 + 5;
        for (j = v8[6]; j != v9; j = j[1])
        {
          if (j)
          {
            v11 = (j - 3);
          }

          else
          {
            v11 = 0;
          }

          if (*(v11 + 16) == 84)
          {
            v12 = *(v11 - 32);
            if (v12)
            {
              if (!*(v12 + 16) && *(v12 + 24) == *(v11 + 72))
              {
                Name = llvm::Value::getName(v12);
                if (v14 >= 0xB && *Name == 0x662E73646E756F62 && *(Name + 3) == 0x646C6F662E73646ELL)
                {
                  *(this + 184) = 1;
                  MTLFoldExpansionPass::createGEPFromFold(this, v11);
                  llvm::Value::replaceAllUsesWith();
                  v22 = v11;
                  llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v23, &v22);
                }
              }
            }
          }

          if (*(v11 + 48) || (*(v11 + 23) & 0x20) != 0)
          {
            if (llvm::Instruction::getMetadataImpl())
            {
              llvm::Instruction::setMetadata();
            }
          }
        }
      }

      v4 = v4[1];
    }

    while (v4 != (a2 + 24));
    v16 = v23;
    if (v24)
    {
      v17 = 8 * v24;
      do
      {
        v18 = *v16;
        llvm::User::dropAllReferences(*v16);
        llvm::Instruction::eraseFromParent(v18);
        ++v16;
        v17 -= 8;
      }

      while (v17);
      v16 = v23;
    }

    v19 = *(this + 184);
    if (v16 != v25)
    {
      free(v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void sub_2579E9328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13 != a10)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLFoldExpansionPass::createGEPFromFold(MetalModulePass *a1, llvm::Value *a2)
{
  v60[7] = *MEMORY[0x277D85DE8];
  v52 = a2;
  MTLIRBuilder::MTLIRBuilder<llvm::CallInst *&>(v57, &v52);
  v3 = (v52 - 32 * (*(v52 + 5) & 0x7FFFFFF));
  v4 = *v3;
  v5 = v3[12];
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  v7 = v3[4];
  v8 = *v4;
  v9 = **(*v4 + 16);
  TypeForStride = MetalModulePass::getTypeForStride(a1, *v6);
  if (TypeForStride)
  {
    v11 = TypeForStride;
  }

  else
  {
    v11 = v9;
  }

  if (v11 != v8)
  {
    if ((*(v8 + 8) & 0xFE) == 0x12)
    {
      v12 = *(**(v8 + 16) + 8);
    }

    v11 = llvm::PointerType::get();
  }

  v56 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v57, 49, v4, v11, &v53);
  v14 = **(*Cast + 16);
  v56 = 257;
  v15 = llvm::IRBuilderBase::CreateInBoundsGEP(v57, v14, Cast, v7, &v53);
  v50[0] = *(v52 + 1);
  v50[1] = 0;
  llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v53, v50);
  for (i = v54; v54; i = v54)
  {
    v17 = *(v53 + i - 1);
    v18 = i - 1;
    v54 = i - 1;
    v19 = *(v17 + 16);
    if (v17 && v19 == 62)
    {
      if ((*(v17 + 20) & 0x7FFFFFF) == 2)
      {
        v20 = *v52;
        v51 = 257;
        llvm::IRBuilderBase::CreateCast(v57, 49, v4, v20, v50);
        llvm::User::replaceUsesOfWith();
        v21 = *(v17 - 32 * (*(v17 + 20) & 0x7FFFFFF) + 32);
        v22 = *(a1 + 10);
        v51 = 257;
        v23 = llvm::IRBuilderBase::CreateCast(v57, 38, v21, v22, v50);
        v49 = 257;
        NSWFoldAdd = MTLIRBuilder::CreateNSWFoldAdd(v57, v7, v23, v48);
        v25 = *(a1 + 9);
        v47[16] = 257;
        v26 = llvm::IRBuilderBase::CreateCast(v57, 39, NSWFoldAdd, v25, v47);
        v27 = v17 - 32 * (*(v17 + 20) & 0x7FFFFFF);
        v28 = (v27 + 32);
        if (*(v27 + 32))
        {
          v29 = *(v27 + 40);
          **(v27 + 48) = v29;
          if (v29)
          {
            *(v29 + 16) = *(v27 + 48);
          }
        }

        *v28 = v26;
        if (v26)
        {
          v32 = *(v26 + 8);
          v30 = (v26 + 8);
          v31 = v32;
          *(v27 + 40) = v32;
          if (v32)
          {
            *(v31 + 16) = v27 + 40;
          }

          *(v27 + 48) = v30;
          *v30 = v28;
        }
      }
    }

    else if (v17 && v19 == 77)
    {
      llvm::SmallVectorImpl<llvm::User *>::insert<llvm::Value::user_iterator_impl<llvm::User>,void>(&v53, v53 + 8 * v18, *(v17 + 8), 0);
    }

    else if (v17 && v19 == 60 || v17 && v19 == 61)
    {
      v33 = **(v17 - 32);
      v51 = 257;
      llvm::IRBuilderBase::CreateCast(v57, 49, v15, v33, v50);
      llvm::User::replaceUsesOfWith();
    }

    else if (v19 == 84 && v17 != 0)
    {
      for (j = 0; j < llvm::compat::getNumArgOperands(v17); ++j)
      {
        v36 = *(v17 - 32 * (*(v17 + 20) & 0x7FFFFFF) + 32 * j);
        v37 = *v36;
        if (*(*v36 + 8) == 15)
        {
          v38 = *(v36 + 16);
          if (v38 >= 0x1C)
          {
            do
            {
              if (v38 != 77)
              {
                break;
              }

              v39 = *(v36 + 20);
              v40 = (v39 & 0x40000000) != 0 ? *(v36 - 8) : (v36 - 32 * (v39 & 0x7FFFFFF));
              v36 = *v40;
              v38 = *(v36 + 16);
            }

            while (v36 && v38 > 0x1B);
          }

          if (v36 == v52)
          {
            v51 = 257;
            v42 = llvm::IRBuilderBase::CreateCast(v57, 49, v15, v37, v50);
            llvm::CallBase::setArgOperand(v17, j, v42);
          }
        }
      }
    }
  }

  v43 = *v52;
  v44 = llvm::UndefValue::get();
  if (v53 != &v55)
  {
    free(v53);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v60);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v59);
  if (v57[0] != &v58)
  {
    free(v57[0]);
  }

  v45 = *MEMORY[0x277D85DE8];
  return v44;
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::CallInst *&>(uint64_t a1, llvm::Value **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

void MTLGVEmulation::~MTLGVEmulation(MTLGVEmulation *this)
{
  llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::~DenseMap(this + 304);
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 280);
  v2 = *(this + 29);
  if (v2 != this + 248)
  {
    free(v2);
  }

  llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(this + 200);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);

  llvm::Pass::~Pass(this);
}

{
  llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::~DenseMap(this + 304);
  llvm::DenseMap<llvm::Function *,llvm::Function *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Function *>>::~DenseMap(this + 280);
  v2 = *(this + 29);
  if (v2 != this + 248)
  {
    free(v2);
  }

  llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(this + 200);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLGVEmulation::runOnModule(MTLGVEmulation *this, llvm::Module *a2)
{
  v48[8] = *MEMORY[0x277D85DE8];
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(this + 280);
  MetalModulePass::runOnModule(this, a2);
  MTLGVEmulation::createFwdStructType(this);
  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (MTLBoundsCheck::isLibraryModule(a2, v5))
  {
    EntryFunction = 0;
  }

  v6 = *(this + 6);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v8 = GlobalVariable;
    v9 = *(GlobalVariable - 32);
    v46 = v48;
    v47 = 0x400000000;
    v10 = *(v9 + 20) & 0x7FFFFFF;
    if ((*(v9 + 20) & 0x7FFFFFF) != 0)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v44[0] = *(v9 - 32 * v10 + v11);
        v13 = MTLBoundsCheck::lookThroughPointerOps(v44[0], v44);
        v14 = v13;
        v15 = *(v13 + 16) != 3 || v13 == 0;
        if (!v15 && (Name = llvm::Value::getName(v13), v17 >= 4) && *Name == 778859629)
        {
          v18 = *v14;
          llvm::UndefValue::get();
          llvm::Constant::handleOperandChange();
          v9 = *(v8 - 4);
          if (!v9 || *(v9 + 16) - 11 < 2)
          {
            break;
          }
        }

        else
        {
          v45 = v14;
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v46, &v45);
        }

        ++v12;
        v10 = *(v9 + 20) & 0x7FFFFFF;
        v11 += 32;
      }

      while (v12 < v10);
    }

    llvm::GlobalVariable::eraseFromParent(v8);
    if (v47)
    {
      v19 = *(this + 6);
      llvm::appendToUsed();
    }

    if (v46 != v48)
    {
      free(v46);
    }
  }

  MTLGVEmulation::gatherGVs(this);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>,llvm::Type *,llvm::Type *,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,llvm::Type *>>::clear(this + 280);
  v44[0] = *(a2 + 4);
  v44[1] = a2 + 24;
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v46, v44);
  v20 = v46;
  if (v47)
  {
    v21 = 8 * v47;
    do
    {
      v22 = *v20;
      shouldModifyFunction = MTLGVEmulation::shouldModifyFunction(this, *v20);
      if (v22 == EntryFunction)
      {
        v24 = 0;
      }

      else
      {
        v24 = shouldModifyFunction;
      }

      if (v24)
      {
        v45 = v22;
        v44[0] = 0;
        v25 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 17, &v45, v44);
        if (v44[0] == *(this + 17) + 16 * *(this + 38))
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        if (v26 == 1)
        {
          v27 = *(v44[0] + 8);
        }

        else
        {
          v27 = 0;
        }

        updated = MTLGVEmulation::updateFunction(this, v22, v27);
        v44[0] = v22;
        llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 35, v44)[1] = updated;
      }

      ++v20;
      v21 -= 8;
    }

    while (v21);
    v20 = v46;
  }

  if (v20 != v48)
  {
    free(v20);
  }

  if (EntryFunction)
  {
    MTLGVEmulation::updateEntryPoint(this, EntryFunction);
  }

  MTLGVEmulation::updateIntersectionFunctions(this);
  MTLGVEmulation::updateIntersectCalls(this);
  MTLGVEmulation::updateAIRFunctionMetadata(this);
  MTLGVEmulation::removeGVUsages(this);
  MTLGVEmulation::updateAIRDyldTable(this);
  if (*(this + 72))
  {
    v29 = *(this + 35);
    v30 = *(this + 74);
    v31 = v29;
    if (v30)
    {
      v32 = 16 * v30;
      v31 = *(this + 35);
      while ((*v31 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v31 += 2;
        v32 -= 16;
        if (!v32)
        {
          v33 = 1;
          goto LABEL_54;
        }
      }
    }

    v34 = &v29[2 * v30];
    if (v31 == v34)
    {
      v37 = 0;
    }

    else
    {
      do
      {
        MTLGVEmulation::updateFunctionUses(this, *v31, v31[1]);
        MTLGVEmulation::updateIndirectCalls(this, v31[1]);
        v35 = v31[1];
        v36 = *v31;
        llvm::Value::takeName();
        do
        {
          v31 += 2;
        }

        while (v31 != v34 && (*v31 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v31 != v34);
      v29 = *(this + 35);
      v30 = *(this + 74);
      v37 = *(this + 72) == 0;
    }

    v33 = v30;
    if (!v37)
    {
LABEL_54:
      v38 = v29;
      if (v33)
      {
        v39 = 16 * v30;
        v38 = v29;
        while ((*v38 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v38 += 2;
          v39 -= 16;
          if (!v39)
          {
            goto LABEL_58;
          }
        }
      }

      v42 = &v29[2 * v30];
      while (v38 != v42)
      {
        v43 = **v38;
        llvm::UndefValue::get();
        llvm::Value::replaceNonMetadataUsesWith();
        **v38 = *v38[1];
        llvm::ValueAsMetadata::handleRAUW();
        llvm::Function::eraseFromParent(*v38);
        do
        {
          v38 += 2;
        }

        while (v38 != v42 && (*v38 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }
  }

LABEL_58:
  v40 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_2579E9EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 25));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void MTLGVEmulation::createFwdStructType(MTLGVEmulation *this)
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = (this + 96);
  v2 = *(this + 12);
  v4 = llvm::PointerType::get();
  v5 = *(this + 10);
  v6 = *v4;
  v54 = v4;
  v55 = v5;
  llvm::StructType::get();
  v7 = llvm::PointerType::get();
  v8 = 80;
  if ((*(*(*(this + 8) + 72) + 20) & 0x2000) == 0)
  {
    v8 = 72;
  }

  v9 = *(this + v8);
  v10 = llvm::PointerType::get();
  v54 = "mtl.device_indirection_table";
  v55 = 28;
  v56[0] = 0;
  v57 = v7;
  v11 = *(this + 9);
  v58 = "mtl.draw_id_buffer";
  v59 = 18;
  v60 = 1;
  v61 = llvm::PointerType::get();
  v12 = *(this + 9);
  v62 = "mtl.report_buffer";
  v63 = 17;
  v64 = 2;
  v65 = llvm::PointerType::get();
  v66 = "mtl.check_buffer";
  v67 = 16;
  v68 = 3;
  v69 = v10;
  v13 = *v3;
  v70 = "mtl.texture_usage_table";
  v71 = 23;
  v72 = 4;
  v73 = llvm::PointerType::get();
  v14 = *v3;
  v15 = llvm::PointerType::get();
  v74 = "mtl.buffer_usage_table";
  v75 = 22;
  v76 = 5;
  v16 = *(this + 10);
  v77 = v15;
  v78 = "mtl.stack_depth";
  v79 = 15;
  v80 = 10;
  v81 = v16;
  v17 = *(this + 9);
  v82 = "mtl.acceleration_structure_payload";
  v83 = 34;
  v84 = 11;
  v85 = llvm::PointerType::get();
  Int8PtrTy = llvm::Type::getInt8PtrTy(**(this + 6), 0);
  v86 = "mtl.stack_trace";
  v87 = 15;
  v88 = 12;
  v89 = Int8PtrTy;
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.binding_table", 17);
  v90 = "mtl.binding_table";
  v91 = 17;
  v92 = 13;
  v93 = llvm::PointerType::get();
  llvm::StringMapImpl::StringMapImpl(&v94);
  for (i = 0; i != 80; i += 8)
  {
    v52 = *(&v54 + i * 4);
    v53 = *&v56[i];
    llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<GVStructElementInfo>(&v94, v52, *(&v52 + 1), &v53);
  }

  v20 = *(this + 25);
  *(this + 25) = v94;
  v94 = v20;
  v21 = *(this + 26);
  *(this + 26) = v95;
  v95 = v21;
  LODWORD(v20) = *(this + 54);
  *(this + 54) = v96;
  v96 = v20;
  llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(&v94);
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.threadgroup_table", 21);
  v22 = llvm::PointerType::get();
  v23 = *(this + 6);
  if (!llvm::Module::getGlobalVariable())
  {
    v24 = *(this + 12);
    v22 = llvm::PointerType::get();
  }

  v25 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), "mtl.threadgroup_table", 0x15uLL);
  *(v25 + 8) = 6;
  *(v25 + 16) = v22;
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.threadgroup_base", 20);
  v26 = llvm::PointerType::get();
  v28 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), "mtl.threadgroup_base", 0x14uLL);
  *(v28 + 8) = 7;
  *(v28 + 16) = v26;
  v29 = "mtl.global_constants_handle";
  v30 = "mtl.global_constants_table";
  if ((*(*(*(this + 8) + 72) + 23) & 0x40) != 0)
  {
    isLibraryModule = MTLBoundsCheck::isLibraryModule(*(this + 6), v27);
    if (isLibraryModule)
    {
      v32 = 33;
    }

    else
    {
      v32 = 26;
    }

    if (isLibraryModule)
    {
      v30 = "mtl.global_constants_table.unused";
      v31 = 34;
    }

    else
    {
      v31 = 27;
    }

    if (isLibraryModule)
    {
      v29 = "mtl.global_constants_handle.unused";
    }
  }

  else
  {
    v31 = 27;
    v32 = 26;
  }

  v34 = *(this + 12);
  v35 = llvm::PointerType::get();
  v36 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), v30, v32);
  *(v36 + 8) = 8;
  *(v36 + 16) = v35;
  v37 = *(this + 9);
  v38 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), v29, v31);
  *(v38 + 8) = 9;
  *(v38 + 16) = v37;
  if (!MTLBoundsCheck::isLibraryModule(*(this + 6), v39))
  {
    v40 = *(this + 8);
    v41 = *(*(v40 + 9) + 20);
    if ((v41 & 0x800000) != 0)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(v40);
      MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(*(this + 8));
      if ((*(*(*(this + 8) + 72) + 20) & 0x200000001) != 0)
      {
        MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(*(this + 8));
        MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(*(this + 8));
      }
    }

    else if ((v41 & 0x10000) != 0)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsTableGV(v40);
    }

    else
    {
      MTLBoundsCheck::SharedPassData::getOrInsertCheckBufferGV(v40);
    }

    MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(*(this + 8));
    MTLBoundsCheck::SharedPassData::getOrInsertReportBufferGV(*(this + 8));
  }

  MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(*(this + 8));
  MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(*(this + 8));
  MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(*(this + 8));
  v42 = *(this + 5);
  v43 = llvm::StructType::create();
  v54 = v56;
  v55 = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(&v54, *(this + 53));
  v44 = *(this + 52);
  if (v44)
  {
      ;
    }
  }

  else
  {
    j = *(this + 25);
  }

  v47 = *(this + 25) + 8 * v44;
  if (j != v47)
  {
    v48 = *j;
    do
    {
      *(v54 + *(v48 + 8)) = *(v48 + 16);
      do
      {
        v49 = j[1];
        ++j;
        v48 = v49;
        if (v49)
        {
          v50 = v48 == -8;
        }

        else
        {
          v50 = 1;
        }
      }

      while (v50);
    }

    while (j != v47);
  }

  llvm::StructType::setBody();
  *(this + 23) = v43;
  *(this + 24) = llvm::PointerType::get();
  if (v54 != v56)
  {
    free(v54);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_2579EA5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14 != v14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGVEmulation::gatherGVs(uint64_t this)
{
  *(this + 240) = 0;
  v1 = *(this + 48);
  v2 = v1 + 8;
  v3 = *(v1 + 16);
  if (v3 != v1 + 8)
  {
    v4 = this;
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

      if ((*(v5 + 33) & 0x1C) != 0)
      {
        this = llvm::Value::getName(v5);
        if (v6 >= 4 && *this == 778859629)
        {
          Key = llvm::StringMapImpl::FindKey();
          if (Key == -1 || Key == *(v4 + 208))
          {
            this = llvm::Value::dump(v5);
            __break(1u);
            return this;
          }

          v8 = v5;
          this = llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v4 + 232, &v8);
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t MTLGVEmulation::shouldModifyFunction(MTLGVEmulation *this, llvm::Function *a2)
{
  v10 = 0;
  v11 = a2;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 20, &v11, &v10))
  {
    return 0;
  }

  Name = llvm::Value::getName(a2);
  v6 = v5;
  if (llvm::GlobalValue::isDeclaration(a2))
  {
    if (v6 >= 0x11)
    {
      if (*Name == 0x69646E692E6C746DLL && *(Name + 8) == 0x6D656D5F74636572 && *(Name + 16) == 46)
      {
        return 1;
      }
    }

    else if (v6 < 4)
    {
      return 1;
    }

    if (*Name == 779250017)
    {
      return 0;
    }

    if (v6 >= 5 && *Name == 1836477548 && *(Name + 4) == 46)
    {
      return 0;
    }

    if (*Name == 778859629)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t MTLGVEmulation::updateFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v19 = *(a1 + 40);
  v20 = v22;
  v21 = 0x800000000;
  llvm::AttrBuilder::addAttribute();
  llvm::AttrBuilder::addAttribute();
  v6 = *(a1 + 40);
  TypeAllocSize = llvm::DataLayout::getTypeAllocSize(*(a1 + 56), *(a1 + 184));
  v18 = v7;
  v8 = llvm::TypeSize::operator unsigned long long();
  llvm::Attribute::getWithDereferenceableBytes(v6, v8);
  llvm::AttrBuilder::addAttribute();
  v9 = *(a1 + 40);
  v10 = llvm::AttributeSet::get();
  inserted = MetalModulePass::insertArgument(a1, a2, *(a1 + 192), v10, 1, "shader_validation_args", 0);
  v12 = inserted;
  TypeAllocSize = inserted;
  if (*(inserted + 9))
  {
    llvm::Function::BuildLazyArguments(inserted);
  }

  v13 = *(v12 + 11);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct((a1 + 304), &TypeAllocSize)[1] = v13;
  if (a3)
  {
    MetalModulePass::insertFunctionArgumentMD(a1, a3, "air.visible_input", "mtl.shader_validation_args", "shader_validation_args", 0, 0, 0);
  }

  v14 = TypeAllocSize;
  if (v20 != v22)
  {
    free(v20);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_2579EA960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void MTLGVEmulation::updateEntryPoint(MTLGVEmulation *this, llvm::Function *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v17 = a2;
  v3 = *(a2 + 10);
  if (v3)
  {
    v4 = (v3 - 24);
  }

  else
  {
    v4 = 0;
  }

  FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v4);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v18, FirstNonPHI, 0, 0, 0);
  v6 = *(this + 23);
  v16[16] = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca(v18, v6, 0, v16);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v17)[1] = Alloca;
  v8 = v17 + 72;
  v9 = *(v17 + 10);
  if (v9 == v17 + 72)
  {
    v11 = 0;
  }

  else
  {
    do
    {
      v10 = v9 - 24;
      if (!v9)
      {
        v10 = 0;
      }

      v11 = *(v10 + 6);
      if (v11 != v10 + 40)
      {
        break;
      }

      v9 = *(v9 + 1);
    }

    while (v9 != v8);
  }

  while (v9 != v8)
  {
    if (v11)
    {
      v12 = v11 - 24;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      if (v12[16] == 84)
      {
        v13 = *(v12 - 4);
        if (!v13 || *(v13 + 16) || *(v13 + 24) != *(v12 + 9) || MTLGVEmulation::shouldModifyFunction(this, v13))
        {
          *(v12 + 9) &= 0xFFFCu;
        }
      }
    }

    v11 = *(v11 + 1);
    v14 = v9 - 24;
    if (!v9)
    {
      v14 = 0;
    }

    while (v11 == v14 + 40)
    {
      v9 = *(v9 + 1);
      if (v9 == v8)
      {
        break;
      }

      v14 = v9 - 24;
      if (!v9)
      {
        v14 = 0;
      }

      v11 = *(v14 + 6);
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v21);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v20);
  if (v18[0] != &v19)
  {
    free(v18[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2579EAB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MTLGVEmulation::updateIntersectionFunctions(MTLGVEmulation *this)
{
  v78[1] = *MEMORY[0x277D85DE8];
  v67[1] = ((llvm::DataLayout::getTypeSizeInBits(*(this + 7), *(this + 23)) + 7) >> 3);
  v68 = v4 == 1;
  PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(*(this + 7), *(this + 23));
  if (*(this + 42))
  {
    v6 = *(this + 44);
    if (v6)
    {
      v7 = 16 * v6;
      v8 = *(this + 20);
      while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v8 += 2;
        v7 -= 16;
        if (!v7)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v8 = *(this + 20);
    }

    v9 = *(this + 20) + 16 * v6;
    if (v8 != v9)
    {
      v60 = PrefTypeAlignment | 0x100000000;
      while (1)
      {
        v10 = v8[1];
        v67[0] = *v8;
        PayloadArg = MTLGVEmulation::getPayloadArg(this, v67[0], v10);
        if (!PayloadArg)
        {
          v69 = *(this + 5);
          v70 = &v72;
          v71 = 0x800000000;
          llvm::AttrBuilder::addAttribute();
          llvm::AttrBuilder::addAttribute();
          v35 = *(this + 5);
          TypeAllocSize = llvm::DataLayout::getTypeAllocSize(*(this + 7), *(this + 23));
          LODWORD(v75) = v36;
          v37 = llvm::TypeSize::operator unsigned long long();
          llvm::Attribute::getWithDereferenceableBytes(v35, v37);
          llvm::AttrBuilder::addAttribute();
          v38 = *(this + 5);
          v39 = llvm::AttributeSet::get();
          v40 = v67[0];
          v41 = *(this + 23);
          v42 = llvm::PointerType::get();
          inserted = MetalModulePass::insertArgument(this, v40, v42, v39, v63 & 0xFFFFFFFFFFFFFF00 | 1, "shader_validation_args", 1);
          v43 = *(inserted + 10);
          if (v43)
          {
            v44 = (v43 - 24);
          }

          else
          {
            v44 = 0;
          }

          FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v44);
          llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&TypeAllocSize, FirstNonPHI, 0, 0, 0);
          v63 = v63 & 0xFFFFFFFFFFFFFF00 | 1;
          v46 = inserted;
          if (*(inserted + 9))
          {
            llvm::Function::BuildLazyArguments(inserted);
          }

          v47 = *(v46 + 11);
          v48 = *(v46 + 12);
          v49 = *(this + 23);
          v65 = 257;
          Alloca = llvm::IRBuilderBase::CreateAlloca(&TypeAllocSize, v49, 0, v64);
          llvm::TypeSize::operator unsigned long long();
          v61 = v61 & 0xFFFFFFFFFFFF0000 | 0x103;
          v62 = v62 & 0xFFFFFFFFFFFF0000 | 0x103;
          llvm::IRBuilderBase::CreateMemCpy(&TypeAllocSize, Alloca);
          llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &inserted)[1] = Alloca;
          v51 = llvm::TypeSize::operator unsigned long long();
          MetalModulePass::insertFunctionArgumentMD(this, v10, "air.payload", "mtl.shader_validation_args", "shader_validation_args", 1, v51 | 0x100000000, v60);
          v52 = inserted;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 35, v67)[1] = v52;
          llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v78);
          llvm::IRBuilderFolder::~IRBuilderFolder(&v77);
          if (TypeAllocSize != v76)
          {
            free(TypeAllocSize);
          }

          v53 = v70;
          v54 = &v72;
          goto LABEL_48;
        }

        v13 = v11;
        v14 = *(this + 5);
        TypeAllocSize = *(this + 23);
        v75 = **(*PayloadArg + 16);
        v15 = llvm::StructType::get();
        v16 = *(v10 - 8 * *(v10 + 8) + 16);
        v17 = *(v16 - 8 * *(v16 + 8) + 8 * v13);
        v18 = *(v17 + 8);
        if (!v18)
        {
          goto LABEL_28;
        }

        v19 = 0;
        while (1)
        {
          v20 = *(v17 - 8 * v18 + 8 * v19);
          if (!*v20)
          {
            break;
          }

LABEL_25:
          if (++v19 >= v18)
          {
            goto LABEL_26;
          }
        }

        String = llvm::MDString::getString(v20);
        if (v22 != 17)
        {
          break;
        }

        v24 = *String == 0x5F6772612E726961 && *(String + 8) == 0x7A69735F65707974 && *(String + 16) == 101;
        v18 = *(v17 + 8);
        if (!v24)
        {
          goto LABEL_25;
        }

LABEL_26:
        if (v18 > v19)
        {
          TypeAllocSize = ((llvm::DataLayout::getTypeSizeInBits(*(this + 7), v15) + 7) >> 3);
          LODWORD(v75) = v25 == 1;
          llvm::TypeSize::operator unsigned long long();
          MetalModulePass::getMetadata<unsigned int>(this);
          llvm::MDNode::replaceOperandWith();
        }

LABEL_28:
        v26 = *(v67[0] + 10);
        if (v26)
        {
          v27 = (v26 - 24);
        }

        else
        {
          v27 = 0;
        }

        v28 = llvm::BasicBlock::getFirstNonPHI(v27);
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&TypeAllocSize, v28, 0, 0, 0);
        v29 = *(this + 23);
        v73 = 257;
        v30 = llvm::IRBuilderBase::CreateAlloca(&TypeAllocSize, v29, 0, &v69);
        v31 = llvm::PointerType::get();
        v73 = 257;
        BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(&TypeAllocSize, PayloadArg, v31, &v69);
        v73 = 257;
        llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&TypeAllocSize, v15, BitOrPointerCast, 0, 1u, &v69);
        llvm::Value::replaceAllUsesWith();
        v33 = *(BitOrPointerCast + 5);
        if ((v33 & 0x40000000) != 0)
        {
          v34 = *(BitOrPointerCast - 1);
        }

        else
        {
          v34 = BitOrPointerCast - 32 * (v33 & 0x7FFFFFF);
        }

        if (*v34)
        {
          v55 = *(v34 + 1);
          **(v34 + 2) = v55;
          if (v55)
          {
            *(v55 + 16) = *(v34 + 2);
          }
        }

        *v34 = PayloadArg;
        v58 = *(PayloadArg + 8);
        v57 = (PayloadArg + 8);
        v56 = v58;
        *(v34 + 1) = v58;
        if (v58)
        {
          *(v56 + 16) = v34 + 8;
        }

        *(v34 + 2) = v57;
        *v57 = v34;
        v73 = 257;
        llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&TypeAllocSize, v15, BitOrPointerCast, 0, 0, &v69);
        llvm::TypeSize::operator unsigned long long();
        v1 = v1 & 0xFFFFFFFFFFFF0000 | 0x103;
        v2 = v2 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&TypeAllocSize, v30);
        llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, v67)[1] = v30;
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v78);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v77);
        v53 = TypeAllocSize;
        v54 = v76;
LABEL_48:
        if (v53 != v54)
        {
          free(v53);
        }

        MTLGVEmulation::updateIndirectCalls(this, v67[0]);
        do
        {
          v8 += 2;
        }

        while (v8 != v9 && (*v8 | 0x1000) == 0xFFFFFFFFFFFFF000);
        if (v8 == v9)
        {
          goto LABEL_54;
        }
      }

      v18 = *(v17 + 8);
      goto LABEL_25;
    }
  }

LABEL_54:
  v59 = *MEMORY[0x277D85DE8];
}

void sub_2579EB188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a38);
  if (a28 != a16)
  {
    free(a28);
  }

  _Unwind_Resume(a1);
}

void MTLGVEmulation::updateIntersectCalls(MTLGVEmulation *this)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v66 = v68;
  v67 = 0x400000000;
  v60 = &v66;
  llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v60, *(*(this + 6) + 32), *(this + 6) + 24);
  v2 = v66;
  if (v67)
  {
    v3 = 8 * v67;
    do
    {
      v4 = *v2;
      v5 = *(*v2 - 32);
      if (!v5 || *(v5 + 16) || *(v5 + 24) != *(v4 + 72))
      {
        v5 = 0;
      }

      Name = llvm::Value::getName(v5);
      v62 = v6;
      if (llvm::StringRef::find() == -1)
      {
        v7 = 6;
      }

      else
      {
        v7 = 7;
      }

      if (llvm::StringRef::find() != -1 || llvm::StringRef::find() != -1)
      {
        ++v7;
      }

      v8 = v4 - 32 * (*(v4 + 20) & 0x7FFFFFF);
      v9 = *(v8 + 32 * v7);
      v10 = v7 + 1;
      if (v9)
      {
        v11 = *(v9 + 16) == 19;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(*(v4 + 40));
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, FirstNonPHI, 0, 0, 0);
        v57 = *(*(v4 + 40) + 56);
        v41 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v57)[1];
        v42 = *(this + 12);
        v43 = llvm::PointerType::get();
        v59 = 257;
        BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(&Name, v41, v43, &v57);
        v57 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *(this + 23)) + 7) >> 3;
        v58 = v45 == 1;
        llvm::CallBase::setArgOperand(v4, v7, BitOrPointerCast);
        v46 = *(this + 9);
        llvm::TypeSize::operator unsigned long long();
        v47 = llvm::ConstantInt::get();
        llvm::CallBase::setArgOperand(v4, v10, v47);
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v65);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v64);
        if (Name != v63)
        {
          free(Name);
        }
      }

      else
      {
        v12 = *(v8 + 32 * (v7 + 1));
        if (*(v12 + 16) == 16)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = *(this + 5);
        Name = *(this + 23);
        v55 = v13;
        v15 = (v13 + 24);
        if (*(v13 + 32) >= 0x41u)
        {
          v15 = *(v13 + 24);
        }

        v56 = (v13 + 24);
        v62 = llvm::ArrayType::get(*(this + 12), *v15);
        v16 = llvm::StructType::get();
        Name = *(*(v4 + 40) + 56);
        v17 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &Name)[1];
        v18 = *(*(*(v4 + 40) + 56) + 80);
        if (v18)
        {
          v19 = (v18 - 24);
        }

        else
        {
          v19 = 0;
        }

        llvm::BasicBlock::getFirstNonPHI(v19);
        v20 = llvm::User::operator new(0x48);
        v63[8] = 257;
        llvm::AllocaInst::AllocaInst();
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v4, 0, 0, 0);
        v59 = 257;
        ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v16, v20, 0, 0, &v57);
        v22 = *(this + 12);
        v23 = llvm::PointerType::get();
        v59 = 257;
        llvm::IRBuilderBase::CreateBitOrPointerCast(&Name, v17, v23, &v57);
        v57 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *(this + 23)) + 7) >> 3;
        v58 = v24 == 1;
        llvm::TypeSize::operator unsigned long long();
        v53 = v53 & 0xFFFFFFFFFFFF0000 | 0x103;
        v54 = v54 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, ConstInBoundsGEP2_32);
        v59 = 257;
        v25 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v16, v20, 0, 1u, &v57);
        v26 = v56;
        v27 = v7 + 1;
        if (*(v55 + 32) >= 0x41u)
        {
          v26 = *v56;
        }

        v28 = *v26;
        v51 = v51 & 0xFFFFFFFFFFFF0000 | 0x103;
        v52 = v52 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, v25);
        v29 = *(this + 12);
        v30 = llvm::PointerType::get();
        v59 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(&Name, 49, v20, v30, &v57);
        llvm::CallBase::setArgOperand(v4, v7, Cast);
        v32 = *(this + 9);
        v57 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), v16) + 7) >> 3;
        v58 = v33 == 1;
        llvm::TypeSize::operator unsigned long long();
        v34 = llvm::ConstantInt::get();
        llvm::CallBase::setArgOperand(v4, v27, v34);
        v35 = *(v4 + 32);
        if (v35)
        {
          v36 = v35 == *(v4 + 40) + 40;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
          v37 = 0;
        }

        else
        {
          v37 = (v35 - 24);
        }

        llvm::IRBuilderBase::SetInsertPoint(&Name, v37);
        v38 = v56;
        if (*(v55 + 32) >= 0x41u)
        {
          v38 = *v56;
        }

        v39 = *v38;
        v49 = v49 & 0xFFFFFFFFFFFF0000 | 0x103;
        v50 = v50 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, v9);
        llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v65);
        llvm::IRBuilderFolder::~IRBuilderFolder(&v64);
        if (Name != v63)
        {
          free(Name);
        }
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    v2 = v66;
  }

  if (v2 != v68)
  {
    free(v2);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_2579EB814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v33 = *(v31 - 144);
  if (v33 != v30)
  {
    free(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGVEmulation::updateAIRFunctionMetadata(MTLGVEmulation *this)
{
  for (i = 0; i != 5; ++i)
  {
    v3 = off_27984E540[i];
    v4 = *(this + 6);
    v11 = 257;
    if (*v3)
    {
      v10[0] = v3;
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    LOBYTE(v11) = v5;
    result = llvm::Module::getNamedMetadata(v4, v10);
    if (result)
    {
      v7 = result;
      result = llvm::NamedMDNode::getNumOperands(result);
      if (result)
      {
        v8 = result;
        for (j = 0; j != v8; ++j)
        {
          result = llvm::NamedMDNode::getOperand(v7);
          if (!*(*(result - 8 * *(result + 8)) + 128))
          {
            break;
          }

          v10[0] = *(*(result - 8 * *(result + 8)) + 128);
          v12 = 0;
          result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 35, v10, &v12);
          if (result)
          {
            result = *(v12 + 8);
            if (result)
            {
              llvm::ValueAsMetadata::get();
              result = llvm::MDNode::replaceOperandWith();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t MTLGVEmulation::removeGVUsages(uint64_t this)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v1 = *(this + 240);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 232);
    v4 = &v3[v1];
    do
    {
      Name = llvm::Value::getName(*v3);
      v7 = *(*llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((v2 + 25), Name, v6) + 8);
      v32[0] = *(*v3 + 1);
      v32[1] = 0;
      llvm::SmallVector<llvm::User *,8u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v37, v32);
      v8 = v37;
      if (v38)
      {
        v9 = 8 * v38;
        do
        {
          v10 = *v8;
          v11 = *(*v8 + 16);
          if (*v8 && v11 == 61)
          {
            v34 = *(*(v10 + 5) + 56);
            v12 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(v2 + 38, &v34)[1];
            v13 = **(*v12 + 16);
            v14 = v2[9];
            v35 = llvm::ConstantInt::get();
            v15 = v2[10];
            v36 = llvm::ConstantInt::get();
            v33 = 257;
            v16 = llvm::GetElementPtrInst::Create(v13, v12, &v35, 2);
            llvm::GetElementPtrInst::setIsInBounds(v16);
            llvm::Instruction::insertBefore(v16, v10);
            v17 = llvm::User::operator new(0x40);
            v18 = *(v10 - 8);
            v19 = *(v10 + 9);
            llvm::StoreInst::StoreInst();
            llvm::ReplaceInstWithInst(v10, v17, v20);
          }

          else
          {
            if (v11 != 60)
            {
              v10 = 0;
            }

            v34 = *(*(v10 + 5) + 56);
            v21 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(v2 + 38, &v34)[1];
            v22 = **(*v21 + 16);
            v23 = v2[9];
            v35 = llvm::ConstantInt::get();
            v24 = v2[10];
            v36 = llvm::ConstantInt::get();
            v33 = 257;
            v25 = llvm::GetElementPtrInst::Create(v22, v21, &v35, 2);
            llvm::GetElementPtrInst::setIsInBounds(v25);
            llvm::Instruction::insertBefore(v25, v10);
            v26 = llvm::User::operator new(0x40);
            v27 = *v10;
            v33 = 257;
            v28 = *(v10 + 9);
            llvm::LoadInst::LoadInst();
            llvm::ReplaceInstWithInst(v10, v26, v29);
          }

          v8 += 8;
          v9 -= 8;
        }

        while (v9);
        v8 = v37;
      }

      if (v8 != v39)
      {
        free(v8);
      }

      v30 = **v3;
      llvm::UndefValue::get();
      llvm::Value::replaceAllUsesWith();
      this = llvm::GlobalVariable::eraseFromParent(*v3++);
    }

    while (v3 != v4);
  }

  v31 = *MEMORY[0x277D85DE8];
  return this;
}

void MTLGVEmulation::updateAIRDyldTable(MTLGVEmulation *this)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v4 = GlobalVariable;
    if ((llvm::GlobalValue::isDeclaration(GlobalVariable) & 1) == 0)
    {
      v5 = *(v4 - 4);
      v6 = *(v5 + 5);
      v23 = 0;
      llvm::SmallVector<llvm::Constant *,8u>::SmallVector(&v24, v6 & 0x7FFFFFF, &v23);
      v7 = *(v5 + 5) & 0x7FFFFFF;
      if ((*(v5 + 5) & 0x7FFFFFF) != 0)
      {
        v8 = 0;
        v9 = v5;
        do
        {
          *(v24 + v8++) = *(v9 - 4 * v7);
          v7 = *(v5 + 5) & 0x7FFFFFF;
          v9 = (v9 + 32);
        }

        while (v8 < v7);
      }

      v10 = v24;
      if (v25)
      {
        v11 = (v24 + 8 * v25);
        do
        {
          for (i = *v10; ; i = *(i - 4 * (*(i + 5) & 0x7FFFFFF)))
          {
            v13 = *(i + 16);
            if (v13 != 5)
            {
              break;
            }

            isCast = llvm::ConstantExpr::isCast(i);
            if ((isCast & 1) == 0)
            {
              v15 = llvm::dbgs(isCast);
              llvm::raw_ostream::operator<<(v15, "non-cast constexpr in air.dyld_flat_table", 0x29uLL);
              llvm::Value::dump(i);
              v13 = *(i + 16);
              break;
            }
          }

          if (!v13)
          {
            v22 = 0;
            v23 = i;
            v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 35, &v23, &v22);
            if ((v16 & 1) != 0 && (v16 = *(v22 + 8)) != 0)
            {
              v17 = **v10;
              *v10 = llvm::ConstantExpr::getPointerCast();
            }

            else
            {
              v18 = llvm::dbgs(v16);
              llvm::raw_ostream::operator<<(v18, "Missing replacement for function in air.dyld_flat_table", 0x37uLL);
              llvm::Value::dump(v4);
              llvm::Value::dump(*v10);
            }
          }

          ++v10;
        }

        while (v10 != v11);
      }

      v19 = *v5;
      llvm::ConstantArray::get();
      llvm::GlobalVariable::setInitializer();
      v20 = *v5;
      llvm::UndefValue::get();
      llvm::Value::replaceAllUsesWith();
      llvm::Constant::destroyConstant(v5);
      if (v24 != v26)
      {
        free(v24);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void MTLGVEmulation::updateFunctionUses(MTLGVEmulation *this, llvm::Function *a2, llvm::Function *a3)
{
  v47[4] = *MEMORY[0x277D85DE8];
  v42 = *(a2 + 1);
  v43 = 0;
  llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v45, &v42);
  v5 = v45;
  if (v46)
  {
    v6 = (v45 + 8 * v46);
    while (1)
    {
      v7 = *v5;
      v8 = *(*v5 + 16);
      if (*v5 && v8 == 84)
      {
        if (*(v7 - 4) == a2)
        {
          v9 = *(a3 + 12);
          v39[0] = 0;
          llvm::SmallVector<llvm::Value *,8u>::SmallVector(&v42, v9, v39);
          v41 = *(*(v7 + 5) + 56);
          v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v41);
          v11 = 0;
          *v42 = v10[1];
          v12 = v7;
          while (v11 < llvm::compat::getNumArgOperands(v7))
          {
            v13 = v42 + 8 * v11++;
            *(v13 + 1) = *(v12 - 4 * (*(v7 + 5) & 0x7FFFFFF));
            v12 = (v12 + 32);
          }

          if (a3)
          {
            v22 = *(a3 + 3);
          }

          else
          {
            v22 = 0;
          }

          v40 = 257;
          v34 = llvm::CallInst::Create(v22, a3, v42, v43, 0, 0);
          v35 = *(v34 + 9) & 0xFFFC | *(v7 + 9) & 3;
          *(v34 + 9) = v35;
          *(v34 + 9) = v35 & 0xF003 | *(v7 + 9) & 0xFFC;
          llvm::ReplaceInstWithInst(v7, v34, v36);
          if (v42 != v44)
          {
            free(v42);
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (v7)
        {
          v14 = v8 > 0x14;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          if (llvm::Value::hasNUsesOrMore(*v5))
          {
            v20 = *a2;
            llvm::ConstantExpr::getBitCast();
            llvm::Constant::handleOperandChange();
          }

          goto LABEL_46;
        }
      }

      if (*(a2 + 3) == *(a3 + 3))
      {
        v21 = *v5;
        llvm::User::replaceUsesOfWith();
      }

      else
      {
        v15 = *a2;
        v44[8] = 257;
        PointerCast = llvm::CastInst::CreatePointerCast();
        v17 = PointerCast;
        if (*(v7 + 16) != 83 || v7 == 0)
        {
          llvm::Instruction::insertBefore(PointerCast, v7);
        }

        else
        {
          v23 = *(v7 + 5);
          v24 = v23 & 0x7FFFFFF;
          if ((v23 & 0x7FFFFFF) != 0)
          {
            v25 = 0;
            v26 = 0;
            v27 = v7;
            do
            {
              if ((v23 & 0x40000000) != 0)
              {
                v28 = *(v7 - 1);
                if (*&v28[v25] == a2)
                {
                  goto LABEL_32;
                }
              }

              else if (*(v27 - 4 * v24) == a2)
              {
                v28 = v7 - 32 * v24;
LABEL_32:
                v29 = *&v28[32 * *(v7 + 15) + 8 * v26];
                v30 = *(v29 + 40);
                if (v30 == v29 + 40)
                {
                  v33 = 0;
                }

                else
                {
                  v31 = (v30 - 24);
                  if (v30)
                  {
                    v32 = v30 - 24;
                  }

                  else
                  {
                    v32 = 0;
                  }

                  if (*(v32 + 16) - 29 >= 0xB)
                  {
                    v33 = 0;
                  }

                  else
                  {
                    v33 = v31;
                  }
                }

                llvm::Instruction::insertBefore(v17, v33);
                v23 = *(v7 + 5);
              }

              ++v26;
              v24 = v23 & 0x7FFFFFF;
              v27 = (v27 + 32);
              v25 += 32;
            }

            while (v26 < v24);
          }
        }

        llvm::User::replaceUsesOfWith();
      }

LABEL_46:
      if (++v5 == v6)
      {
        v5 = v45;
        break;
      }
    }
  }

  if (v5 != v47)
  {
    free(v5);
  }

  v37 = *MEMORY[0x277D85DE8];
}