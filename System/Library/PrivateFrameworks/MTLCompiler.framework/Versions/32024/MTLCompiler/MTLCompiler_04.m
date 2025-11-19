uint64_t MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v2 = *(this + 14);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.binding_table", 17);
    llvm::PointerType::get();
    v4 = *(this + 14);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v6 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v6, v7);
  }

  return GlobalVariable;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(MTLBoundsCheck::SharedPassData *this)
{
  v2 = *(this + 14);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt32Ty(**(this + 14), v3);
    v5 = *(this + 14);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v7 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v7, v8);
  }

  return GlobalVariable;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(MTLBoundsCheck::SharedPassData *this)
{
  v2 = *(this + 14);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt8PtrTy(**(this + 14), 0);
    v4 = *(this + 14);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v6 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v6, v7);
  }

  return GlobalVariable;
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertReportCounterGV(MTLBoundsCheck::SharedPassData *this)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 14);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    llvm::Type::getInt64Ty(**(this + 14), v3);
    v5 = llvm::PointerType::get();
    v6 = *(this + 14);
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    v7 = *(this + 14);
    v16 = *v7;
    v17 = v19;
    v18 = 0;
    DataLayout = llvm::Module::getDataLayout(v7);
    TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(DataLayout, v5);
    v11 = v10;
    PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(DataLayout, v5);
    v20[0] = MTLMDBuilder::getMDTuple<char const*,char const*,unsigned int,int,char const*,char const*,int,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,char const*,char const*,char const*>(&v16, "air.buffer", "air.location_index", 54, 1, "air.read_write", "air.address_space", 1, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v11 == 1, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", "int", "air.arg_name", "debug.report_counter");
    v20[1] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v15 = GlobalVariable;
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v15, v20);
    if (v17 != v19)
    {
      free(v17);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_213C1A3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (a20 != v20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(MTLBoundsCheck::SharedPassData *this)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v2 = *(this + 14);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.threadgroup_table", 21);
    v5 = *(this + 14);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::PointerType::get();
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    DataLayout = llvm::Module::getDataLayout(*(this + 14));
    v14 = **(this + 14);
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v13, v18);
    if (v15 != v17)
    {
      free(v15);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_213C1A660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
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
  v2 = *(this + 14);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(this, "mtl.threadgroup_base", 20);
    v5 = *(this + 14);
    llvm::PointerType::get();
    GlobalVariable = llvm::Module::getOrInsertGlobal();
    *(GlobalVariable + 32) = *(GlobalVariable + 32) & 0xFFFFA3C0 | 0x4408;
    llvm::PointerType::get();
    llvm::UndefValue::get();
    llvm::GlobalVariable::setInitializer();
    DataLayout = llvm::Module::getDataLayout(*(this + 14));
    v14 = **(this + 14);
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 88, &v13, v18);
    if (v15 != v17)
    {
      free(v15);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void sub_213C1A8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
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
  *(this + 14) = a2;
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
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::clear(this + 30);
  std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::clear(this + 19);
  std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::clear(this + 24);

  return llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::clear(this + 88);
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

  MTLBoundsCheck::getMetalMetadata(*(this + 14), &v45);
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
    v13 = *(this + 14);
    v14 = v13 + 24;
    v15 = *(v13 + 32);
    if (v15 == v13 + 24)
    {
LABEL_97:
      if ((v7 & 1) == 0)
      {
        v44 = **(this + 14);
        v39 = (v43 - 8 * *(v43 + 8));
        v40 = *(v39 + 2);
        v47 = *v39;
        v48 = v40;
        v49 = llvm::MDString::get();
        llvm::MDTuple::getImpl();
        v41 = *(this + 14);
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

void sub_213C1B0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
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
  if (Key != -1 && Key != *(a1 + 128))
  {
    return *(*(*(a1 + 120) + 8 * Key) + 8);
  }

  v8 = *(*(a1 + 64) + 8);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<unsigned int &>((a1 + 120), a2, a3, &v8);
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

  v11 = MEMORY[0x21604BA70](a3 + 17, 8);
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
  v3 = std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::find<llvm::DISubprogram *>((a1 + 192), &v24);
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
      v9 = &unk_213C7E907;
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
        v13 = &unk_213C7E907;
      }

      v23[0] = MTLBoundsCheck::SharedPassData::indexForString(a1, v13, v15);
    }

    else
    {
      v25 = v27;
      v26 = xmmword_213C7D120;
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
    v3 = std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::__emplace_unique_key_args<llvm::DISubprogram *,llvm::DISubprogram *&,unsigned long>((a1 + 192), &v24);
    llvm::SmallVectorImpl<MTLBoundsCheck::DebugSubProgram>::emplace_back<MTLBoundsCheck::DebugSubProgram&>(*(a1 + 64) + 384, v23);
  }

  result = *(v3 + 6);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_213C1B598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
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
  v3 = std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::find<llvm::DISubprogram *>((a1 + 152), &v13);
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
    v3 = std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::__emplace_unique_key_args<llvm::DILocation *,llvm::DILocation *&,unsigned long>((a1 + 152), &v13);
    llvm::SmallVectorImpl<MTLBoundsCheck::DebugLocation>::emplace_back<MTLBoundsCheck::DebugLocation&>(*(a1 + 64) + 112, &v10);
  }

  return *(v3 + 6);
}

llvm::MDString *MTLBoundsCheck::SharedPassData::getNameOfParentFunction(MTLBoundsCheck::SharedPassData *this, llvm::Instruction *a2)
{
  v2 = *(a2 + 5);
  if (!v2)
  {
    return &unk_213C7E907;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return &unk_213C7E907;
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
        llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v39, &v48, &v52);
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
            if (llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::LookupBucketFor<llvm::CallInst *>(v39, &v48, &v47))
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

              llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(&v52, AsInstruction);
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

void sub_213C1BB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
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
  *a2 = &unk_282633EB0;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

uint64_t MakeMDResolver<BOOL>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_282633EF8;
  a2[1] = result;
  a2[3] = a2;
  return result;
}

uint64_t MakeMDResolver<llvm::Value *>@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = &unk_282633F40;
  a2[1] = result;
  a2[3] = a2;
  return result;
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

          v19 = *Name == 0x5F2E746375727473 && *(Name + 8) == 0x6365737265746E69;
          v20 = v19 && *(Name + 16) == 0x6575715F6E6F6974;
          if (v20 && *(Name + 24) == 1952414066)
          {
            return 1;
          }

          v22 = *Name == 0x5F2E746375727473 && *(Name + 8) == 0x6365737265746E69;
          v23 = v22 && *(Name + 16) == 0x7365725F6E6F6974;
          if (v23 && *(Name + 21) == 0x745F746C75736572)
          {
            return 1;
          }

          goto LABEL_97;
        }

        if (*Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F657475706D6F63 && *(Name + 16) == 0x656E696C65706970 && *(Name + 24) == 0x745F65746174735FLL)
        {
          return 1;
        }

        v32 = *Name == 0x5F2E746375727473 && *(Name + 8) == 0x5F656C6269736976;
        v33 = v32 && *(Name + 16) == 0x6E6F6974636E7566;
        if (v33 && *(Name + 24) == 0x745F656C6261745FLL)
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

      goto LABEL_38;
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
      goto LABEL_38;
    }

    if (*v3 == 0x5F2E746375727473 && *(v3 + 8) == 0x6365737265746E69 && *(v3 + 16) == 0x6575715F6E6F6974 && *(v3 + 24) == 1952414066)
    {
      return 1;
    }

    if (v4 >= 0x1D)
    {
      if (*v3 == 0x5F2E746375727473 && *(v3 + 8) == 0x6365737265746E69 && *(v3 + 16) == 0x7365725F6E6F6974 && *(v3 + 21) == 0x745F746C75736572)
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
LABEL_38:
        v13 = *v3 == 0x4D2E746375727473 && *(v3 + 7) == 0x48564257534C544DLL;
        return v13 || v4 >= 0x21 && !memcmp(v3, "struct._MTLAxisAlignedBoundingBox", 0x21uLL);
      }

      if (!memcmp(v3, "struct._instance_acceleration_structure_t", 0x29uLL))
      {
        return 1;
      }

      goto LABEL_38;
    }

LABEL_97:
    if (*v3 != 0x4D2E746375727473 || *(v3 + 7) != 0x48564257534C544DLL)
    {
      return 0;
    }
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
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v65, &v60);
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
                    llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v65, &v62);
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
                  llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v70, v59);
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
  *this = &unk_282633E10;
  v2 = this + 88;
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(this + 192);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(this + 152);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(this + 120);
  llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::~DenseMap(v2);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_282633E10;
  v2 = this + 88;
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(this + 192);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(this + 152);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::~StringMap(this + 120);
  llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::~DenseMap(v2);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

void *llvm::SmallVector<llvm::Instruction *,4u>::SmallVector(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Instruction *>::assign(a1, a2, *a3);
  return a1;
}

void sub_213C1C90C(_Unwind_Exception *exception_object)
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

void *std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::find<llvm::Function *>(void *a1, void *a2)
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

void *std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__emplace_unique_key_args<llvm::Function *,llvm::Function * const&>(void *a1, void *a2)
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

uint64_t MTLMDBuilder::getMetadata<int>(uint64_t *a1)
{
  v1 = *a1;
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

void *std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::find<llvm::DISubprogram *>(void *a1, void *a2)
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

void sub_213C1D4E8(_Unwind_Exception *exception_object)
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

void *std::__hash_table<std::__hash_value_type<llvm::DILocation *,unsigned int>,std::__unordered_map_hasher<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::hash<llvm::DILocation *>,std::equal_to<llvm::DILocation *>,true>,std::__unordered_map_equal<llvm::DILocation *,std::__hash_value_type<llvm::DILocation *,unsigned int>,std::equal_to<llvm::DILocation *>,std::hash<llvm::DILocation *>,true>,std::allocator<std::__hash_value_type<llvm::DILocation *,unsigned int>>>::clear(void *result)
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

uint64_t std::__function::__func<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0,std::allocator<std::function<void ()(llvm::Metadata *)> MakeMDResolver<unsigned int>(unsigned int &)::$_0>,void ()(llvm::Metadata *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_282633EB0;
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
  *a2 = &unk_282633EF8;
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
  *a2 = &unk_282633F40;
  a2[1] = v2;
  return result;
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(uint64_t a1, llvm::Value **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
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
  *this = &unk_282633520;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);

  JUMPOUT(0x21604B480);
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
  *this = &unk_282633520;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
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
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v46, &v45);
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
      if (v22 != EntryFunction && shouldModifyFunction)
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
    MTLGVEmulation::updateIndirectCalls(this, EntryFunction);
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

void sub_213C1E268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
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
  v98 = *MEMORY[0x277D85DE8];
  v3 = (this + 96);
  v2 = *(this + 12);
  v4 = llvm::PointerType::get();
  v5 = *(this + 9);
  v6 = *v4;
  llvm::StructType::get();
  v51 = "mtl.device_indirection_table";
  v52 = 28;
  v53[0] = 0;
  v54 = llvm::PointerType::get();
  v7 = *(this + 9);
  v55 = "mtl.draw_id_buffer";
  v56 = 18;
  v57 = 1;
  v58 = llvm::PointerType::get();
  v8 = *(this + 9);
  v59 = "mtl.report_buffer";
  v60 = 17;
  v61 = 2;
  v62 = llvm::PointerType::get();
  v9 = *v3;
  v63 = "mtl.texture_usage_table";
  v64 = 23;
  v65 = 3;
  v66 = llvm::PointerType::get();
  v10 = *v3;
  v11 = llvm::PointerType::get();
  v67 = "mtl.buffer_usage_table";
  v68 = 22;
  v69 = 4;
  v12 = *(this + 10);
  v70 = v11;
  v71 = "mtl.stack_depth";
  v72 = 15;
  v73 = 9;
  v74 = v12;
  v13 = *(this + 9);
  v14 = llvm::PointerType::get();
  v75 = "mtl.acceleration_structure_payload";
  v76 = 34;
  v77 = 10;
  v15 = *(this + 14);
  v78 = v14;
  v79 = "mtl.stack_trace";
  v80 = 15;
  v81 = 11;
  v82 = v15;
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.binding_table", 17);
  v83 = "mtl.binding_table";
  v84 = 17;
  v85 = 12;
  v86 = llvm::PointerType::get();
  v16 = *v3;
  v87 = "mtl.texture_type_table";
  v88 = 22;
  v89 = 13;
  v90 = llvm::PointerType::get();
  v17 = *(this + 9);
  v91 = "mtl.report_counter_index";
  v92 = 24;
  v93 = 14;
  v94 = llvm::PointerType::get();
  llvm::StringMapImpl::StringMapImpl(&v95);
  for (i = 0; i != 88; i += 8)
  {
    v49 = *(&v51 + i * 4);
    v50 = *&v53[i];
    llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<GVStructElementInfo>(&v95, v49, *(&v49 + 1), &v50);
  }

  v19 = *(this + 25);
  *(this + 25) = v95;
  v95 = v19;
  v20 = *(this + 26);
  *(this + 26) = v96;
  v96 = v20;
  LODWORD(v19) = *(this + 54);
  *(this + 54) = v97;
  v97 = v19;
  llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::~StringMap(&v95);
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.threadgroup_table", 21);
  v21 = llvm::PointerType::get();
  v22 = *(this + 6);
  llvm::Module::getGlobalVariable();
  v23 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), "mtl.threadgroup_table", 0x15uLL);
  *(v23 + 8) = 5;
  *(v23 + 16) = v21;
  MTLBoundsCheck::SharedPassData::getGVBaseType(*(this + 8), "mtl.threadgroup_base", 20);
  v24 = llvm::PointerType::get();
  v26 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), "mtl.threadgroup_base", 0x14uLL);
  *(v26 + 8) = 6;
  *(v26 + 16) = v24;
  v27 = "mtl.global_constants_handle";
  v28 = "mtl.global_constants_table";
  if ((*(*(*(this + 8) + 72) + 23) & 0x40) != 0)
  {
    isLibraryModule = MTLBoundsCheck::isLibraryModule(*(this + 6), v25);
    if (isLibraryModule)
    {
      v30 = 33;
    }

    else
    {
      v30 = 26;
    }

    if (isLibraryModule)
    {
      v28 = "mtl.global_constants_table.unused";
      v29 = 34;
    }

    else
    {
      v29 = 27;
    }

    if (isLibraryModule)
    {
      v27 = "mtl.global_constants_handle.unused";
    }
  }

  else
  {
    v29 = 27;
    v30 = 26;
  }

  v32 = *(this + 12);
  v33 = llvm::PointerType::get();
  v34 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), v28, v30);
  *(v34 + 8) = 7;
  *(v34 + 16) = v33;
  v35 = *(this + 9);
  v36 = *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>((this + 200), v27, v29);
  *(v36 + 8) = 8;
  *(v36 + 16) = v35;
  if (!MTLBoundsCheck::isLibraryModule(*(this + 6), v37))
  {
    MTLBoundsCheck::SharedPassData::getOrInsertDeviceIndirectionTableGV(*(this + 8));
    MTLBoundsCheck::SharedPassData::getOrInsertGlobalConstantsHandleGV(*(this + 8));
    v38 = *(this + 8);
    if ((*(*(v38 + 9) + 20) & 0x200000001) != 0)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertBufferUsageTableGV(v38);
      MTLBoundsCheck::SharedPassData::getOrInsertTextureUsageTableGV(*(this + 8));
      MTLBoundsCheck::SharedPassData::getOrInsertTextureTypeTableGV(*(this + 8));
      v38 = *(this + 8);
    }

    MTLBoundsCheck::SharedPassData::getOrInsertDrawIDBufferGV(v38);
  }

  MTLBoundsCheck::SharedPassData::getOrInsertReportCounterGV(*(this + 8));
  MTLBoundsCheck::SharedPassData::getOrInsertStackDepthGV(*(this + 8));
  MTLBoundsCheck::SharedPassData::getOrInsertAccelerationStructurePtrGV(*(this + 8));
  MTLBoundsCheck::SharedPassData::getOrInsertBindingTableGV(*(this + 8));
  v39 = *(this + 5);
  v40 = llvm::StructType::create();
  v51 = v53;
  v52 = 0x800000000;
  llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(&v51, *(this + 53));
  v41 = *(this + 52);
  if (v41)
  {
      ;
    }
  }

  else
  {
    j = *(this + 25);
  }

  v44 = *(this + 25) + 8 * v41;
  if (j != v44)
  {
    v45 = *j;
    do
    {
      *(v51 + *(v45 + 8)) = *(v45 + 16);
      do
      {
        v46 = j[1];
        ++j;
        v45 = v46;
        if (v46)
        {
          v47 = v45 == -8;
        }

        else
        {
          v47 = 1;
        }
      }

      while (v47);
    }

    while (j != v44);
  }

  llvm::StructType::setBody();
  *(this + 23) = v40;
  *(this + 24) = llvm::PointerType::get();
  if (v51 != v53)
  {
    free(v51);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void sub_213C1E944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
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
          this = llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v4 + 232, &v8);
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return this;
}

BOOL MTLGVEmulation::shouldModifyFunction(MTLGVEmulation *this, llvm::Function *a2)
{
  v10 = 0;
  v11 = a2;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(this + 20, &v11, &v10))
  {
    return 0;
  }

  Name = llvm::Value::getName(a2);
  v6 = v5;
  if (!llvm::GlobalValue::isDeclaration(a2))
  {
    return llvm::Value::getMetadata() == 0;
  }

  if (v6 >= 0x11)
  {
    if (*Name == 0x69646E692E6C746DLL && *(Name + 8) == 0x6D656D5F74636572 && *(Name + 16) == 46)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (v6 >= 4)
  {
LABEL_14:
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

  return llvm::Value::getMetadata() == 0;
}

unint64_t MTLGVEmulation::updateFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v18 = *(a1 + 40);
  v19 = v21;
  v20 = 0x800000000;
  llvm::AttrBuilder::addAttribute();
  llvm::AttrBuilder::addAttribute();
  v6 = *(a1 + 40);
  TypeAllocSize = llvm::DataLayout::getTypeAllocSize(*(a1 + 56), *(a1 + 184));
  v17 = v7;
  v8 = llvm::TypeSize::operator unsigned long long();
  llvm::Attribute::getWithDereferenceableBytes(v6, v8);
  llvm::AttrBuilder::addAttribute();
  v9 = *(a1 + 40);
  v10 = llvm::AttributeSet::get();
  inserted = MetalModulePass::insertArgument(a1, a2, *(a1 + 192), v10, 1, "shader_validation_args", 0);
  TypeAllocSize = inserted;
  if (llvm::Function::hasFnAttribute())
  {
    llvm::Function::removeFnAttr();
  }

  if (*(inserted + 18))
  {
    llvm::Function::BuildLazyArguments(inserted);
  }

  v12 = *(inserted + 88);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct((a1 + 304), &TypeAllocSize)[1] = v12;
  if (a3)
  {
    MetalModulePass::insertFunctionArgumentMD(a1, a3, "air.visible_input", "mtl.shader_validation_args", "shader_validation_args", 0, 0, 0);
  }

  v13 = TypeAllocSize;
  if (v19 != v21)
  {
    free(v19);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_213C1ED10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
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

void sub_213C1EF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MTLGVEmulation::updateIndirectCalls(MTLGVEmulation *this, llvm::Function *a2)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v28 = a2;
  v32 = v34;
  v33 = 0x400000000;
  v3 = a2 + 72;
  v4 = *(a2 + 10);
  if (v4 == a2 + 72)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v5 = v4 - 24;
      if (!v4)
      {
        v5 = 0;
      }

      v6 = *(v5 + 6);
      if (v6 != v5 + 40)
      {
        break;
      }

      v4 = *(v4 + 1);
    }

    while (v4 != v3);
  }

  if (v4 != v3)
  {
    do
    {
      v7 = v6 - 24;
      if (!v6)
      {
        v7 = 0;
      }

      if (v7[16] == 84)
      {
        v29 = v7;
        v8 = *(v7 - 4);
        if (!v8 || *(v8 + 16) || *(v8 + 24) != *(v7 + 9))
        {
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v32, &v29);
        }
      }

      v6 = *(v6 + 1);
      v9 = v4 - 24;
      if (!v4)
      {
        v9 = 0;
      }

      while (v6 == v9 + 40)
      {
        v4 = *(v4 + 1);
        if (v4 == v3)
        {
          break;
        }

        v9 = v4 - 24;
        if (!v4)
        {
          v9 = 0;
        }

        v6 = *(v9 + 6);
      }
    }

    while (v4 != v3);
    v10 = v32;
    if (v33)
    {
      v11 = v32 + 8 * v33;
      do
      {
        v12 = *v10;
        v13 = *(*v10 - 32);
        inserted = MetalModulePass::insertArgumentType(this, *(*v10 + 72), *(this + 24), 0);
        if ((*(*v13 + 8) & 0xFE) == 0x12)
        {
          v15 = *(**(*v13 + 16) + 8);
        }

        llvm::PointerType::get();
        v31[8] = 257;
        PointerCast = llvm::CastInst::CreatePointerCast();
        llvm::Instruction::insertBefore(PointerCast, v12);
        NumArgOperands = llvm::compat::getNumArgOperands(v12);
        v26[0] = 0;
        llvm::SmallVector<llvm::Value *,8u>::SmallVector(&v29, (NumArgOperands + 1), v26);
        v18 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v28);
        v19 = 0;
        *v29 = v18[1];
        v20 = v12;
        while (v19 < llvm::compat::getNumArgOperands(v12))
        {
          v21 = v29 + 8 * v19++;
          *(v21 + 1) = *(v20 - 32 * (*(v12 + 20) & 0x7FFFFFF));
          v20 += 32;
        }

        v27 = 257;
        v22 = llvm::CallInst::Create(inserted, PointerCast, v29, v30, 0, 0);
        v23 = *(v22 + 9) & 0xF003 | (4 * ((*(v12 + 18) >> 2) & 0x3FF));
        *(v22 + 9) = v23;
        *(v22 + 9) = v23 & 0xFFFC | *(v12 + 18) & 3;
        llvm::ReplaceInstWithInst(v12, v22, v24);
        llvm::User::replaceUsesOfWith();
        if (v29 != v31)
        {
          free(v29);
        }

        v10 += 8;
      }

      while (v10 != v11);
      v10 = v32;
    }

    if (v10 != v34)
    {
      free(v10);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_213C1F230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a27 != a9)
  {
    free(a27);
  }

  _Unwind_Resume(exception_object);
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
          goto LABEL_59;
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
          if (llvm::Function::hasFnAttribute())
          {
            llvm::Function::removeFnAttr();
          }

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
          goto LABEL_53;
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
        if (*(BitOrPointerCast + 16) >= 0x1Cu && BitOrPointerCast)
        {
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
        }

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
LABEL_53:
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
          goto LABEL_59;
        }
      }

      v18 = *(v17 + 8);
      goto LABEL_25;
    }
  }

LABEL_59:
  v59 = *MEMORY[0x277D85DE8];
}

void sub_213C1F8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
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
  v69[4] = *MEMORY[0x277D85DE8];
  v67 = v69;
  v68 = 0x400000000;
  v61 = &v67;
  llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v61, *(*(this + 6) + 32), *(this + 6) + 24);
  v2 = v67;
  if (v68)
  {
    v3 = 8 * v68;
    do
    {
      v4 = *v2;
      v5 = *(*v2 - 32);
      if (!v5 || *(v5 + 16) || *(v5 + 24) != *(v4 + 72))
      {
        v5 = 0;
      }

      Name = llvm::Value::getName(v5);
      v63 = v6;
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

      if (llvm::StringRef::find() != -1)
      {
        if (llvm::StringRef::find() == -1)
        {
          v8 = 2;
        }

        else
        {
          v8 = 3;
        }

        v7 += v8;
      }

      v9 = v4 - 32 * (*(v4 + 20) & 0x7FFFFFF);
      v10 = *(v9 + 32 * v7);
      if (v10)
      {
        v11 = *(v10 + 16) == 19;
      }

      else
      {
        v11 = 0;
      }

      if (!v11 && ((v12 = *(v9 + 32 * (v7 + 1))) != 0 ? (v13 = *(v12 + 16) == 16) : (v13 = 0), v13))
      {
        v25 = *(this + 5);
        Name = *(this + 23);
        v26 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v26 = *(v12 + 24);
        }

        v56 = (v12 + 24);
        v63 = llvm::ArrayType::get(*(this + 12), *v26);
        v57 = llvm::StructType::get();
        Name = *(*(v4 + 40) + 56);
        v27 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &Name)[1];
        v28 = *(*(*(v4 + 40) + 56) + 80);
        if (v28)
        {
          v29 = (v28 - 24);
        }

        else
        {
          v29 = 0;
        }

        llvm::BasicBlock::getFirstNonPHI(v29);
        v30 = llvm::User::operator new(0x48);
        v64[8] = 257;
        llvm::AllocaInst::AllocaInst();
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, v4, 0, 0, 0);
        v60 = 257;
        ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v57, v30, 0, 0, &v58);
        v32 = *(this + 12);
        v33 = llvm::PointerType::get();
        v60 = 257;
        llvm::IRBuilderBase::CreateBitOrPointerCast(&Name, v27, v33, &v58);
        v58 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *(this + 23)) + 7) >> 3;
        v59 = v34 == 1;
        llvm::TypeSize::operator unsigned long long();
        v54 = v54 & 0xFFFFFFFFFFFF0000 | 0x103;
        v55 = v55 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, ConstInBoundsGEP2_32);
        v60 = 257;
        v35 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(&Name, v57, v30, 0, 1u, &v58);
        v36 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v36 = *v56;
        }

        v37 = *v36;
        v52 = v52 & 0xFFFFFFFFFFFF0000 | 0x103;
        v53 = v53 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, v35);
        v38 = *(this + 12);
        v39 = llvm::PointerType::get();
        v60 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(&Name, 49, v30, v39, &v58);
        llvm::CallBase::setArgOperand(v4, v7, Cast);
        v41 = *(this + 9);
        v58 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), v57) + 7) >> 3;
        v59 = v42 == 1;
        llvm::TypeSize::operator unsigned long long();
        v43 = llvm::ConstantInt::get();
        llvm::CallBase::setArgOperand(v4, v7 + 1, v43);
        v44 = *(v4 + 32);
        if (v44)
        {
          v45 = v44 == *(v4 + 40) + 40;
        }

        else
        {
          v45 = 1;
        }

        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = (v44 - 24);
        }

        llvm::IRBuilderBase::SetInsertPoint(&Name, v46);
        v47 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v47 = *v56;
        }

        v48 = *v47;
        v50 = v50 & 0xFFFFFFFFFFFF0000 | 0x103;
        v51 = v51 & 0xFFFFFFFFFFFF0000 | 0x103;
        llvm::IRBuilderBase::CreateMemCpy(&Name, v10);
      }

      else
      {
        FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(*(v4 + 40));
        llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(&Name, FirstNonPHI, 0, 0, 0);
        v58 = *(*(v4 + 40) + 56);
        v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(this + 38, &v58)[1];
        if (v15 && *(v15 + 16) >= 0x1Cu)
        {
          v16 = *(v15 + 32);
          if (v16)
          {
            v17 = v16 == *(v15 + 40) + 40;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            v18 = 0;
          }

          else
          {
            v18 = (v16 - 24);
          }

          llvm::IRBuilderBase::SetInsertPoint(&Name, v18);
        }

        v19 = *(this + 12);
        v20 = llvm::PointerType::get();
        v60 = 257;
        BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(&Name, v15, v20, &v58);
        v58 = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *(this + 23)) + 7) >> 3;
        v59 = v22 == 1;
        llvm::CallBase::setArgOperand(v4, v7, BitOrPointerCast);
        v23 = *(this + 9);
        llvm::TypeSize::operator unsigned long long();
        v24 = llvm::ConstantInt::get();
        llvm::CallBase::setArgOperand(v4, v7 + 1, v24);
      }

      llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v66);
      llvm::IRBuilderFolder::~IRBuilderFolder(&v65);
      if (Name != v64)
      {
        free(Name);
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    v2 = v67;
  }

  if (v2 != v69)
  {
    free(v2);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_213C1FF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
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
    v3 = off_2781716D8[i];
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
          NumArgOperands = llvm::compat::getNumArgOperands(*v5);
          v39[0] = 0;
          llvm::SmallVector<llvm::Value *,8u>::SmallVector(&v42, (NumArgOperands + 1), v39);
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
          v35 = *(v34 + 9) & 0xF003 | (4 * ((*(v7 + 9) >> 2) & 0x3FF));
          *(v34 + 9) = v35;
          *(v34 + 9) = v35 & 0xFFFC | *(v7 + 9) & 3;
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

uint64_t *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<GVStructElementInfo>(llvm::StringMapImpl *a1, const void *a2, size_t a3, _OWORD *a4)
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

  v11 = MEMORY[0x21604BA70](a3 + 25, 8);
  v12 = v11;
  v13 = v11 + 24;
  if (a3)
  {
    memcpy((v11 + 24), a2, a3);
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

uint64_t *llvm::StringMap<GVStructElementInfo,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v9 = MEMORY[0x21604BA70](a3 + 25, 8);
  v10 = v9;
  v11 = v9 + 24;
  if (a3)
  {
    memcpy((v9 + 24), a2, a3);
  }

  *(v11 + a3) = 0;
  v10[1] = 0;
  v10[2] = 0;
  *v10 = a3;
  *i = v10;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(uint64_t a1, unint64_t a2)
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

void *llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(void *a1, uint64_t *a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<std::reference_wrapper<llvm::Function>>::append<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_213C20D28(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateAlloca(llvm::BasicBlock **this, llvm::Type *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  Module = llvm::BasicBlock::getModule(this[6]);
  DataLayout = llvm::Module::getDataLayout(Module);
  llvm::DataLayout::getPrefTypeAlign(DataLayout, a2);
  v9 = DataLayout[1];
  v10 = llvm::User::operator new(0x48);
  llvm::AllocaInst::AllocaInst();
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a4);
}

void *llvm::SmallVector<llvm::Value *,8u>::SmallVector(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Instruction *>::assign(a1, a2, *a3);
  return a1;
}

void sub_213C20E4C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLGVEmulation::getPayloadArg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8 * *(a3 + 8) + 16);
  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(v3 - 8 * v4 + 8 * v6);
    String = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8));
    if (v9 == 11 && *String == 0x6C7961702E726961 && *(String + 3) == 0x64616F6C7961702ELL)
    {
      break;
    }

    ++v6;
    v4 = *(v3 + 8);
    if (v6 >= v4)
    {
      return 0;
    }
  }

  v12 = *(*(v7 - 8 * *(v7 + 8)) + 128);
  v13 = (v12 + 24);
  if (*(v12 + 32) >= 0x41u)
  {
    v13 = *v13;
  }

  v14 = *v13;
  if (*(a2 + 18))
  {
    llvm::Function::BuildLazyArguments(a2);
  }

  return *(a2 + 88) + 40 * v14;
}

uint64_t MetalModulePass::getMetadata<unsigned int>(uint64_t a1)
{
  v1 = *(a1 + 40);
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

uint64_t llvm::IRBuilderBase::CreateMemCpy(uint64_t a1, llvm::LLVMContext *a2)
{
  llvm::Type::getInt64Ty(*(a1 + 64), a2);
  llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateMemTransferInst();
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

uint64_t llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = *(a2 + 8);
      if (a2)
      {
        v6 = a2 - 56;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 80);
      v8 = v6 + 72;
      if (v7 != v6 + 72)
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

          result = llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit(v4, v10);
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

uint64_t llvm::InstVisitor<MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor,void>::visit(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = a2 + 40;
  if (v2 != a2 + 40)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 8);
      v6 = v2 - 24;
      if (v2)
      {
        v7 = v2 - 24;
      }

      else
      {
        v7 = 0;
      }

      if (*(v7 + 16) == 84)
      {
        result = MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor::visitCallInst(v4, v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t MTLGVEmulation::updateIntersectCalls(void)::IntersectVisitor::visitCallInst(uint64_t *a1, uint64_t a2)
{
  result = *(a2 - 32);
  if (result)
  {
    if (!*(result + 16) && *(result + 24) == *(a2 + 72))
    {
      result = llvm::Value::getName(result);
      if (v5 >= 0xD && *result == 0x65746E692E726961 && *(result + 5) == 0x746365737265746ELL)
      {
        v7 = *a1;
        v8 = a2;
        return llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v7, &v8);
      }
    }
  }

  return result;
}

void *llvm::SmallVector<llvm::Constant *,8u>::SmallVector(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Instruction *>::assign(a1, a2, *a3);
  return a1;
}

void sub_213C21368(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void PostVertexDumpOutput::~PostVertexDumpOutput(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

llvm::Instruction *llvm::IRBuilderBase::CreateMul(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    result = (*(**(this + 9) + 88))(*(this + 9), a2, a3, a5, a6);
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

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 17, a2, a3, a4, a5, a6);
  }

  return result;
}

void std::__shared_ptr_emplace<std::vector<MTLStructMemberInfo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2826340C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21604C990);
}

void MTLArgumentData::~MTLArgumentData(MTLArgumentData *this)
{
  v5 = (this + 200);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 96;
      std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void MTLThreadgroupMemoryCheckPass::~MTLThreadgroupMemoryCheckPass(MTLThreadgroupMemoryCheckPass *this)
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

uint64_t MTLThreadgroupMemoryCheckPass::runOnModule(MTLThreadgroupMemoryCheckPass *this, llvm::Module *a2)
{
  v2 = *(*(*(this + 8) + 64) + 651);
  if ((v2 & 1) == 0)
  {
    MetalModulePass::runOnModule(this, a2);
    *(this + 46) = 0;
    *(this + 12) = 0u;
    *(this + 13) = 0u;
    if (!MTLBoundsCheck::isLibraryModule(*(this + 6), v5))
    {
      if ((*(*(this + 4) + 23) & 2) != 0)
      {
        MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(this);
      }

      MTLThreadgroupMemoryCheckPass::replaceThreadgroupArgumentsWithGEP(this);
      MTLThreadgroupMemoryCheckPass::replaceGlobalBindings(this);
    }

    MTLThreadgroupMemoryCheckPass::createTagFunctions(this, a2);
  }

  return v2 ^ 1u;
}

void MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(MTLThreadgroupMemoryCheckPass *this)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v17 = v19;
  v18 = 0x400000000;
  v2 = *(this + 6);
  v3 = v2 + 8;
  v4 = *(v2 + 16);
  if (v4 == v2 + 8)
  {
    *(*(*(this + 8) + 64) + 632) = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (v4)
      {
        v6 = v4 - 56;
      }

      else
      {
        v6 = 0;
      }

      if ((*(v6 + 33) & 0x1C) == 0 && *(*v6 + 8) == 783)
      {
        TypeAllocSize = v6;
        llvm::SmallVectorImpl<std::pair<llvm::GlobalVariable *,unsigned long long>>::emplace_back<llvm::GlobalVariable *,unsigned long long &>(&v17, &TypeAllocSize, &v13);
        TypeAllocSize = llvm::DataLayout::getTypeAllocSize(*(this + 7), *(v6 + 24));
        v15 = v7;
        v8 = llvm::TypeSize::operator unsigned long long();
        v5 = v13 + v8;
        v13 += v8;
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v3);
    v9 = v18;
    v10 = *(this + 8);
    *(*(v10 + 8) + 632) = v5;
    if (v9)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(v10);
      if (v18)
      {
        v11 = *v17;
        v16 = 0;
        operator new();
      }
    }
  }

  if (v17 != v19)
  {
    free(v17);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_213C219E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void MTLThreadgroupMemoryCheckPass::replaceThreadgroupArgumentsWithGEP(MTLThreadgroupMemoryCheckPass *this)
{
  v69[4] = *MEMORY[0x277D85DE8];
  v56 = *(this + 5);
  v57 = v59;
  v58 = 0;
  EntryFunction = MetalModulePass::getEntryFunction(this);
  v3 = *(EntryFunction + 24);
  v67 = v69;
  v68 = 0x400000000;
  if (*(v3 + 12) == 1)
  {
    goto LABEL_21;
  }

  v4 = 0;
  do
  {
    v5 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
    v6 = *(v5 - 8 * *(v5 + 8) + 8 * v4);
    v63[0] = v6;
    if (*(*(*(v3 + 16) + 8 * v4 + 8) + 8) == 783 && !MTLThreadgroupMemoryCheckPass::isMeshGridPropertiesArg(this, v6))
    {
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v67, v63);
    }

    ++v4;
  }

  while (v4 < (*(v3 + 12) - 1));
  if (!v68)
  {
LABEL_21:
    MTLThreadgroupMemoryCheckPass::createLocalThreadgroupGlobal(this);
  }

  else
  {
    v7 = *(EntryFunction + 80);
    if (v7)
    {
      v8 = (v7 - 24);
    }

    else
    {
      v8 = 0;
    }

    FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v8);
    llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v63, FirstNonPHI, 0, 0, 0);
    v61[0] = v62;
    v61[1] = 0x800000000;
    llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(v61, (*(v3 + 12) - 1));
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(*(this + 8));
    v11 = *(inserted + 24);
    v55 = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v63, v11, inserted, 0, 0, v54);
    v12 = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(*(this + 8));
    v13 = *(v12 + 24);
    v55 = 257;
    v50 = llvm::IRBuilderBase::CreateAlignedLoad(v63, v13, v12, 0, 0, v54);
    if (v68)
    {
      v48 = v12;
      v51 = inserted;
      v14 = 8 * v68;
      v15 = 0x7FFFFFFF;
      v16 = v67;
      v17 = 0x7FFFFFFF;
      do
      {
        v18 = *(*(*v16 - 8 * *(*v16 + 8)) + 128);
        v19 = (v18 + 24);
        if (*(v18 + 32) >= 0x41u)
        {
          v19 = *v19;
        }

        v20 = *v19;
        LocationIndex = MTLBoundsCheck::getLocationIndex(*v16);
        v22 = *(this + 8);
        *(*(v22 + 64) + 636) |= 1 << LocationIndex;
        if (LocationIndex < v17)
        {
          v17 = LocationIndex;
          v15 = v20;
        }

        Name = llvm::Value::getName(v48);
        GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v22, Name, v24);
        v26 = *(this + 9);
        v59[0] = llvm::ConstantInt::get();
        v27 = *(this + 10);
        v59[1] = llvm::ConstantInt::get();
        v55 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP(v63, GVBaseType, v50, v59, 2, v54);
        v29 = *(GEP + 72);
        v55 = 257;
        v30 = llvm::IRBuilderBase::CreateAlignedLoad(v63, v29, GEP, 0, 0, v54);
        v31 = *(this + 8);
        v32 = llvm::Value::getName(v51);
        v34 = MTLBoundsCheck::SharedPassData::getGVBaseType(v31, v32, v33);
        v35 = *(this + 9);
        v55 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(v63, 40, v30, v35, v54);
        v60 = 257;
        v37 = llvm::IRBuilderBase::CreateGEP(v63, v34, AlignedLoad, Cast, v59);
        v38 = *(*(v3 + 16) + 8 * (v20 + 1));
        v53 = 257;
        llvm::IRBuilderBase::CreateCast(v63, 49, v37, v38, v52);
        if (*(EntryFunction + 18))
        {
          llvm::Function::BuildLazyArguments(EntryFunction);
        }

        v39 = *(EntryFunction + 88);
        llvm::Value::replaceAllUsesWith();
        ++v16;
        v14 -= 8;
      }

      while (v14);
      v40 = v15;
      inserted = v51;
    }

    else
    {
      v40 = 0x7FFFFFFF;
    }

    if (*(EntryFunction + 18))
    {
      llvm::Function::BuildLazyArguments(EntryFunction);
    }

    v41 = *(EntryFunction + 80);
    v42 = *(EntryFunction + 88);
    if (v41)
    {
      v43 = (v41 - 24);
    }

    else
    {
      v43 = 0;
    }

    v44 = llvm::BasicBlock::getFirstNonPHI(v43);
    llvm::IRBuilderBase::SetInsertPoint(v63, v44);
    v45 = *(inserted + 24);
    v55 = 257;
    BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(v63, (v42 + 40 * v40), v45, v54);
    llvm::IRBuilderBase::CreateAlignedStore(v63, BitOrPointerCast, inserted, 0);
    if (v61[0] != v62)
    {
      free(v61[0]);
    }

    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v66);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v65);
    if (v63[0] != &v64)
    {
      free(v63[0]);
    }
  }

  if (v67 != v69)
  {
    free(v67);
  }

  if (v57 != v59)
  {
    free(v57);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_213C21EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  if (a36 != v48)
  {
    free(a36);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a46);
  v51 = *(v49 - 144);
  if (v51 != v47)
  {
    free(v51);
  }

  if (a29 != v46)
  {
    free(a29);
  }

  _Unwind_Resume(a1);
}

void MTLThreadgroupMemoryCheckPass::replaceGlobalBindings(MTLThreadgroupMemoryCheckPass *this)
{
  v86[7] = *MEMORY[0x277D85DE8];
  __p = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v2 = *(this + 6);
  v83[0] = "air.global_bindings";
  v84[8] = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v2, v83);
  if (NamedMetadata)
  {
    v4 = 0;
    v64 = 0;
    v65 = NamedMetadata;
    while (v4 < llvm::NamedMDNode::getNumOperands(v65))
    {
      Operand = llvm::NamedMDNode::getOperand(v65);
      v5 = Operand - 8 * *(Operand + 8);
      v6 = *(v5 + 16);
      v7 = *(*(v5 + 8) + 128);
      LocationIndex = MTLBoundsCheck::getLocationIndex(v6);
      String = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8));
      if (v10 == 11 && (*String == 0x747865742E726961 ? (v11 = *(String + 3) == 0x657275747865742ELL) : (v11 = 0), v11 || (*String == 0x706D61732E726961 ? (v12 = *(String + 3) == 0x72656C706D61732ELL) : (v12 = 0), v12)) || MTLBoundsCheck::getAddressSpace(v6) != 3)
      {
        std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v73, &Operand);
        v64 = 1;
      }

      else
      {
        v71 = 0u;
        memset(v70, 0, sizeof(v70));
        v13 = *(v7 + 8);
        if (v13)
        {
          do
          {
            v14 = *(v13 + 24);
            v83[0] = v14;
            v15 = v14[16];
            if (v14)
            {
              v16 = v15 >= 0x1C;
            }

            else
            {
              v16 = 0;
            }

            if (v16)
            {
              std::deque<llvm::User *>::push_back(v70, v83);
            }

            else
            {
              if (v14)
              {
                v17 = v15 == 5;
              }

              else
              {
                v17 = 0;
              }

              if (v17)
              {
                llvm::ConstantExpr::isCast(v14);
                v14 = v83[0];
              }

              for (i = *(v14 + 1); i; i = *(i + 8))
              {
                v67[0] = *(i + 24);
                if (v67[0])
                {
                  v19 = *(v67[0] + 16) >= 0x1Cu;
                }

                else
                {
                  v19 = 0;
                }

                if (v19)
                {
                  std::deque<llvm::User *>::push_back(v70, v67);
                }
              }
            }

            v13 = *(v13 + 8);
          }

          while (v13);
          v20 = *(&v71 + 1);
          if (*(&v71 + 1))
          {
            v66 = 1 << LocationIndex;
            do
            {
              v21 = *(*(*(&v70[0] + 1) + ((v71 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v71 & 0x1FF));
              *&v71 = v71 + 1;
              *(&v71 + 1) = v20 - 1;
              if (v71 >= 0x400)
              {
                operator delete(**(&v70[0] + 1));
                *(&v70[0] + 1) += 8;
                *&v71 = v71 - 512;
              }

              if (v21[16] <= 0x1Bu)
              {
                v22 = 0;
              }

              else
              {
                v22 = v21;
              }

              v69 = v22;
              MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(v83, &v69);
              inserted = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(*(this + 8));
              v24 = *(inserted + 3);
              v68 = 257;
              AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v83, v24, inserted, 0, 0, v67);
              v26 = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(*(this + 8));
              v27 = *(v26 + 3);
              v68 = 257;
              v28 = llvm::IRBuilderBase::CreateAlignedLoad(v83, v27, v26, 0, 0, v67);
              v29 = *(this + 8);
              v79 = v28;
              llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v29 + 88, &v79, v67);
              v30 = v4;
              v31 = *(this + 8);
              v79 = AlignedLoad;
              llvm::DenseMapBase<llvm::DenseMap<llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>,llvm::CallInst *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::CallInst *,void>,llvm::detail::DenseSetPair<llvm::CallInst *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v31 + 88, &v79, v67);
              v32 = *(this + 8);
              *(*(v32 + 64) + 636) |= v66;
              Name = llvm::Value::getName(v26);
              GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v32, Name, v34);
              v36 = *(this + 9);
              v79 = llvm::ConstantInt::get();
              v37 = *(this + 10);
              v80 = llvm::ConstantInt::get();
              v68 = 257;
              v38 = llvm::IRBuilderBase::CreateGEP(v83, GVBaseType, v28, &v79, 2, v67);
              v39 = *(v38 + 72);
              v68 = 257;
              v40 = llvm::IRBuilderBase::CreateAlignedLoad(v83, v39, v38, 0, 0, v67);
              v4 = v30;
              v41 = *(this + 8);
              v42 = llvm::Value::getName(inserted);
              v44 = MTLBoundsCheck::SharedPassData::getGVBaseType(v41, v42, v43);
              v45 = *(this + 9);
              v68 = 257;
              Cast = llvm::IRBuilderBase::CreateCast(v83, 40, v40, v45, v67);
              v82[4] = 257;
              GEP = llvm::IRBuilderBase::CreateGEP(v83, v44, AlignedLoad, Cast, &v79);
              v79 = *(this + 5);
              v80 = v82;
              v81 = 0;
              v48 = *v69;
              v68 = 257;
              llvm::IRBuilderBase::CreateBitOrPointerCast(v83, GEP, v48, v67);
              llvm::Value::replaceAllUsesWith();
              v49 = v77;
              if (v77 >= v78)
              {
                v51 = (v77 - __p) >> 3;
                if ((v51 + 1) >> 61)
                {
                  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                }

                v52 = (v78 - __p) >> 2;
                if (v52 <= v51 + 1)
                {
                  v52 = v51 + 1;
                }

                if (v78 - __p >= 0x7FFFFFFFFFFFFFF8)
                {
                  v53 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v53 = v52;
                }

                if (v53)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&__p, v53);
                }

                *(8 * v51) = v7;
                v50 = 8 * v51 + 8;
                v54 = (8 * v51 - (v77 - __p));
                memcpy(v54, __p, v77 - __p);
                v55 = __p;
                __p = v54;
                v77 = v50;
                v78 = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                *v77 = v7;
                v50 = (v49 + 8);
              }

              v77 = v50;
              llvm::Instruction::eraseFromParent(v69);
              if (v80 != v82)
              {
                free(v80);
              }

              llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v86);
              llvm::IRBuilderFolder::~IRBuilderFolder(&v85);
              if (v83[0] != v84)
              {
                free(v83[0]);
              }

              v20 = *(&v71 + 1);
            }

            while (*(&v71 + 1));
          }
        }

        std::deque<llvm::User *>::~deque[abi:ne200100](v70);
      }

      v4 = (v4 + 1);
    }

    v56 = __p;
    v57 = v77;
    if (__p != v77)
    {
      do
      {
        v58 = *v56;
        llvm::GlobalVariable::dropAllReferences(*v56);
        llvm::Constant::getNullValue(*v58, v59);
        llvm::Value::replaceAllUsesWith();
        llvm::GlobalVariable::eraseFromParent(v58);
        ++v56;
      }

      while (v56 != v57);
    }

    llvm::NamedMDNode::clearOperands(v65);
    v60 = v73;
    v61 = v74;
    while (v60 != v61)
    {
      v62 = *v60;
      llvm::NamedMDNode::addOperand();
      ++v60;
    }

    if ((v64 & 1) == 0)
    {
      llvm::NamedMDNode::clearOperands(v65);
      llvm::NamedMDNode::eraseFromParent(v65);
    }
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }

  v63 = *MEMORY[0x277D85DE8];
}

void sub_213C225B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void MTLThreadgroupMemoryCheckPass::createTagFunctions(MTLThreadgroupMemoryCheckPass *this, llvm::Module *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[0] = "mtl.threadgroup.get_tag";
  v12 = 259;
  v4 = *(this + 10);
  v5 = *(this + 12);
  v10 = llvm::PointerType::get();
  *(this + 25) = getMangledFunction<llvm::PointerType *>(a2, v11, v4, &v10);
  llvm::Function::addFnAttr();
  v6 = *(this + 25);
  llvm::Function::addFnAttr();
  llvm::Function::onlyWritesMemory(*(this + 25));
  v7 = *(this + 25);
  llvm::Function::addFnAttr();
  *(*(this + 25) + 32) = *(*(this + 25) + 32) & 0xFFFFBFC0 | 0x4007;
  v8 = *(this + 5);
  v12 = 257;
  llvm::BasicBlock::Create(v8, v11, *(this + 25), 0, v9);
}

void sub_213C227F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MTLThreadgroupMemoryCheckPass::createGetLengthFunctions(MTLThreadgroupMemoryCheckPass *this, llvm::Module *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[0] = "mtl.threadgroup.get_length";
  v8 = 259;
  *(this + 26) = getMangledFunction<llvm::Type *&>(a2, v7, *(this + 10), this + 10);
  llvm::Function::addFnAttr();
  v3 = *(this + 26);
  llvm::Function::addFnAttr();
  v4 = *(this + 26);
  llvm::Function::addFnAttr();
  *(*(this + 26) + 32) = *(*(this + 26) + 32) & 0xFFFFBFC0 | 0x4007;
  v5 = *(this + 5);
  v7[0] = "entry";
  v8 = 259;
  llvm::BasicBlock::Create(v5, v7, *(this + 26), 0, v6);
}

void MTLThreadgroupMemoryCheckPass::applyThreadgroupChecks(MTLBoundsCheck::SharedPassData **this, llvm::Module *a2)
{
  v2 = a2 + 24;
  v3 = *(a2 + 4);
  if (v3 != a2 + 24)
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

      Name = llvm::Value::getName(v5);
      if (v7 < 0x10 || (*Name == 0x657268742E6C746DLL ? (v8 = Name[1] == 0x2E70756F72676461) : (v8 = 0), !v8))
      {
        if ((llvm::GlobalValue::isDeclaration(v5) & 1) == 0)
        {
          MTLThreadgroupMemoryCheckPass::applyThreadgroupChecks(this, v5);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::GlobalVariable *,unsigned long long>>::emplace_back<llvm::GlobalVariable *,unsigned long long &>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1, *a2, *a3);
    v5 = *a1;
    v8 = *(a1 + 8);
  }

  else
  {
    v5 = *a1;
    v6 = (*a1 + 16 * v4);
    v7 = *a3;
    *v6 = *a2;
    v6[1] = v7;
    v8 = v4 + 1;
    *(a1 + 8) = v8;
  }

  return v5 + 16 * v8 - 16;
}

__n128 std::__function::__func<MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1},std::allocator<MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1}>,llvm::Value * ()(MTLIRBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2826341A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1},std::allocator<MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1}>,llvm::Value * ()(MTLIRBuilder &)>::operator()(uint64_t a1, llvm::Type **a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *v4;
  v7 = *(*v4 + 24);
  v19 = 257;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a2, v7, v6, 0, 0, v18);
  v9 = *(v5 + 64);
  Name = llvm::Value::getName(**(a1 + 8));
  GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v9, Name, v11);
  v13 = *(*(a1 + 24) + 8);
  v19 = 257;
  ConstGEP1_64 = llvm::IRBuilderBase::CreateConstGEP1_64(a2, GVBaseType, AlignedLoad, v13, v18);
  v15 = ***(a1 + 24);
  v17[16] = 257;
  return llvm::IRBuilderBase::CreateCast(a2, 49, ConstGEP1_64, v15, v17);
}

uint64_t std::__function::__value_func<llvm::Value * ()(MTLIRBuilder &)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL MTLThreadgroupMemoryCheckPass::isMeshGridPropertiesArg(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 2)
  {
    return 0;
  }

  v3 = *(a2 - 8 * v2 + 8);
  if (*v3)
  {
    return 0;
  }

  String = llvm::MDString::getString(v3);
  if (v5 != 24)
  {
    return 0;
  }

  return *String == 0x6873656D2E726961 && String[1] == 0x72705F646972675FLL && String[2] == 0x736569747265706FLL;
}

void MTLThreadgroupMemoryCheckPass::createLocalThreadgroupGlobal(MTLThreadgroupMemoryCheckPass *this)
{
  v18[7] = *MEMORY[0x277D85DE8];
  v1 = *(*(*(this + 8) + 64) + 632);
  if (v1)
  {
    v3 = *(MetalModulePass::getEntryFunction(this) + 80);
    if (v3)
    {
      v4 = (v3 - 24);
    }

    else
    {
      v4 = 0;
    }

    v13[0] = v4;
    MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(v15, v13);
    llvm::ArrayType::get(*(this + 12), v1);
    v5 = llvm::User::operator new(0x58);
    v6 = *(this + 6);
    llvm::UndefValue::get();
    v13[0] = "mtl.threadgroup_memory";
    v14 = 259;
    llvm::GlobalVariable::GlobalVariable();
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v4);
    llvm::IRBuilderBase::SetInsertPoint(v15, v4, FirstInsertionPt);
    v8 = *(this + 12);
    v9 = llvm::PointerType::get();
    v14 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(v15, 49, v5, v9, v13);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(*(this + 8));
    llvm::IRBuilderBase::CreateAlignedStore(v15, Cast, inserted, 0);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v18);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v17);
    if (v15[0] != &v16)
    {
      free(v15[0]);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_213C234B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v17[5] = v17[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v17);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a17);
  _Unwind_Resume(a1);
}

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(uint64_t a1, llvm::BasicBlock **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
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

void sub_213C23760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
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

uint64_t getMangledFunction<llvm::PointerType *>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, MTLBoundsCheck **a4)
{
  llvm::Twine::str(&v26, this);
  MTLBoundsCheck::getMangledTypeStr(a3, v7, &v25);
  v8 = std::string::insert(&v25, 0, ".");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v21 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v21 >= 0)
  {
    v11 = HIBYTE(v21);
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(&v26, v10, v11);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  memset(&v25, 0, sizeof(v25));
  v24 = *a4;
  MTLBoundsCheck::getMangledTypeStr(v24, v12, &v23);
  v13 = std::string::insert(&v23, 0, ".");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v21 >= 0)
  {
    v16 = HIBYTE(v21);
  }

  else
  {
    v16 = __p[1];
  }

  std::string::append(&v26, v15, v16);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v25, &v24);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v18 = llvm::FunctionType::get();
    v22 = 260;
    __p[0] = &v26;
    Function = llvm::Function::Create(v18, 0, __p, a1);
  }

  if (v25.__r_.__value_.__r.__words[0])
  {
    v25.__r_.__value_.__l.__size_ = v25.__r_.__value_.__r.__words[0];
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_213C23EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Function::onlyWritesMemory(llvm::Function *this)
{
  if (llvm::Function::hasFnAttribute())
  {
    return 1;
  }

  return llvm::Function::hasFnAttribute();
}

uint64_t getMangledFunction<llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, MTLBoundsCheck **a4)
{
  llvm::Twine::str(&v26, this);
  MTLBoundsCheck::getMangledTypeStr(a3, v7, &v25);
  v8 = std::string::insert(&v25, 0, ".");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v21 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v21 >= 0)
  {
    v11 = HIBYTE(v21);
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(&v26, v10, v11);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  memset(&v25, 0, sizeof(v25));
  v24 = *a4;
  MTLBoundsCheck::getMangledTypeStr(v24, v12, &v23);
  v13 = std::string::insert(&v23, 0, ".");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v21 >= 0)
  {
    v16 = HIBYTE(v21);
  }

  else
  {
    v16 = __p[1];
  }

  std::string::append(&v26, v15, v16);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v25, &v24);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v18 = llvm::FunctionType::get();
    v22 = 260;
    __p[0] = &v26;
    Function = llvm::Function::Create(v18, 0, __p, a1);
  }

  if (v25.__r_.__value_.__r.__words[0])
  {
    v25.__r_.__value_.__l.__size_ = v25.__r_.__value_.__r.__words[0];
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_213C241CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t getMangledFunction<llvm::Type *&,llvm::PointerType *>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5)
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

void sub_213C244A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
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

void MTLThreadgroupMemoryCheckPass::applyThreadgroupChecks(MTLBoundsCheck::SharedPassData **this, llvm::Function *a2)
{
  v29[16] = *MEMORY[0x277D85DE8];
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    v21 = a2 + 72;
    do
    {
      v5 = v3 - 24;
      if (!v3)
      {
        v5 = 0;
      }

      v27 = v29;
      v28 = 0x800000000;
      v6 = v5 + 40;
      v7 = *(v5 + 6);
      if (v7 != v5 + 40)
      {
        do
        {
          if (v7)
          {
            v8 = (v7 - 24);
          }

          else
          {
            v8 = 0;
          }

          if ((*(v8 + 16) & 0xFE) == 0x3C)
          {
            CheckedInstruction = MTLThreadgroupMemoryCheckPass::createCheckedInstruction(this, v8);
            if (CheckedInstruction)
            {
              v22[0] = v8;
              llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::Function *>>::emplace_back<llvm::Instruction *,llvm::Function *&>(&v27, v22, &CheckedInstruction);
            }
          }

          v7 = *(v7 + 1);
        }

        while (v7 != v6);
        v9 = v27;
        if (v28)
        {
          v10 = (v27 + 16 * v28);
          do
          {
            v11 = *v9;
            v12 = *(*v9 + 5);
            if ((v12 & 0x40000000) != 0)
            {
              v14 = *(v11 - 1);
              v13 = v12 & 0x7FFFFFF;
            }

            else
            {
              v13 = v12 & 0x7FFFFFF;
              v14 = v11 - 32 * v13;
            }

            v15 = v9[1];
            llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *,void>(&CheckedInstruction, v14, &v14[32 * v13]);
            v16 = this[10];
            MTLBoundsCheck::SharedPassData::indexForInstruction(this[8], v11);
            v22[0] = llvm::ConstantInt::get();
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&CheckedInstruction, v22);
            if (v15)
            {
              v17 = *(v15 + 24);
            }

            else
            {
              v17 = 0;
            }

            v23 = 257;
            v18 = llvm::CallInst::Create(v17, v15, CheckedInstruction, v25, 0, 0);
            llvm::ReplaceInstWithInst(v11, v18, v19);
            if (CheckedInstruction != &v26)
            {
              free(CheckedInstruction);
            }

            v9 += 2;
          }

          while (v9 != v10);
          v9 = v27;
          v2 = v21;
        }

        if (v9 != v29)
        {
          free(v9);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_213C24760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21 != v21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLThreadgroupMemoryCheckPass::createCheckedInstruction(MTLThreadgroupMemoryCheckPass *this, llvm::Instruction *a2)
{
  v2 = *(a2 + 16);
  if (v2 == 60)
  {
    return MTLThreadgroupMemoryCheckPass::getCheckedLoadFunction(this, a2);
  }

  if (v2 == 61)
  {
    return MTLThreadgroupMemoryCheckPass::getCheckedStoreFunction(this, a2);
  }

  return 0;
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::Function *>>::emplace_back<llvm::Instruction *,llvm::Function *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
    v6 = (*a1 + 16 * v4);
    *v6 = *a2;
    v6[1] = *a3;
    v7 = v4 + 1;
    *(a1 + 8) = v7;
  }

  return v5 + 16 * v7 - 16;
}

uint64_t MTLThreadgroupMemoryCheckPass::getCheckedStoreFunction(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = **(a2 - 32);
  v20 = v3;
  if (!a2 || (v4 = a2, *(a2 + 16) != 60))
  {
    v4 = *(a2 - 64);
  }

  v19 = *v4;
  v5 = *(v3 + 8);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v3 + 16) + 8);
  }

  if ((v5 & 0xFFFFFF00) == 0x300)
  {
    v18 = 1 << (*(a2 + 18) >> 1);
    v21[0] = "mtl.threadgroup.checked_store.";
    v21[2] = &v18;
    v22 = 3075;
    v6 = *(a1 + 48);
    VoidTy = llvm::Type::getVoidTy(*(a1 + 40), a2);
    v8 = getMangledFunction<llvm::Type *&,llvm::Type *&,llvm::Type *&>(v6, v21, VoidTy, &v19, &v20, (a1 + 80));
    if (llvm::GlobalValue::isDeclaration(v8))
    {
      llvm::Function::addFnAttr();
      llvm::Function::addFnAttr();
      *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
      if (*(v8 + 18))
      {
        llvm::Function::BuildLazyArguments(v8);
        v11 = *(v8 + 88);
        if (*(v8 + 18))
        {
          llvm::Function::BuildLazyArguments(v8);
          v13 = *(v8 + 88);
          if (*(v8 + 18))
          {
            llvm::Function::BuildLazyArguments(v8);
            v14 = *(v8 + 88);
          }
        }

        else
        {
          v12 = *(v8 + 88);
        }
      }

      else
      {
        v10 = *(v8 + 88);
      }

      v15 = *(a1 + 40);
      v21[0] = "entry";
      v22 = 259;
      llvm::BasicBlock::Create(v15, v21, v8, 0, v9);
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t MTLThreadgroupMemoryCheckPass::getCheckedLoadFunction(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = **(a2 - 32);
  v17 = v3;
  if (!a2 || (v4 = a2, *(a2 + 16) != 60))
  {
    v4 = *(a2 - 64);
  }

  v5 = *(v3 + 8);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v3 + 16) + 8);
  }

  if ((v5 & 0xFFFFFF00) == 0x300)
  {
    v6 = *v4;
    v16 = 1 << (*(a2 + 18) >> 1);
    v7 = a1[6];
    v18[0] = "mtl.threadgroup.checked_load.";
    v18[2] = &v16;
    v19 = 3075;
    v8 = getMangledFunction<llvm::Type *&,llvm::Type *&>(v7, v18, v6, &v17, a1 + 10);
    if (llvm::GlobalValue::isDeclaration(v8))
    {
      llvm::Function::addFnAttr();
      llvm::Function::addFnAttr();
      *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
      if (*(v8 + 18))
      {
        llvm::Function::BuildLazyArguments(v8);
        v11 = *(v8 + 88);
        if (*(v8 + 18))
        {
          llvm::Function::BuildLazyArguments(v8);
          v12 = *(v8 + 88);
        }
      }

      else
      {
        v10 = *(v8 + 88);
      }

      v13 = a1[5];
      v18[0] = "entry";
      v19 = 259;
      llvm::BasicBlock::Create(v13, v18, v8, 0, v9);
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t getMangledFunction<llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5, int64_t *a6)
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

void sub_213C25870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
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

uint64_t getMangledFunction<llvm::Type *&,llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5)
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

void sub_213C25B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
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

void *llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *,void>(void *a1, char *a2, char *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Use *,void>(a1, a2, a3);
  return a1;
}

void sub_213C25C38(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLFragmentInputPackingPass::fragmentInputPacking(int a1, llvm::Type **this, uint64_t a3)
{
  v145[10] = *MEMORY[0x277D85DE8];
  v4 = *this;
  *&v139 = "air.fragment";
  LOWORD(v141) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v139);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v7 = (Operand - 8 * *(Operand + 8));
  v8 = v7[2];
  v9 = *(*v7 + 128);
  v10 = *(v9 + 3);
  __p = 0;
  v136 = 0;
  v137 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  __src = 0;
  v130 = 0;
  v131 = 0;
  if (v8)
  {
    std::vector<unsigned int>::vector[abi:ne200100](&v128, *(v9 + 12));
    MTLFrameworkPass::getArgumentMetadataIndices(v8, &v128);
    v122 = v10;
    v118 = this;
    if (*(v9 + 9))
    {
      llvm::Function::BuildLazyArguments(v9);
    }

    v11 = 0;
    v120 = 0;
    for (i = *(v9 + 11); ; i += 40)
    {
      if (*(v9 + 9))
      {
        llvm::Function::BuildLazyArguments(v9);
      }

      if (i == *(v9 + 11) + 40 * *(v9 + 12))
      {
        v42 = 126 - 2 * __clz((v136 - __p) >> 5);
        if (v136 == __p)
        {
          v43 = 0;
        }

        else
        {
          v43 = v42;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,false>(__p, v136, &v139, v43, 1);
        v121 = v9;
        if (((v136 - __p) & 0x1FFFFFFFE0) != 0)
        {
          v44 = 0;
          v45 = ((v136 - __p) >> 5);
          do
          {
            v46 = __p + 32 * v44;
            v47 = v132;
            v48 = v133;
            ComponentType = MTLDataTypeGetComponentType(*(v46 + 6));
            ComponentCount = MTLDataTypeGetComponentCount(*(v46 + 6));
            v51 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3);
            v52 = v46[28];
            v53 = v51;
            v54 = (v52 & 0x38) == 0x20 || v51 == 0;
            v9 = v121;
            if (v54)
            {
LABEL_73:
              v58 = *(*(v122 + 16) + 8 * (*v46 + 1));
              if ((*(v58 + 8) & 0xFE) == 0x12)
              {
                v58 = **(v58 + 16);
              }

              v59 = v133;
              if (v133 >= v134)
              {
                v61 = 0xAAAAAAAAAAAAAAABLL * ((v133 - v132) >> 3);
                v62 = v61 + 1;
                if (v61 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v134 - v132) >> 3) > v62)
                {
                  v62 = 0x5555555555555556 * ((v134 - v132) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v134 - v132) >> 3) >= 0x555555555555555)
                {
                  v63 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v63 = v62;
                }

                if (v63)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(&v132, v63);
                }

                v65 = 8 * ((v133 - v132) >> 3);
                *v65 = ComponentType;
                *(v65 + 2) = ComponentCount;
                *(v65 + 4) = 1;
                *(v65 + 6) = v44;
                *(v65 + 16) = v58;
                v60 = 24 * v61 + 24;
                v66 = (24 * v61 - (v133 - v132));
                memcpy(v66, v132, v133 - v132);
                v67 = v132;
                v132 = v66;
                v133 = v60;
                v134 = 0;
                if (v67)
                {
                  operator delete(v67);
                }

                v9 = v121;
              }

              else
              {
                *v133 = ComponentType;
                *(v59 + 1) = ComponentCount;
                *(v59 + 2) = 1;
                *(v59 + 3) = v44;
                v60 = (v59 + 24);
                *(v59 + 2) = v58;
              }

              v133 = v60;
            }

            else
            {
              v55 = (v132 + 6);
              while (1)
              {
                v56 = *(v55 - 2);
                v57 = (v56 + ComponentCount) <= 4 && ComponentType == *(v55 - 3);
                if (v57 && ((v52 ^ *(__p + 32 * *v55 + 28)) & 0x3E) == 0)
                {
                  break;
                }

                v55 += 12;
                if (!--v53)
                {
                  goto LABEL_73;
                }
              }

              *(v55 - 2) = v56 + ComponentCount;
              v64 = *(v55 - 1);
              v55[v64] = v44;
              *(v55 - 1) = v64 + 1;
            }

            ++v44;
          }

          while (v44 != v45);
        }

        v126 = 0;
        v127 = 0;
        v125 = 0;
        std::vector<MTLOpaqueObject *>::reserve(&v125, (*(v122 + 12) - 1));
        v124 = *(v9 + 14);
        v144[0] = v145;
        v144[1] = 0xA00000000;
        memset(v123, 0, sizeof(v123));
        std::vector<MTLOpaqueObject *>::reserve(v123, (*(v122 + 12) - 1));
        v117 = 0xAAAAAAAAAAAAAAABLL * ((v133 - v132) >> 3);
        if (v117)
        {
          v69 = 0;
          v70 = 16;
          do
          {
            v71 = v132;
            v72 = __p + 32 * *(v132 + v70 - 10);
            v73 = *(v132 + v70 - 14);
            v74 = MTLDataTypeGetComponentType(*(v72 + 6));
            v75 = *&v71[v70];
            if (v73 >= 2 && (v72[28] & 0x38) != 0x20)
            {
              v76 = *&v71[v70];
              v75 = llvm::VectorType::get();
            }

            v77 = v126;
            if (v126 >= v127)
            {
              v79 = (v126 - v125) >> 3;
              if ((v79 + 1) >> 61)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              v80 = (v127 - v125) >> 2;
              if (v80 <= v79 + 1)
              {
                v80 = v79 + 1;
              }

              if (v127 - v125 >= 0x7FFFFFFFFFFFFFF8)
              {
                v81 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v81 = v80;
              }

              if (v81)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v125, v81);
              }

              v82 = (8 * v79);
              *v82 = v75;
              v78 = 8 * v79 + 8;
              v83 = v82 - (v126 - v125);
              memcpy(v83, v125, v126 - v125);
              v84 = v125;
              v125 = v83;
              v126 = v78;
              v127 = 0;
              if (v84)
              {
                operator delete(v84);
              }
            }

            else
            {
              *v126 = v75;
              v78 = (v77 + 8);
            }

            v126 = v78;
            llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(v144, 0);
            ShaderTypeName = MTLDataTypeGetShaderTypeName(v74, v73);
            v143 = 0;
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            llvm::Type::getInt32Ty(v4, v86);
            llvm::ConstantInt::get();
            *&v139 = llvm::ValueAsMetadata::get();
            *(&v139 + 1) = llvm::MDString::get();
            *&v140 = llvm::MDString::get();
            *(&v140 + 1) = llvm::MDString::get();
            llvm::Type::getInt32Ty(v4, v87);
            llvm::ConstantInt::get();
            *&v141 = llvm::ValueAsMetadata::get();
            *(&v141 + 1) = llvm::MDString::get();
            strlen(ShaderTypeName);
            *&v142 = llvm::MDString::get();
            v88 = MTLFrameworkPass::samplingStringFromQualifier(((v72[28] >> 3) & 7));
            strlen(v88);
            *(&v142 + 1) = llvm::MDString::get();
            v89 = MTLFrameworkPass::interpolationStringFromQualifier(((v72[28] >> 1) & 3));
            strlen(v89);
            v143 = llvm::MDString::get();
            Impl = llvm::MDTuple::getImpl();
            std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v123, &Impl);
            ++v69;
            v70 += 24;
          }

          while (v117 != v69);
        }

        if (((v130 - __src) & 0x3FFFFFFFCLL) != 0)
        {
          v90 = 0;
          v91 = ((v130 - __src) >> 2);
          do
          {
            v92 = *(__src + v90);
            v93 = *(*(v122 + 16) + 8 * (v92 + 1));
            v94 = v126;
            if (v126 >= v127)
            {
              v96 = (v126 - v125) >> 3;
              if ((v96 + 1) >> 61)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              v97 = (v127 - v125) >> 2;
              if (v97 <= v96 + 1)
              {
                v97 = v96 + 1;
              }

              if (v127 - v125 >= 0x7FFFFFFFFFFFFFF8)
              {
                v98 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v98 = v97;
              }

              if (v98)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v125, v98);
              }

              v99 = (8 * v96);
              *v99 = v93;
              v95 = 8 * v96 + 8;
              v100 = v99 - (v126 - v125);
              memcpy(v100, v125, v126 - v125);
              v101 = v125;
              v125 = v100;
              v126 = v95;
              v127 = 0;
              if (v101)
              {
                operator delete(v101);
              }
            }

            else
            {
              *v126 = v93;
              v95 = (v94 + 8);
            }

            v126 = v95;
            ParamAttrs = llvm::compat::getParamAttrs(&v124, v92, v68);
            llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(v144, ParamAttrs);
            v103 = *(v8 - 8 * *(v8 + 8) + 8 * *(v128 + v92));
            if (v103)
            {
              v104 = *(v103 + 8);
              std::vector<llvm::Metadata *>::vector[abi:ne200100](&v139, v104);
              llvm::Type::getInt32Ty(v4, v105);
              llvm::ConstantInt::get();
              *v139 = llvm::ValueAsMetadata::get();
              if (v104 >= 2)
              {
                v106 = v103 - 8 * *(v103 + 8);
                v107 = 8;
                do
                {
                  *(v139 + v107) = *(v106 + v107);
                  v107 += 8;
                }

                while (8 * v104 != v107);
              }

              v108 = llvm::MDTuple::getImpl();
              if (v139)
              {
                *(&v139 + 1) = v139;
                operator delete(v139);
              }
            }

            else
            {
              v108 = 0;
            }

            *&v139 = v108;
            std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v123, &v139);
            ++v90;
          }

          while (v90 != v91);
        }

        v109 = **(*(v121 + 3) + 16);
        v110 = llvm::FunctionType::get();
        *(v121 + 8) = *(v121 + 8) & 0xFFFFBFC0 | 0x4007;
        *&v139 = "air.packedFragmentFunction";
        LOWORD(v141) = 259;
        v111 = llvm::Function::Create(v110, 0, &v139, v118);
        llvm::Function::getContext(v121);
        llvm::compat::getFnAttrs(&v124, v112);
        llvm::compat::getRetAttrs(&v124, v113);
        *(v111 + 14) = llvm::AttributeList::get();
        *&v139 = "Body";
        LOWORD(v141) = 259;
        llvm::BasicBlock::Create(v4, &v139, v111, 0, v114);
      }

      v13 = *(v128 + v11);
      if (v13 != -1)
      {
        v14 = *(v8 - 8 * *(v8 + 8) + 8 * v13);
        String = llvm::MDString::getString(*(v14 - 8 * *(v14 + 8) + 8));
        if (v16 > 23)
        {
          if (v16 == 24)
          {
            if (memcmp(String, "air.viewport_array_index", 0x18uLL))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v16 != 29 || memcmp(String, "air.render_target_array_index", 0x1DuLL))
            {
              goto LABEL_32;
            }

            dataTypeFromMetadata(2u, v14);
          }

          LODWORD(v120) = v120 + 1;
          v22 = HIDWORD(v120) + 1;
LABEL_31:
          HIDWORD(v120) = v22;
LABEL_32:
          v23 = v130;
          if (v130 >= v131)
          {
            v25 = __src;
            v26 = v130 - __src;
            v27 = (v130 - __src) >> 2;
            v28 = v27 + 1;
            if ((v27 + 1) >> 62)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v29 = v131 - __src;
            if ((v131 - __src) >> 1 > v28)
            {
              v28 = v29 >> 1;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v30 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v30);
            }

            *(4 * v27) = v11;
            v24 = 4 * v27 + 4;
            memcpy(0, v25, v26);
            v31 = __src;
            __src = 0;
            v130 = v24;
            v131 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v130 = v11;
            v24 = (v23 + 4);
          }

          v130 = v24;
          goto LABEL_45;
        }

        if (v16 == 15)
        {
          if (!memcmp(String, "air.point_coord", 0xFuLL))
          {
            LODWORD(v120) = v120 + 1;
            v22 = HIDWORD(v120) + 2;
            goto LABEL_31;
          }

          goto LABEL_32;
        }

        if (v16 != 18)
        {
          goto LABEL_32;
        }

        v17 = *String == 0x676172662E726961 && String[1] == 0x706E695F746E656DLL;
        if (!v17 || *(String + 8) != 29813)
        {
          goto LABEL_32;
        }

        if (*(i + 8))
        {
          LODWORD(v139) = 0;
          *(&v139 + 1) = 0;
          *&v140 = 0;
          *(&v140 + 5) = 0;
          MTLFrameworkPass::extractVaryingInfoFromMetadata(&v139, v14, 2u, 0);
          LODWORD(v139) = v11;
          BYTE12(v140) |= 1u;
          v19 = v136;
          if (v136 >= v137)
          {
            v32 = __p;
            v33 = v136 - __p;
            v34 = (v136 - __p) >> 5;
            v35 = v34 + 1;
            if ((v34 + 1) >> 59)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v36 = v137 - __p;
            if ((v137 - __p) >> 4 > v35)
            {
              v35 = v36 >> 4;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFE0)
            {
              v35 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<VaryingInfo>>(&__p, v35);
            }

            v37 = (v136 - __p) >> 5;
            v38 = (32 * v34);
            v39 = v140;
            *v38 = v139;
            v38[1] = v39;
            v21 = (32 * v34 + 32);
            v40 = (32 * v34 - 32 * v37);
            memcpy(&v38[-2 * v37], v32, v33);
            v41 = __p;
            __p = v40;
            v136 = v21;
            v137 = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            v20 = v140;
            *v136 = v139;
            *(v19 + 1) = v20;
            v21 = (v19 + 32);
          }

          v136 = v21;
          LODWORD(v120) = v120 + 1;
          HIDWORD(v120) += MTLDataTypeGetComponentCount(SDWORD2(v140));
        }
      }

LABEL_45:
      ++v11;
    }
  }

  *&v139 = this;
  LODWORD(v144[0]) = 0;
  LODWORD(Impl) = 0;
  LODWORD(v128) = 0;
  v115 = *(a3 + 24);
  if (!v115)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v115 + 48))(v115, &v139, v144, &Impl, &v128, &v132, &__p);
  if (__src)
  {
    v130 = __src;
    operator delete(__src);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }

  if (__p)
  {
    v136 = __p;
    operator delete(__p);
  }

  v116 = *MEMORY[0x277D85DE8];
}

void sub_213C26E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a59);
  if (a35)
  {
    operator delete(a35);
  }

  v62 = *(v60 - 200);
  if (v62 != a17)
  {
    free(v62);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::IRBuilderBase::CreateShuffleVector(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  v12[8] = *MEMORY[0x277D85DE8];
  llvm::ShuffleVectorInst::getShuffleMask();
  ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector(this, a2, a3, v12, 0, a5);
  v10 = *MEMORY[0x277D85DE8];
  return ShuffleVector;
}

void sub_213C270AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateShuffleVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    v15 = llvm::User::operator new(0x68);
    v17 = 257;
    MEMORY[0x21604BB20](v15, a2, a3, a4, a5, v16, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v15, a6);
  }

  v12 = (*(**(a1 + 72) + 336))(*(a1 + 72), a2, a3, a4, a5);
  if (v12)
  {
    v13 = *(v12 + 16) >= 0x1Cu;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    return v12;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v12, a6);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<llvm::Argument *>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_213C272D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<llvm::Constant *>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_213C27350(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TextureCheckPass::~TextureCheckPass(TextureCheckPass *this)
{
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
}

BOOL TextureCheckPass::runOnModule(TextureCheckPass *this, llvm::Module *a2)
{
  v28[8] = *MEMORY[0x277D85DE8];
  if (*(*(*(this + 4) + 64) + 651))
  {
    v2 = 0;
  }

  else
  {
    MDKindID = llvm::Module::getMDKindID();
    *(this + 7) = MDKindID;
    v26 = v28;
    v27 = 0x800000000;
    v23 = &v26;
    v24 = MDKindID;
    llvm::InstVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v23, *(a2 + 4), a2 + 24);
    llvm::Type::getInt32Ty(*a2, v6);
    v7 = v26;
    if (v27)
    {
      v8 = (v26 + 8 * v27);
      do
      {
        v9 = *v7;
        MTLBoundsCheck::SharedPassData::indexForInstruction(*(this + 4), *v7);
        v10 = llvm::ConstantInt::get();
        v11 = *(v9 - 4);
        if (!v11 || *(v11 + 16) || *(v11 + 24) != *(v9 + 9))
        {
          v11 = 0;
        }

        CheckedTextureFunction = TextureCheckPass::getCheckedTextureFunction(this, v11);
        NumArgOperands = llvm::compat::getNumArgOperands(v9);
        v21[0] = 0;
        llvm::SmallVector<llvm::Value *,8u>::SmallVector(&v23, (NumArgOperands + 1), v21);
        v14 = 0;
        v15 = v9;
        while (v14 < llvm::compat::getNumArgOperands(v9))
        {
          *(v23 + v14++) = *(v15 - 4 * (*(v9 + 5) & 0x7FFFFFF));
          v15 = (v15 + 32);
        }

        *(v23 + v14) = v10;
        if (CheckedTextureFunction)
        {
          v16 = *(CheckedTextureFunction + 24);
        }

        else
        {
          v16 = 0;
        }

        v22 = 257;
        v17 = llvm::CallInst::Create(v16, CheckedTextureFunction, v23, v24, 0, 0);
        llvm::ReplaceInstWithInst(v9, v17, v18);
        if (v23 != &v25)
        {
          free(v23);
        }

        ++v7;
      }

      while (v7 != v8);
      v7 = v26;
      v2 = v27 != 0;
    }

    else
    {
      v2 = 0;
    }

    if (v7 != v28)
    {
      free(v7);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_213C2765C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a25 != v25)
  {
    free(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TextureCheckPass::getCheckedTextureFunction(TextureCheckPass *this, llvm::Function *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 5);
  Name = llvm::Value::getName(a2);
  v25 = v5;
  v6 = *(a2 + 3);
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "mtl.checked.");
  v7 = std::string::append[abi:ne200100]<unsigned char const*,0>(&__p, (Name + 4), (Name + v5));
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, v7->__r_.__value_.__l.__data_, v7->__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = *&v7->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v8;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Function = llvm::Module::getFunction();
  if (!Function)
  {
    llvm::Type::getInt1Ty(*v4, v9);
    llvm::Type::getInt8Ty(*v4, v11);
    Int32Ty = llvm::Type::getInt32Ty(*v4, v12);
    llvm::Type::getInt64Ty(*v4, v13);
    v21 = 0;
    llvm::SmallVector<llvm::Type *,8u>::SmallVector<llvm::Type * const*,void>(&__p, (*(v6 + 16) + 8), (*(v6 + 16) + 8 * *(v6 + 12)));
    llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__p, &Int32Ty);
    v14 = **(v6 + 16);
    v21 = llvm::FunctionType::get();
    if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
    {
      free(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = *(a2 + 14);
    v15 = getOrInsertFunction<std::string const&,llvm::FunctionType *&,llvm::AttributeList>(v4, &v23, &v21, &__p);
    llvm::Function::addFnAttr();
    *(v15 + 8) = *(v15 + 8) & 0xFFFFBFC0 | 0x4007;
    if ((*(*(*(this + 4) + 72) + 20) & 2) != 0 && ((llvm::Function::onlyReadsMemory(v15) & 1) != 0 || llvm::Function::hasFnAttribute()))
    {
      llvm::Function::removeFnAttr();
    }

    v20 = *(**(v21 + 16) + 8);
    v17 = *v4;
    __p.__r_.__value_.__r.__words[0] = "checkBlock";
    v27 = 259;
    llvm::BasicBlock::Create(v17, &__p, v15, 0, v16);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v18 = *MEMORY[0x277D85DE8];
  return Function;
}

void sub_213C28850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a59);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::InstVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = *(a2 + 8);
      if (a2)
      {
        v6 = a2 - 56;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 80);
      v8 = v6 + 72;
      if (v7 != v6 + 72)
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

          result = llvm::InstVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit(v4, v10);
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

uint64_t llvm::InstVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = a2 + 40;
  if (v2 != a2 + 40)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 8);
      v6 = (v2 - 24);
      if (v2)
      {
        v7 = v2 - 24;
      }

      else
      {
        v7 = 0;
      }

      if (*(v7 + 16) == 84)
      {
        result = TextureCheckPass::TextureOpVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor>::visitCallInst(v4, v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t TextureCheckPass::TextureOpVisitor<TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor>::visitCallInst(uint64_t a1, llvm::Instruction *a2)
{
  result = *(a2 - 4);
  if (!result)
  {
    return result;
  }

  if (*(result + 16))
  {
    return result;
  }

  if (*(result + 24) != *(a2 + 9))
  {
    return result;
  }

  result = llvm::Value::getName(result);
  if (v5 < 0xE)
  {
    return result;
  }

  v6 = result;
  if (*result == 0x5F7465672E726961 && *(result + 6) == 0x5F68746469775F74)
  {
    goto LABEL_193;
  }

  if (v5 == 14)
  {
    if ((*result != 0x5F7465672E726961 || *(result + 6) != 0x5F68747065645F74) && (*result != 0x646165722E726961 || *(result + 6) != 0x68747065645F6461))
    {
      return result;
    }

LABEL_193:

    return TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor::visitTextureOp(a1, v6, v5, a2);
  }

  if (*result == 0x5F7465672E726961 && *(result + 7) == 0x5F7468676965685FLL)
  {
    goto LABEL_193;
  }

  if (*result == 0x5F7465672E726961 && *(result + 6) == 0x5F68747065645F74)
  {
    goto LABEL_193;
  }

  if (v5 < 0x13)
  {
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    if (v5 < 0x10)
    {
      goto LABEL_81;
    }

    goto LABEL_76;
  }

  if (*result == 0x5F7465672E726961 && *(result + 8) == 0x69735F7961727261 && *(result + 11) == 0x5F657A69735F7961)
  {
    goto LABEL_193;
  }

  v13 = v5 < 0x17;
  if (v5 >= 0x17)
  {
    if (*result == 0x5F7465672E726961 && *(result + 8) == 0x5F70696D5F6D756ELL && *(result + 15) == 0x5F736C6576656C5FLL)
    {
      goto LABEL_193;
    }

LABEL_49:
    if (*result == 0x5F7465672E726961 && *(result + 8) == 0x706D61735F6D756ELL && *(result + 16) == 1601398124)
    {
      goto LABEL_193;
    }

    v12 = v5 < 0x1A;
    if (v5 >= 0x1A)
    {
      if (*result == 0x5F7465672E726961 && *(result + 8) == 0x5F6C656E6E616863 && *(result + 16) == 0x7079745F61746164 && *(result + 24) == 24421)
      {
        goto LABEL_193;
      }
    }

    else if (v5 < 0x16)
    {
      v12 = 1;
      goto LABEL_76;
    }

    if (*result == 0x5F7465672E726961 && *(result + 8) == 0x5F6C656E6E616863 && *(result + 14) == 0x5F726564726F5F6CLL)
    {
      goto LABEL_193;
    }

    goto LABEL_76;
  }

  if (v5 != 19)
  {
    goto LABEL_49;
  }

  v12 = 1;
  v13 = 1;
LABEL_76:
  if (*result == 0x646165722E726961 && *(result + 8) == 0x657275747865745FLL)
  {
    goto LABEL_193;
  }

  v14 = 0;
  v15 = v5 < 0x13;
LABEL_81:
  if (*result == 0x646165722E726961 && *(result + 6) == 0x68747065645F6461)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x11)
  {
    v29 = *(result + 8);
    v30 = *(result + 16);
    v31 = *v6 == 0x746972772E726961 && v29 == 0x7275747865745F65;
    if (v31 && v30 == 101)
    {
      goto LABEL_193;
    }
  }

  result = 0x68747065645F6574;
  if (*v6 == 0x746972772E726961 && *(v6 + 7) == 0x68747065645F6574)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x12)
  {
    result = *(v6 + 16);
    v34 = *v6 == 0x706D61732E726961 && *(v6 + 8) == 0x75747865745F656CLL;
    if (v34 && result == 25970)
    {
      goto LABEL_193;
    }
  }

  if ((v14 & 1) == 0)
  {
    result = 0x68747065645F656CLL;
    if (*v6 == 0x706D61732E726961 && *(v6 + 8) == 0x68747065645F656CLL)
    {
      goto LABEL_193;
    }
  }

  if (!v15)
  {
    v37 = *v6 == 0x706D61732E726961 && *(v6 + 8) == 0x61706D6F635F656CLL;
    if (v37 && *(v6 + 11) == 0x5F657261706D6F63)
    {
      goto LABEL_193;
    }
  }

  if (v5 >= 0x12)
  {
    result = *(v6 + 16);
    v39 = *v6 == 0x687461672E726961 && *(v6 + 8) == 0x75747865745F7265;
    if (v39 && result == 25970)
    {
      goto LABEL_193;
    }
  }

  if ((v14 & 1) == 0 && *v6 == 0x687461672E726961 && *(v6 + 8) == 0x68747065645F7265)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x18)
  {
    result = 0x68747065645F6572;
    v42 = *v6 == 0x687461672E726961 && *(v6 + 8) == 0x61706D6F635F7265;
    if (v42 && *(v6 + 16) == 0x68747065645F6572)
    {
      goto LABEL_193;
    }
  }

  if (!v12)
  {
    v44 = *v6 == 0x636C61632E726961 && *(v6 + 8) == 0x6C635F6574616C75;
    v45 = v44 && *(v6 + 16) == 0x6F6C5F6465706D61;
    if (v45 && *(v6 + 24) == 24420)
    {
      goto LABEL_193;
    }
  }

  if (v5 >= 0x1C)
  {
    v47 = *v6 == 0x636C61632E726961 && *(v6 + 8) == 0x6E755F6574616C75;
    v48 = v47 && *(v6 + 16) == 0x5F6465706D616C63;
    if (v48 && *(v6 + 24) == 1600417644)
    {
      goto LABEL_193;
    }
  }

  if (v5 >= 0x11)
  {
    v50 = *v6 == 0x636E65662E726961 && *(v6 + 8) == 0x7275747865745F65;
    if (v50 && *(v6 + 16) == 101)
    {
      goto LABEL_193;
    }
  }

  if (*v6 == 0x636E65662E726961 && *(v6 + 7) == 0x68747065645F6563)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x19)
  {
    v53 = *v6 == 0x5F7465672E726961 && *(v6 + 8) == 0x695F657571696E75;
    v54 = v53 && *(v6 + 16) == 0x7275747865745F64;
    if (v54 && *(v6 + 24) == 101)
    {
      goto LABEL_193;
    }
  }

  if (!v13)
  {
    v56 = *v6 == 0x5F7465672E726961 && *(v6 + 8) == 0x695F657571696E75;
    if (v56 && *(v6 + 15) == 0x68747065645F6469)
    {
      goto LABEL_193;
    }
  }

  return result;
}

uint64_t TextureCheckPass::runOnModule(llvm::Module &)::OpVisitor::visitTextureOp(uint64_t a1, int a2, int a3, llvm::Instruction *this)
{
  if (!*(a1 + 8) || !*(this + 6) && (*(this + 23) & 0x20) == 0 || (result = llvm::Instruction::getMetadataImpl(this)) == 0)
  {
    v7 = *a1;
    v8 = this;
    return llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v7, &v8);
  }

  return result;
}

std::string *std::string::append[abi:ne200100]<unsigned char const*,0>(std::string *this, char *a2, char *a3)
{
  v4 = a2;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > v4 || &v10->__r_.__value_.__l.__data_ + size + 1 <= v4)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    while (v4 != a3)
    {
      v16 = *v4++;
      *v15++ = v16;
    }

    *v15 = 0;
    v17 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, v4, a3, v7);
    if ((v20 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v13 = v20;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_213C29354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getOrInsertFunction<std::string const&,llvm::FunctionType *&,llvm::AttributeList>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v5 = *a2;
  }

  v6 = *a3;
  v7 = *a4;
  llvm::Module::getOrInsertFunction();
  result = v8;
  if (*(v8 + 16) == 5)
  {
    return *(v8 - 32 * (*(v8 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t llvm::Function::onlyReadsMemory(llvm::Function *this)
{
  if (llvm::Function::hasFnAttribute())
  {
    return 1;
  }

  return llvm::Function::hasFnAttribute();
}

uint64_t llvm::IRBuilderBase::CreateOr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  result = (*(**(this + 9) + 32))(*(this + 9));
  if (!result)
  {
    v7 = llvm::BinaryOperator::Create();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
  }

  return result;
}

_BYTE *std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

uint64_t llvm::SmallVector<llvm::Type *,8u>::SmallVector<llvm::Type * const*,void>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, a3);
  return a1;
}

void sub_213C295A4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLExcludeIntrinsicsPass::~MTLExcludeIntrinsicsPass(MTLExcludeIntrinsicsPass *this)
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

uint64_t MTLExcludeIntrinsicsPass::runOnModule(MTLExcludeIntrinsicsPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  v4 = *(a2 + 4);
  if (v4 == (a2 + 24))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (v4)
      {
        v6 = (v4 - 7);
      }

      else
      {
        v6 = 0;
      }

      if (llvm::Function::hasFnAttribute())
      {
        v7 = *(this + 5);
        v5 = 1;
        llvm::MDTuple::getImpl();
        llvm::Value::setMetadata();
        v8 = *(this + 5);
        llvm::MDTuple::getImpl();
        llvm::Value::setMetadata();
        MTLBoundsCheck::SharedPassData::addMetadataToAllCallees(*(this + 8), v6, "no-gv-emulation", 15);
        MTLBoundsCheck::SharedPassData::addMetadataToAllCallees(*(this + 8), v6, "no-asan", 7);
      }

      if ((*(v6 + 34) & 0x40) != 0)
      {
        SectionImpl = llvm::GlobalObject::getSectionImpl(v6);
        if (v10 == 22 && *SectionImpl == 0x657478652E726961 && SectionImpl[1] == 0x645F796C6C616E72 && *(SectionImpl + 14) == 0x64656E696665645FLL)
        {
          v13 = *(this + 5);
          v5 = 1;
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
          v14 = *(this + 5);
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
          v15 = *(this + 5);
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
        }
      }

      v4 = v4[1];
    }

    while (v4 != (a2 + 24));
  }

  return v5 & 1;
}

BOOL isPatchControlPointInputUnused(uint64_t a1)
{
  v1 = *(a1 - 8 * *(a1 + 8) + 8 * (*(a1 + 8) - 1));
  if (*v1)
  {
    return 0;
  }

  String = llvm::MDString::getString(v1);
  if (v3 != 14)
  {
    return 0;
  }

  return *String == 0x5F6772612E726961 && *(String + 6) == 0x646573756E755F67;
}

char *MTLCompilerErrorObject::setErrorMessage(MTLCompilerErrorObject *this, const char *__s1)
{
  result = strdup(__s1);
  *this = result;
  return result;
}

uint64_t parseControlPointInputMetadata(uint64_t result, uint64_t a2)
{
  *a2 = *a2 & 0xFFFFB005 | 0x407A;
  v2 = *(result + 8);
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      result = *(v4 - 8 * *(v4 + 8) + 8 * i);
      if (!*result)
      {
        result = llvm::MDString::getString(result);
        if (v6 > 16)
        {
          if (v6 == 17)
          {
            result = memcmp(result, "air.arg_type_name", 0x11uLL);
            if (!result)
            {
              result = llvm::MDString::getString(*(v4 - 8 * *(v4 + 8) + 8 * ++i));
              *(a2 + 32) = result;
              *(a2 + 40) = v15;
            }
          }

          else if (v6 == 18)
          {
            v7 = *result == 0x61636F6C2E726961 && *(result + 8) == 0x646E695F6E6F6974;
            if (v7 && *(result + 16) == 30821)
            {
              v9 = v4 - 8 * *(v4 + 8);
              v10 = *(*(v9 + 8 * (i + 1)) + 128);
              v11 = (v10 + 24);
              if (*(v10 + 32) >= 0x41u)
              {
                v11 = *v11;
              }

              *(a2 + 4) = *v11;
              i += 2;
              v12 = *(*(v9 + 8 * i) + 128);
              v13 = (v12 + 24);
              if (*(v12 + 32) >= 0x41u)
              {
                v13 = *v13;
              }

              *(a2 + 8) = *v13;
            }
          }
        }

        else if (v6 == 12)
        {
          result = memcmp(result, "air.arg_name", 0xCuLL);
          if (!result)
          {
            result = llvm::MDString::getString(*(v4 - 8 * *(v4 + 8) + 8 * ++i));
            *(a2 + 16) = result;
            *(a2 + 24) = v14;
          }
        }

        else if (v6 == 14)
        {
          result = memcmp(result, "air.arg_unused", 0xEuLL);
          if (!result)
          {
            *a2 &= ~8u;
          }
        }
      }
    }
  }

  return result;
}

void parseMeshStruct(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(&buildInMeshTopologySetOnce, memory_order_acquire) != -1)
  {
    __p[0] = &v20;
    v19[0] = __p;
    std::__call_once(&buildInMeshTopologySetOnce, v19, std::__call_once_proxy[abi:ne200100]<std::tuple<parseMeshStruct(MTLArgumentData &,llvm::MDNode *)::$_0 &&>>);
  }

  llvm::MDString::getString(*(a2 - 8 * *(a2 + 8)));
  v4 = a2 - 8 * *(a2 + 8);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  addMeshStructMembers(v5, *(a1 + 168));
  addMeshStructMembers(v6, *(a1 + 176));
  v7 = a2 - 8 * *(a2 + 8);
  v8 = *(*(v7 + 24) + 128);
  if (*(v8 + 16) == 16)
  {
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    v10 = *v9;
  }

  else
  {
    v10 = -1;
  }

  *(a1 + 60) = v10;
  v11 = *(*(v7 + 32) + 128);
  if (*(v11 + 16) == 16)
  {
    v12 = (v11 + 24);
    if (*(v11 + 32) >= 0x41u)
    {
      v12 = *v12;
    }

    v13 = *v12;
  }

  else
  {
    v13 = -1;
  }

  *(a1 + 64) = v13;
  v19[0] = llvm::MDString::getString(*(v7 + 40));
  v19[1] = v14;
  v15 = buildInMeshTopologySet;
  llvm::StringRef::str(v19, __p);
  v16 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v15, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 68) = *(v16 + 56);
}

void sub_213C29D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t dataTypeFromMetadata(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 - a1;
  if (v2 <= a1)
  {
    return 0;
  }

  v5 = a1 + 1;
  for (i = a2 + 8 * a1; ; i += 8)
  {
    v7 = *(i - 8 * *(a2 + 8));
    if (!*v7)
    {
      String = llvm::MDString::getString(v7);
      if (v9 == 17)
      {
        v10 = *String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974;
        if (v10 && *(String + 16) == 101)
        {
          break;
        }
      }
    }

    ++v5;
    if (!--v3)
    {
      return 0;
    }
  }

  v13 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * v5));
  v14 = strlen(v13);

  return dataTypeFromString(v13, v14);
}

uint64_t MTLDataTypeGetSignedType(uint64_t result)
{
  v1 = result - 33;
  if (result - 33) <= 0x17 && ((0xFF0F0Fu >> v1))
  {
    return dword_213C7D378[v1];
  }

  return result;
}

_BYTE *serializeFragmentLinkingInfoInternal(uint64_t a1, char a2, char a3, char a4, char a5, void *a6, unint64_t *a7)
{
  v12 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v13 = a6[1] - *a6;
  if ((v13 & 0x1FFFFFFFE0) != 0)
  {
    v14 = 0;
    v15 = (v13 >> 5);
    v16 = 1024;
    v17 = 4;
    do
    {
      v18 = *a6 + 32 * v14;
      v19 = *(v18 + 28);
      if (v19)
      {
        if (v17 == -1)
        {
          goto LABEL_32;
        }

        v20 = *(v18 + 24);
        v21 = v17 + 1;
        if (v16 <= v17)
        {
          if (!v16)
          {
            v16 = 128;
          }

          while (v16 <= v17)
          {
            if (v16 >> 1 >= ~v16)
            {
              v16 = v17 + 1;
            }

            else
            {
              v16 += v16 >> 1;
            }
          }

          v12 = malloc_type_realloc(v12, v16, 0x100004077774924uLL);
          if (!v12)
          {
            goto LABEL_32;
          }
        }

        v12[v17] = v20;
        if (v17 == -2)
        {
          goto LABEL_32;
        }

        v22 = v17 + 2;
        if (v16 <= v21)
        {
          do
          {
            if (v16 >> 1 >= ~v16)
            {
              v16 = v17 + 2;
            }

            else
            {
              v16 += v16 >> 1;
            }
          }

          while (v16 <= v21);
          v12 = malloc_type_realloc(v12, v16, 0x100004077774924uLL);
          if (!v12)
          {
            goto LABEL_32;
          }
        }

        v12[v21] = (2 * v19) & 0x70 | (v19 >> 1) & 3;
        v23 = *(v18 + 16);
        v24 = v23 + 1;
        if (v23 + 1 > -3 - v17)
        {
          goto LABEL_32;
        }

        v25 = *(v18 + 8);
        v17 = v24 + v22;
        if (v16 < v24 + v22)
        {
          do
          {
            if (v16 >> 1 >= ~v16)
            {
              v16 = v24 + v22;
            }

            else
            {
              v16 += v16 >> 1;
            }
          }

          while (v16 < v17);
          v12 = malloc_type_realloc(v12, v16, 0x100004077774924uLL);
          if (!v12)
          {
LABEL_32:
            abort();
          }
        }

        memcpy(&v12[v22], v25, v23);
        v12[v22 + v23] = 0;
      }

      ++v14;
    }

    while (v14 != v15);
  }

  else
  {
    v17 = 4;
  }

  *a7 = v17;
  return v12;
}

_BYTE *serializeFragmentPackingInfoInternal(uint64_t a1, char a2, char a3, char a4, void *a5, void *a6, unint64_t *a7)
{
  v11 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v12 = -1431655765 * ((a5[1] - *a5) >> 3);
  v11[3] = v12;
  v32 = v12;
  v33 = a5;
  if (v12)
  {
    v13 = 0;
    v14 = 1024;
    v15 = 4;
    while (1)
    {
      if (v15 == -1)
      {
        goto LABEL_47;
      }

      v16 = *v33 + 24 * v13;
      v17 = *v16;
      v18 = v15 + 1;
      if (v14 <= v15)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15 + 1;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 <= v15);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          goto LABEL_47;
        }
      }

      v11[v15] = v17;
      if (v15 == -2)
      {
        goto LABEL_47;
      }

      v19 = *(v16 + 2);
      v20 = *(v16 + 4);
      v15 += 2;
      if (v14 <= v18)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 <= v18);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          goto LABEL_47;
        }
      }

      v34 = v13;
      v11[v18] = v19 | (16 * v20);
      if (*(v16 + 4))
      {
        break;
      }

LABEL_43:
      v13 = v34 + 1;
      if (v34 + 1 == v32)
      {
        goto LABEL_46;
      }
    }

    v21 = 0;
    while (v15 != -1)
    {
      v22 = *a6 + 32 * *(v16 + 6 + 2 * v21);
      v23 = *(v22 + 28);
      v24 = *(v22 + 24);
      v25 = v15 + 1;
      if (v14 <= v15)
      {
        if (!v14)
        {
          v14 = 128;
        }

        while (v14 <= v15)
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15 + 1;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          break;
        }
      }

      v11[v15] = v24;
      if (v15 == -2)
      {
        break;
      }

      v26 = v15 + 2;
      if (v14 <= v25)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15 + 2;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 <= v25);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          break;
        }
      }

      v11[v25] = (2 * v23) & 0x70 | (v23 >> 1) & 3;
      v27 = *(v22 + 16);
      v28 = v27 + 1;
      if (v27 + 1 > -3 - v15)
      {
        break;
      }

      v29 = *(v22 + 8);
      v15 = v28 + v26;
      if (v14 < v28 + v26)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v28 + v26;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 < v15);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          break;
        }
      }

      memcpy(&v11[v26], v29, v27);
      v11[v26 + v27] = 0;
      if (++v21 >= *(v16 + 4))
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    abort();
  }

  v15 = 4;
LABEL_46:
  *a7 = v15;
  return v11;
}

uint64_t llvm::DISubprogram::getImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a4)
  {
    v23 = llvm::MDString::get();
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    if (a21)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v23 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v24 = llvm::MDString::get();
  if (a21)
  {
LABEL_4:
    v25 = llvm::MDString::get();
    goto LABEL_8;
  }

LABEL_7:
  v25 = 0;
LABEL_8:

  return MEMORY[0x2821F2010](a1, a2, v23, v24, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v25);
}

void addMeshStructMembers(uint64_t a1, uint64_t *a2)
{
  v20 = *(a1 + 8);
  if (v20)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(a1 - 8 * *(a1 + 8) + 8 * v2);
      v4 = *(v3 + 8);
      if (v4)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v9 = &unk_213C7E907;
      v8 = &unk_213C7E907;
LABEL_27:
      v29 = 0;
      v26 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      memset(v35, 0, sizeof(v35));
      v36 = 0;
      v24 = v8;
      v25 = v7;
      *&v23 = v9;
      *(&v23 + 1) = v6;
      v27 = 0;
      v34 = 0;
      v33 = xmmword_213C7D190;
      v18 = strlen(v8);
      HIDWORD(v26) = dataTypeFromString(v8, v18);
      v19 = strlen(v8);
      *(&v33 + 1) = pixelFormatAndALUTypeFromString(v8, v19);
      std::vector<MTLStructMemberInfo>::push_back[abi:ne200100](a2, &v23);
      v37 = v35;
      std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v37);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (++v2 == v20)
      {
        return;
      }
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = &unk_213C7E907;
    v9 = &unk_213C7E907;
    while (1)
    {
      v10 = *(v3 - 8 * *(v3 + 8) + 8 * v5);
      if (!*v10)
      {
        String = llvm::MDString::getString(v10);
        if (v12 == 12)
        {
          if (*String == 0x5F6772612E726961 && *(String + 8) == 1701667182)
          {
            ++v5;
            v9 = llvm::MDString::getString(*(v3 - 8 * *(v3 + 8) + 8 * v5));
            v6 = v17;
            goto LABEL_7;
          }
        }

        else if (v12 == 17)
        {
          v13 = *String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974;
          if (v13 && *(String + 16) == 101)
          {
            ++v5;
            v8 = llvm::MDString::getString(*(v3 - 8 * *(v3 + 8) + 8 * v5));
            v7 = v15;
            goto LABEL_7;
          }
        }
      }

      ++v5;
LABEL_7:
      if (v5 >= v4)
      {
        goto LABEL_27;
      }
    }
  }
}

void sub_213C2A84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MTLStructMemberInfo::~MTLStructMemberInfo(va);
  _Unwind_Resume(a1);
}

void sub_213C2A9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLStructMemberInfo::~MTLStructMemberInfo(MTLStructMemberInfo *this)
{
  v3 = (this + 104);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 176;
      std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

__n128 std::__function::__func<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0,std::allocator<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0>,void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_282634328;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__120__shared_ptr_emplaceI15MTLArgumentDataNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_282634370;
  MTLArgumentData::MTLArgumentData((a1 + 3));
}

void std::__shared_ptr_emplace<MTLArgumentData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_282634370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21604C990);
}

void std::__shared_ptr_emplace<MTLArgumentData>::__on_zero_shared(uint64_t a1)
{
  v5 = (a1 + 224);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void OGLCodeGenService::OGLCodeGenService(OGLCodeGenService *this)
{
  v2 = dlopen("/System/Library/Frameworks/OpenGLES.framework/libGLVMPlugin.dylib", 5);
  *this = v2;
  if (v2 && (v3 = dlsym(v2, "oglCodeGenServiceInitialize")) != 0 && (v4 = v3, v5 = dlsym(*this, "oglCodeGenServiceTerminate"), (*(this + 1) = v5) != 0) && (v6 = dlsym(*this, "oglCodeGenServiceGenerateIR"), (*(this + 2) = v6) != 0))
  {
    *(this + 3) = dlsym(*this, "oglCodeGenServiceGenerateIRWithPluginData");
    *(this + 4) = dlsym(*this, "oglCodeGenServiceGenerateIRWithPluginDataAndPluginReturnData");
    v4();
  }

  else
  {
    OGLCodeGenService::OGLCodeGenService();
  }
}

{
  OGLCodeGenService::OGLCodeGenService(this);
}

void OGLCodeGenService::~OGLCodeGenService(void (**this)(void))
{
  this[1]();
  dlclose(*this);
  this[4] = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t OGLCodeGenService::GenerateIR(OGLCodeGenService *this, uint64_t a2, llvm::LLVMContext *a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, void **a8, unint64_t *a9)
{
  if (this)
  {
    v12 = &OGLCodeGenService::oglCodeGenServiceGLES;
  }

  else
  {
    v12 = &OGLCodeGenService::oglCodeGenService;
  }

  v13 = *v12;
  if (!*v12)
  {
    operator new();
  }

  if (a5 && a7 && (this & 1) == 0)
  {
    v14 = v13[4];

    return v14(a2, a3, a4, a5, a6, a7, a8);
  }

  else if (!a5 || (this & 1) != 0)
  {
    v17 = v13[2];

    return v17(a2, a3, a4);
  }

  else
  {
    v16 = v13[3];

    return v16(a2, a3, a4, a5, a6);
  }
}

uint64_t MTLRuntimeStackTrace::MTLRuntimeStackTrace(uint64_t a1, uint64_t a2)
{
  v3 = MetalModulePass::MetalModulePass(a1, &MTLRuntimeStackTrace::ID, a2);
  *v3 = &unk_2826343A8;
  v3[25] = 0;
  v3[24] = 0;
  v4 = v3 + 24;
  v3[23] = v3 + 24;
  v5 = v3 + 23;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy((v3 + 23), 0);
  *v5 = v4;
  *(a1 + 200) = 0;
  *v4 = 0;
  return a1;
}

void MTLRuntimeStackTrace::~MTLRuntimeStackTrace(MTLRuntimeStackTrace *this)
{
  *this = &unk_2826343A8;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(this + 184, *(this + 24));
  *this = &unk_282633520;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);

  JUMPOUT(0x21604B480);
}

{
  *this = &unk_2826343A8;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(this + 184, *(this + 24));
  *this = &unk_282633520;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);
  MEMORY[0x21604B480](this);

  JUMPOUT(0x21604C990);
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

void sub_213C2B684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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