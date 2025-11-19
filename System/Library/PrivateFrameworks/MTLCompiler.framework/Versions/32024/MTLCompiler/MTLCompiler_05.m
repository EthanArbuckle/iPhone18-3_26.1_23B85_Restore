void sub_213C2B8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
  *this = &unk_282633520;
  v1 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v1);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
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
  v31[12] = *MEMORY[0x277D85DE8];
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

      v28 = v31;
      v30 = 4;
      if (*(v8 + 16) - 29 >= 0xB)
      {
        do
        {
          v29 = 0;
          MTLBoundsCheck::gatherMemoryOperands(v7, &v28);
          if (!v29)
          {
            goto LABEL_30;
          }

          v9 = v28;
          v10 = 24 * v29;
          while (1)
          {
            v11 = *v9;
            v12 = **v9;
            v13 = *(v12 + 8);
            if ((v13 & 0xFE) == 0x12)
            {
              v13 = *(**(v12 + 16) + 8);
            }

            if (*(v11 + 16) == 3 && (v11[10] & 2) != 0)
            {
              llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(*(this + 8) + 88, v9, v26);
            }

            if ((v13 >> 8) - 1 <= 1 && *(v9 + 4) != 0)
            {
              break;
            }

            v9 += 3;
            v10 -= 24;
            if (!v10)
            {
              goto LABEL_30;
            }
          }

          if (!v29)
          {
            goto LABEL_30;
          }

          v15 = v28;
          v16 = 24 * v29;
          while (1)
          {
            v17 = *(this + 8);
            v26[0] = *v15;
            v27 = 0;
            if ((llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>((v17 + 88), v26, &v27) & 1) == 0)
            {
              break;
            }

            v15 += 3;
            v16 -= 24;
            if (!v16)
            {
              goto LABEL_30;
            }
          }

          if (v29 && (v18 = MTLMemoryCheckPass::createCheckedInstructionCall(this, v7), (v20 = v18) != 0))
          {
            *(v18 + 9) &= 0xFFFCu;
            llvm::ReplaceInstWithInst(v7, v18, v19);
          }

          else
          {
LABEL_30:
            v20 = v7;
          }

          v21 = *(v20 + 4);
          v7 = (v21 - 24);
          if (v21)
          {
            v22 = v21 == *(v20 + 5) + 40;
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
            v23 = v21 - 24;
          }
        }

        while (*(v23 + 16) - 29 > 0xA);
        if (v28 != v31)
        {
          free(v28);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_213C2BE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14 != v14)
  {
    free(a14);
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
    llvm::Function::addFnAttr();
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

void sub_213C2C5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
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

void sub_213C2CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
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
    v68 = xmmword_213C7D3E0;
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
                llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v64, v62);
                v62[0] = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * v46);
                llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v70, v62);
                v45 = *(v4 + 12);
              }

              ++v46;
            }

            while (v46 < (v45 - 1));
          }

          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v64, (a1 + 80));
          v47 = *(a1 + 80);
          MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
          v62[0] = llvm::ConstantInt::get();
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v70, v62);
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
              llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v70, v62);
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
        llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v70, v62);
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

void sub_213C2DB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  llvm::raw_ostream::~raw_ostream(&a35);
  if (STACK[0x280] != a17)
  {
    free(STACK[0x280]);
  }

  if (STACK[0x2D8] != a18)
  {
    free(STACK[0x2D8]);
  }

  if (STACK[0x308] != &STACK[0x318])
  {
    free(STACK[0x308]);
  }

  v37 = *(v35 - 224);
  if (v37 != a19)
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
    v7 = qword_213C7D408[v6];
    v8 = off_278171720[v6];
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

uint64_t MTLMemoryCheckPass::getActualResourceUsageForPtr(MTLMemoryCheckPass *this, unsigned int **a2, llvm::Value *a3)
{
  v6 = *(this + 12);
  result = llvm::ConstantInt::get();
  if ((*(*(*(this + 8) + 72) + 24) & 2) != 0)
  {
    v39[0] = "index";
    v40 = 259;
    v8 = *a3;
    v9 = llvm::ConstantInt::get();
    LShr = llvm::IRBuilderBase::CreateLShr(a2, a3, v9, v39, 0);
    v39[0] = "byteIndex";
    v40 = 259;
    v11 = *LShr;
    v12 = llvm::ConstantInt::get();
    v13 = llvm::IRBuilderBase::CreateLShr(a2, LShr, v12, v39, 0);
    v40 = 257;
    v14 = *LShr;
    v15 = llvm::ConstantInt::get();
    v16 = llvm::IRBuilderBase::CreateAnd(a2, LShr, v15, v39);
    v38 = 257;
    v17 = *v16;
    v18 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl(a2, v16, v18, v37, 0, 0);
    v20 = *(this + 12);
    v35 = "bitIndex";
    v36 = 259;
    Cast = llvm::IRBuilderBase::CreateCast(a2, 38, Shl, v20, &v35);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(*(this + 8));
    v23 = *(inserted + 3);
    v40 = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a2, v23, inserted, 0, 0, v39);
    v25 = *(this + 8);
    Name = llvm::Value::getName(inserted);
    GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v25, Name, v27);
    v40 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP(a2, GVBaseType, AlignedLoad, v13, v39);
    v30 = *(GEP + 72);
    v39[0] = "bufferUsageByteEntry";
    v40 = 259;
    v31 = llvm::IRBuilderBase::CreateAlignedLoad(a2, v30, GEP, 0, 0, v39);
    v40 = 257;
    v32 = llvm::IRBuilderBase::CreateLShr(a2, v31, Cast, v39, 0);
    v37[0] = "actualResourceUsage";
    v38 = 259;
    v33 = *v32;
    v34 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateAnd(a2, v32, v34, v37);
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateRet(llvm::ReturnInst **this, llvm::Value *a2, uint64_t a3, llvm::Instruction *a4)
{
  v5 = llvm::ReturnInst::Create(this[8], a2, 0, a4);
  v8 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, v7);
}

uint64_t llvm::IRBuilderBase::CreateRetVoid(llvm::ReturnInst **this, uint64_t a2, uint64_t a3, llvm::Instruction *a4)
{
  v5 = llvm::ReturnInst::Create(this[8], 0, 0, a4);
  v8 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v5, v7);
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
  MEMORY[0x21604B430](v5, this, a2);
  return v5;
}

void *llvm::SmallVector<unsigned long,6u>::SmallVector(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  llvm::SmallVectorImpl<unsigned long>::assign(a1, a2, *a3);
  return a1;
}

void sub_213C2E328(_Unwind_Exception *exception_object)
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
    llvm::SmallVectorTemplateBase<llvm::Instruction *,true>::growAndAssign(a1);
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
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_213C7D090)));
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
      v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_213C7D090)));
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

uint64_t llvm::raw_ostream::SetUnbuffered(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  return MEMORY[0x2821F1EA8](this, 0, 0, 0);
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::init(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(a1 + 16) = v4;
    *a1 = MEMORY[0x21604BA70](v4 << 6, 8);

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(a1);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void LowerOSLogStructPass::~LowerOSLogStructPass(LowerOSLogStructPass *this)
{
  *this = &unk_282633520;
  v1 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v1);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

BOOL LowerOSLogStructPass::runOnModule(LowerOSLogStructPass *this, llvm::Module *a2)
{
  v87[4] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v72 = 0u;
    v73 = 0u;
    v74 = 1065353216;
    v69 = 0u;
    v70 = 0u;
    v71 = 1065353216;
    v62 = Function;
    v3 = *(Function + 8);
    if (v3)
    {
      do
      {
        v4 = *(v3 + 24);
        if (v4 && *(v4 + 16) == 84)
        {
          v75 = llvm::Instruction::getFunction(v4);
          std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__emplace_unique_key_args<llvm::Function *,llvm::Function *>(&v69, &v75);
        }

        v3 = *(v3 + 8);
      }

      while (v3);
      for (i = v70; i; i = *i)
      {
        v6 = i[2];
        v68 = v6;
        v7 = *(v6 + 8);
        if (!v7)
        {
LABEL_11:
          if (*(v6 + 18))
          {
            llvm::Function::BuildLazyArguments(v6);
          }

          v75 = *(*(v6 + 88) + 8);
          v76 = 0;
          llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v85, &v75);
          v82 = v84;
          v83 = 0x400000000;
          v8 = v86;
          if (v86)
          {
            do
            {
              v9 = v85[v8 - 1];
              LODWORD(v86) = v8 - 1;
              if (*(v9 + 16) <= 0x1Bu)
              {
                v10 = 0;
              }

              else
              {
                v10 = v9;
              }

              if (*(v10 + 16) != 84 || v10 == 0)
              {
                llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v82, v10);
                llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v85, *(v9 + 8), 0);
              }

              else
              {
                v12 = **(v10 - 32 * (*(v10 + 20) & 0x7FFFFFF));
                v13 = llvm::UndefValue::get();
                llvm::CallBase::setArgOperand(v10, 0, v13);
                llvm::CallBase::setArgOperand(v10, 1u, v13);
              }

              v8 = v86;
            }

            while (v86);
            v14 = v82;
            v15 = v83;
          }

          else
          {
            v15 = 0;
            v14 = v84;
          }

          v16 = v14 - 4;
          for (j = 4 * v15; j * 2; j -= 4)
          {
            v18 = *&v16[j];
            llvm::Instruction::eraseFromParent(v18);
          }

          v19 = *(v68 + 3);
          v20 = 24;
          if (*(v68 + 12) == 3)
          {
            v20 = 16;
          }

          v21 = *(*(v19 + 16) + v20);
          v80[0] = &v81;
          v80[1] = 0x400000000;
          llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(v80, v21);
          llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(v80, v21);
          v75 = &v77;
          v76 = 0x800000000;
          v22 = *(v68 + 14);
          v66 = 0;
          v67 = v22;
          llvm::Function::getContext(v68);
          v23 = llvm::AttributeSet::addAttribute();
          llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v75, v23);
          llvm::Function::getContext(v68);
          v24 = llvm::AttributeSet::addAttribute();
          llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v75, v24);
          if ((*(v19 + 12) - 3) <= 0xFFFFFFFD)
          {
            v25 = 2;
            do
            {
              llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(v80, *(*(v19 + 16) + 8 * v25));
              ParamAttrs = llvm::AttributeList::getParamAttrs(&v67);
              llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v75, ParamAttrs);
            }

            while (v25++ < (*(v19 + 12) - 1));
          }

          v28 = **(v19 + 16);
          v29 = *(v19 + 8);
          v30 = llvm::FunctionType::get();
          v31 = *(v68 + 8);
          v64 = 261;
          v63[0] = llvm::Value::getName(v68);
          v63[1] = v32;
          v65 = llvm::Function::Create(v30, v31 & 0xF, v63, 0);
          llvm::SymbolTableListTraits<llvm::Function>::addNodeToList();
        }

        while (*(*(*(v7 + 24) - 32 * (*(*(v7 + 24) + 20) & 0x7FFFFFF)) + 16) == 3)
        {
          v7 = *(v7 + 8);
          if (!v7)
          {
            goto LABEL_11;
          }
        }
      }
    }

    v33 = v79;
    v75 = v79;
    v76 = v79;
    v77 = 4;
    v78 = 0;
    v34 = v73;
    if (v73)
    {
      do
      {
        v35 = v34[2];
        v36 = *(v35 + 1);
        if (v36)
        {
          v37 = v34[3];
          do
          {
            v38 = *(v36 + 24);
            v36 = *(v36 + 8);
            v39 = *(v38 - 32 * (*(v38 + 20) & 0x7FFFFFF));
            if (v39)
            {
              v40 = *(v39 + 16) == 3;
            }

            else
            {
              v40 = 0;
            }

            if (v40)
            {
              llvm::SmallPtrSetImpl<llvm::Instruction *>::insert(&v75, *(v38 - 32 * (*(v38 + 20) & 0x7FFFFFF)), &v85);
              v85 = v87;
              v86 = 0x400000000;
              v41 = *(v39 - 32);
              v42 = *(v41 + 16) != 9 || v41 == 0;
              if (!v42 && *(*v41 + 12))
              {
                v43 = 0;
                do
                {
                  AggregateElement = llvm::Constant::getAggregateElement(v41);
                  llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v85, AggregateElement);
                  ++v43;
                }

                while (v43 < *(*v41 + 12));
              }

              v45 = v38 + 32;
              for (k = 1; ; ++k)
              {
                v47 = llvm::CallBase::arg_end(v38);
                v48 = *(v38 + 20) & 0x7FFFFFF;
                if (k >= ((v47 - (v38 + 32 * -v48)) >> 5))
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v85, *(v45 - 32 * v48));
                v45 += 32;
              }

              v49 = *(v37 + 24);
              v84[8] = 257;
              v50 = llvm::CallInst::Create(v49);
              v51 = *(v50 + 18) & 0xFFFC;
              if ((*(v38 + 18) & 3u) - 1 < 2)
              {
                ++v51;
              }

              *(v50 + 18) = v51;
              *(v50 + 64) = *(v37 + 112);
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::copyMetadata();
              llvm::Instruction::eraseFromParent(v38);
              if (v85 != v87)
              {
                free(v85);
              }
            }

            else
            {
              llvm::Instruction::eraseFromParent(v38);
            }
          }

          while (v36);
        }

        llvm::Function::eraseFromParent(v35);
        v34 = *v34;
      }

      while (v34);
      v33 = v75;
      v52 = v76;
      v54 = v77;
      LODWORD(v53) = HIDWORD(v77);
    }

    else
    {
      LODWORD(v53) = 0;
      v54 = 4;
      v52 = v79;
    }

    if (v52 == v33)
    {
      v53 = v53;
    }

    else
    {
      v53 = v54;
    }

    v55 = v52;
    if (v53)
    {
      v56 = 8 * v53;
      v55 = v52;
      while (*v55 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v55;
        v56 -= 8;
        if (!v56)
        {
          goto LABEL_80;
        }
      }
    }

    v57 = &v52[v53];
    if (v55 != v57)
    {
      do
      {
        v58 = *v55;
        if ((llvm::GlobalValue::isDeclaration(*v55) & 1) == 0)
        {
          v59 = *(v58 - 4);
          llvm::GlobalVariable::setInitializer();
          if (llvm::isSafeToDestroyConstant())
          {
            llvm::Constant::destroyConstant(v59);
          }
        }

        llvm::Constant::removeDeadConstantUsers(v58);
        llvm::GlobalVariable::dropAllReferences(v58);
        llvm::GlobalVariable::eraseFromParent(v58);
        do
        {
          ++v55;
        }

        while (v55 != v57 && *v55 >= 0xFFFFFFFFFFFFFFFELL);
      }

      while (v55 != v57);
      v33 = v75;
      v52 = v76;
    }

LABEL_80:
    if (v52 != v33)
    {
      free(v52);
    }

    std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&v69);
    std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&v72);
    Function = v62;
  }

  result = Function != 0;
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_213C2F0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&a23);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&a29);
  _Unwind_Resume(a1);
}

void *std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__emplace_unique_key_args<llvm::Function *,llvm::Function *>(void *a1, void *a2)
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

void *std::__hash_table<std::__hash_value_type<llvm::Function *,llvm::Function *>,std::__unordered_map_hasher<llvm::Function *,std::__hash_value_type<llvm::Function *,llvm::Function *>,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,true>,std::__unordered_map_equal<llvm::Function *,std::__hash_value_type<llvm::Function *,llvm::Function *>,std::equal_to<llvm::Function *>,std::hash<llvm::Function *>,true>,std::allocator<std::__hash_value_type<llvm::Function *,llvm::Function *>>>::__emplace_unique_key_args<llvm::Function *,llvm::Function *&,llvm::Function *&>(void *a1, void *a2)
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
  *this = &unk_282633520;
  v1 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v1);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633520;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
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
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v120, v108);
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
  v115 = MEMORY[0x21604BA70](6144, 8);
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
        llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v108, &v99);
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
                  llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v108, &v104);
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
                    llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v112, v98);
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

void sub_213C30450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
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
    llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(a1, *a2);
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
  v5 = &unk_282634628;
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
      MEMORY[0x21604C970](v38, 0x1000C8000313F17);
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

void sub_213C30AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  if (a11 >= 0x41)
  {
    ConstantGlobalToArgPass::serializeConstantValue(&a10);
  }

  _Unwind_Resume(exception_object);
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
  result = MEMORY[0x21604BA70](16 * v8, 8);
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
        *result++ = xmmword_213C7D190;
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
      *v7++ = xmmword_213C7D190;
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
      *(v5 - 1) = &unk_282634628;
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
  v3 = &unk_282634628;
  v4[3] = v2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>,unsigned int>>::erase(v2, &v3);
  llvm::ValueHandleBase::~ValueHandleBase(v4);
}

void llvm::ValueMapCallbackVH<llvm::GlobalVariable *,unsigned int,llvm::ValueMapConfig<llvm::GlobalVariable *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v13, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v12 = &unk_282634628;
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
    v6 = &unk_282634628;
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
    v16[4] = &unk_282634628;
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
  v7 = &unk_282634628;
  v9 = a1;
  llvm::ValueHandleBase::ValueHandleBase(v11, (LODWORD(v8[0]) >> 1) & 3, v8);
  v10 = &unk_282634628;
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

void sub_213C316E4(_Unwind_Exception *a1)
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
  v3[4] = &unk_282634628;
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
  v10 = &unk_282634628;
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
  *a1 = MEMORY[0x21604BA70](v8, 48 * v8, 8);
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
  v12 = &unk_282634628;
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

void sub_213C31B54(_Unwind_Exception *a1)
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
    v5[4] = &unk_282634628;
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

uint64_t AirReflection::Node::node_as_StencilRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135170) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StencilRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StencilRet", 0x18u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_SampleMaskRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135171) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::SampleMaskRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.SampleMaskRet", 0x1Bu);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_ImageblockDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135172) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ImageblockDataRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ImageblockDataRet", 0x1Fu);
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
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
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
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
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
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = v15[6];
    if (v16)
    {
      LOBYTE(v16) = *(a1 + v16) != 0;
    }
  }

  LOBYTE(data) = v16;
  CC_SHA256_Update(c, &data, 1u);
  v17 = (a1 - *a1);
  if (*v17 >= 0xFu && (v18 = v17[7]) != 0)
  {
    v19 = v18;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v19);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
  {
    v22 = v21;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v22);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v23 = (a1 - *a1);
  if (*v23 >= 0x13u && (v24 = v23[9]) != 0)
  {
    v25 = (a1 + v24);
    v26 = *v25;
    p_data = (v25 + v26 + 4);
    v28 = *(v25 + v26);
    v29 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v29 = c;
    v28 = 4;
  }

  CC_SHA256_Update(v29, p_data, v28);
  v30 = (a1 - *a1);
  if (*v30 >= 0x15u && (v31 = v30[10]) != 0)
  {
    v32 = (a1 + v31);
    v33 = *v32;
    v34 = (v32 + v33 + 4);
    v35 = *(v32 + v33);
    v36 = c;
  }

  else
  {
    data = 0;
    v34 = &data;
    v36 = c;
    v35 = 4;
  }

  return CC_SHA256_Update(v36, v34, v35);
}

uint64_t AirReflection::Node::node_as_AcceptIntersectionRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 139264)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::AcceptIntersectionRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.AcceptIntersectionRet", 0x23u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_ContinueSearchRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 139265) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ContinueSearchRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ContinueSearchRet", 0x1Fu);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_DistanceRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 139266) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DistanceRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DistanceRet", 0x19u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v22 = 0;
    v10 = &v22;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v23 = 0;
    v17 = &v23;
    v19 = c;
    v18 = 4;
  }

  return CC_SHA256_Update(v19, v17, v18);
}

uint64_t AirReflection::Node::node_as_MeshPrimitiveDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 143360)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::MeshPrimitiveDataRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshPrimitiveDataRet", 0x22u);
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

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    p_data = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, p_data, v13);
  v15 = (a1 - *a1);
  if (*v15 < 0xBu)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = v15[5];
    if (v16)
    {
      LOBYTE(v16) = *(a1 + v16) != 0;
    }
  }

  LOBYTE(data) = v16;
  CC_SHA256_Update(c, &data, 1u);
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
    data = 0;
    v21 = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, v21, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0xFu && (v25 = v24[7]) != 0)
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

uint64_t AirReflection::Node::node_as_MeshVertexDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143361) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::MeshVertexDataRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.MeshVertexDataRet", 0x1Fu);
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

  data = v7;
  CC_SHA256_Update(c, &data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    p_data = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v14 = c;
    v13 = 4;
  }

  CC_SHA256_Update(v14, p_data, v13);
  v15 = (a1 - *a1);
  if (*v15 < 0xBu)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v16 = v15[5];
    if (v16)
    {
      LOBYTE(v16) = *(a1 + v16) != 0;
    }
  }

  LOBYTE(data) = v16;
  CC_SHA256_Update(c, &data, 1u);
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
    data = 0;
    v21 = &data;
    v23 = c;
    v22 = 4;
  }

  CC_SHA256_Update(v23, v21, v22);
  v24 = (a1 - *a1);
  if (*v24 >= 0xFu && (v25 = v24[7]) != 0)
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

uint64_t AirReflection::Node::node_as_PrimitiveCulledRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143362) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveCulledRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveCulledRet", 0x20u);
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

uint64_t AirReflection::Node::node_as_PrimitiveIDRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143363) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveIDRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveIDRet", 0x1Cu);
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

uint64_t AirReflection::Node::node_as_CIPointerRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 147456)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::CIPointerRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIPointerRet", 0x1Au);
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
    v8 = *(a1 + v7);
  }

  else
  {
    v8 = 1;
  }

  data = v8;
  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = v10;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
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
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
  {
    v17 = v16;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v17);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v18 = (a1 - *a1);
  if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
  {
    v20 = v19;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v20);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v21 = (a1 - *a1);
  if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
  {
    v23 = (a1 + v22);
    v24 = *v23;
    p_data = (v23 + v24 + 4);
    v26 = *(v23 + v24);
    v27 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v27 = c;
    v26 = 4;
  }

  return CC_SHA256_Update(v27, p_data, v26);
}

uint64_t AirReflection::Node::node_as_CIStructRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147457) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIStructRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIStructRet", 0x19u);
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = v5;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    v16 = *(a1 + v6);
    p_data = &v16;
  }

  else
  {
    data = 0;
    p_data = &data;
  }

  CC_SHA256_Update(c, p_data, 4u);
  v8 = (a1 - *a1);
  if (*v8 >= 7u && (v9 = v8[3]) != 0)
  {
    v10 = (a1 + v9);
    v11 = *v10;
    v12 = (v10 + v11 + 4);
    v13 = *(v10 + v11);
    v14 = c;
  }

  else
  {
    v18 = 0;
    v12 = &v18;
    v14 = c;
    v13 = 4;
  }

  return CC_SHA256_Update(v14, v12, v13);
}

uint64_t AirReflection::Node::node_as_CITextureRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147458) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CITextureRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CITextureRet", 0x1Au);
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
  if (*v7 < 7u)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = v7[3];
    if (v8)
    {
      LODWORD(v8) = *(a1 + v8);
    }
  }

  data = v8;
  CC_SHA256_Update(c, &data, 4u);
  v9 = (a1 - *a1);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = (a1 + v10);
    v12 = *v11;
    p_data = (v11 + v12 + 4);
    v14 = *(v11 + v12);
    v15 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v15 = c;
    v14 = 4;
  }

  return CC_SHA256_Update(v15, p_data, v14);
}

uint64_t AirReflection::Node::node_as_CIBuiltinRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147459) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIBuiltinRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIBuiltinRet", 0x1Au);
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
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_CIMatrixRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147460) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIMatrixRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIMatrixRet", 0x19u);
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
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_CISamplerRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147461) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CISamplerRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CISamplerRet", 0x1Au);
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
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_CIImageblockRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 147462) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CIImageblockRet::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CIImageblockRet", 0x1Du);
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
    v13 = (a1 + v12);
    v14 = *v13;
    v15 = (v13 + v14 + 4);
    v16 = *(v13 + v14);
    v17 = c;
  }

  else
  {
    v20 = 0;
    v15 = &v20;
    v17 = c;
    v16 = 4;
  }

  return CC_SHA256_Update(v17, v15, v16);
}

uint64_t AirReflection::Node::node_as_ConstantArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262147) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ConstantArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ConstantArg", 0x19u);
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
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v14);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v15 = (a1 - *a1);
  if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
  {
    v17 = v16;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v17);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v18 = (a1 - *a1);
  if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
  {
    v20 = v19;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v20);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v21 = (a1 - *a1);
  if (*v21 >= 0x11u && (v22 = v21[8]) != 0)
  {
    v23 = (a1 + v22);
    v24 = *v23;
    p_data = (v23 + v24 + 4);
    v26 = *(v23 + v24);
    v27 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v27 = c;
    v26 = 4;
  }

  CC_SHA256_Update(v27, p_data, v26);
  v28 = (a1 - *a1);
  if (*v28 >= 0x13u && (v29 = v28[9]) != 0)
  {
    v30 = (a1 + v29);
    v31 = *v30;
    v32 = (v30 + v31 + 4);
    v33 = *(v30 + v31);
    v34 = c;
  }

  else
  {
    data = 0;
    v32 = &data;
    v34 = c;
    v33 = 4;
  }

  CC_SHA256_Update(v34, v32, v33);
  v35 = (a1 - *a1);
  if (*v35 < 0x15u)
  {
    LOBYTE(v36) = 0;
  }

  else
  {
    v36 = v35[10];
    if (v36)
    {
      LOBYTE(v36) = *(a1 + v36) != 0;
    }
  }

  LOBYTE(data) = v36;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_IndirectBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262148) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IndirectBufferArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IndirectBufferArg", 0x1Fu);
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
    v19 = *(a1 + v18);
  }

  else
  {
    v19 = 1;
  }

  data = v19;
  CC_SHA256_Update(c, &data, 4u);
  v20 = (a1 - *a1);
  if (*v20 >= 0x11u && (v21 = v20[8]) != 0)
  {
    v22 = v21;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v22);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v23 = (a1 - *a1);
  if (*v23 >= 0x13u && (v24 = v23[9]) != 0)
  {
    v25 = v24;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v25);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v26 = (a1 - *a1);
  if (*v26 >= 0x15u && (v27 = v26[10]) != 0)
  {
    v28 = v27;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v28);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v29 = (a1 - *a1);
  if (*v29 >= 0x17u && (v30 = v29[11]) != 0)
  {
    v31 = v30;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v31);
  }

  else
  {
    data = 0;
  }

  CC_SHA256_Update(c, &data, 4u);
  v32 = (a1 - *a1);
  if (*v32 >= 0x19u && (v33 = v32[12]) != 0)
  {
    v34 = (a1 + v33);
    v35 = *v34;
    p_data = (v34 + v35 + 4);
    v37 = *(v34 + v35);
    v38 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v38 = c;
    v37 = 4;
  }

  CC_SHA256_Update(v38, p_data, v37);
  v39 = (a1 - *a1);
  if (*v39 >= 0x1Bu && (v40 = v39[13]) != 0)
  {
    v41 = (a1 + v40);
    v42 = *v41;
    v43 = (v41 + v42 + 4);
    v44 = *(v41 + v42);
    v45 = c;
  }

  else
  {
    data = 0;
    v43 = &data;
    v45 = c;
    v44 = 4;
  }

  CC_SHA256_Update(v45, v43, v44);
  v46 = (a1 - *a1);
  if (*v46 < 0x1Du)
  {
    LOBYTE(v47) = 0;
  }

  else
  {
    v47 = v46[14];
    if (v47)
    {
      LOBYTE(v47) = *(a1 + v47) != 0;
    }
  }

  LOBYTE(data) = v47;
  CC_SHA256_Update(c, &data, 1u);
  v48 = (a1 - *a1);
  if (*v48 >= 0x1Fu && (v49 = v48[15]) != 0)
  {
    v50 = v49;
    CC_SHA256_Update(c, "AirReflection.NodeId", 0x14u);
    data = *(a1 + v50);
  }

  else
  {
    data = 0;
  }

  return CC_SHA256_Update(c, &data, 4u);
}

uint64_t AirReflection::Node::node_as_IndirectConstantArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262149) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IndirectConstantArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IndirectConstantArg", 0x21u);
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
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_CommandBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262150) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::CommandBufferArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.CommandBufferArg", 0x1Eu);
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
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ComputePipelineStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262151) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ComputePipelineStateArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ComputePipelineStateArg", 0x25u);
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
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_RenderPipelineStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262152) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::RenderPipelineStateArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.RenderPipelineStateArg", 0x24u);
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
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_VisibleFunctionTableArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262153) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::VisibleFunctionTableArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.VisibleFunctionTableArg", 0x25u);
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
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

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

  CC_SHA256_Update(v30, v28, v29);
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
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_IntersectionFunctionTableArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262154) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::IntersectionFunctionTableArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.IntersectionFunctionTableArg", 0x2Au);
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
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

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

  CC_SHA256_Update(v30, v28, v29);
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
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_InstanceAccelerationStructureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262155) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::InstanceAccelerationStructureArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.InstanceAccelerationStructureArg", 0x2Eu);
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
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

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

  CC_SHA256_Update(v30, v28, v29);
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
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_PrimitiveAccelerationStructureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262156) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::PrimitiveAccelerationStructureArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.PrimitiveAccelerationStructureArg", 0x2Fu);
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
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

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

  CC_SHA256_Update(v30, v28, v29);
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
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_BufferStrideArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262157) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::BufferStrideArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.BufferStrideArg", 0x1Du);
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
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_DepthStencilStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262158) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DepthStencilStateArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DepthStencilStateArg", 0x22u);
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
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_FunctionHandleArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262159) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::FunctionHandleArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.FunctionHandleArg", 0x1Fu);
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
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_TensorArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262160) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::TensorArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.TensorArg", 0x17u);
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
  if (*v12 < 0xBu)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = v12[5];
    if (v13)
    {
      LODWORD(v13) = *(a1 + v13);
    }
  }

  data = v13;
  CC_SHA256_Update(c, &data, 4u);
  v14 = (a1 - *a1);
  if (*v14 >= 0xDu && (v15 = v14[6]) != 0)
  {
    v16 = v15;
    CC_SHA256_Update(c, "AirReflection.UIntValue", 0x17u);
    data = *(a1 + v16);
  }

  else
  {
    data = 0;
  }

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

  CC_SHA256_Update(v30, v28, v29);
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
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadPositionInGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 266240)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::ThreadPositionInGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadPositionInGridArg", 0x25u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadsPerGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266241) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadsPerGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadsPerGridArg", 0x1Fu);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadgroupPositionInGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266242) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadgroupPositionInGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadgroupPositionInGridArg", 0x2Au);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadgroupsPerGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266243) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadgroupsPerGridArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadgroupsPerGridArg", 0x24u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadPositionInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266244) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadPositionInThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadPositionInThreadgroupArg", 0x2Cu);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266245) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadsPerThreadgroupArg", 0x26u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_DispatchThreadsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266246) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::DispatchThreadsPerThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.DispatchThreadsPerThreadgroupArg", 0x2Eu);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadIndexInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266247) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadIndexInThreadgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadIndexInThreadgroupArg", 0x29u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadExecutionWidthArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266248) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadExecutionWidthArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadExecutionWidthArg", 0x25u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_StageInArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266249) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StageInArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StageInArg", 0x18u);
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
    v14 = (a1 + v13);
    v15 = *v14;
    p_data = (v14 + v15 + 4);
    v17 = *(v14 + v15);
    v18 = c;
  }

  else
  {
    data = 0;
    p_data = &data;
    v18 = c;
    v17 = 4;
  }

  CC_SHA256_Update(v18, p_data, v17);
  v19 = (a1 - *a1);
  if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
  {
    v21 = (a1 + v20);
    v22 = *v21;
    v23 = (v21 + v22 + 4);
    v24 = *(v21 + v22);
    v25 = c;
  }

  else
  {
    data = 0;
    v23 = &data;
    v25 = c;
    v24 = 4;
  }

  CC_SHA256_Update(v25, v23, v24);
  v26 = (a1 - *a1);
  if (*v26 < 0xFu)
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v27 = v26[7];
    if (v27)
    {
      LOBYTE(v27) = *(a1 + v27) != 0;
    }
  }

  LOBYTE(data) = v27;
  return CC_SHA256_Update(c, &data, 1u);
}

uint64_t AirReflection::Node::node_as_StageInGridOriginArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266250) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StageInGridOriginArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StageInGridOriginArg", 0x22u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_StageInGridSizeArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266251) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::StageInGridSizeArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.StageInGridSizeArg", 0x20u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}

uint64_t AirReflection::Node::node_as_ThreadIndexInSimdgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266252) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::ThreadIndexInSimdgroupArg::HashImpl(int *a1, CC_SHA256_CTX *c)
{
  CC_SHA256_Update(c, "AirReflection.ThreadIndexInSimdgroupArg", 0x27u);
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
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v8 = (a1 + v7);
    v9 = *v8;
    v10 = (v8 + v9 + 4);
    v11 = *(v8 + v9);
    v12 = c;
  }

  else
  {
    v24 = 0;
    v10 = &v24;
    v12 = c;
    v11 = 4;
  }

  CC_SHA256_Update(v12, v10, v11);
  v13 = (a1 - *a1);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = (a1 + v14);
    v16 = *v15;
    v17 = (v15 + v16 + 4);
    v18 = *(v15 + v16);
    v19 = c;
  }

  else
  {
    v25 = 0;
    v17 = &v25;
    v19 = c;
    v18 = 4;
  }

  CC_SHA256_Update(v19, v17, v18);
  v20 = (a1 - *a1);
  if (*v20 < 0xBu)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v20[5];
    if (v21)
    {
      LOBYTE(v21) = *(a1 + v21) != 0;
    }
  }

  v26 = v21;
  return CC_SHA256_Update(c, &v26, 1u);
}