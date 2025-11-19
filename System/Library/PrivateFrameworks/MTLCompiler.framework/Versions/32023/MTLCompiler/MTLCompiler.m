uint64_t MetalModulePass::MetalModulePass(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = 4;
  *result = &unk_2868EB908;
  *(result + 32) = *(a3 + 72);
  *(result + 64) = a3;
  *(result + 152) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 176) = 0;
  *(result + 160) = 0;
  *(result + 168) = 0;
  return result;
}

uint64_t MetalModulePass::doInitialization(MetalModulePass *this, llvm::Module *a2)
{
  *(this + 5) = *a2;
  *(this + 7) = llvm::Module::getDataLayout(a2);
  *(this + 9) = llvm::Type::getInt64Ty(*(this + 5), v4);
  *(this + 10) = llvm::Type::getInt32Ty(*(this + 5), v5);
  *(this + 11) = llvm::Type::getInt16Ty(*(this + 5), v6);
  *(this + 12) = llvm::Type::getInt8Ty(*(this + 5), v7);
  *(this + 13) = llvm::Type::getInt1Ty(*(this + 5), v8);
  *(this + 14) = llvm::Type::getInt8PtrTy(*(this + 5), 0);
  *(this + 6) = a2;
  return 0;
}

uint64_t MetalModulePass::runOnModule(MetalModulePass *this, llvm::Module *a2)
{
  MTLBoundsCheck::getMetalMetadata(a2, &v9);
  if (v11 == 1)
  {
    *(this + 30) = v9;
    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  *(this + 16) = v4;
  MTLBoundsCheck::getVisibleFunctionsMetadata(a2, &v6);
  llvm::deallocate_buffer(*(this + 17), (16 * *(this + 38)));
  *(this + 17) = v6;
  *(this + 18) = v7;
  v6 = 0;
  v7 = 0;
  *(this + 38) = v8;
  v8 = 0;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(&v6);
  MTLBoundsCheck::getIntersectionFunctionsMetadata(a2, &v6);
  llvm::deallocate_buffer(*(this + 20), (16 * *(this + 44)));
  *(this + 20) = v6;
  *(this + 21) = v7;
  v6 = 0;
  v7 = 0;
  *(this + 44) = v8;
  v8 = 0;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(&v6);
  return 0;
}

uint64_t llvm::MDString::get(llvm::MDString *this, llvm::LLVMContext *__s, const char *a3)
{
  if (__s)
  {
    strlen(__s);
  }

  return llvm::MDString::get();
}

uint64_t MetalModulePass::getMetadata(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  return llvm::MDString::get();
}

uint64_t MetalModulePass::getMetadata(uint64_t a1)
{
  llvm::TypeSize::operator unsigned long long();

  return MetalModulePass::getMetadata<unsigned long long>(a1);
}

uint64_t MetalModulePass::getMetadata<unsigned long long>(uint64_t a1)
{
  v1 = *(a1 + 40);
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

uint64_t MetalModulePass::getMetadata(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return a2;
}

uint64_t MetalModulePass::getTypeForStride(MetalModulePass *this, int a2)
{
  result = 0;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      return *(this + 12);
    }

    else if (a2 == 2)
    {
      return *(this + 11);
    }
  }

  else if (a2 == 4)
  {
    return *(this + 10);
  }

  else
  {
    if (a2 == 8)
    {
      v5 = *(this + 10);
    }

    else
    {
      if (a2 != 16)
      {
        return result;
      }

      v4 = *(this + 10);
    }

    return llvm::VectorType::get();
  }

  return result;
}

void MetalModulePass::cacheStaticBoundsInfo(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v21 = a2;
  v23[0] = v24;
  v23[1] = 0x800000000;
  if (*(a3 + 16) == 1)
  {
    v5 = *(a1 + 40);
    v22 = llvm::MDString::get();
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
    v6 = *(a3 + 3);
    v22 = MetalModulePass::getMetadata<unsigned int>(a1);
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
  }

  if (*(a3 + 20) == 1)
  {
    v7 = *(a1 + 40);
    v22 = llvm::MDString::get();
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
    v8 = *(a3 + 20);
    v22 = MetalModulePass::getMetadata<BOOL>(a1);
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
  }

  if (*(a3 + 2))
  {
    v9 = *(a1 + 40);
    v22 = llvm::MDString::get();
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
    v10 = *(a3 + 2);
    v22 = MetalModulePass::getMetadata<unsigned int>(a1);
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
  }

  if (*a3)
  {
    v11 = *(a1 + 40);
    v22 = llvm::MDString::get();
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
    v12 = *a3;
    v22 = llvm::ValueAsMetadata::get();
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
  }

  if (*(a3 + 22) == 1)
  {
    v13 = *(a1 + 40);
    v22 = llvm::MDString::get();
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
    v14 = *(a3 + 22);
    v22 = MetalModulePass::getMetadata<BOOL>(a1);
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
  }

  v15 = *(a1 + 40);
  v22 = llvm::MDString::get();
  llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
  v16 = *(a3 + 21);
  v22 = MetalModulePass::getMetadata<BOOL>(a1);
  llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v23, &v22);
  v17 = *(a1 + 40);
  Impl = llvm::MDTuple::getImpl();
  v19 = *(a1 + 64);
  v22 = &v21;
  std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>((v19 + 128), &v21)[3] = Impl;
  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2579AD44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(uint64_t a1, uint64_t *a2)
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
    v4 = v3 + 1;
    *(a1 + 8) = v4;
  }

  return *a1 + 8 * v4 - 8;
}

uint64_t MetalModulePass::getMetadata<unsigned int>(uint64_t a1)
{
  v1 = *(a1 + 40);
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

uint64_t MetalModulePass::getMetadata<BOOL>(uint64_t a1)
{
  v1 = *(a1 + 40);
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

void MetalModulePass::getStaticBoundsInfo(MetalModulePass *this@<X0>, llvm::Value *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = a2;
  v5 = std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::find<llvm::Value *>((*(this + 8) + 128), &v10);
  if (v5)
  {
    getStaticBoundsInfo(v5[3], a3);
    *(a3 + 24) = 1;
  }

  else
  {
    v6 = *v10;
    if (*(*v10 + 8) == 15 && MTLBoundsCheck::checkAddressSpace((*(*v10 + 8) >> 8)) && (v7 = **(v6 + 16), *(v7 + 8) == 16) && isArgumentBufferStruct(v7))
    {
      *&v8 = 0;
      DWORD2(v8) = 0;
      BYTE12(v8) = 0;
      LOBYTE(v9) = 0;
      WORD2(v9) = 1;
      BYTE6(v9) = 1;
      MetalModulePass::cacheStaticBoundsInfo(this, v10, &v8);
      *a3 = v8;
      *(a3 + 16) = v9;
      *(a3 + 24) = 1;
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 0;
    }
  }
}

uint64_t isArgumentBufferStruct(llvm::StructType *a1)
{
  v1 = *(a1 + 3);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = 8 * v1;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 2);
    if (v5 == 15)
    {
      if (MTLBoundsCheck::checkAddressSpace((v5 >> 8)))
      {
        return 1;
      }

      LOBYTE(v5) = *(v4 + 8);
    }

    if (v5 == 16 && (isArgumentBufferStruct(v4) & 1) != 0)
    {
      break;
    }

    ++v2;
    v3 -= 8;
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MetalModulePass::getEntryFunction(MetalModulePass *this)
{
  v1 = *(this + 16);
  if (v1)
  {
    return *(*(v1 - 8 * *(v1 + 8)) + 128);
  }

  else
  {
    return 0;
  }
}

void MetalModulePass::insertFunctionArgumentMD(uint64_t a1, uint64_t a2, llvm::LLVMContext *a3, uint64_t a4, llvm::LLVMContext *a5, int a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = a8;
  v29 = a7;
  v26 = a4;
  v27 = a3;
  v25 = a5;
  if (a2)
  {
    v8 = *(a2 - 8 * *(a2 + 8) + 16);
    if (v8)
    {
      if (a6)
      {
        v10 = *(v8 + 8);
      }

      else
      {
        v10 = 0;
      }

      v24 = v10;
      v20 = *(a1 + 40);
      v21 = v23;
      v22 = 0;
      MTLMDBuilder::emplace_back<unsigned int &,char const*&>(&v20, &v24, &v27);
      if (BYTE4(v29) == 1)
      {
        MTLMDBuilder::emplace_back<char const(&)[18],unsigned int &>(&v20, "air.arg_type_size", &v29);
      }

      if (BYTE4(v28) == 1)
      {
        MTLMDBuilder::emplace_back<char const(&)[18],unsigned int &>(&v20, "air.arg_type_align_size", &v28);
      }

      MTLMDBuilder::emplace_back<char const(&)[18],char const*&,char const(&)[13],char const*&>(&v20, "air.arg_type_name", &v26, "air.arg_name", &v25);
      Impl = llvm::MDTuple::getImpl();
      LODWORD(v22) = 0;
      if (!a6)
      {
        __src = MetalModulePass::getMetadata(&v20, Impl);
        llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(&v21, &__src, &v31);
      }

      v12 = *(v8 + 8);
      if (v12)
      {
        v13 = 0;
        v14 = v8;
        do
        {
          __src = MetalModulePass::getMetadata(&v20, *(v14 - 8 * v12));
          llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(&v21, &__src, &v31);
          v12 = *(v8 + 8);
          if (!a6)
          {
            v15 = *(v14 - 8 * v12);
            if (v15)
            {
              v16 = *(*(v15 - 8 * *(v15 + 8)) + 128);
              v17 = (v16 + 24);
              if (*(v16 + 32) >= 0x41u)
              {
                v17 = *v17;
              }

              v18 = *v17;
              MTLMDBuilder::getMetadata<unsigned long long>(&v20);
              llvm::MDNode::replaceOperandWith();
              v12 = *(v8 + 8);
            }
          }

          ++v13;
          v14 += 8;
        }

        while (v13 < v12);
      }

      if (a6 == 1)
      {
        __src = MetalModulePass::getMetadata(&v20, Impl);
        llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(&v21, &__src, &v31);
      }

      llvm::MDTuple::getImpl();
      llvm::MDNode::replaceOperandWith();
      if (v21 != v23)
      {
        free(v21);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2579AD9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11 != v11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *MTLMDBuilder::emplace_back<unsigned int &,char const*&>(uint64_t a1, unsigned int *a2, llvm::LLVMContext **a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  __src[0] = MTLMDBuilder::getMetadata<unsigned int>(a1);
  __src[1] = MTLMDBuilder::getMetadata(a1, *a3, v6);
  result = llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>((a1 + 8), __src, &v10);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *MTLMDBuilder::emplace_back<char const(&)[18],unsigned int &>(uint64_t a1, llvm::LLVMContext *a2, const char *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  __src[0] = MTLMDBuilder::getMetadata(a1, a2, a3);
  v5 = *a3;
  __src[1] = MTLMDBuilder::getMetadata<unsigned int>(a1);
  result = llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>((a1 + 8), __src, &v9);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *MTLMDBuilder::emplace_back<char const(&)[18],char const*&,char const(&)[13],char const*&>(uint64_t a1, llvm::LLVMContext *a2, const char *a3, llvm::LLVMContext *a4, llvm::LLVMContext **a5)
{
  v15 = *MEMORY[0x277D85DE8];
  __src[0] = MTLMDBuilder::getMetadata(a1, a2, a3);
  __src[1] = MTLMDBuilder::getMetadata(a1, *a3, v9);
  __src[2] = MTLMDBuilder::getMetadata(a1, a4, v10);
  __src[3] = MTLMDBuilder::getMetadata(a1, *a5, v11);
  result = llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>((a1 + 8), __src, &v15);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLMDBuilder::getMetadata<unsigned long long>(uint64_t *a1)
{
  v1 = *a1;
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

uint64_t MetalModulePass::insertArgumentType(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14[0] = v15;
  v14[1] = 0x400000000;
  if (!a4)
  {
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v14, &v13);
  }

  if (*(a2 + 12) != 1)
  {
    v6 = 0;
    do
    {
      v12 = *(*(a2 + 16) + 8 * v6 + 8);
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v14, &v12);
      ++v6;
    }

    while (v6 < (*(a2 + 12) - 1));
  }

  if (a4 == 1)
  {
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v14, &v13);
  }

  v7 = **(a2 + 16);
  v8 = *(a2 + 8);
  v9 = llvm::FunctionType::get();
  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_2579ADCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MetalModulePass::insertArgument(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, int a7)
{
  v40 = *MEMORY[0x277D85DE8];
  v31[0] = a4;
  v31[1] = a5;
  v11 = *(a2 + 24);
  inserted = MetalModulePass::insertArgumentType(a1, v11, a3, a7);
  v13 = *(a2 + 32);
  v39 = 261;
  Name = llvm::Value::getName(a2);
  v37 = v14;
  v15 = llvm::Function::Create(inserted, v13 & 0xF, &Name, *(a2 + 40));
  llvm::GlobalObject::copyMetadata();
  v16 = *(v15 + 18);
  if (a7)
  {
    if (v16)
    {
      llvm::Function::BuildLazyArguments(v15);
    }

    v17 = *(v15 + 88) + 40 * *(v15 + 96) - 40;
    v18 = 1;
    HIBYTE(v39) = 1;
    if (*a6)
    {
      Name = a6;
      v18 = 3;
    }
  }

  else
  {
    if (v16)
    {
      llvm::Function::BuildLazyArguments(v15);
    }

    v19 = *(v15 + 88);
    v18 = 1;
    HIBYTE(v39) = 1;
    if (*a6)
    {
      Name = a6;
      v18 = 3;
    }
  }

  LOBYTE(v39) = v18;
  llvm::Value::setName();
  llvm::Function::copyAttributesFrom(v15, a2);
  Name = v38;
  v37 = 0x800000000;
  if (!a7)
  {
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&Name, v31);
  }

  v33 = 128;
  v32[0] = MEMORY[0x259C6A8D0](0x2000, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(v32);
  LOBYTE(v34[0]) = 0;
  v35 = 0;
  if (*(v11 + 12) != 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 40 * (a7 == 0);
    do
    {
      if (*(a2 + 18))
      {
        llvm::Function::BuildLazyArguments(a2);
      }

      v30 = (*(a2 + 88) + v20);
      if (*(v15 + 18))
      {
        llvm::Function::BuildLazyArguments(v15);
      }

      v23 = *(v15 + 88);
      v28 = *(a2 + 112);
      ParamAttrs = llvm::compat::getParamAttrs();
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&Name, &ParamAttrs);
      v24 = llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](v32, &v30);
      llvm::ValueHandleBase::operator=(v24, v23 + v22);
      ++v21;
      v22 += 40;
      v20 += 40;
    }

    while (v21 < (*(v11 + 12) - 1));
  }

  if (a7 == 1)
  {
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&Name, v31);
  }

  v25 = *(a1 + 40);
  v30 = *(a2 + 112);
  llvm::compat::getFnAttrs();
  ParamAttrs = *(a2 + 112);
  llvm::compat::getRetAttrs();
  *(v15 + 112) = llvm::AttributeList::get();
  if (*(a2 + 72) != a2 + 72)
  {
    llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(v15 + 72, v15 + 72, a2 + 72, *(a2 + 80), a2 + 72);
  }

  llvm::ValueMapper::ValueMapper();
  llvm::ValueMapper::remapFunction(&v30, v15);
  MEMORY[0x259C6A580](&v30);
  if (v35 == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap(v34);
    v35 = 0;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::~DenseMap(v32);
  if (Name != v38)
  {
    free(Name);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_2579AE050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a23 != v23)
  {
    free(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Function::Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = llvm::User::operator new(0x78);
  MEMORY[0x259C6B040](v8, a1, a2, 0xFFFFFFFFLL, a3, a4);
  return v8;
}

void *llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::operator[](uint64_t *a1, llvm::Value **a2)
{
  llvm::CallbackVH::CallbackVH(&v5, *a2);
  v5 = &unk_2868EB9A8;
  v6[3] = a1;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::FindAndConstruct(a1, &v5);
  llvm::ValueHandleBase::~ValueHandleBase(v6);
  return v3 + 5;
}

void MetalModulePass::mutateFunctionArgumentMD(uint64_t a1, uint64_t a2, unsigned int a3, llvm::LLVMContext *a4, llvm::LLVMContext *a5, llvm::LLVMContext *a6)
{
  if (a2)
  {
    v6 = *(a2 - 8 * *(a2 + 8) + 16);
    if (v6)
    {
      v7 = *(v6 - 8 * *(v6 + 8) + 8 * a3);
      v8 = *(v7 - 8 * *(v7 + 8));
      v9 = *(a1 + 40);
      v10 = &v12;
      v11 = 0;
      MTLMDBuilder::getMDTuple<llvm::Metadata *,char const*,char const*,char const*,char const*,char const*>(&v9, v8, a4, "air.arg_type_name", a5, "air.arg_name", a6);
      llvm::MDNode::replaceOperandWith();
      if (v10 != &v12)
      {
        free(v10);
      }
    }
  }
}

void sub_2579AE268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11 != v11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMDBuilder::getMDTuple<llvm::Metadata *,char const*,char const*,char const*,char const*,char const*>(llvm::MDString **a1, uint64_t a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, llvm::LLVMContext *a5, llvm::LLVMContext *a6, llvm::LLVMContext *a7)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = *a1;
  MetalModulePass::getMetadata(a1, a2);
  MTLMDBuilder::getMetadata(a1, a3, v14);
  MTLMDBuilder::getMetadata(a1, a4, v15);
  MTLMDBuilder::getMetadata(a1, a5, v16);
  MTLMDBuilder::getMetadata(a1, a6, v17);
  MTLMDBuilder::getMetadata(a1, a7, v18);
  result = llvm::MDTuple::getImpl();
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void MetalModulePass::~MetalModulePass(MetalModulePass *this)
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

{
  *this = &unk_2868EB908;
  v2 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);

  llvm::Pass::~Pass(this);
}

uint64_t llvm::ValueHandleBase::operator=(llvm::ValueHandleBase *this, uint64_t a2)
{
  v3 = *(this + 2);
  if (v3 != a2)
  {
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(this);
    }

    *(this + 2) = a2;
    if (a2 != -8192 && a2 != -4096 && a2)
    {
      llvm::ValueHandleBase::AddToUseList(this);
    }
  }

  return a2;
}

unsigned int *llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::~ValueMap(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap((a1 + 24));
    *(a1 + 48) = 0;
  }

  return llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::~DenseMap(a1);
}

unsigned int *llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap(unsigned int *a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (16 * a1[4]));
  return a1;
}

unsigned int *llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(unsigned int *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = 16 * v1;
    result = (*result + 8);
    do
    {
      if ((*(result - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        llvm::TrackingMDRef::~TrackingMDRef(result);
      }

      result += 4;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

void llvm::TrackingMDRef::~TrackingMDRef(llvm::TrackingMDRef *this)
{
  if (*this)
  {
    llvm::MetadataTracking::untrack();
  }
}

unsigned int *llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::~DenseMap(unsigned int *a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (a1[4] << 6));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v10[0] = 2;
    v10[1] = 0;
    v11 = -4096;
    v12 = 0;
    v8 = 0;
    v9 = &unk_2868EB9A8;
    v6[0] = 2;
    v6[1] = 0;
    v7 = -8192;
    v2 = v1 << 6;
    v3 = (*a1 + 40);
    do
    {
      v4 = *(v3 - 2);
      if (v4 != v11 && v4 != v7)
      {
        llvm::ValueHandleBase::~ValueHandleBase(v3);
      }

      llvm::ValueHandleBase::~ValueHandleBase((v3 - 32));
      v3 = (v3 + 64);
      v2 -= 64;
    }

    while (v2);
    llvm::ValueHandleBase::~ValueHandleBase(v6);
    llvm::ValueHandleBase::~ValueHandleBase(v10);
  }
}

llvm::CallbackVH *llvm::CallbackVH::CallbackVH(llvm::CallbackVH *this, llvm::Value *a2)
{
  *(this + 1) = 2;
  *(this + 2) = 0;
  v3 = (this + 8);
  *(v3 + 2) = a2;
  if (a2 != -8192 && a2 != -4096 && a2)
  {
    llvm::ValueHandleBase::AddToUseList(v3);
  }

  *this = MEMORY[0x277D821C0] + 16;
  return this;
}

void llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v4, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v3 = &unk_2868EB9A8;
  v4[3] = v2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::erase(v2, &v3);
  llvm::ValueHandleBase::~ValueHandleBase(v4);
}

void llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v14, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v13 = &unk_2868EB9A8;
  v15 = v4;
  v10 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(v4, &v13, &v10);
  v6 = *v4 + (v4[2].u32[0] << 6);
  if (v5)
  {
    v7 = v10;
  }

  else
  {
    v7 = v6;
  }

  if ((*v15 + (v15[2].u32[0] << 6)) != v7)
  {
    llvm::ValueHandleBase::ValueHandleBase(v12, 3u, v7 + 5);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::erase(v15, v7);
    v8 = v15;
    v10 = a2;
    llvm::ValueHandleBase::ValueHandleBase(v11, 3u, v12);
    llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert(v8, &v10, v9);
    llvm::ValueHandleBase::~ValueHandleBase(v11);
    llvm::ValueHandleBase::~ValueHandleBase(v12);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v14);
}

void sub_2579AE920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  llvm::ValueHandleBase::~ValueHandleBase((v9 + 8));
  llvm::ValueHandleBase::~ValueHandleBase(va);
  llvm::ValueHandleBase::~ValueHandleBase((v10 + 8));
  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::erase(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, a2, &v6);
  if (v3)
  {
    v4 = v6;
    llvm::ValueHandleBase::~ValueHandleBase((v6 + 40));
    v7[0] = 2;
    v7[1] = 0;
    v7[2] = -8192;
    v8 = 0;
    v6 = &unk_2868EB9A8;
    llvm::ValueHandleBase::operator=((v4 + 8), v7);
    *(v4 + 4) = v8;
    llvm::ValueHandleBase::~ValueHandleBase(v7);
    *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
  }

  return v3;
}

llvm::ValueHandleBase *llvm::ValueHandleBase::ValueHandleBase(llvm::ValueHandleBase *this, unsigned int a2, void *a3)
{
  *this = 2 * a2;
  *(this + 1) = 0;
  v4 = a3[2];
  *(this + 2) = v4;
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::AddToExistingUseList(this, (*a3 & 0xFFFFFFFFFFFFFFF8));
  }

  return this;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(uint64_t *a1, uint64_t a2, void *a3)
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
    v16[4] = &unk_2868EB9A8;
    v16[0] = 2;
    v16[1] = 0;
    v16[2] = -8192;
    v5 = *(a2 + 24);
    v6 = v3 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v3 - 1);
    v8 = v4 + (v7 << 6);
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
        v8 = v4 + (v7 << 6);
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

uint64_t llvm::ValueHandleBase::operator=(llvm::ValueHandleBase *this, void *a2)
{
  v3 = *(this + 2);
  result = a2[2];
  if (v3 != result)
  {
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(this);
      result = a2[2];
    }

    *(this + 2) = result;
    if (result != -8192 && result != -4096 && result != 0)
    {
      llvm::ValueHandleBase::AddToExistingUseList(this, (*a2 & 0xFFFFFFFFFFFFFFF8));
      return *(this + 2);
    }
  }

  return result;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::erase(int32x2_t *a1, void *a2)
{
  llvm::ValueHandleBase::~ValueHandleBase((a2 + 5));
  v5[0] = 2;
  v5[1] = 0;
  v5[2] = -8192;
  v6 = 0;
  llvm::ValueHandleBase::operator=((a2 + 1), v5);
  a2[4] = v6;
  llvm::ValueHandleBase::~ValueHandleBase(v5);
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

double llvm::ValueMap<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>::insert@<D0>(uint64_t a1@<X0>, llvm::Value **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 + 1;
  llvm::CallbackVH::CallbackVH(&v7, *a2);
  v7 = &unk_2868EB9A8;
  v8[3] = a1;
  std::pair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>::pair[abi:ne200100]<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,0>(&v9, &v7, v5);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::try_emplace<llvm::WeakTrackingVH>(a1, &v9, v11, &v12);
  llvm::ValueHandleBase::~ValueHandleBase(v11);
  llvm::ValueHandleBase::~ValueHandleBase(&v10);
  llvm::ValueHandleBase::~ValueHandleBase(v8);
  result = *&v12;
  *a3 = v12;
  *(a3 + 16) = v13;
  return result;
}

void sub_2579AED94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  llvm::ValueHandleBase::~ValueHandleBase((v3 + 40));
  llvm::ValueHandleBase::~ValueHandleBase(va1);
  llvm::ValueHandleBase::~ValueHandleBase(va);
  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::try_emplace<llvm::WeakTrackingVH>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucket<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>(a1, v12, a2, a3);
    v9 = result;
    v10 = 1;
  }

  v11 = *a1 + (*(a1 + 16) << 6);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucket<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, a3, a3, a2);
  llvm::ValueHandleBase::operator=((v6 + 1), (a3 + 8));
  v6[4] = *(a3 + 32);
  llvm::ValueHandleBase::ValueHandleBase((v6 + 5), 3u, a4);
  return v6;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, a3, &v10);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  v11[0] = 2;
  v11[1] = 0;
  v11[2] = -4096;
  v11[3] = 0;
  v10 = &unk_2868EB9A8;
  if (a4[3] != -4096)
  {
    --*(a1 + 12);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v11);
  return a4;
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::grow(uint64_t a1, int a2)
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
  *a1 = MEMORY[0x259C6A8D0](v8 << 6, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::moveFromOldBuckets(a1, v4, v4 + 8 * v3);

    llvm::deallocate_buffer(v4, (v3 << 6));
  }

  else
  {

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(a1);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(uint64_t *a1)
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
    v3 = (*a1 + (v1 << 6));
    v4 = (*a1 + 8);
    do
    {
      v5 = llvm::ValueHandleBase::ValueHandleBase(v4, (LODWORD(v7[0]) >> 1) & 3, v7);
      v6 = v5 - 8;
      *(v5 - 1) = &unk_2868EB9A8;
      *(v5 + 3) = v8;
      v4 = (v5 + 64);
      v2 += 64;
    }

    while (v6 + 64 != v3);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v7);
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::moveFromOldBuckets(uint64_t a1, void *a2, void *a3)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(a1);
  v15[0] = 2;
  v15[1] = 0;
  v16 = -4096;
  v17 = 0;
  v13 = 0;
  v14 = &unk_2868EB9A8;
  v11[0] = 2;
  v11[1] = 0;
  v12 = -8192;
  if (a2 != a3)
  {
    v6 = (a2 + 5);
    do
    {
      v7 = *(v6 - 2);
      if (v7 != v16 && v7 != v12)
      {
        v18 = 0;
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, v6 - 40, &v18);
        v9 = v18;
        llvm::ValueHandleBase::operator=((v18 + 8), v6 - 4);
        *(v9 + 32) = *(v6 - 1);
        llvm::ValueHandleBase::ValueHandleBase((v9 + 40), 3u, v6);
        ++*(a1 + 8);
        llvm::ValueHandleBase::~ValueHandleBase(v6);
      }

      llvm::ValueHandleBase::~ValueHandleBase((v6 - 32));
      v10 = (v6 + 24);
      v6 = (v6 + 64);
    }

    while (v10 != a3);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v11);
  llvm::ValueHandleBase::~ValueHandleBase(v15);
}

void sub_2579AF284(_Unwind_Exception *a1)
{
  llvm::ValueHandleBase::~ValueHandleBase((v2 + 8));
  llvm::ValueHandleBase::~ValueHandleBase((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::pair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>::pair[abi:ne200100]<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,0>(void *a1, uint64_t a2, void *a3)
{
  v5 = a2 + 8;
  llvm::ValueHandleBase::ValueHandleBase((a1 + 1), (*(a2 + 8) >> 1) & 3, (a2 + 8));
  *a1 = &unk_2868EB9A8;
  a1[4] = *(v5 + 24);
  llvm::ValueHandleBase::ValueHandleBase((a1 + 5), 3u, a3);
  return a1;
}

void llvm::ValueHandleBase::~ValueHandleBase(llvm::ValueHandleBase *this)
{
  v1 = *(this + 2);
  if (v1 != -8192 && v1 != -4096 && v1 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(this);
  }
}

uint64_t llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 8 * v2) = a2;
  ++*(result + 8);
  return result;
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::__emplace_unique_key_args<llvm::Value *,std::piecewise_construct_t const&,std::tuple<llvm::Value * const&>,std::tuple<>>(void *a1, void *a2)
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

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::find<llvm::Value *>(void *a1, void *a2)
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
      if (v10 == v5)
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

uint64_t MTLMDBuilder::getMetadata<unsigned int>(uint64_t *a1)
{
  v1 = *a1;
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

unsigned int *llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[2];
  if (v5 + ((a3 - __src) >> 3) > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + 8 * v5), __src, v4);
    LODWORD(v5) = v3[2];
  }

  v3[2] = v5 + (v4 >> 3);
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::FindAndConstruct(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(a1, a2, a2, v7);
    llvm::ValueHandleBase::operator=((v5 + 1), (a2 + 8));
    v5[4] = *(a2 + 32);
    v5[5] = 6;
    v5[6] = 0;
    v5[7] = 0;
  }

  return v5;
}

void llvm::iplist_impl<llvm::simple_ilist<llvm::BasicBlock>,llvm::SymbolTableListTraits<llvm::BasicBlock>>::transfer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a5)
  {
    llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList();
  }
}

void MTLRaytracingIndirectionPass::~MTLRaytracingIndirectionPass(MTLRaytracingIndirectionPass *this)
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

uint64_t MTLRaytracingIndirectionPass::runOnModule(MTLBoundsCheck::SharedPassData **this, llvm::Module *a2)
{
  v36[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  v4 = MTLRaytracingIndirectionPass::setRaytracingNoASAN(this, a2);
  this[23] = MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(this[8]);
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(&v34, *(a2 + 4), a2 + 24);
  v5 = v34;
  if (v35)
  {
    v30 = v4;
    v6 = (v34 + 8 * v35);
    while (1)
    {
      Name = llvm::Value::getName(*v5);
      v9 = v8;
      if (v8 < 0x25)
      {
        goto LABEL_24;
      }

      v10 = Name;
      v11 = memcmp(Name, "air.get_buffer_visible_function_table", 0x25uLL);
      v12 = MTLRaytracingIndirectionPass::replaceGetBufferFunctionTable;
      if (!v11)
      {
        goto LABEL_15;
      }

      if (v9 >= 0x2A)
      {
        v14 = memcmp(v10, "air.get_buffer_intersection_function_table", 0x2AuLL);
        v12 = MTLRaytracingIndirectionPass::replaceGetBufferFunctionTable;
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      else if (v9 < 0x28)
      {
        if (v9 == 39)
        {
          v13 = memcmp(v10, "air.get_instance_acceleration_structure", 0x27uLL);
          v12 = MTLRaytracingIndirectionPass::replaceGetAccelerationStructure;
          if (!v13)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_24;
      }

      v15 = memcmp(v10, "air.get_primitive_acceleration_structure", 0x28uLL);
      v12 = MTLRaytracingIndirectionPass::replaceGetAccelerationStructure;
      if (!v15 || (v16 = memcmp(v10, "air.get_instance_acceleration_structure", 0x27uLL), v12 = MTLRaytracingIndirectionPass::replaceGetAccelerationStructure, !v16) || v9 >= 0x2A && (v17 = memcmp(v10, "air.get_primitive_data_intersection_result", 0x2AuLL), v12 = MTLRaytracingIndirectionPass::replaceGetPrimitiveDataIntersectionResult, !v17))
      {
LABEL_15:
        v18 = v12;
        llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v31, *(*v5 + 1), 0);
        v19 = v31;
        if (v32)
        {
          v20 = 8 * v32;
          do
          {
            if (*v19 && *(*v19 + 16) == 84)
            {
              v18(this);
            }

            v19 += 8;
            v20 -= 8;
          }

          while (v20);
          v19 = v31;
        }

        if (v19 != v33)
        {
          free(v19);
        }
      }

LABEL_24:
      if (++v5 == v6)
      {
        v5 = v34;
        v4 = v30;
        break;
      }
    }
  }

  if (v5 != v36)
  {
    free(v5);
  }

  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(&v34, *(a2 + 4), a2 + 24);
  v21 = v34;
  if (v35)
  {
    v22 = (v34 + 8 * v35);
    do
    {
      v23 = llvm::Value::getName(*v21);
      if (v24 >= 0x2A && !memcmp(v23, "air.set_buffer_intersection_function_table", 0x2AuLL))
      {
        llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(&v31, *(*v21 + 1), 0);
        v25 = v31;
        if (v32)
        {
          v26 = 8 * v32;
          do
          {
            v27 = *v25;
            if (*v25 && *(v27 + 16) == 84)
            {
              MTLRaytracingIndirectionPass::replaceSetBufferFunctionTable(this, v27);
            }

            ++v25;
            v26 -= 8;
          }

          while (v26);
          v25 = v31;
        }

        if (v25 != v33)
        {
          free(v25);
        }
      }

      ++v21;
    }

    while (v21 != v22);
    v21 = v34;
  }

  if (v21 != v36)
  {
    free(v21);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MTLRaytracingIndirectionPass::setRaytracingNoASAN(MTLRaytracingIndirectionPass *this, llvm::Module *a2)
{
  v19[8] = *MEMORY[0x277D85DE8];
  llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(&v17, *(a2 + 4), a2 + 24);
  v3 = v17;
  if (v18)
  {
    v4 = 0;
    v5 = 8 * v18;
    do
    {
      Name = llvm::Value::getName(*v3);
      if (v7 >= 0x10)
      {
        v8 = *Name == 0x61725F7269615F5FLL && Name[1] == 0x676E696361727479;
        if (v8 || v7 >= 0x17 && (*Name == 0x697265776F6C5F5FLL ? (v9 = Name[1] == 0x6E692E62696C676ELL) : (v9 = 0), v9 ? (v10 = *(Name + 15) == 0x2E6C616E7265746ELL) : (v10 = 0), v10))
        {
          v11 = *v3;
          v12 = *(this + 5);
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
          v13 = *v3;
          v14 = *(this + 5);
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
          v4 = 1;
        }
      }

      ++v3;
      v5 -= 8;
    }

    while (v5);
    v3 = v17;
  }

  else
  {
    v4 = 0;
  }

  if (v3 != v19)
  {
    free(v3);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

uint64_t MTLRaytracingIndirectionPass::replaceGetAccelerationStructure(MTLRaytracingIndirectionPass *a1, llvm::Value *a2)
{
  AccelerationStructure = MTLRaytracingIndirectionPass::createGetAccelerationStructure(a1, a2);
  llvm::Instruction::insertAfter(AccelerationStructure, a2);

  return llvm::Value::replaceAllUsesWith();
}

void MTLRaytracingIndirectionPass::replaceSetBufferFunctionTable(uint64_t a1, uint64_t a2)
{
  v5[17] = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v5, *(a2 + 40), 0, 0, 0);
  llvm::IRBuilderBase::SetInsertPoint(v5, a2);
  MTLRaytracingIndirectionPass::createGetBufferFunctionTableCall(a1, a2);
}

void sub_2579B0550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void *llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<std::reference_wrapper<llvm::Function>>::append<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(a1, a2, a3);
  return a1;
}

void sub_2579B05B8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<std::reference_wrapper<llvm::Function>>::append<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a2;
    do
    {
      ++v4;
      v5 = *(v5 + 8);
    }

    while (v5 != a3);
  }

  v6 = *(result + 8);
  if (v4 + v6 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
  {
    v7 = (*result + 8 * v6);
    do
    {
      v8 = v3 - 56;
      if (!v3)
      {
        v8 = 0;
      }

      *v7++ = v8;
      v3 = *(v3 + 8);
    }

    while (v3 != a3);
  }

  *(result + 8) = v6 + v4;
  return result;
}

void MTLRaytracingIndirectionPass::createUnwrapBufferFunctionTable(MTLRaytracingIndirectionPass *this, llvm::Value *a2)
{
  v10[5] = *MEMORY[0x277D85DE8];
  Module = llvm::Instruction::getModule(a2);
  llvm::Value::getContext(a2);
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = *(**(*a2 + 16) + 8);
  }

  v8 = "mtl.unwrap_buffer_function_table";
  v9 = 259;
  v6 = *(this + 12);
  v7 = llvm::PointerType::get();
  v10[0] = *a2;
  getMangledFunction<llvm::Type *>(Module, &v8, v7, v10);
}

void sub_2579B0958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t llvm::CallBase::setArgOperand(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result - 32 * (*(result + 20) & 0x7FFFFFF) + 32 * a2;
  if (*v3)
  {
    v4 = *(v3 + 8);
    **(v3 + 16) = v4;
    if (v4)
    {
      *(v4 + 16) = *(v3 + 16);
    }
  }

  *v3 = a3;
  if (a3)
  {
    v7 = *(a3 + 8);
    v5 = (a3 + 8);
    v6 = v7;
    *(v3 + 8) = v7;
    if (v7)
    {
      *(v6 + 16) = v3 + 8;
    }

    *(v3 + 16) = v5;
    *v5 = v3;
  }

  return result;
}

void getMangledFunction<llvm::Type *>(int a1, llvm::Twine *this, MTLBoundsCheck *a3, MTLBoundsCheck **a4)
{
  llvm::Twine::str(&v20, this);
  MTLBoundsCheck::getMangledTypeStr(a3, v6, &v19);
  v7 = std::string::insert(&v19, 0, ".");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17 = v7->__r_.__value_.__r.__words[2];
  *__p = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v17 >= 0)
  {
    v10 = HIBYTE(v17);
  }

  else
  {
    v10 = __p[1];
  }

  std::string::append(&v20, v9, v10);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  memset(&v19, 0, sizeof(v19));
  MTLBoundsCheck::getMangledTypeStr(*a4, v11, &v18);
  v12 = std::string::insert(&v18, 0, ".");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v17 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v17 >= 0)
  {
    v15 = HIBYTE(v17);
  }

  else
  {
    v15 = __p[1];
  }

  std::string::append(&v20, v14, v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v19, 1uLL);
}

void sub_2579B0BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

llvm::Type **llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*a2 == a3)
  {
    return a2;
  }

  if (*(a2 + 16) > 0x14u)
  {
    PointerBitCastOrAddrSpaceCast = llvm::CastInst::CreatePointerBitCastOrAddrSpaceCast();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, PointerBitCastOrAddrSpaceCast, a4);
  }

  a2 = (*(*this[9] + 240))(this[9]);
  if (a2)
  {
    v6 = *(a2 + 16) >= 0x1Cu;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return a2;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, a2, a4);
}

void **llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(void **a1)
{
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((a1 + 16));
  llvm::IRBuilderFolder::~IRBuilderFolder((a1 + 15));
  if (*a1 != a1 + 2)
  {
    free(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(uint64_t a1, llvm::BasicBlock *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Context = llvm::BasicBlock::getContext(this);
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
  *(a1 + 120) = MEMORY[0x277D821C8] + 16;
  *(a1 + 128) = MEMORY[0x277D82210] + 16;
  *(a1 + 48) = this;
  *(a1 + 56) = this + 40;
  return a1;
}

uint64_t llvm::IRBuilderBase::Insert<llvm::CastInst>(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  (*(*a1[10] + 16))(a1[10], a2, a3, a1[6], a1[7]);
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *a1;
    v7 = &v6[4 * v5];
    do
    {
      v8 = *v6;
      v9 = *(v6 + 1);
      llvm::Instruction::setMetadata();
      v6 += 4;
    }

    while (v6 != v7);
  }

  return a2;
}

uint64_t llvm::IRBuilderBase::CreateAlignedLoad(uint64_t a1, llvm::Type *a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  if ((a4 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(*(a1 + 48));
    DataLayout = llvm::Module::getDataLayout(Module);
    llvm::DataLayout::getABITypeAlign(DataLayout, a2);
  }

  v11 = llvm::User::operator new(0x40);
  llvm::LoadInst::LoadInst();
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v11, a6);
}

uint64_t llvm::ReturnInst::Create(llvm::ReturnInst *this, llvm::LLVMContext *a2, llvm::Value *a3, llvm::Instruction *a4)
{
  v7 = llvm::User::operator new(0x40);
  MEMORY[0x259C6A2D0](v7, this, a2, a3);
  return v7;
}

uint64_t llvm::CallInst::Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 3 * a6;
  v10 = 0;
  if (a6)
  {
    v11 = 48 * a6;
    v12 = (a5 + 32);
    do
    {
      v10 += (*v12 - *(v12 - 1)) >> 3;
      v12 += 6;
      v11 -= 48;
    }

    while (v11);
  }

  v13 = llvm::User::operator new(0x50);
  v14 = **(a1 + 16);
  if (a6)
  {
    v15 = 0;
    v16 = 16 * v9;
    v17 = (a5 + 32);
    v18 = 16 * v9;
    do
    {
      v15 += (*v17 - *(v17 - 1)) >> 3;
      v17 += 6;
      v18 -= 48;
    }

    while (v18);
    v19 = 0;
    v20 = (a5 + 32);
    do
    {
      v19 += (*v20 - *(v20 - 1)) >> 3;
      v20 += 6;
      v16 -= 48;
    }

    while (v16);
  }

  llvm::Instruction::Instruction();
  *(v13 + 64) = 0;
  llvm::CallInst::init();
  return v13;
}

void sub_2579B1280(_Unwind_Exception *a1)
{
  llvm::Instruction::~Instruction(v1);
  llvm::User::operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t MTLRaytracingIndirectionPass::createGetAccelerationStructure(MTLRaytracingIndirectionPass *this, llvm::Value *a2)
{
  v24[5] = *MEMORY[0x277D85DE8];
  Module = llvm::Instruction::getModule(a2);
  MTLBoundsCheck::getMangledTypeStr(*a2, v5, &v22);
  v6 = std::string::insert(&v22, 0, "mtl.get_acceleration_structure");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v21 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v22.__r_.__value_.__r.__words[0] = *(*(a2 - 4) + 24);
  v8 = getOrInsertFunction<std::string &,llvm::FunctionType *>(Module, __p, &v22);
  if (llvm::GlobalValue::isDeclaration(v8))
  {
    v9 = *(this + 5);
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v10 = *(this + 5);
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    v11 = *(this + 5);
    v23 = 257;
    llvm::BasicBlock::Create(v11, &v22, v8, 0, v12);
  }

  if (v8)
  {
    v13 = *(v8 + 24);
  }

  else
  {
    v13 = 0;
  }

  v14 = (a2 - 32 * (*(a2 + 5) & 0x7FFFFFF));
  v15 = *v14;
  v16 = v14[4];
  v24[0] = v15;
  v24[1] = v16;
  v23 = 257;
  v17 = llvm::CallInst::Create(v13, v8, v24, 2, 0, 0);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_2579B1664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a21);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t getOrInsertFunction<std::string &,llvm::FunctionType *>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  v5 = *a3;
  llvm::Module::getOrInsertFunction();
  result = v6;
  if (*(v6 + 16) == 5)
  {
    return *(v6 - 32 * (*(v6 + 20) & 0x7FFFFFF));
  }

  return result;
}

llvm::Value *llvm::IRBuilderBase::CreateBitOrPointerCast(llvm::IRBuilderBase *this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  v7 = *a2;
  if (*a2 == a3)
  {
    return a2;
  }

  v8 = *(v7 + 2);
  v9 = v8;
  if ((*(v7 + 2) & 0xFE) == 0x12)
  {
    v9 = *(**(v7 + 2) + 8);
  }

  if (v9 == 15 && ((*(a3 + 2) & 0xFE) != 0x12 ? (v10 = *(a3 + 2)) : (v10 = *(**(a3 + 2) + 8)), v10 == 13))
  {
    v12 = 47;
  }

  else
  {
    if ((*(v7 + 2) & 0xFE) == 0x12)
    {
      v8 = *(**(v7 + 2) + 8);
    }

    if (v8 == 13 && ((*(a3 + 2) & 0xFE) != 0x12 ? (v13 = *(a3 + 2)) : (v13 = *(**(a3 + 2) + 8)), v13 == 15))
    {
      v12 = 48;
    }

    else
    {
      v12 = 49;
    }
  }

  return llvm::IRBuilderBase::CreateCast(this, v12, a2, a3, a4);
}

uint64_t llvm::IRBuilderBase::CreateConstInBoundsGEP1_32(llvm::Type **this, llvm::Type *a2, llvm::Value *a3, unsigned int a4, const llvm::Twine *a5)
{
  llvm::Type::getInt32Ty(this[8], a2);
  v11 = llvm::ConstantInt::get();
  result = (*(*this[9] + 48))(this[9], a2, a3, &v11, 1, 1);
  if (!result)
  {
    v10 = llvm::GetElementPtrInst::Create(a2, a3, &v11, 1);
    llvm::GetElementPtrInst::setIsInBounds(v10);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a5);
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateGEP(llvm::IRBuilderBase *this, llvm::Type *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a4;
  result = (*(**(this + 9) + 48))(*(this + 9), a2, a3, &v13, 1, 0);
  if (!result)
  {
    v14 = 257;
    v10 = llvm::GetElementPtrInst::Create(a2, a3, &v12, 1);
    result = llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a5);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::IRBuilderBase::CreateCast(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a3 == a4)
  {
    return a3;
  }

  if (*(a3 + 16) > 0x14u)
  {
    v9 = llvm::CastInst::Create();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v9, a5);
  }

  a3 = (*(**(a1 + 72) + 224))(*(a1 + 72));
  if (a3)
  {
    v7 = *(a3 + 16) >= 0x1Cu;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return a3;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, a3, a5);
}

uint64_t llvm::GetElementPtrInst::Create(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4)
{
  v8 = llvm::User::operator new(0x50);
  llvm::GetElementPtrInst::getGEPReturnType(a1, a2, a3, a4);
  llvm::Instruction::Instruction();
  *(v8 + 64) = a1;
  *(v8 + 72) = llvm::GetElementPtrInst::getIndexedType();
  llvm::GetElementPtrInst::init();
  return v8;
}

void sub_2579B1B7C(_Unwind_Exception *a1)
{
  llvm::Instruction::~Instruction(v1);
  llvm::User::operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t llvm::GetElementPtrInst::getGEPReturnType(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(*a2 + 8);
  if ((v8 & 0xFE) == 0x12)
  {
    v7 = **(v7 + 16);
    v8 = *(v7 + 8);
  }

  v9 = (v8 >> 8);
  llvm::GetElementPtrInst::getIndexedType();
  if (*(v7 + 24))
  {
    result = llvm::PointerType::get();
  }

  else
  {
    result = llvm::PointerType::get(*v7, v9);
  }

  v11 = *a2;
  if (!*a2 || (*(v11 + 8) & 0xFE) != 0x12)
  {
    if (!a4)
    {
      return result;
    }

    v13 = 8 * a4;
    while (1)
    {
      v11 = **a3;
      if (v11 && (*(v11 + 8) & 0xFE) == 18)
      {
        break;
      }

      ++a3;
      v13 -= 8;
      if (!v13)
      {
        return result;
      }
    }
  }

  v12 = *(v11 + 32);

  return llvm::VectorType::get();
}

void MTLRaytracingIndirectionPass::createUnwrapPrimitiveDataIntersectionResult(MTLRaytracingIndirectionPass *this, llvm::Value *a2)
{
  v6[5] = *MEMORY[0x277D85DE8];
  Module = llvm::Instruction::getModule(a2);
  llvm::Value::getContext(a2);
  v4 = "mtl.unwrap_primitive_data_intersection_result";
  v5 = 259;
  v6[0] = *a2;
  getMangledFunction<llvm::Type *>(Module, &v4, v6[0], v6);
}

void sub_2579B2130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t llvm::IRBuilderBase::CreateGEP(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  result = (*(**(a1 + 72) + 48))(*(a1 + 72), a2, a3, a4, a5, 0);
  if (!result)
  {
    v13 = llvm::GetElementPtrInst::Create(a2, a3, a4, a5);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v13, a6);
  }

  return result;
}

llvm::Instruction *llvm::IRBuilderBase::CreateSub(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    result = (*(**(this + 9) + 72))(*(this + 9), a2, a3, a5, a6);
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

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 15, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateAnd(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  result = (*(**(this + 9) + 24))(*(this + 9));
  if (!result)
  {
    v7 = llvm::BinaryOperator::Create();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
  }

  return result;
}

llvm::Instruction *llvm::IRBuilderBase::CreateAdd(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  result = (*(**(this + 9) + 16))(*(this + 9), a2, a3, a5, a6);
  if (!result)
  {

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 13, a2, a3, a4, v7, v6);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>(a1, a2, &v10);
  v7 = v10;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::InsertIntoBucketImpl<llvm::Value *>(a1, a2, a2, v10);
    v7 = result;
    *result = *a2;
    v8 = 1;
  }

  v9 = *a1 + 8 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
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
        v7 = (v4 + 8 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::InsertIntoBucketImpl<llvm::Value *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x259C6A8D0](8 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::moveFromOldBuckets(a1, v4, v4 + v3);

    return llvm::deallocate_buffer(v4, (8 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 8);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_257A6D000)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_257A6D000)));
      if (v13.i8[0])
      {
        *(v12 - 1) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 2;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>(v5, a2, &v14);
      *v14 = *a2;
      ++*(v5 + 8);
    }

    ++a2;
  }

  return result;
}

llvm::Instruction *llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v11 = llvm::BinaryOperator::Create();
  v12 = llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v11, a5);
  v13 = v12;
  if (a6)
  {
    llvm::Instruction::setHasNoUnsignedWrap(v12);
  }

  if (a7)
  {
    llvm::Instruction::setHasNoSignedWrap(v13);
  }

  return v13;
}

uint64_t llvm::IRBuilderBase::CreateICmp(uint64_t a1, uint64_t a2, llvm::CmpInst **a3, uint64_t a4, uint64_t a5)
{
  result = (*(**(a1 + 72) + 40))(*(a1 + 72));
  if (!result)
  {
    v9 = llvm::User::operator new(0x40);
    llvm::CmpInst::makeCmpResultType(*a3, v10);
    llvm::CmpInst::CmpInst();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v9, a5);
  }

  return result;
}

uint64_t llvm::CmpInst::makeCmpResultType(llvm::CmpInst *this, llvm::Type *a2)
{
  v3 = *(this + 2);
  result = llvm::Type::getInt1Ty(*this, a2);
  if (this && (v3 & 0xFE) == 0x12)
  {
    v5 = *(this + 8);
    v6 = *(this + 8) == 19;

    return llvm::VectorType::get();
  }

  return result;
}

void *llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>,void>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, a2, a3);
  return a1;
}

void sub_2579B2AA0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a2;
    do
    {
      ++v4;
      v5 = *(v5 + 8);
    }

    while (v5 != a3);
  }

  v6 = *(result + 8);
  if (v4 + v6 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
  {
    v7 = (*result + 8 * v6);
    do
    {
      *v7++ = *(v3 + 24);
      v3 = *(v3 + 8);
    }

    while (v3 != a3);
  }

  *(result + 8) = v6 + v4;
  return result;
}

void llvm::IRBuilderBase::SetInsertPoint(llvm::IRBuilderBase *this, llvm::Instruction *a2)
{
  *(this + 6) = *(a2 + 5);
  *(this + 7) = a2 + 24;
  v4 = *(a2 + 6);
  if (v4)
  {
    llvm::MetadataTracking::track();
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(this, 0, v3);
  llvm::TrackingMDRef::~TrackingMDRef(&v4);
}

void sub_2579B2BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  llvm::TrackingMDRef::~TrackingMDRef(va);
  _Unwind_Resume(a1);
}

void MTLRaytracingIndirectionPass::createGetBufferFunctionTableCall(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
  v3 = **v2;
  if ((*(v3 + 8) & 0xFE) == 0x12)
  {
    v4 = *(**(v3 + 16) + 8);
  }

  v5 = v2[8];
  operator new();
}

void sub_2579B2EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(uint64_t result, int a2, uint64_t a3)
{
  v3 = result;
  v8 = a2;
  v7 = a3;
  if (a3)
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = (*result + 8);
      v6 = 16 * v4;
      while (*(v5 - 2) != a2)
      {
        v5 += 2;
        v6 -= 16;
        if (!v6)
        {
          return llvm::SmallVectorImpl<std::pair<unsigned int,llvm::MDNode *>>::emplace_back<unsigned int &,llvm::MDNode *&>(result, &v8, &v7);
        }
      }

      *v5 = a3;
    }

    else
    {
      return llvm::SmallVectorImpl<std::pair<unsigned int,llvm::MDNode *>>::emplace_back<unsigned int &,llvm::MDNode *&>(result, &v8, &v7);
    }
  }

  else
  {
    result = std::remove_if[abi:ne200100]<std::pair<unsigned int,llvm::MDNode *> *,llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(unsigned int,llvm::MDNode *)::{lambda(std::pair<unsigned int,llvm::MDNode *> const&)#1}>(*result, *result + 16 * *(result + 8), a2);
    *(v3 + 8) = (result - *v3) >> 4;
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<std::pair<unsigned int,llvm::MDNode *>>::emplace_back<unsigned int &,llvm::MDNode *&>(uint64_t a1, _DWORD *a2, uint64_t *a3)
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

uint64_t std::remove_if[abi:ne200100]<std::pair<unsigned int,llvm::MDNode *> *,llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(unsigned int,llvm::MDNode *)::{lambda(std::pair<unsigned int,llvm::MDNode *> const&)#1}>(uint64_t result, uint64_t a2, int a3)
{
  while (result != a2 && *result != a3)
  {
    result += 16;
  }

  if (result != a2)
  {
    for (i = result + 16; i != a2; i += 16)
    {
      if (*i != a3)
      {
        *result = *i;
        *(result + 8) = *(i + 8);
        result += 16;
      }
    }
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = (*result + 16 * v3);
  *v4 = a2;
  v4[1] = a3;
  ++*(result + 8);
  return result;
}

uint64_t llvm::IRBuilderBase::CreateCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = llvm::CallInst::Create(a2, a3, a4, a5, *(a1 + 104), *(a1 + 112));
  v11 = v10;
  if (*(a1 + 100) == 1)
  {
    llvm::Value::getContext(v10);
    *(v11 + 64) = llvm::AttributeList::addAttributeAtIndex();
  }

  if (llvm::FPMathOperator::classof(v11))
  {
    v12 = *(a1 + 96);
    llvm::IRBuilderBase::setFPAttrs(a1, v11, a7);
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v11, a6);
}

uint64_t llvm::IRBuilderBase::setFPAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 || *(a1 + 88))
  {
    llvm::Instruction::setMetadata();
  }

  llvm::Instruction::setFastMathFlags();
  return a2;
}

BOOL llvm::FPMathOperator::classof(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!a1 || (v2 = v1 - 28, v1 < 0x1C))
  {
    v3 = 0;
    if (!a1 || v1 != 5)
    {
      return v3;
    }

    v2 = *(a1 + 18);
  }

  if (v2 > 0x39)
  {
    return 0;
  }

  if (((1 << v2) & 0x40000001255000) != 0)
  {
    return 1;
  }

  if (((1 << v2) & 0x380000000000000) == 0)
  {
    return 0;
  }

  do
  {
    v4 = *a1;
    v5 = *(*a1 + 8);
    a1 = *a1 + 24;
    if (v4)
    {
      v6 = v5 == 17;
    }

    else
    {
      v6 = 0;
    }
  }

  while (v6);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v4 + 16) + 8);
  }

  return v5 < 7;
}

uint64_t llvm::IRBuilderBase::CreateAlignedStore(uint64_t a1, llvm::Type **a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(*(a1 + 48));
    DataLayout = llvm::Module::getDataLayout(Module);
    llvm::DataLayout::getABITypeAlign(DataLayout, *a2);
  }

  v8 = llvm::User::operator new(0x40);
  llvm::StoreInst::StoreInst();
  v11 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v8, v10);
}

void MTLAddCustomFunctionsPass::~MTLAddCustomFunctionsPass(MTLAddCustomFunctionsPass *this)
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

uint64_t MTLAddCustomFunctionsPass::runOnModule(MTLAddCustomFunctionsPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  MTLAddCustomFunctionsPass::getOrInsertUncheckedLoadFunction(this, a2);
  return 1;
}

const llvm::Twine *MTLAddCustomFunctionsPass::getOrInsertUncheckedLoadFunction(MTLAddCustomFunctionsPass *this, llvm::BasicBlock **a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = (this + 72);
  v5 = *(this + 9);
  v13[0] = llvm::PointerType::get();
  v6 = getOrInsertFunction<char const(&)[34],llvm::Type *&,llvm::PointerType *>(a2, "mtl.force_not_checked.load.i64.p1", v4, v13);
  if (llvm::GlobalValue::isDeclaration(v6))
  {
    v7 = *(this + 5);
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v8 = *(this + 5);
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    *(v6 + 8) = *(v6 + 8) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    v9 = *a2;
    v14 = 257;
    llvm::BasicBlock::Create(v9, v13, v6, 0, v10);
  }

  llvm::GlobalObject::setSection();
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2579B3794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t getOrInsertFunction<char const(&)[34],llvm::Type *&,llvm::PointerType *>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  llvm::Module::getOrInsertFunction<llvm::PointerType *>(a1, __s, v8, 0, *a3, *a4);
  result = v9;
  if (*(v9 + 16) == 5)
  {
    return *(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t llvm::SmallVector<llvm::Type *,1u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_2579B3978(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *MTLCompilerSharedMemoryInterface::getInstance(MTLCompilerSharedMemoryInterface *this)
{
  {
    MTLCompilerSharedMemoryInterface::MTLCompilerSharedMemoryInterface(&MTLCompilerSharedMemoryInterface::getInstance(void)::instance);
    __cxa_atexit(MTLCompilerSharedMemoryInterface::~MTLCompilerSharedMemoryInterface, &MTLCompilerSharedMemoryInterface::getInstance(void)::instance, &dword_2579AB000);
  }

  return &MTLCompilerSharedMemoryInterface::getInstance(void)::instance;
}

void MTLCompilerSharedMemoryInterface::~MTLCompilerSharedMemoryInterface(MTLCompilerSharedMemoryInterface *this)
{
  v3 = *this;
  for (i = *(this + 1); i != v3; std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::destroy[abi:ne200100](this, i))
  {
    i -= 56;
  }

  *(this + 1) = v3;
  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  std::mutex::~mutex((this + 24));
  v6 = this;
  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(MTLCompilerSharedMemoryInterface *this, char *__s, const char *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  if (__s && *__s)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    v38 = (this + 24);
    v39 = 1;
    std::mutex::lock((this + 24));
    v5 = *this;
    v6 = *(this + 1);
    if (*this != v6)
    {
      if ((v41 & 0x80u) == 0)
      {
        v7 = v41;
      }

      else
      {
        v7 = __p[1];
      }

      if ((v41 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      do
      {
        v9 = *(v5 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v5 + 8);
        }

        if (v9 == v7)
        {
          v11 = v10 >= 0 ? v5 : *v5;
          if (!memcmp(v11, v8, v7))
          {
            goto LABEL_72;
          }
        }

        v5 += 56;
      }

      while (v5 != v6);
    }

    std::mutex::unlock(v38);
    v39 = 0;
    v12 = open(__s, 0);
    v13 = v12;
    if (v12 == -1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v16 = __error();
        v17 = strerror(*v16);
        MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(v17, &v47, __s);
      }

      goto LABEL_72;
    }

    if (fstat(v12, &v47))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = __error();
        v15 = strerror(*v14);
        MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(v15, &v43, __s);
      }

      close(v13);
    }

    else
    {
      v18 = mmap(0, v47.st_size, 1, 2, v13, 0);
      close(v13);
      v37 = 0;
      if (v18 == -1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v26 = __error();
          v27 = strerror(*v26);
          MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(v27, v42, __s);
        }

        v36 = 0;
        if (LLVMCreateMemoryBufferWithContentsOfFile())
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(__s, &v36);
          }

          goto LABEL_72;
        }

        std::unique_lock<std::mutex>::lock[abi:ne200100](&v38);
        v28 = *this;
        v29 = *(this + 1);
        if (*this != v29)
        {
          if ((v41 & 0x80u) == 0)
          {
            v30 = v41;
          }

          else
          {
            v30 = __p[1];
          }

          if ((v41 & 0x80u) == 0)
          {
            v31 = __p;
          }

          else
          {
            v31 = __p[0];
          }

          while (1)
          {
            v32 = *(v28 + 23);
            v33 = v32;
            if ((v32 & 0x80u) != 0)
            {
              v32 = *(v28 + 8);
            }

            if (v32 == v30)
            {
              v34 = v33 >= 0 ? v28 : *v28;
              if (!memcmp(v34, v31, v30))
              {
                break;
              }
            }

            v28 += 56;
            if (v28 == v29)
            {
              goto LABEL_70;
            }
          }

          LLVMDisposeMemoryBuffer();
          goto LABEL_72;
        }

LABEL_70:
        v45 = 0;
        st_size = 0;
        v43 = v37;
        v44 = MEMORY[0x277D81FB8];
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::emplace_back<std::string&,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>(this, __p, &v43);
      }

      else
      {
        v37 = LLVMCreateMemoryBufferWithMemoryRange();
        if (!v37)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            MTLCompilerSharedMemoryInterface::mapRuntimeLibrary();
          }

          munmap(v18, v47.st_size);
          goto LABEL_72;
        }

        std::unique_lock<std::mutex>::lock[abi:ne200100](&v38);
        v19 = *this;
        v20 = *(this + 1);
        if (*this != v20)
        {
          if ((v41 & 0x80u) == 0)
          {
            v21 = v41;
          }

          else
          {
            v21 = __p[1];
          }

          if ((v41 & 0x80u) == 0)
          {
            v22 = __p;
          }

          else
          {
            v22 = __p[0];
          }

          while (1)
          {
            v23 = *(v19 + 23);
            v24 = v23;
            if ((v23 & 0x80u) != 0)
            {
              v23 = *(v19 + 8);
            }

            if (v23 == v21)
            {
              v25 = v24 >= 0 ? v19 : *v19;
              if (!memcmp(v25, v22, v21))
              {
                break;
              }
            }

            v19 += 56;
            if (v19 == v20)
            {
              goto LABEL_45;
            }
          }

          LLVMDisposeMemoryBuffer();
          munmap(v18, v47.st_size);
          goto LABEL_72;
        }

LABEL_45:
        v43 = v37;
        v44 = MEMORY[0x277D81FB8];
        v45 = v18;
        st_size = v47.st_size;
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::emplace_back<std::string&,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>(this, __p, &v43);
      }

      MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry::~RuntimeLibraryEntry(&v43);
    }

LABEL_72:
    if (v39 == 1)
    {
      std::mutex::unlock(v38);
    }

    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_76;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MTLCompilerSharedMemoryInterface::mapRuntimeLibrary();
  }

LABEL_76:
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2579B3F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a13 == 1)
  {
    std::mutex::unlock(a12);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::emplace_back<std::string&,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>();
}

uint64_t std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::emplace_back<std::string&,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v5 = std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__emplace_back_slow_path<std::string&,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>(a1, a2, a3);
  }

  else
  {
    std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>::pair[abi:ne200100]<std::string&,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry,0>(a1[1], a2, a3);
    v5 = v4 + 56;
    a1[1] = v4 + 56;
  }

  a1[1] = v5;
  return v5 - 56;
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules(MTLCompilerSharedMemoryInterface *a1@<X0>, uint64_t a2@<X1>, std::vector<std::pair<std::string, std::string>> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Metal"];
  if (v7)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/Frameworks/MetalPerformancePrimitives.framework"];
    if (!v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules();
    }

    std::vector<std::pair<std::string,std::string>>::reserve(a3, 3uLL);
    if ((**(a2 + 32) & 0x1000000) != 0)
    {
      v9 = @"MTLRaytracingRuntime_instrumented";
    }

    else
    {
      v9 = @"MTLRaytracingRuntime";
    }

    v10 = rtLibPathInBundle(v7, &v9->isa);
    v23 = v10;
    if (v10)
    {
      MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(a1, v10, "__air_raytracing_impl");
      if (v11)
      {
        end = a3->__end_;
        if (end >= a3->__end_cap_.__value_)
        {
          v13 = std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<char const(&)[22],char const*&>(a3, "__air_raytracing_impl", &v23);
        }

        else
        {
          std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const*&,0>(a3->__end_, "__air_raytracing_impl", &v23);
          v13 = &end[1];
        }

        a3->__end_ = v13;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules();
      }
    }

    v14 = rtLibPathInBundle(v7, &cfstr_Mtlshaderloggi.isa);
    v23 = v14;
    if (v14)
    {
      MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(a1, v14, "__air_impl_os_log");
      if (v15)
      {
        v16 = a3->__end_;
        if (v16 >= a3->__end_cap_.__value_)
        {
          v17 = std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<char const(&)[18],char const*&>(a3, "__air_impl_os_log", &v23);
        }

        else
        {
          std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[18],char const*&,0>(a3->__end_, "__air_impl_os_log", &v23);
          v17 = &v16[1];
        }

        a3->__end_ = v17;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules();
      }
    }

    v18 = getenv("MTL_TENSOROPS_RTLIB_PATH");
    if (v18)
    {
      v19 = v18;
      v23 = v18;
    }

    else
    {
      v19 = rtLibPathInBundle(v8, &cfstr_Libtensorops.isa);
      v23 = v19;
      if (!v19)
      {
        goto LABEL_36;
      }
    }

    MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(a1, v19, "__tensorops_impl");
    if (v20)
    {
      v21 = a3->__end_;
      if (v21 >= a3->__end_cap_.__value_)
      {
        v22 = std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<char const(&)[17],char const*&>(a3, "__tensorops_impl", &v23);
      }

      else
      {
        std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[17],char const*&,0>(a3->__end_, "__tensorops_impl", &v23);
        v22 = &v21[1];
      }

      a3->__end_ = v22;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules();
  }

LABEL_36:
  objc_autoreleasePoolPop(v6);
}

void sub_2579B43C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::string,std::string>>::reserve(std::vector<std::pair<std::string, std::string>> *this, std::vector<std::pair<std::string, std::string>>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 4) < __n)
  {
    if (__n < 0x555555555555556)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(this, __n);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }
}

const char *rtLibPathInBundle(NSBundle *a1, NSString *a2)
{
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      rtLibPathInBundle();
    }

    return 0;
  }

  v4 = [(NSBundle *)a1 URLForResource:a2 withExtension:@"rtlib"];
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      rtLibPathInBundle(a2, a1);
    }

    return 0;
  }

  result = [(NSURL *)v4 fileSystemRepresentation];
  if (!result || !*result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      rtLibPathInBundle(a2, a1);
    }

    return 0;
  }

  return result;
}

void MTLCompilerSharedMemoryInterface::getRuntimeLibraryModules(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules(a1, a2, &v31);
  if (v31.__begin_ == v31.__end_)
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
    std::vector<std::string>::reserve(&v30, 0xAAAAAAAAAAAAAAABLL * ((v31.__end_ - v31.__begin_) >> 4));
    __p[0] = 0;
    __p[1] = 0;
    v29 = 0;
    std::vector<MTLOpaqueObject *>::reserve(__p, 0xAAAAAAAAAAAAAAABLL * ((v31.__end_ - v31.__begin_) >> 4));
    std::mutex::lock((a1 + 3));
    begin = v31.__begin_;
    end = v31.__end_;
    if (v31.__begin_ != v31.__end_)
    {
      v7 = MEMORY[0x277D86220];
      do
      {
        p_second = &begin->second;
        v9 = *a1;
        v10 = a1[1];
        if (*a1 == v10)
        {
          goto LABEL_19;
        }

        v11 = SHIBYTE(begin->second.__r_.__value_.__r.__words[2]);
        v12 = v11 >= 0 ? HIBYTE(begin->second.__r_.__value_.__r.__words[2]) : begin->second.__r_.__value_.__l.__size_;
        while (1)
        {
          v13 = *(v9 + 23);
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v9 + 8);
          }

          if (v13 == v12)
          {
            v15 = v14 >= 0 ? v9 : *v9;
            v16 = p_second->__words[0];
            v17 = v11 >= 0 ? &begin->second : p_second->__words[0];
            if (!memcmp(v15, v17, v12))
            {
              break;
            }
          }

          v9 += 56;
          if (v9 == v10)
          {
            goto LABEL_19;
          }
        }

        if (!*(v9 + 24))
        {
LABEL_19:
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            MTLCompilerSharedMemoryInterface::getRuntimeLibraryModules(v32, begin, begin->second.__r_.__value_.__r.__words, &v33);
          }
        }

        else
        {
          v18 = MTLObjectCreate();
          if (v18)
          {
            std::vector<std::string>::push_back[abi:ne200100](&v30, begin);
            v19 = __p[1];
            if (__p[1] >= v29)
            {
              v21 = (__p[1] - __p[0]) >> 3;
              if ((v21 + 1) >> 61)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              v22 = (v29 - __p[0]) >> 2;
              if (v22 <= v21 + 1)
              {
                v22 = v21 + 1;
              }

              if (v29 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v23 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v22;
              }

              if (v23)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(__p, v23);
              }

              v24 = (8 * v21);
              *v24 = v18;
              v20 = (8 * v21 + 8);
              v25 = v24 - (__p[1] - __p[0]);
              memcpy(v25, __p[0], __p[1] - __p[0]);
              v26 = __p[0];
              __p[0] = v25;
              __p[1] = v20;
              v29 = 0;
              if (v26)
              {
                operator delete(v26);
              }
            }

            else
            {
              *__p[1] = v18;
              v20 = v19 + 8;
            }

            __p[1] = v20;
          }

          else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            if (SHIBYTE(begin->second.__r_.__value_.__r.__words[2]) < 0)
            {
              p_second = p_second->__words[0];
            }

            *buf = 136315394;
            v35 = p_second;
            v36 = 2080;
            v37 = 0;
            _os_log_error_impl(&dword_2579AB000, v7, OS_LOG_TYPE_ERROR, "Failed to create object for runtime library at %s: %s", buf, 0x16u);
          }
        }

        ++begin;
      }

      while (begin != end);
    }

    std::mutex::unlock((a1 + 3));
    *a3 = *__p;
    *(a3 + 16) = v29;
    *(a3 + 24) = v30;
    memset(&v30, 0, sizeof(v30));
    __p[0] = &v30;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  v30.__begin_ = &v31;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v30);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_2579B48B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char **__p, char **a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char a20)
{
  std::mutex::unlock((v20 + 24));
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  a17 = &a20;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }
}

void *std::vector<MTLOpaqueObject *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void MTLCompilerSharedMemoryInterface::setLoweringRuntimes(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  MTLCompilerSharedMemoryInterface::getRuntimeLibraryModules(a1, a3, v19);
  if (v20 != v21)
  {
    __p = 0;
    v17 = 0;
    v18 = 0;
    std::vector<char const*>::reserve(&__p, 0xAAAAAAAAAAAAAAABLL * (v21 - v20));
    v4 = v20;
    for (i = v21; v4 != i; v4 += 3)
    {
      v6 = v4;
      if (*(v4 + 23) < 0)
      {
        v6 = *v4;
      }

      v7 = v17;
      if (v17 >= v18)
      {
        v9 = (v17 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v18 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v18 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v17 - __p);
        memcpy(v13, __p, v17 - __p);
        v14 = __p;
        __p = v13;
        v17 = v8;
        v18 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v17 = v6;
        v8 = (v7 + 8);
      }

      v17 = v8;
    }

    v15 = *a2;
    MTLGPUCompilerSetLoweringRuntimes();
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  __p = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }
}

void sub_2579B4C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::tuple<std::vector<MTLOpaqueObject *>,std::vector<std::string>>::~tuple(&a13);
  _Unwind_Resume(a1);
}

void *std::vector<char const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void MTLCompilerSharedMemoryInterface::MTLCompilerSharedMemoryInterface(MTLCompilerSharedMemoryInterface *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::reserve(this, 4uLL);
}

void sub_2579B4DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  v13 = v10[14];
  if (v13)
  {
    v10[15] = v13;
    operator delete(v13);
  }

  v14 = v10[11];
  if (v14)
  {
    v10[12] = v14;
    operator delete(v14);
  }

  std::mutex::~mutex(v11);
  a10 = v10;
  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2579B4EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>,std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *v7 = 0;
      *(v7 + 8) = 0;
      v9 = *(v7 + 24);
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(a4 + 24) = v9;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>,std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry::~RuntimeLibraryEntry((a2 + 24));
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>,std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>,std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>,std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::destroy[abi:ne200100](v4, i - 56);
  }
}

void MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry::~RuntimeLibraryEntry(MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 3);
    if (v3)
    {
      munmap(v2, v3);
    }
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    (*(this + 1))();
  }
}

uint64_t std::tuple<std::vector<MTLOpaqueObject *>,std::vector<std::string>>::~tuple(uint64_t a1)
{
  v4 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__emplace_back_slow_path<std::string&,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x492492492492492)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v7 = 0x492492492492492;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>>(a1, v7);
  }

  v14 = 0;
  v15 = 56 * v3;
  std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>::pair[abi:ne200100]<std::string&,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry,0>((56 * v3), a2, a3);
  v16 = (56 * v3 + 56);
  v8 = a1[1];
  v9 = 56 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>,std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::~__split_buffer(&v14);
  return v13;
}

void sub_2579B5848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>::pair[abi:ne200100]<std::string&,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *a3;
  *a3 = 0;
  this[1].__r_.__value_.__r.__words[0] = v6;
  *&this[1].__r_.__value_.__r.__words[1] = *(a3 + 8);
  this[2].__r_.__value_.__r.__words[0] = *(a3 + 24);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return this;
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](this);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::pair<std::string,std::string>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v4, i - 48);
  }
}

uint64_t std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<char const(&)[22],char const*&>(uint64_t a1, char *a2, char **a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v13.__end_cap_.__value_ = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v7);
  }

  v13.__first_ = 0;
  v13.__begin_ = (48 * v3);
  v13.__end_ = (48 * v3);
  v13.__end_cap_.__value_ = 0;
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const*&,0>((48 * v3), a2, a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (48 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 48 * v3 + 48;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v13);
  return 48 * v3 + 48;
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[22],char const*&,0>(_BYTE *a1, char *a2, char **a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, *a3);
  return a1;
}

void sub_2579B5BE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<char const(&)[18],char const*&>(uint64_t a1, char *a2, char **a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v13.__end_cap_.__value_ = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v7);
  }

  v13.__first_ = 0;
  v13.__begin_ = (48 * v3);
  v13.__end_ = (48 * v3);
  v13.__end_cap_.__value_ = 0;
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[18],char const*&,0>((48 * v3), a2, a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (48 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 48 * v3 + 48;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v13);
  return 48 * v3 + 48;
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[18],char const*&,0>(_BYTE *a1, char *a2, char **a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, *a3);
  return a1;
}

void sub_2579B5D60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<char const(&)[17],char const*&>(uint64_t a1, char *a2, char **a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v13.__end_cap_.__value_ = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v7);
  }

  v13.__first_ = 0;
  v13.__begin_ = (48 * v3);
  v13.__end_ = (48 * v3);
  v13.__end_cap_.__value_ = 0;
  std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[17],char const*&,0>((48 * v3), a2, a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (48 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 48 * v3 + 48;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v13);
  return 48 * v3 + 48;
}

_BYTE *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[17],char const*&,0>(_BYTE *a1, char *a2, char **a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, *a3);
  return a1;
}

void sub_2579B5EDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2080;
  *(a2 + 14) = result;
  return result;
}

void MTLBuiltinsReportPass::~MTLBuiltinsReportPass(MTLBuiltinsReportPass *this)
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

uint64_t MTLBuiltinsReportPass::runOnModule(MTLBuiltinsReportPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  if (MTLBuiltinsReportPass::handleLLVMTrap(this))
  {
    return 1;
  }

  return MTLBuiltinsReportPass::handleLLVMTrap(this);
}

uint64_t MTLBuiltinsReportPass::handleLLVMTrap(uint64_t a1)
{
  v34[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v4 = Function;
    MTLIRBuilder::MTLIRBuilder<llvm::LLVMContext &>(v31, *(a1 + 40));
    v26[0] = *(v4 + 1);
    v26[1] = 0;
    llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(&v28, v26);
    v5 = v28;
    if (v29)
    {
      v6 = 0;
      v7 = 8 * v29;
      do
      {
        v8 = *v5;
        if (*v5 && *(v8 + 16) == 84)
        {
          llvm::IRBuilderBase::SetInsertPoint(v31, *v5);
          v9 = *(a1 + 64);
          NameOfParentFunction = MTLBoundsCheck::SharedPassData::getNameOfParentFunction(v9, v8);
          MTLBoundsCheck::SharedPassData::indexForString(v9, NameOfParentFunction, v11);
          MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), v8);
          inserted = MTLBoundsCheck::SharedPassData::getOrInsertReportBufferGV(*(a1 + 64));
          v13 = *(inserted + 24);
          v27 = 257;
          AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v31, v13, inserted, 0, 0, v26);
          v15 = MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(*(a1 + 64));
          v16 = *(v15 + 24);
          v27 = 257;
          v17 = llvm::IRBuilderBase::CreateAlignedLoad(v31, v16, v15, 0, 0, v26);
          ImageIDFunction = MTLBoundsCheck::SharedPassData::getOrInsertGetImageIDFunction(*(a1 + 64));
          if (ImageIDFunction)
          {
            v19 = *(ImageIDFunction + 24);
          }

          else
          {
            v19 = 0;
          }

          v27 = 257;
          v20 = llvm::IRBuilderBase::CreateCall(v31, v19, ImageIDFunction, 0, 0, v26, 0);
          v21 = MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(*(a1 + 64));
          v22 = *(v21 + 24);
          v27 = 257;
          v23 = llvm::IRBuilderBase::CreateAlignedLoad(v31, v22, v21, 0, 0, v26);
          MTLIRBuilder::CreateTrapCall(v31, AlignedLoad, v17, v23, v20);
          llvm::Instruction::eraseFromParent(v8);
          v6 = 1;
        }

        ++v5;
        v7 -= 8;
      }

      while (v7);
      v5 = v28;
    }

    else
    {
      v6 = 0;
    }

    if (v5 != &v30)
    {
      free(v5);
    }

    if (!*(v4 + 1))
    {
      llvm::Function::eraseFromParent(v4);
    }

    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v34);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v33);
    if (v31[0] != &v32)
    {
      free(v31[0]);
    }
  }

  else
  {
    v6 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::LLVMContext &>(uint64_t a1, llvm::LLVMContext *a2)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x200000000;
  *(a1 + 64) = a2;
  *(a1 + 72) = a1 + 120;
  *(a1 + 80) = a1 + 128;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 512;
  *(a1 + 102) = 7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v3 = MEMORY[0x277D821C8] + 16;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = v3;
  *(a1 + 128) = MEMORY[0x277D82210] + 16;
  MTLIRBuilder::initTypeCache(a1, a2);
  return a1;
}

void *llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(void *a1, uint64_t *a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::User *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_2579B6534(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *BasicParser::getNextToken(BasicParser *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if (v2 < v1)
  {
    v3 = (*(this + 1) + v2);
    while (1)
    {
      v4 = *v3++;
      v5 = (1 << v4) & 0x5000144100000001;
      if (v4 > 0x3E || v5 == 0)
      {
        break;
      }

      LODWORD(v2) = v2 + 1;
      *this = v2;
      if (v1 == v2)
      {
        LODWORD(v2) = v1;
        goto LABEL_10;
      }
    }
  }

  if (v2 <= v1)
  {
LABEL_10:
    v7 = 0;
    v8 = *(this + 1);
    v9 = this + 16;
    while (1)
    {
      v10 = *(v8 + (v2 + v7));
      if (v10 <= 0x3E && ((1 << v10) & 0x5000144100000001) != 0)
      {
        break;
      }

      if (v7 == 63)
      {
        *(this + 79) = 0;
        return v9;
      }

      v12 = this + v7;
      v13 = v2 + v7++;
      v12[16] = v10;
      *this = v13 + 1;
      if (v2 + v7 > v1)
      {
        return v9;
      }
    }

    *(this + v7 + 16) = 0;
    if (v7)
    {
      return v9;
    }
  }

  return 0;
}

uint64_t textureTypeFromString(void *__src, size_t __len, _DWORD *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v20 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  if (v20 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v23[0] = 0;
  v24 = p_dst;
  v23[1] = strlen(p_dst);
  NextToken = BasicParser::getNextToken(v23);
  if (!strcmp(NextToken, "array"))
  {
    NextToken = BasicParser::getNextToken(v23);
  }

  if (atomic_load_explicit(&textureTypeMapOnce, memory_order_acquire) != -1)
  {
    __p[0] = &v21;
    v22 = __p;
    std::__call_once(&textureTypeMapOnce, &v22, std::__call_once_proxy[abi:ne200100]<std::tuple<textureTypeMap(void)::$_0 &&>>);
  }

  v9 = textureTypeMap(void)::nonGlobalTextureTypeMap;
  std::string::basic_string[abi:ne200100]<0>(__p, NextToken);
  v10 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v9, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(v10 + 56);
  *a4 = *(v10 + 60);
  v12 = BasicParser::getNextToken(v23);
  v13 = bufferTypeMap();
  std::string::basic_string[abi:ne200100]<0>(__p, v12);
  v14 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v13, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = *(v14 + 60);
  if (v20 < 0)
  {
    operator delete(__dst);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_2579B6840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bufferTypeMap(void)
{
  if (atomic_load_explicit(&bufferTypeMapOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&bufferTypeMapOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<bufferTypeMap(void)::$_0 &&>>);
  }

  return bufferTypeMap(void)::nonGlobalBufferTypeMap;
}

uint64_t dataTypeFromString(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4)
{
  dataTypeInfoFromString(a1, a2, v7);
  result = v7[0];
  if (a3)
  {
    *a3 = v7[1];
  }

  if (a4)
  {
    *a4 = v7[2];
  }

  return result;
}

void dataTypeInfoFromString(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  v31 = a2;
  if (a2)
  {
    memmove(&__dst, a1, a2);
  }

  *(&__dst + a2) = 0;
  if (v31 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v32[0] = 0;
  v33 = p_dst;
  v32[1] = strlen(p_dst);
  while (1)
  {
    NextToken = BasicParser::getNextToken(v32);
    if (!NextToken)
    {
      goto LABEL_29;
    }

    v7 = NextToken;
    v8 = bufferTypeMap();
    std::string::basic_string[abi:ne200100]<0>(&__p, v7);
    v9 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v8, &__p);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    if (bufferTypeMap() + 8 == v9)
    {
      break;
    }

    if (*(v9 + 56) != 1)
    {
      v11 = *(v9 + 60);
      *&v10 = *(v9 + 64);
      goto LABEL_30;
    }
  }

  v12 = pixelFormatTypeMap();
  std::string::basic_string[abi:ne200100]<0>(&__p, v7);
  v13 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v12, &__p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (pixelFormatTypeMap() + 8 == v13)
  {
LABEL_29:
    v11 = 0;
    v10 = 0uLL;
    goto LABEL_30;
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,Air::PixelFormat,std::string,MTLCompilerDataType>::__tuple_impl(&__p, v13 + 56);
  v14 = __p;
  if ((v28 & 0x80u) == 0)
  {
    v15 = &v26;
  }

  else
  {
    v15 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v16 = v28;
  }

  else
  {
    v16 = v27;
  }

  dataTypeInfoFromString(&v23, v15, v16);
  v11 = v29;
  v21 = v24;
  v17 = BasicParser::getNextToken(v32);
  v18 = strlen(v17);
  dataTypeInfoFromString(&v22, v17, v18);
  v19 = v22;
  if (v28 < 0)
  {
    operator delete(v26);
  }

  *&v10 = v21;
  *(&v10 + 1) = __PAIR64__(v19, v14);
LABEL_30:
  *a3 = v11;
  *(a3 + 4) = v10;
  if (v31 < 0)
  {
    operator delete(__dst);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2579B6B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(a17);
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t arraySizeFromTypeName(void *__src, size_t __len)
{
  v15 = *MEMORY[0x277D85DE8];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v12 = __len;
  if (__len)
  {
    memmove(&v11, __src, __len);
  }

  *(&v11 + __len) = 0;
  v3 = v12;
  v4 = v11;
  if (v12 >= 0)
  {
    v5 = &v11;
  }

  else
  {
    v5 = v11;
  }

  v13[0] = 0;
  v14 = v5;
  v13[1] = strlen(v5);
  NextToken = BasicParser::getNextToken(v13);
  if (!strcmp(NextToken, "array"))
  {
    v8 = 0;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  do
  {
    v7 = NextToken;
    NextToken = BasicParser::getNextToken(v13);
  }

  while (NextToken);
  v8 = atol(v7);
  if (v3 < 0)
  {
LABEL_13:
    operator delete(v4);
  }

LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t tensorDataTypeFromString(void *__src, size_t __len, _DWORD *a3, _DWORD *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v22 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  if (v22 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v23[0] = 0;
  v24 = p_dst;
  v23[1] = strlen(p_dst);
  NextToken = BasicParser::getNextToken(v23);
  if (!strcmp(NextToken, "array"))
  {
    BasicParser::getNextToken(v23);
  }

  v9 = BasicParser::getNextToken(v23);
  v10 = bufferTypeMap();
  std::string::basic_string[abi:ne200100]<0>(__p, v9);
  v11 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v10, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *(v11 + 60);
  BasicParser::getNextToken(v23);
  v13 = BasicParser::getNextToken(v23);
  v14 = bufferTypeMap();
  std::string::basic_string[abi:ne200100]<0>(__p, v13);
  v15 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v14, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  *a4 = *(v15 + 60);
  v16 = BasicParser::getNextToken(v23);
  __p[0] = 0;
  *a3 = strtoul(v16, __p, 10);
  if (v22 < 0)
  {
    operator delete(__dst);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_2579B6F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2579B7620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a52 < 0)
  {
    operator delete(v81[3]);
  }

  if (a58 < 0)
  {
    operator delete(v81[6]);
  }

  if (a64 < 0)
  {
    operator delete(v81[9]);
  }

  if (a70 < 0)
  {
    operator delete(v81[12]);
  }

  if (a72 < 0)
  {
    operator delete(v81[15]);
  }

  if (a73 < 0)
  {
    operator delete(v81[18]);
  }

  if (a74 < 0)
  {
    operator delete(v81[21]);
  }

  if (a75 < 0)
  {
    operator delete(v81[24]);
  }

  if (a76 < 0)
  {
    operator delete(v81[27]);
  }

  if (a77 < 0)
  {
    operator delete(v81[30]);
  }

  while (v80 != &a78)
  {
    v83 = *(v80 - 9);
    v80 -= 4;
    if (v83 < 0)
    {
      operator delete(*v80);
    }
  }

  MEMORY[0x259C6B890](v79, v78);
  _Unwind_Resume(a1);
}

void *std::map<std::string,TextureTokenData>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,TextureTokenData> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,TextureTokenData> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__construct_node<std::pair<std::string const,TextureTokenData> const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_2579B7BE4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,TextureTokenData>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,TextureTokenData>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void bufferTypeMap(void)::$_0::operator()()
{
  MEMORY[0x28223BE20]();
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

void sub_2579BC318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(v81[3]);
  }

  if (a62 < 0)
  {
    operator delete(v81[6]);
  }

  if (a68 < 0)
  {
    operator delete(v81[9]);
  }

  if (a72 < 0)
  {
    operator delete(v81[12]);
  }

  if (a73 < 0)
  {
    operator delete(v81[15]);
  }

  if (a74 < 0)
  {
    operator delete(v81[18]);
  }

  if (a75 < 0)
  {
    operator delete(v81[21]);
  }

  if (a76 < 0)
  {
    operator delete(v81[24]);
  }

  if (a77 < 0)
  {
    operator delete(v81[27]);
  }

  if (a78 < 0)
  {
    operator delete(v81[30]);
  }

  if (a79 < 0)
  {
    operator delete(*v88);
  }

  if (a80 < 0)
  {
    operator delete(v88[3]);
  }

  if (a81 < 0)
  {
    operator delete(v88[6]);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(v88[9]);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(v88[12]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(v88[15]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(v88[18]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(v88[21]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(v88[24]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(v88[27]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(v88[30]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(*v85);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(v85[3]);
  }

  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(v85[6]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(v85[9]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(v85[12]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(v85[15]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(v85[18]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(v85[21]);
  }

  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(v85[24]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(v85[27]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(v85[30]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(*v87);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(v87[3]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(v87[6]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(v87[9]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(v87[12]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(v87[15]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(v87[18]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(v87[21]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(v87[24]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(v87[27]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(v87[30]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(*v86);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(v86[3]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(v86[6]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(v86[9]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(v86[12]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(v86[15]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(v86[18]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(v86[21]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(v86[24]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(v86[27]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(v86[30]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(*v83);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(v83[3]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(v83[6]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(v83[9]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(v83[12]);
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(v83[15]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(v83[18]);
  }

  if (SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(v83[21]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(v83[24]);
  }

  if (SLOBYTE(STACK[0x6BF]) < 0)
  {
    operator delete(v83[27]);
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(v83[30]);
  }

  if (SLOBYTE(STACK[0x6EF]) < 0)
  {
    operator delete(STACK[0x6D8]);
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  if (SLOBYTE(STACK[0x74F]) < 0)
  {
    operator delete(STACK[0x738]);
  }

  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  if (SLOBYTE(STACK[0x77F]) < 0)
  {
    operator delete(STACK[0x768]);
  }

  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(STACK[0x798]);
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(STACK[0x7B0]);
  }

  if (SLOBYTE(STACK[0x7DF]) < 0)
  {
    operator delete(STACK[0x7C8]);
  }

  if (SLOBYTE(STACK[0x7F7]) < 0)
  {
    operator delete(STACK[0x7E0]);
  }

  if (SLOBYTE(STACK[0x80F]) < 0)
  {
    operator delete(STACK[0x7F8]);
  }

  if (SLOBYTE(STACK[0x827]) < 0)
  {
    operator delete(STACK[0x810]);
  }

  if (SLOBYTE(STACK[0x83F]) < 0)
  {
    operator delete(STACK[0x828]);
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(STACK[0x840]);
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(STACK[0x858]);
  }

  if (SLOBYTE(STACK[0x887]) < 0)
  {
    operator delete(STACK[0x870]);
  }

  if (SLOBYTE(STACK[0x89F]) < 0)
  {
    operator delete(STACK[0x888]);
  }

  if (SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  if (SLOBYTE(STACK[0x8CF]) < 0)
  {
    operator delete(STACK[0x8B8]);
  }

  if (SLOBYTE(STACK[0x8E7]) < 0)
  {
    operator delete(STACK[0x8D0]);
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(STACK[0x8E8]);
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(STACK[0x900]);
  }

  if (SLOBYTE(STACK[0x92F]) < 0)
  {
    operator delete(STACK[0x918]);
  }

  if (SLOBYTE(STACK[0x947]) < 0)
  {
    operator delete(STACK[0x930]);
  }

  if (SLOBYTE(STACK[0x95F]) < 0)
  {
    operator delete(STACK[0x948]);
  }

  if (SLOBYTE(STACK[0x977]) < 0)
  {
    operator delete(STACK[0x960]);
  }

  if (SLOBYTE(STACK[0x98F]) < 0)
  {
    operator delete(STACK[0x978]);
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(STACK[0x990]);
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(STACK[0x9A8]);
  }

  if (SLOBYTE(STACK[0x9D7]) < 0)
  {
    operator delete(STACK[0x9C0]);
  }

  if (SLOBYTE(STACK[0x9EF]) < 0)
  {
    operator delete(STACK[0x9D8]);
  }

  if (SLOBYTE(STACK[0xA07]) < 0)
  {
    operator delete(STACK[0x9F0]);
  }

  if (SLOBYTE(STACK[0xA1F]) < 0)
  {
    operator delete(STACK[0xA08]);
  }

  if (SLOBYTE(STACK[0xA37]) < 0)
  {
    operator delete(STACK[0xA20]);
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(STACK[0xA38]);
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(STACK[0xA50]);
  }

  if (SLOBYTE(STACK[0xA7F]) < 0)
  {
    operator delete(STACK[0xA68]);
  }

  if (SLOBYTE(STACK[0xA97]) < 0)
  {
    operator delete(STACK[0xA80]);
  }

  if (SLOBYTE(STACK[0xAAF]) < 0)
  {
    operator delete(STACK[0xA98]);
  }

  if (SLOBYTE(STACK[0xAC7]) < 0)
  {
    operator delete(STACK[0xAB0]);
  }

  if (SLOBYTE(STACK[0xADF]) < 0)
  {
    operator delete(STACK[0xAC8]);
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(STACK[0xAE0]);
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(STACK[0xAF8]);
  }

  if (SLOBYTE(STACK[0xB27]) < 0)
  {
    operator delete(STACK[0xB10]);
  }

  if (SLOBYTE(STACK[0xB3F]) < 0)
  {
    operator delete(STACK[0xB28]);
  }

  if (SLOBYTE(STACK[0xB57]) < 0)
  {
    operator delete(STACK[0xB40]);
  }

  if (SLOBYTE(STACK[0xB6F]) < 0)
  {
    operator delete(STACK[0xB58]);
  }

  if (SLOBYTE(STACK[0xB87]) < 0)
  {
    operator delete(STACK[0xB70]);
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(STACK[0xB88]);
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(STACK[0xBA0]);
  }

  if (SLOBYTE(STACK[0xBCF]) < 0)
  {
    operator delete(STACK[0xBB8]);
  }

  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  if (SLOBYTE(STACK[0xBFF]) < 0)
  {
    operator delete(STACK[0xBE8]);
  }

  if (SLOBYTE(STACK[0xC17]) < 0)
  {
    operator delete(STACK[0xC00]);
  }

  if (SLOBYTE(STACK[0xC2F]) < 0)
  {
    operator delete(STACK[0xC18]);
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(STACK[0xC30]);
  }

  if (SLOBYTE(STACK[0xC5F]) < 0)
  {
    operator delete(STACK[0xC48]);
  }

  if (SLOBYTE(STACK[0xC77]) < 0)
  {
    operator delete(STACK[0xC60]);
  }

  if (SLOBYTE(STACK[0xC8F]) < 0)
  {
    operator delete(STACK[0xC78]);
  }

  if (SLOBYTE(STACK[0xCA7]) < 0)
  {
    operator delete(STACK[0xC90]);
  }

  if (SLOBYTE(STACK[0xCBF]) < 0)
  {
    operator delete(STACK[0xCA8]);
  }

  if (SLOBYTE(STACK[0xCD7]) < 0)
  {
    operator delete(STACK[0xCC0]);
  }

  if (SLOBYTE(STACK[0xCEF]) < 0)
  {
    operator delete(STACK[0xCD8]);
  }

  if (SLOBYTE(STACK[0xD07]) < 0)
  {
    operator delete(STACK[0xCF0]);
  }

  if (SLOBYTE(STACK[0xD1F]) < 0)
  {
    operator delete(STACK[0xD08]);
  }

  if (SLOBYTE(STACK[0xD37]) < 0)
  {
    operator delete(STACK[0xD20]);
  }

  if (SLOBYTE(STACK[0xD4F]) < 0)
  {
    operator delete(STACK[0xD38]);
  }

  if (SLOBYTE(STACK[0xD67]) < 0)
  {
    operator delete(STACK[0xD50]);
  }

  if (SLOBYTE(STACK[0xD7F]) < 0)
  {
    operator delete(STACK[0xD68]);
  }

  if (SLOBYTE(STACK[0xD97]) < 0)
  {
    operator delete(STACK[0xD80]);
  }

  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(STACK[0xD98]);
  }

  if (SLOBYTE(STACK[0xDC7]) < 0)
  {
    operator delete(STACK[0xDB0]);
  }

  if (SLOBYTE(STACK[0xDDF]) < 0)
  {
    operator delete(STACK[0xDC8]);
  }

  if (SLOBYTE(STACK[0xDF7]) < 0)
  {
    operator delete(STACK[0xDE0]);
  }

  if (SLOBYTE(STACK[0xE0F]) < 0)
  {
    operator delete(STACK[0xDF8]);
  }

  if (SLOBYTE(STACK[0xE27]) < 0)
  {
    operator delete(STACK[0xE10]);
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(STACK[0xE28]);
  }

  if (SLOBYTE(STACK[0xE57]) < 0)
  {
    operator delete(STACK[0xE40]);
  }

  if (SLOBYTE(STACK[0xE6F]) < 0)
  {
    operator delete(STACK[0xE58]);
  }

  if (SLOBYTE(STACK[0xE87]) < 0)
  {
    operator delete(STACK[0xE70]);
  }

  if (SLOBYTE(STACK[0xE9F]) < 0)
  {
    operator delete(STACK[0xE88]);
  }

  if (SLOBYTE(STACK[0xEB7]) < 0)
  {
    operator delete(STACK[0xEA0]);
  }

  if (SLOBYTE(STACK[0xECF]) < 0)
  {
    operator delete(STACK[0xEB8]);
  }

  if (SLOBYTE(STACK[0xEE7]) < 0)
  {
    operator delete(STACK[0xED0]);
  }

  if (SLOBYTE(STACK[0xEFF]) < 0)
  {
    operator delete(STACK[0xEE8]);
  }

  if (SLOBYTE(STACK[0xF17]) < 0)
  {
    operator delete(STACK[0xF00]);
  }

  if (SLOBYTE(STACK[0xF2F]) < 0)
  {
    operator delete(STACK[0xF18]);
  }

  if (SLOBYTE(STACK[0xF47]) < 0)
  {
    operator delete(STACK[0xF30]);
  }

  if (SLOBYTE(STACK[0xF5F]) < 0)
  {
    operator delete(STACK[0xF48]);
  }

  if (SLOBYTE(STACK[0xF77]) < 0)
  {
    operator delete(STACK[0xF60]);
  }

  if (SLOBYTE(STACK[0xF8F]) < 0)
  {
    operator delete(STACK[0xF78]);
  }

  if (SLOBYTE(STACK[0xFA7]) < 0)
  {
    operator delete(STACK[0xF90]);
  }

  if (SLOBYTE(STACK[0xFBF]) < 0)
  {
    operator delete(STACK[0xFA8]);
  }

  if (SLOBYTE(STACK[0xFD7]) < 0)
  {
    operator delete(STACK[0xFC0]);
  }

  if (SLOBYTE(STACK[0xFEF]) < 0)
  {
    operator delete(STACK[0xFD8]);
  }

  if (SLOBYTE(STACK[0x1007]) < 0)
  {
    operator delete(STACK[0xFF0]);
  }

  if (SLOBYTE(STACK[0x101F]) < 0)
  {
    operator delete(STACK[0x1008]);
  }

  if (*(v84 + 23) < 0)
  {
    operator delete(*v84);
  }

  if (*(v84 + 47) < 0)
  {
    operator delete(*(v84 + 24));
  }

  while (v82 != &STACK[0x1050])
  {
    v89 = *(v82 - 17);
    v82 -= 5;
    if (v89 < 0)
    {
      operator delete(*v82);
    }
  }

  MEMORY[0x259C6B890](a10, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::string,TokenData>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,TokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TokenData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,TokenData> const&>(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,TokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TokenData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,TokenData> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,TokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TokenData>>>::__construct_node<std::pair<std::string const,TokenData> const&>();
  }

  return result;
}

void sub_2579BDC40(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,TextureTokenData>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t pixelFormatTypeMap(void)
{
  if (atomic_load_explicit(&pixelFormatTypeMapOnce, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&pixelFormatTypeMapOnce, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<pixelFormatTypeMap(void)::$_0 &&>>);
  }

  return pixelFormatTypeMap(void)::nonGlobalPixelFormatTypeMap;
}

void sub_2579BE450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, __int16 a63)
{
  v83 = -1024;
  v84 = v80;
  do
  {
    v84 = std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>::~pair(v84) - 64;
    v83 += 64;
  }

  while (v83);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(v81[1]);
  }

  if (a51 < 0)
  {
    operator delete(v81[5]);
  }

  if (a58 < 0)
  {
    operator delete(v81[9]);
  }

  if (a65 < 0)
  {
    operator delete(v81[13]);
  }

  if (a72 < 0)
  {
    operator delete(v81[17]);
  }

  if (a73 < 0)
  {
    operator delete(v81[21]);
  }

  if (a74 < 0)
  {
    operator delete(v81[25]);
  }

  if (a75 < 0)
  {
    operator delete(v81[29]);
  }

  if (a76 < 0)
  {
    operator delete(v81[33]);
  }

  if (a77 < 0)
  {
    operator delete(v81[37]);
  }

  if (a78 < 0)
  {
    operator delete(v81[41]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(v81[45]);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(v81[49]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(v81[53]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(v81[57]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(v81[61]);
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(v81[65]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(v81[69]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(v81[73]);
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(v81[77]);
  }

  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(v81[81]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(v81[85]);
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(v81[89]);
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(v81[93]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(v81[97]);
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(v81[101]);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(v81[105]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(v81[109]);
  }

  MEMORY[0x259C6B890](v79, v78);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>::~pair(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,Air::PixelFormat,std::string,MTLCompilerDataType>::__tuple_impl(&this[1], a3);
  return this;
}

void sub_2579BE920(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = a3 << 6;
    do
    {
      std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>> const&>(a1, v4, a2);
      a2 += 8;
      v6 -= 64;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::__construct_node<std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>> const&>();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,Air::PixelFormat,std::string,MTLCompilerDataType>::__tuple_impl(&this[1], a2 + 24);
  return this;
}

void sub_2579BEB70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,0>(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

_DWORD *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,Air::PixelFormat,std::string,MTLCompilerDataType>::__tuple_impl(_DWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  a1[8] = *(a2 + 32);
  return a1;
}

void MTLFragmentInputLinkingPass::fragmentInputLinking(int a1, llvm::Module *this, uint64_t a3)
{
  *&v47 = "air.fragment";
  v49 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v47);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v7 = (Operand - 8 * *(Operand + 8));
  v8 = v7[2];
  v9 = *(*v7 + 128);
  __src = 0;
  v45 = 0;
  v46 = 0;
  if (v8)
  {
    v10 = *(v9 + 96);
    std::vector<unsigned int>::vector[abi:ne200100](__p, v10);
    MTLFrameworkPass::getArgumentMetadataIndices(v8, __p);
    if (*(v9 + 18))
    {
      llvm::Function::BuildLazyArguments(v9);
    }

    v42 = a3;
    v11 = v10;
    if (v10)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = (*(v9 + 88) + 8);
      while (1)
      {
        v17 = *(__p[0] + v12);
        if (v17 != -1)
        {
          v18 = *(v8 - 8 * *(v8 + 8) + 8 * v17);
          String = llvm::MDString::getString(*(v18 - 8 * *(v18 + 8) + 8));
          if (v20 <= 23)
          {
            if (v20 == 15)
            {
              if (!memcmp(String, "air.point_coord", 0xFuLL))
              {
                ++v14;
                v15 += 2;
              }
            }

            else if (v20 == 18)
            {
              v21 = *String == 0x676172662E726961 && String[1] == 0x706E695F746E656DLL;
              if (v21 && *(String + 8) == 29813)
              {
                LODWORD(v47) = 0;
                *(&v47 + 1) = 0;
                *&v48 = 0;
                *(&v48 + 5) = 0;
                MTLFrameworkPass::extractVaryingInfoFromMetadata(&v47, v18, 2u, 0);
                LODWORD(v47) = v12;
                v23 = BYTE12(v48) & 0xFE;
                if (*v16)
                {
                  ++v23;
                }

                BYTE12(v48) = v23;
                v24 = v45;
                if (v45 >= v46)
                {
                  v27 = __src;
                  v28 = v45 - __src;
                  v29 = (v45 - __src) >> 5;
                  v30 = v29 + 1;
                  if ((v29 + 1) >> 59)
                  {
                    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                  }

                  v31 = v46 - __src;
                  if ((v46 - __src) >> 4 > v30)
                  {
                    v30 = v31 >> 4;
                  }

                  if (v31 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v30 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  if (v30)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<VaryingInfo>>(&__src, v30);
                  }

                  v32 = (32 * v29);
                  v33 = v48;
                  *v32 = v47;
                  v32[1] = v33;
                  v26 = (32 * v29 + 32);
                  memcpy(0, v27, v28);
                  v34 = __src;
                  __src = 0;
                  v45 = v26;
                  v46 = 0;
                  if (v34)
                  {
                    operator delete(v34);
                  }
                }

                else
                {
                  v25 = v48;
                  *v45 = v47;
                  *(v24 + 1) = v25;
                  v26 = (v24 + 32);
                }

                v45 = v26;
                ++v14;
                v15 += MTLDataTypeGetComponentCount(SDWORD2(v48));
              }
            }

            goto LABEL_40;
          }

          if (v20 != 24)
          {
            if (v20 != 29 || memcmp(String, "air.render_target_array_index", 0x1DuLL))
            {
              goto LABEL_40;
            }

            v13 = dataTypeFromMetadata(2u, v18);
LABEL_29:
            ++v14;
            ++v15;
            goto LABEL_40;
          }

          if (!memcmp(String, "air.viewport_array_index", 0x18uLL))
          {
            goto LABEL_29;
          }
        }

LABEL_40:
        ++v12;
        v16 += 5;
        if (v11 == v12)
        {
          goto LABEL_44;
        }
      }
    }

    v15 = 0;
    v14 = 0;
    v13 = 0;
LABEL_44:
    v36 = 126 - 2 * __clz((v45 - __src) >> 5);
    v37 = *this;
    if (v45 == __src)
    {
      v38 = 0;
    }

    else
    {
      v38 = v36;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,false>(__src, v45, &v47, v38, 1);
    if (((v45 - __src) & 0x1FFFFFFFE0) != 0)
    {
      v39 = 0;
      v35 = 0;
      v40 = ((v45 - __src) >> 5);
      do
      {
        v41 = __src + v39;
        *(__src + v39 + 28);
        MTLFrameworkPass::addLocationToMetadata(v37, v8, *(__p[0] + *(__src + v39)));
        v35 += v41[28] & 1;
        v39 += 32;
        --v40;
      }

      while (v40);
    }

    else
    {
      v35 = 0;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    a3 = v42;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v35 = 0;
  }

  std::function<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::operator()(a3, this, v14, v15, v13, v35);
  if (__src)
  {
    v45 = __src;
    operator delete(__src);
  }
}

void sub_2579BF13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::operator()(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v12 = a2;
  v11 = a3;
  v9 = a5;
  v10 = a4;
  v8 = a6;
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6, &v12, &v11, &v10, &v9, &v8);
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2579BF258(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<VaryingInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,false>(unint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(v9, (v9 + 32), a2 - 2);
          return;
        case 4uLL:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(v9, v9 + 32, v9 + 64, a2 - 2);
          return;
        case 5uLL:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(v9, v9 + 32, v9 + 64, v9 + 96, a2 - 2);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v23 = *(v9 + 8);
        v24 = *(v9 + 16);
        *v28 = *(a2 - 24);
        v25 = llvm::StringRef::compare(v28, v23, v24);
        if (v25 == -1)
        {
          v26 = *(v9 + 16);
          *v28 = *v9;
          *&v28[16] = v26;
          v27 = *(a2 - 2);
          *(v9 + 13) = *(a2 - 19);
          *v9 = v27;
          *(a2 - 2) = *v28;
          *(a2 - 19) = *&v28[13];
        }

        return;
      }
    }

    if (v12 <= 23)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(v9, a2);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      break;
    }

    v13 = v12 >> 1;
    v14 = (v9 + 32 * (v12 >> 1));
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>((v9 + 32 * (v12 >> 1)), v9, a2 - 2);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(v9, (v9 + 32 * (v12 >> 1)), a2 - 2);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>((v9 + 32), v14 - 2, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>((v9 + 64), (v9 + 32 + 32 * v13), a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(v14 - 2, v14, (v9 + 32 + 32 * v13));
      v15 = *(v9 + 16);
      *v28 = *v9;
      *&v28[16] = v15;
      v16 = *v14;
      *(v9 + 13) = *(v14 + 13);
      *v9 = v16;
      v17 = *v28;
      *(v14 + 13) = *&v28[13];
      *v14 = v17;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v18 = *(v9 + 8);
    v19 = *(v9 + 16);
    *v28 = *(v9 - 24);
    if (llvm::StringRef::compare(v28, v18, v19) != -1)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,VaryingInfo *,std::__less<void,void> &>(v9, a2);
      goto LABEL_22;
    }

LABEL_17:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,VaryingInfo *,std::__less<void,void> &>(v9, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_20;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(v9, v20);
    v9 = (v20 + 2);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>((v20 + 2), a2))
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,false>(a1, v20, a3, -v11, a5 & 1);
      v9 = (v20 + 2);
LABEL_22:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v9 != a2)
  {
    std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,VaryingInfo *>(v9, a2, a2, a3);
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  *v32 = *(a2 + 8);
  v8 = llvm::StringRef::compare(v32, v6, v7);
  v10 = *(a3 + 1);
  v9 = *(a3 + 2);
  v11 = *(a2 + 1);
  v12 = *(a2 + 2);
  if (v8 == -1)
  {
    *v32 = *(a3 + 1);
    *&v32[8] = v9;
    if (llvm::StringRef::compare(v32, v11, v12) == -1)
    {
      v19 = *a1;
      v30 = a1[1];
      *v32 = *a1;
      *&v32[16] = v30;
      v31 = *(a3 + 13);
      *a1 = *a3;
      *(a1 + 13) = v31;
    }

    else
    {
      v15 = a1[1];
      *v32 = *a1;
      v14 = *v32;
      *&v32[16] = v15;
      v16 = *(a2 + 13);
      *a1 = *a2;
      *(a1 + 13) = v16;
      *a2 = v14;
      *(a2 + 13) = *&v32[13];
      v17 = *(a2 + 1);
      v18 = *(a2 + 2);
      *v32 = *(a3 + 8);
      if (llvm::StringRef::compare(v32, v17, v18) != -1)
      {
        return 1;
      }

      v19 = *a2;
      v20 = a2[1];
      *v32 = *a2;
      *&v32[16] = v20;
      v21 = *(a3 + 13);
      *a2 = *a3;
      *(a2 + 13) = v21;
    }

    *a3 = v19;
    *(a3 + 13) = *&v32[13];
    return 1;
  }

  *v32 = *(a3 + 1);
  *&v32[8] = v9;
  if (llvm::StringRef::compare(v32, v11, v12) != -1)
  {
    return 0;
  }

  v23 = a2[1];
  *v32 = *a2;
  v22 = *v32;
  *&v32[16] = v23;
  v24 = *(a3 + 13);
  *a2 = *a3;
  *(a2 + 13) = v24;
  *a3 = v22;
  *(a3 + 13) = *&v32[13];
  v25 = *(a1 + 1);
  v26 = *(a1 + 2);
  *v32 = *(a2 + 8);
  if (llvm::StringRef::compare(v32, v25, v26) == -1)
  {
    v28 = a1[1];
    *v32 = *a1;
    v27 = *v32;
    *&v32[16] = v28;
    v29 = *(a2 + 13);
    *a1 = *a2;
    *(a1 + 13) = v29;
    *a2 = v27;
    *(a2 + 13) = *&v32[13];
  }

  return 1;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(a1, a2, a3);
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  *v24 = *(a4 + 8);
  if (llvm::StringRef::compare(v24, v8, v9) == -1)
  {
    v12 = *(a3 + 16);
    *v24 = *a3;
    v11 = *v24;
    *&v24[16] = v12;
    v13 = *(a4 + 13);
    *a3 = *a4;
    *(a3 + 13) = v13;
    *a4 = v11;
    *(a4 + 13) = *&v24[13];
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    *v24 = *(a3 + 8);
    if (llvm::StringRef::compare(v24, v14, v15) == -1)
    {
      v17 = *(a2 + 16);
      *v24 = *a2;
      v16 = *v24;
      *&v24[16] = v17;
      v18 = *(a3 + 13);
      *a2 = *a3;
      *(a2 + 13) = v18;
      *a3 = v16;
      *(a3 + 13) = *&v24[13];
      v19 = *(a1 + 8);
      v20 = *(a1 + 16);
      *v24 = *(a2 + 8);
      if (llvm::StringRef::compare(v24, v19, v20) == -1)
      {
        v22 = *(a1 + 16);
        *v24 = *a1;
        v21 = *v24;
        *&v24[16] = v22;
        v23 = *(a2 + 13);
        *a1 = *a2;
        *(a1 + 13) = v23;
        *a2 = v21;
        result = *&v24[13];
        *(a2 + 13) = *&v24[13];
      }
    }
  }

  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 8);
  v11 = *(a4 + 16);
  *v31 = *(a5 + 8);
  if (llvm::StringRef::compare(v31, v10, v11) == -1)
  {
    v14 = *(a4 + 16);
    *v31 = *a4;
    v13 = *v31;
    *&v31[16] = v14;
    v15 = *(a5 + 13);
    *a4 = *a5;
    *(a4 + 13) = v15;
    *a5 = v13;
    *(a5 + 13) = *&v31[13];
    v16 = *(a3 + 8);
    v17 = *(a3 + 16);
    *v31 = *(a4 + 8);
    if (llvm::StringRef::compare(v31, v16, v17) == -1)
    {
      v19 = *(a3 + 16);
      *v31 = *a3;
      v18 = *v31;
      *&v31[16] = v19;
      v20 = *(a4 + 13);
      *a3 = *a4;
      *(a3 + 13) = v20;
      *a4 = v18;
      *(a4 + 13) = *&v31[13];
      v21 = *(a2 + 8);
      v22 = *(a2 + 16);
      *v31 = *(a3 + 8);
      if (llvm::StringRef::compare(v31, v21, v22) == -1)
      {
        v24 = *(a2 + 16);
        *v31 = *a2;
        v23 = *v31;
        *&v31[16] = v24;
        v25 = *(a3 + 13);
        *a2 = *a3;
        *(a2 + 13) = v25;
        *a3 = v23;
        *(a3 + 13) = *&v31[13];
        v26 = *(a1 + 8);
        v27 = *(a1 + 16);
        *v31 = *(a2 + 8);
        if (llvm::StringRef::compare(v31, v26, v27) == -1)
        {
          v29 = *(a1 + 16);
          *v31 = *a1;
          v28 = *v31;
          *&v31[16] = v29;
          v30 = *(a2 + 13);
          *a1 = *a2;
          *(a1 + 13) = v30;
          *a2 = v28;
          result = *&v31[13];
          *(a2 + 13) = *&v31[13];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v22 = v2;
    v23 = v3;
    v5 = result;
    v6 = (result + 32);
    if ((result + 32) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v6;
        v10 = v8[1];
        v11 = v8[2];
        v21 = *(v8 + 5);
        result = llvm::StringRef::compare(&v21, v10, v11);
        if (result == -1)
        {
          v12 = *v9;
          v13 = v8[5];
          v14 = v8[6];
          v15 = v7;
          v16 = v8[7];
          while (1)
          {
            v17 = v5 + v15;
            *(v17 + 32) = *(v5 + v15);
            *(v17 + 45) = *(v5 + v15 + 13);
            if (!v15)
            {
              break;
            }

            v18 = *(v17 - 24);
            v19 = *(v17 - 16);
            *&v21 = v13;
            *(&v21 + 1) = v14;
            result = llvm::StringRef::compare(&v21, v18, v19);
            v15 -= 32;
            if (result != -1)
            {
              v20 = v5 + v15 + 32;
              goto LABEL_10;
            }
          }

          v20 = v5;
LABEL_10:
          *v20 = v12;
          *(v20 + 8) = v13;
          *(v20 + 16) = v14;
          *(v20 + 24) = v16;
          *(v20 + 28) = BYTE4(v16);
        }

        v6 = v9 + 4;
        v7 += 32;
        v8 = v9;
      }

      while (v9 + 4 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v19 = v2;
    v20 = v3;
    v5 = result;
    v6 = (result + 32);
    while (v6 != a2)
    {
      v7 = v6;
      v8 = v5[1];
      v9 = v5[2];
      v18 = *(v5 + 5);
      result = llvm::StringRef::compare(&v18, v8, v9);
      if (result == -1)
      {
        v10 = *v7;
        v11 = v5[5];
        v12 = v5[6];
        v13 = v7;
        v14 = v5[7];
        do
        {
          v15 = v13 - 2;
          *v13 = *(v13 - 2);
          *(v13 + 13) = *(v13 - 19);
          v16 = *(v13 - 7);
          v17 = *(v13 - 6);
          *&v18 = v11;
          *(&v18 + 1) = v12;
          result = llvm::StringRef::compare(&v18, v16, v17);
          v13 = v15;
        }

        while (result == -1);
        *v15 = v10;
        *(v15 + 1) = v11;
        *(v15 + 2) = v12;
        *(v15 + 6) = v14;
        *(v15 + 28) = BYTE4(v14);
      }

      v6 = v7 + 4;
      v5 = v7;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,VaryingInfo *,std::__less<void,void> &>(uint64_t *a1, _OWORD *a2)
{
  v2 = a2;
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *(a2 - 3);
  v9 = *(v2 - 2);
  *v31 = v4;
  *&v31[8] = v7;
  if (llvm::StringRef::compare(v31, v8, v9) == -1)
  {
    v15 = a1;
    do
    {
      v11 = v15 + 32;
      v16 = *(v15 + 40);
      v17 = *(v15 + 48);
      *v31 = v4;
      *&v31[8] = v7;
      v18 = llvm::StringRef::compare(v31, v16, v17);
      v15 = v11;
    }

    while (v18 != -1);
  }

  else
  {
    v10 = (a1 + 4);
    do
    {
      v11 = v10;
      if (v10 >= v2)
      {
        break;
      }

      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      *v31 = v4;
      *&v31[8] = v7;
      v14 = llvm::StringRef::compare(v31, v12, v13);
      v10 = v11 + 32;
    }

    while (v14 != -1);
  }

  if (v11 >= v2)
  {
    v19 = v2;
  }

  else
  {
    do
    {
      v19 = v2 - 2;
      v20 = *(v2 - 3);
      v21 = *(v2 - 2);
      *v31 = v4;
      *&v31[8] = v7;
      v2 -= 2;
    }

    while (llvm::StringRef::compare(v31, v20, v21) == -1);
  }

  while (v11 < v19)
  {
    v22 = *(v11 + 16);
    *v31 = *v11;
    *&v31[16] = v22;
    v23 = *v19;
    *(v11 + 13) = *(v19 + 13);
    *v11 = v23;
    v24 = *v31;
    *(v19 + 13) = *&v31[13];
    *v19 = v24;
    do
    {
      v25 = *(v11 + 40);
      v26 = *(v11 + 48);
      v11 += 32;
      *v31 = v4;
      *&v31[8] = v7;
    }

    while (llvm::StringRef::compare(v31, v25, v26) != -1);
    do
    {
      v27 = *(v19 - 3);
      v28 = *(v19 - 2);
      v19 -= 2;
      *v31 = v4;
      *&v31[8] = v7;
    }

    while (llvm::StringRef::compare(v31, v27, v28) == -1);
  }

  if ((v11 - 32) != a1)
  {
    v29 = *(v11 - 32);
    *(a1 + 13) = *(v11 - 19);
    *a1 = v29;
  }

  *(v11 - 32) = v5;
  *(v11 - 24) = v4;
  *(v11 - 16) = v7;
  *(v11 - 8) = v6;
  *(v11 - 4) = BYTE4(v6);
  return v11;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,VaryingInfo *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v4 = 0;
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  do
  {
    *v20 = *&a1[v4 + 5];
    v4 += 4;
  }

  while (llvm::StringRef::compare(v20, v5, v7) == -1);
  v9 = &a1[v4];
  if (v4 == 4)
  {
    while (v9 < a2)
    {
      v10 = a2 - 4;
      *v20 = *(a2 - 3);
      a2 -= 4;
      if (llvm::StringRef::compare(v20, v5, v7) == -1)
      {
        goto LABEL_9;
      }
    }

    v10 = a2;
  }

  else
  {
    do
    {
      v10 = a2 - 4;
      *v20 = *(a2 - 3);
      a2 -= 4;
    }

    while (llvm::StringRef::compare(v20, v5, v7) != -1);
  }

LABEL_9:
  v11 = v9;
  if (v9 < v10)
  {
    v12 = v10;
    do
    {
      v14 = *(v11 + 1);
      *v20 = *v11;
      v13 = *v20;
      *&v20[16] = v14;
      v15 = *(v12 + 13);
      *v11 = *v12;
      *(v11 + 13) = v15;
      *(v12 + 13) = *&v20[13];
      *v12 = v13;
      do
      {
        v16 = *(v11 + 5);
        v11 += 4;
        *v20 = v16;
      }

      while (llvm::StringRef::compare(v20, v5, v7) == -1);
      do
      {
        v17 = *(v12 - 3);
        v12 -= 4;
        *v20 = v17;
      }

      while (llvm::StringRef::compare(v20, v5, v7) != -1);
    }

    while (v11 < v12);
  }

  result = (v11 - 4);
  if (v11 - 4 != a1)
  {
    v19 = *result;
    *(a1 + 13) = *(v11 - 19);
    *a1 = v19;
  }

  *(v11 - 4) = v6;
  *(v11 - 3) = v5;
  *(v11 - 2) = v7;
  *(v11 - 2) = v8;
  *(v11 - 4) = BYTE4(v8);
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 16);
        *v26 = *(a2 - 24);
        if (llvm::StringRef::compare(v26, v5, v6) == -1)
        {
          v8 = *(a1 + 16);
          *v26 = *a1;
          v7 = *v26;
          *&v26[16] = v8;
          v9 = *(a2 - 19);
          *a1 = *(a2 - 32);
          *(a1 + 13) = v9;
          *(a2 - 32) = v7;
          *(a2 - 19) = *&v26[13];
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(a1, (a1 + 32), (a2 - 32));
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(a1, a1 + 32, a1 + 64, (a2 - 32));
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(a1, a1 + 32, a1 + 64, a1 + 96, (a2 - 32));
      return 1;
  }

LABEL_11:
  v10 = a1 + 64;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,0>(a1, (a1 + 32), (a1 + 64));
  v11 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(v10 + 8);
    v15 = *(v10 + 16);
    *v26 = *(v11 + 8);
    if (llvm::StringRef::compare(v26, v14, v15) == -1)
    {
      v16 = *v11;
      v17 = *(v11 + 8);
      v18 = v12;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      while (1)
      {
        v21 = a1 + v18;
        *(v21 + 96) = *(a1 + v18 + 64);
        *(v21 + 109) = *(a1 + v18 + 77);
        if (v18 == -64)
        {
          break;
        }

        v22 = *(v21 + 40);
        v23 = *(v21 + 48);
        *v26 = v17;
        *&v26[8] = v20;
        v18 -= 32;
        if (llvm::StringRef::compare(v26, v22, v23) != -1)
        {
          v24 = a1 + v18 + 96;
          goto LABEL_19;
        }
      }

      v24 = a1;
LABEL_19:
      *v24 = v16;
      *(v24 + 8) = v17;
      *(v24 + 16) = v20;
      *(v24 + 24) = v19;
      ++v13;
      *(v24 + 28) = BYTE4(v19);
      if (v13 == 8)
      {
        return v11 + 32 == a2;
      }
    }

    v10 = v11;
    v12 += 32;
    v11 += 32;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

uint64_t llvm::StringRef::compare(uint64_t a1, const void *a2, size_t a3)
{
  v3 = a3;
  v4 = *(a1 + 8);
  if (a3 >= v4)
  {
    a3 = *(a1 + 8);
  }

  if (a3)
  {
    v5 = memcmp(*a1, a2, a3);
    if (v5)
    {
      return (v5 >> 31) | 1u;
    }
  }

  if (v4 < v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

_OWORD *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,VaryingInfo *>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = a1 + 32 * v9;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(a1, a4, v8, v11);
        v11 -= 32;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *(a1 + 8);
        v14 = *(a1 + 16);
        *v24 = *(v12 + 8);
        if (llvm::StringRef::compare(v24, v13, v14) == -1)
        {
          v16 = v12[1];
          *v24 = *v12;
          v15 = *v24;
          *&v24[16] = v16;
          v17 = *(a1 + 13);
          *v12 = *a1;
          *(v12 + 13) = v17;
          *a1 = v15;
          *(a1 + 13) = *&v24[13];
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v18 = a2 - 2;
      do
      {
        v19 = *(a1 + 16);
        *v24 = *a1;
        *&v24[16] = v19;
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(a1, a4, v8);
        if (v18 == v20)
        {
          *v20 = *v24;
          *(v20 + 13) = *&v24[13];
        }

        else
        {
          v21 = *v18;
          *(v20 + 13) = *(v18 + 13);
          *v20 = v21;
          *v18 = *v24;
          *(v18 + 13) = *&v24[13];
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(a1, (v20 + 2), a4, (v20 - a1 + 32) >> 5);
        }

        v18 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v32 = v4;
    v33 = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 5)
    {
      v11 = (a4 - result) >> 4;
      v12 = v11 + 1;
      v13 = result + 32 * (v11 + 1);
      v14 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v15 = *(v13 + 40);
        v16 = *(v13 + 48);
        v31 = *(v13 + 8);
        v17 = llvm::StringRef::compare(&v31, v15, v16);
        v13 += 32 * (v17 == -1);
        if (v17 == -1)
        {
          v12 = v14;
        }
      }

      v18 = *(v7 + 8);
      v19 = *(v7 + 16);
      v31 = *(v13 + 8);
      result = llvm::StringRef::compare(&v31, v18, v19);
      if (result != -1)
      {
        v20 = *(v7 + 8);
        v30 = *v7;
        v21 = *(v7 + 16);
        v22 = *(v7 + 24);
        do
        {
          v23 = v7;
          v7 = v13;
          v24 = *v13;
          *(v23 + 13) = *(v13 + 13);
          *v23 = v24;
          if (v9 < v12)
          {
            break;
          }

          v25 = (2 * v12) | 1;
          v13 = v8 + 32 * v25;
          v26 = 2 * v12 + 2;
          if (v26 < a3)
          {
            v27 = *(v13 + 40);
            v28 = *(v13 + 48);
            v31 = *(v13 + 8);
            v29 = llvm::StringRef::compare(&v31, v27, v28);
            v13 += 32 * (v29 == -1);
            if (v29 == -1)
            {
              v25 = v26;
            }
          }

          v31 = *(v13 + 8);
          result = llvm::StringRef::compare(&v31, v20, v21);
          v12 = v25;
        }

        while (result != -1);
        *v7 = v30;
        *(v7 + 8) = v20;
        *(v7 + 16) = v21;
        *(v7 + 24) = v22;
        *(v7 + 28) = BYTE4(v22);
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5];
    v8 = v7 + 2;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v11 = *(v7 + 9);
      v12 = *(v7 + 10);
      v15 = *(v7 + 40);
      if (llvm::StringRef::compare(&v15, v11, v12) == -1)
      {
        v8 = v7 + 4;
        v5 = v10;
      }

      else
      {
        v5 = v9;
      }
    }

    v13 = *v8;
    *(a1 + 13) = *(v8 + 13);
    *a1 = v13;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = (result + 32 * (v6 >> 1));
    v11 = *(a2 - 24);
    v12 = *(a2 - 16);
    v20 = *(v10 + 8);
    result = llvm::StringRef::compare(&v20, v11, v12);
    if (result == -1)
    {
      v15 = *(a2 - 32);
      v14 = *(a2 - 24);
      v13 = (a2 - 32);
      v16 = *(v13 + 2);
      v17 = *(v13 + 3);
      do
      {
        v18 = v13;
        v13 = v10;
        v19 = *v10;
        *(v18 + 13) = *(v10 + 13);
        *v18 = v19;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (v8 + 32 * v9);
        v20 = *(v10 + 8);
        result = llvm::StringRef::compare(&v20, v14, v16);
      }

      while (result == -1);
      *v13 = v15;
      *(v13 + 1) = v14;
      *(v13 + 2) = v16;
      *(v13 + 6) = v17;
      *(v13 + 28) = BYTE4(v17);
    }
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

void MTLStackOverflowPass::~MTLStackOverflowPass(MTLStackOverflowPass *this)
{
  *this = &unk_2868EBC38;
  v2 = this + 160;
  llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::~DenseMap(this + 184);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EBC38;
  v2 = this + 160;
  llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::~DenseMap(this + 184);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v2);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLStackOverflowPass::runOnModule(MTLStackOverflowPass *this, llvm::Module *a2)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::clear(this + 184);
  MetalModulePass::runOnModule(this, a2);
  MTLStackOverflowPass::loadStackDepth(this);
  if ((*(*(*(this + 8) + 72) + 24) & 4) != 0)
  {
    MTLStackOverflowPass::findRecursiveCalls(this);
    MTLStackOverflowPass::findIndirectCalls(this);
    v4 = llvm::detail::DenseSetImpl<llvm::CallInst *,llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::DenseMapInfo<llvm::CallInst *,void>>::begin(this + 184);
    if ((*(this + 23) + 8 * *(this + 50)) != v4)
    {
      MTLStackOverflowPass::instrumentIndirectCall(this, *v4);
    }
  }

  return 1;
}

uint64_t llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::init(uint64_t result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 16) = v4;
    result = MEMORY[0x259C6A8D0](8 * v4, 8);
    *v2 = result;
    *(v2 + 8) = 0;
    v5 = *(v2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0x1FFFFFFFFFFFFFFFLL;
      v8 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0x1FFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (result + 8);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_257A6D000)));
        if (v12.i8[0])
        {
          *(v11 - 1) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 2;
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

void MTLStackOverflowPass::loadStackDepth(MTLBoundsCheck::SharedPassData **this)
{
  v19[1] = *MEMORY[0x277D85DE8];
  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (!EntryFunction)
  {
    goto LABEL_9;
  }

  v3 = *(EntryFunction + 80);
  if (v3)
  {
    v4 = (v3 - 24);
  }

  else
  {
    v4 = 0;
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v15, v4, 0, 0, 0);
  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v4);
  llvm::IRBuilderBase::SetInsertPoint(v15, v4, FirstInsertionPt);
  v7 = this[8];
  v8 = *(v7 + 6);
  if (v8)
  {
    goto LABEL_6;
  }

  v13 = *(v7 + 5);
  if (v13)
  {
    v14 = *(this + 30);
    if (v14 > 4)
    {
      if (v14 == 5)
      {
        v8 = v13 + 3;
        goto LABEL_6;
      }

      if (v14 == 6)
      {
        v8 = v13 + 4;
        goto LABEL_6;
      }
    }

    else
    {
      if (!v14)
      {
        v8 = v13 + 1;
        goto LABEL_6;
      }

      if (v14 == 1)
      {
        v8 = v13 + 2;
LABEL_6:
        v9 = *v8;
        llvm::Type::getInt32Ty(v17, v6);
        v10 = llvm::ConstantInt::get();
        inserted = MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(this[8]);
        llvm::IRBuilderBase::CreateAlignedStore(v15, v10, inserted, 0);
      }
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v19);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v18);
  if (v15[0] != &v16)
  {
    free(v15[0]);
  }

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t MTLStackOverflowPass::findRecursiveCalls(MTLStackOverflowPass *this)
{
  MEMORY[0x259C6B090](v23, *(this + 6));
  llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::scc_iterator(&v15, v24);
  v14 = 0;
  v12 = 0u;
  *__p = 0u;
  *v10 = 0u;
  *v11 = 0u;
  memset(v9, 0, sizeof(v9));
  while (llvm::iterator_facade_base<llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>,std::forward_iterator_tag,std::vector<llvm::CallGraphNode *> const,long,std::vector<llvm::CallGraphNode *> const*,std::vector<llvm::CallGraphNode *> const&>::operator!=(&v15, v9))
  {
    v3 = v19;
    v2 = v20;
    if ((v20 - v19) < 9)
    {
      while (v3 != v2)
      {
        v5 = *v3;
        if (*(*v3 + 8) && (llvm::Function::hasFnAttribute() & 1) == 0)
        {
          v6 = *(v5 + 16);
          v7 = *(v5 + 24);
          if (v6 != v7)
          {
            while (*(v6 + 32) != v5)
            {
              v6 += 40;
              if (v6 == v7)
              {
                goto LABEL_18;
              }
            }
          }

          if (v6 != v7)
          {
            MTLStackOverflowPass::findAllCallsTo(this, *(v5 + 8));
          }
        }

LABEL_18:
        v3 += 8;
      }
    }

    else
    {
      while (v3 != v2)
      {
        v4 = *v3;
        if (*(*v3 + 8))
        {
          if ((llvm::Function::hasFnAttribute() & 1) == 0)
          {
            MTLStackOverflowPass::findAllCallsTo(this, *(v4 + 8));
          }
        }

        v3 += 8;
      }
    }

    llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::GetNextSCC(&v15);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v11[1])
  {
    *&v12 = v11[1];
    operator delete(v11[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(v9 + 8);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(&v16);
  return MEMORY[0x259C6B0A0](v23);
}

uint64_t MTLStackOverflowPass::findIndirectCalls(uint64_t this)
{
  v1 = *(this + 48);
  v2 = *(v1 + 32);
  v32 = v1 + 24;
  if (v2 != v1 + 24)
  {
    v3 = this;
    v4 = 0x65746E692E726961;
    v5 = 0x746365737265746ELL;
    while (1)
    {
      v6 = v2 ? (v2 - 56) : 0;
      this = llvm::GlobalValue::isDeclaration(v6);
      if ((this & 1) == 0)
      {
        break;
      }

LABEL_7:
      v2 = *(v2 + 8);
      if (v2 == v32)
      {
        return this;
      }
    }

    v7 = (v6 + 72);
    v8 = *(v6 + 10);
LABEL_10:
    if (v8 == v7)
    {
      goto LABEL_7;
    }

    v9 = v8 - 3;
    if (!v8)
    {
      v9 = 0;
    }

    v10 = v9 + 5;
    for (i = v9[6]; ; i = i[1])
    {
      if (i == v10)
      {
        v8 = v8[1];
        goto LABEL_10;
      }

      v12 = i - 3;
      if (!i)
      {
        v12 = 0;
      }

      v13 = *(v12 + 16);
      v14 = v13 == 84;
      if (v13 == 84)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      v33 = v15;
      if (!i || !v14)
      {
        continue;
      }

      v16 = *(v12 - 4);
      if (!v16 || *(v16 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(v16 + 24);
      v18 = v12[9];
      v19 = v17 == v18 ? v16 : 0;
      if (v17 != v18)
      {
        goto LABEL_29;
      }

      this = llvm::Value::getName(v19);
      if (v20 < 0xD)
      {
        break;
      }

      if (*this != v4 || *(this + 5) != v5)
      {
        goto LABEL_38;
      }

      v23 = v5;
      v24 = v4;
      v25 = v33;
      v34[0] = this;
      v34[1] = v20;
      if (llvm::StringRef::find() == -1)
      {
        v26 = 5;
      }

      else
      {
        v26 = 6;
      }

      this = llvm::StringRef::find();
      if (this != -1 || (this = llvm::StringRef::find(), this != -1))
      {
        ++v26;
      }

      v27 = v25[4 * v26 + -4 * (*(v25 + 5) & 0x7FFFFFF)];
      v28 = *(v27 + 16);
      v4 = v24;
      v5 = v23;
      if (!v27 || v28 != 19)
      {
        if (!v27 || v28 != 84 || (v29 = *(v27 - 32)) == 0 || *(v29 + 16) || *(v29 + 24) != *(v27 + 72) || (Name = llvm::Value::getName(v29), v31 < 0x28) || (this = memcmp(Name, "air.get_null_intersection_function_table", 0x28uLL), this))
        {
LABEL_29:
          this = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v3 + 184, &v33, v34);
          continue;
        }
      }

LABEL_30:
      ;
    }

    if (v20 >= 4)
    {
LABEL_38:
      if (*this == 779250017)
      {
        goto LABEL_30;
      }

      if (v20 >= 5 && *this == 1836477548 && *(this + 4) == 46)
      {
        goto LABEL_30;
      }

      if (*this == 778859629)
      {
        goto LABEL_30;
      }
    }

    if ((*(v19 + 32) & 0xF) == 0)
    {
      this = llvm::GlobalValue::isDeclaration(v19);
      if (this)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_30;
  }

  return this;
}

void *llvm::detail::DenseSetImpl<llvm::CallInst *,llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::DenseMapInfo<llvm::CallInst *,void>>::begin(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  v4 = *(a1 + 16);
  v5 = &result[v4];
  if (!v2)
  {
    return v5;
  }

  if (v4)
  {
    v6 = 8 * v4;
    while ((*result | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      ++result;
      v6 -= 8;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

void MTLStackOverflowPass::instrumentIndirectCall(uint64_t a1, void *a2)
{
  v11[17] = *MEMORY[0x277D85DE8];
  v3 = a2 + 5;
  v4 = a2[5];
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v11, v4, 0, 0, 0);
  v5 = a2[4];
  if (v5)
  {
    v6 = v5 == *v3 + 40;
  }

  llvm::BasicBlock::splitBasicBlock();
  llvm::BasicBlock::splitBasicBlock();
  Context = llvm::Value::getContext(a2);
  v9 = "error";
  v10 = 259;
  llvm::BasicBlock::Create(Context, &v9, v4[7], 0, v8);
}

void sub_2579C166C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder((v9 - 232));
  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::clear(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = *(result + 16);
    if (v1 <= 4 * *(result + 8) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = 0;
        v3 = v1 + 0x1FFFFFFFFFFFFFFFLL;
        v4 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v5 = (v3 & 0x1FFFFFFFFFFFFFFFLL) - (v3 & 1) + 2;
        v6 = vdupq_n_s64(v4);
        v7 = (*result + 8);
        do
        {
          v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v2), xmmword_257A6D000)));
          if (v8.i8[0])
          {
            *(v7 - 1) = -4096;
          }

          if (v8.i8[4])
          {
            *v7 = -4096;
          }

          v2 += 2;
          v7 += 2;
        }

        while (v5 != v2);
      }

      *(result + 8) = 0;
    }

    else
    {
      return llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::shrink_and_clear(result);
    }
  }

  return result;
}

uint64_t llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::shrink_and_clear(uint64_t result)
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
      v7 = v2 + 0x1FFFFFFFFFFFFFFFLL;
      v8 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0x1FFFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = (*result + 8);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_257A6D000)));
        if (v12.i8[0])
        {
          *(v11 - 1) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 2;
      }

      while (v9 != v6);
    }
  }

  else
  {
    llvm::deallocate_buffer(*result, (8 * v2));

    return llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::init(v1, v5);
  }

  return result;
}

void llvm::IRBuilderBase::SetInsertPoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  if (a2 + 40 != a3)
  {
    v4 = a3 - 24;
    if (!a3)
    {
      v4 = 0;
    }

    v6 = *(v4 + 48);
    if (v6)
    {
      llvm::MetadataTracking::track();
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(a1, 0, v5);
    llvm::TrackingMDRef::~TrackingMDRef(&v6);
  }
}

void sub_2579C192C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  llvm::TrackingMDRef::~TrackingMDRef(va);
  _Unwind_Resume(a1);
}

BOOL llvm::iterator_facade_base<llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>,std::forward_iterator_tag,std::vector<llvm::CallGraphNode *> const,long,std::vector<llvm::CallGraphNode *> const*,std::vector<llvm::CallGraphNode *> const&>::operator!=(void *a1, void *a2)
{
  v3 = a1[10];
  v2 = a1[11];
  v4 = a2[10];
  if (v2 - v3 != a2[11] - v4)
  {
    return 1;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4 || *(v3 + 8) != *(v4 + 8) || *(v3 + 24) != *(v4 + 24))
    {
      return 1;
    }

    v3 += 32;
    v4 += 32;
  }

  v7 = a1 + 7;
  v6 = a1[7];
  v8 = v7[1] - v6;
  v10 = a2 + 7;
  v9 = a2[7];
  if (v8 == v10[1] - v9)
  {
    return memcmp(v6, v9, v8) != 0;
  }

  return 1;
}

uint64_t MTLStackOverflowPass::findAllCallsTo(uint64_t this, llvm::Function *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    v3 = this;
    do
    {
      v4 = *(v2 + 24);
      if (*(v4 + 16) != 84)
      {
        v4 = 0;
      }

      v5 = v4;
      if (v4)
      {
        this = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v3 + 184, &v5, v6);
      }

      v2 = *(v2 + 8);
    }

    while (v2);
  }

  return this;
}

void *llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::~scc_iterator(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap((a1 + 1));
  return a1;
}

uint64_t llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::scc_iterator(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::DFSVisitOne(a1, a2);
  llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::GetNextSCC(a1);
  return a1;
}

void sub_2579C1B0C(_Unwind_Exception *a1)
{
  v5 = *(v1 + 80);
  if (v5)
  {
    *(v1 + 88) = v5;
    operator delete(v5);
  }

  llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::scc_iterator((v1 + 56), v3, v1);
  llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::~DenseMap(v2);
  _Unwind_Resume(a1);
}