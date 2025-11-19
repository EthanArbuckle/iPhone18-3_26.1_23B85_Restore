void sub_213C52720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<PackedInput>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<VaryingInfo>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<VaryingInfo>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void deserializeFragmentInput(DeserialContext *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v5 >= v6 || (v7 = *a1, v8 = *(*a1 + v5), *(a1 + 2) = v5 + 1, v5 + 1 >= v6))
  {
    abort();
  }

  v11 = *(v7 + v5 + 1);
  *(a1 + 2) = v5 + 2;
  __len[0] = 0;
  v12 = DeserialContext::deserializeCStringNoCopy(a1, __len);
  v13 = __len[0];
  if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v12;
  if (__len[0] >= 0x17)
  {
    operator new();
  }

  v17 = __len[0];
  if (__len[0])
  {
    memmove(&__p, v12, __len[0]);
  }

  *(&__p + v13) = 0;
  __len[2] = &__p;
  *(std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, &__p) + 56) = a2;
  v15 = __len[0];
  *(a4 + 8) = v14;
  *(a4 + 16) = v15;
  *(a4 + 24) = v8;
  *(a4 + 28) = (v11 >> 1) & 0x38 | (2 * (v11 & 3));
  *a4 = a2;
  if (v17 < 0)
  {
    operator delete(__p);
  }
}

void sub_213C52A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<VaryingInfo>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<VaryingInfo>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t DeserialContext::deserializeCStringNoCopy(DeserialContext *this, unint64_t *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = v2 - v3;
  if (v2 <= v3 || (v7 = *this, v8 = strnlen((*this + v3), v2 - v3), v8 == v4))
  {
    abort();
  }

  if (a2)
  {
    *a2 = v8;
    v9 = *(this + 2);
  }

  else
  {
    v9 = v3;
  }

  *(this + 2) = v8 + v9 + 1;
  return v7 + v3;
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_213C52CBC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,TextureTokenData>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t MTLIRBuilder::initTypeCache(MTLIRBuilder *this, llvm::LLVMContext *a2)
{
  *(this + 17) = llvm::Type::getInt64Ty(a2, a2);
  *(this + 18) = llvm::Type::getInt32Ty(a2, v4);
  *(this + 19) = llvm::Type::getInt16Ty(a2, v5);
  *(this + 20) = llvm::Type::getInt8Ty(a2, v6);
  *(this + 21) = llvm::Type::getInt1Ty(a2, v7);
  result = llvm::Type::getInt8PtrTy(a2, 0);
  *(this + 22) = result;
  return result;
}

llvm::Instruction *MTLIRBuilder::CreateNSWFoldMul(MTLIRBuilder *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v4 = *(a2 + 16);
  v5 = v4 == 16;
  if (v4 == 16)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  if (a3)
  {
    v8 = *(a3 + 16) == 16;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = a3;
  }

  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return llvm::IRBuilderBase::CreateMul(this, a2, a3, a4, 0, 1);
  }

  if (*(v9 + 8) > 0x40u)
  {
    v12 = **(v9 + 3);
    if (v12)
    {
LABEL_22:
      if (v12 == 1)
      {
        return v10;
      }

      return llvm::IRBuilderBase::CreateMul(this, a2, a3, a4, 0, 1);
    }
  }

  else
  {
    v12 = *(v9 + 3);
    if (v12)
    {
      goto LABEL_22;
    }
  }

  v14 = *a2;
  return llvm::ConstantInt::get();
}

llvm::Instruction *MTLIRBuilder::CreateNSWFoldAdd(MTLIRBuilder *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v4 = *(a2 + 16);
  v5 = v4 == 16;
  if (v4 == 16)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  if (a3)
  {
    v8 = *(a3 + 16) == 16;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = a3;
  }

  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return llvm::IRBuilderBase::CreateAdd(this, a2, a3, a4, 0, 1);
  }

  v12 = (v9 + 24);
  if (*(v9 + 8) >= 0x41u)
  {
    v12 = *v12;
  }

  if (*v12)
  {
    return llvm::IRBuilderBase::CreateAdd(this, a2, a3, a4, 0, 1);
  }

  else
  {
    return v10;
  }
}

uint64_t MTLIRBuilder::CreateAtomicFetchAdd(MTLIRBuilder *this, llvm::Type **PointerCast, llvm::Value *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *(*(*(this + 6) + 56) + 40);
  v8 = (this + 144);
  v7 = *(this + 18);
  v23[0] = llvm::PointerType::get();
  v9 = getOrInsertFunction<char const(&)[28],llvm::Type *&,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(v6, "air.atomic.global.add.u.i32", v8, v23, v8, v8, v8, v8 + 3);
  v10 = *PointerCast;
  v11 = *v8;
  if (v10 != llvm::PointerType::get())
  {
    v12 = *(this + 18);
    v13 = llvm::PointerType::get();
    LOWORD(v24) = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(this, PointerCast, v13, v23);
  }

  if (v9)
  {
    v14 = *(v9 + 24);
  }

  else
  {
    v14 = 0;
  }

  v23[0] = PointerCast;
  v23[1] = a3;
  v15 = *(this + 18);
  v23[2] = llvm::ConstantInt::get();
  v16 = *(this + 18);
  v23[3] = llvm::ConstantInt::get();
  v17 = *(this + 21);
  v24 = llvm::ConstantInt::get();
  v22 = 257;
  v18 = llvm::IRBuilderBase::CreateCall(this, v14, v9, v23, 5, v21, 0);
  *(v18 + 18) = *(v18 + 18) & 0xFFFC | 1;
  llvm::Value::getContext(v18);
  *(v18 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v18);
  *(v18 + 64) = llvm::AttributeList::addAttributeAtIndex();
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t getOrInsertFunction<char const(&)[28],llvm::Type *&,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = strlen(__s);
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v16, 0, *a3, *a4, *a5, *a6, *a7, *a8);
  result = v17;
  if (*(v17 + 16) == 5)
  {
    return *(v17 - 32 * (*(v17 + 20) & 0x7FFFFFF));
  }

  return result;
}

llvm::Type **llvm::IRBuilderBase::CreatePointerCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*a2 == a3)
  {
    return a2;
  }

  if (*(a2 + 16) > 0x14u)
  {
    PointerCast = llvm::CastInst::CreatePointerCast();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, PointerCast, a4);
  }

  a2 = (*(*this[9] + 232))(this[9]);
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

uint64_t MTLIRBuilder::CreateAtomicFetchOr(MTLIRBuilder *this, llvm::Value *a2, llvm::Value *a3)
{
  v20[5] = *MEMORY[0x277D85DE8];
  v6 = *(*(*(this + 6) + 56) + 40);
  v8 = (this + 144);
  v7 = *(this + 18);
  v20[0] = llvm::PointerType::get();
  v9 = getOrInsertFunction<char const(&)[28],llvm::Type *&,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(v6, "air.atomic.global.or.s.i32", v8, v20, v8, v8, v8, v8 + 3);
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 24);
  }

  else
  {
    v11 = 0;
  }

  v20[0] = a2;
  v20[1] = a3;
  v12 = *(this + 18);
  v20[2] = llvm::ConstantInt::get();
  v13 = *(this + 18);
  v20[3] = llvm::ConstantInt::get();
  v14 = *(this + 21);
  v20[4] = llvm::ConstantInt::get();
  v19 = 257;
  v15 = llvm::IRBuilderBase::CreateCall(this, v11, v10, v20, 5, v18, 0);
  *(v15 + 18) = *(v15 + 18) & 0xFFFC | 1;
  llvm::Value::getContext(v15);
  *(v15 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v15);
  *(v15 + 64) = llvm::AttributeList::addAttributeAtIndex();
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t MTLIRBuilder::CreateClamp(MTLIRBuilder *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v8 = getOrInsertFunction<char const(&)[16],llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(*(*(*(this + 6) + 56) + 40), "air.clamp.u.i64", this + 17, this + 17, this + 17, this + 17);
  if (v8)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v14 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(this, v9, v8, v15, 3, v13, 0);
  *(v10 + 18) = *(v10 + 18) & 0xFFFC | 1;
  llvm::Value::getContext(v10);
  *(v10 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v10);
  *(v10 + 64) = llvm::AttributeList::addAttributeAtIndex();
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t getOrInsertFunction<char const(&)[16],llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = strlen(__s);
  llvm::Module::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v12, 0, *a3, *a4, *a5, *a6);
  result = v13;
  if (*(v13 + 16) == 5)
  {
    return *(v13 - 32 * (*(v13 + 20) & 0x7FFFFFF));
  }

  return result;
}

llvm::Value *MTLIRBuilder::CreateAddSat(MTLIRBuilder *this, llvm::Value *a2, llvm::Value *a3)
{
  v4 = a2;
  v45 = *MEMORY[0x277D85DE8];
  v6 = *(*(*(this + 6) + 56) + 40);
  llvm::Type::getInt32Ty(*v6, a2);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v8 = llvm::FunctionType::get();
    v44 = 261;
    v43[0] = "air.add_sat.u.i32";
    v43[1] = 17;
    Function = llvm::Function::Create(v8, 0, v43, v6);
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
  }

  llvm::Module::getDataLayout(v6);
  v9 = *(v4 + 16);
  v10 = *(a3 + 16);
  if (!v4 || (v11 = v4, v9 != 16))
  {
    if (v9 >= 0x1C && (v12 = llvm::ConstantFoldInstruction()) != 0)
    {
      if (*(v12 + 16) == 16)
      {
        v11 = v12;
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
  }

  v13 = a3;
  if (v10 != 16)
  {
    if (*(a3 + 16) < 0x1Cu || (v14 = llvm::ConstantFoldInstruction()) == 0)
    {
      if (v11)
      {
LABEL_27:
        if (llvm::Constant::isZeroValue(v11))
        {
          v4 = a3;
          goto LABEL_80;
        }

        if (*(a3 + 16) == 84)
        {
          v19 = *(a3 - 4);
          if (!v19 || *(v19 + 16) || *(v19 + 24) != *(a3 + 9))
          {
            v19 = 0;
          }

          if (v19 == Function)
          {
            v20 = (a3 - 32 * (*(a3 + 5) & 0x7FFFFFF));
            v21 = *v20;
            v22 = v20[4];
            if (*(*v20 + 16) == 16)
            {
              v23 = *v20;
            }

            else
            {
              v23 = 0;
            }

            if (*(v22 + 16) == 16)
            {
              v24 = v20[4];
            }

            else
            {
              v24 = 0;
            }

            if (v23)
            {
              v24 = v23;
            }

            if (v24)
            {
              v25 = v11 + 6;
              if (v11[8] >= 0x41u)
              {
                v25 = *v25;
              }

              v26 = *v25;
              v27 = (v24 + 24);
              if (*(v24 + 8) >= 0x41u)
              {
                v27 = *v27;
              }

              *v27;
              v28 = *(this + 18);
              v4 = llvm::ConstantInt::get();
              if (v23)
              {
                a3 = v22;
              }

              else
              {
                a3 = v21;
              }
            }
          }
        }
      }

LABEL_76:
      if (Function)
      {
        v39 = *(Function + 24);
      }

      else
      {
        v39 = 0;
      }

      v42[0] = v4;
      v42[1] = a3;
      v44 = 257;
      v4 = llvm::IRBuilderBase::CreateCall(this, v39, Function, v42, 2, v43, 0);
      *(v4 + 9) = *(v4 + 9) & 0xFFFC | 1;
      llvm::Value::getContext(v4);
      *(v4 + 8) = llvm::AttributeList::addAttributeAtIndex();
      llvm::Value::getContext(v4);
      *(v4 + 8) = llvm::AttributeList::addAttributeAtIndex();
      goto LABEL_80;
    }

    if (*(v14 + 16) == 16)
    {
      v13 = v14;
    }

    else
    {
      v13 = 0;
    }
  }

  if (!v11 || !v13)
  {
    if (v11)
    {
      goto LABEL_27;
    }

    if (v13)
    {
      if (llvm::Constant::isZeroValue(v13))
      {
        goto LABEL_80;
      }

      if (v4 && *(v4 + 16) == 84)
      {
        v29 = *(v4 - 4);
        if (!v29 || *(v29 + 16) || *(v29 + 24) != *(v4 + 9))
        {
          v29 = 0;
        }

        if (v29 == Function)
        {
          v30 = (v4 - 32 * (*(v4 + 5) & 0x7FFFFFF));
          v31 = *v30;
          v32 = v30[4];
          if (*(*v30 + 16) == 16)
          {
            v33 = *v30;
          }

          else
          {
            v33 = 0;
          }

          if (*(v32 + 16) == 16)
          {
            v34 = v30[4];
          }

          else
          {
            v34 = 0;
          }

          if (v33)
          {
            v34 = v33;
          }

          if (v34)
          {
            v35 = (v13 + 24);
            if (*(v13 + 8) >= 0x41u)
            {
              v35 = *v35;
            }

            v36 = *v35;
            v37 = (v34 + 24);
            if (*(v34 + 8) >= 0x41u)
            {
              v37 = *v37;
            }

            *v37;
            v38 = *(this + 18);
            a3 = llvm::ConstantInt::get();
            if (v33)
            {
              v4 = v32;
            }

            else
            {
              v4 = v31;
            }
          }
        }
      }
    }

    goto LABEL_76;
  }

  v15 = v11 + 6;
  if (v11[8] >= 0x41u)
  {
    v15 = *v15;
  }

  v16 = *v15;
  v17 = (v13 + 24);
  if (*(v13 + 8) >= 0x41u)
  {
    v17 = *v17;
  }

  v18 = *(this + 18);
  *v17;
  v4 = llvm::ConstantInt::get();
LABEL_80:
  v40 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MTLIRBuilder::CreateBadAccessCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7, llvm::Value *a8, llvm::Value *a9, llvm::Value *a10)
{
  v25[9] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertBadAccessFunction(this, *(*(this[6] + 7) + 40));
  if (inserted)
  {
    v19 = *(inserted + 24);
  }

  else
  {
    v19 = 0;
  }

  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a6;
  v25[5] = a7;
  v25[6] = a8;
  v25[7] = a9;
  v25[8] = a10;
  v24 = 257;
  v20 = llvm::IRBuilderBase::CreateCall(this, v19, inserted, v25, 9, v23, 0);
  llvm::Value::getContext(v20);
  *(v20 + 8) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v20);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v20 + 8) = result;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLIRBuilder::getOrInsertBadAccessFunction(llvm::Type **this, llvm::Module *a2)
{
  v3 = this;
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v4 = *(v3 + 17);
  v3 = (v3 + 136);
  v9 = llvm::PointerType::get();
  v5 = *v3;
  v8 = llvm::PointerType::get();
  v6 = getOrInsertFunction<char const(&)[15],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_access", &VoidTy, &v9, &v8, v3 + 5, v3, v3, v3 + 2, v3 + 2, v3 + 1, v3 + 3);
  llvm::GlobalObject::setSection();
  return v6;
}

uint64_t MTLIRBuilder::CreateIsNullTextureCall(uint64_t *a1, llvm::Value **a2)
{
  BitOrPointerCast = a2;
  v44[1] = *MEMORY[0x277D85DE8];
  Name = llvm::Value::getName(a2[3]);
  v6 = 12;
  if (v5 < 0xC)
  {
    v6 = v5;
  }

  v43.n128_u64[0] = v6 + Name;
  v43.n128_u64[1] = v5 - v6;
  llvm::StringRef::split(&v43, 1, v40);
  v7 = v40[0].n128_u64[1];
  if (v40[0].n128_u64[1] >= 5)
  {
    if (!(*(v40[0].n128_u64[0] + v40[0].n128_u64[1] - 5) ^ 0x6172675F | *(v40[0].n128_u64[0] + v40[0].n128_u64[1] - 1) ^ 0x64))
    {
      v7 = v40[0].n128_u64[1] - 5;
    }

    if (v7 >= 0xA)
    {
      v17 = v40[0].n128_u64[0] + v7;
      if (*(v40[0].n128_u64[0] + v7 - 10) == 0x5F65727574786574 && *(v40[0].n128_u64[0] + v7 - 2) == 25649)
      {
        v16 = "struct._texture_1d_t";
        v15 = "air.is_null_texture_1d";
        goto LABEL_104;
      }

      if (v7 >= 0x10)
      {
        if (*(v17 - 16) == 0x5F65727574786574 && *(v17 - 8) == 0x79617272615F6431)
        {
          v16 = "struct._texture_1d_array_t";
          v15 = "air.is_null_texture_1d_array";
          goto LABEL_104;
        }

        if (*(v17 - 10) != 0x5F65727574786574 || *(v17 - 2) != 25650)
        {
          if (*(v17 - 16) == 0x5F65727574786574 && *(v17 - 8) == 0x79617272615F6432)
          {
            v16 = "struct._texture_2d_array_t";
            v15 = "air.is_null_texture_2d_array";
            goto LABEL_104;
          }

          goto LABEL_65;
        }
      }

      else if (*(v17 - 10) != 0x5F65727574786574 || *(v17 - 2) != 25650)
      {
        if (v7 < 0xD)
        {
          if (v7 != 12 || (*v40[0].n128_u64[0] == 0x5F65727574786574 ? (v20 = *(v40[0].n128_u64[0] + 8) == 1700951395) : (v20 = 0), !v20))
          {
LABEL_89:
            v30 = *(v17 - 10);
            v31 = *(v17 - 2);
            if (v30 == 0x5F65727574786574 && v31 == 25651)
            {
              v16 = "struct._texture_3d_t";
              v15 = "air.is_null_texture_3d";
              goto LABEL_104;
            }

            goto LABEL_7;
          }

          goto LABEL_100;
        }

LABEL_65:
        if (*(v17 - 13) == 0x5F65727574786574 && *(v17 - 8) == 0x736D5F64325F6572)
        {
          v16 = "struct._texture_2d_ms_t";
          v15 = "air.is_null_texture_2d_ms";
          goto LABEL_104;
        }

        if (v7 >= 0x13)
        {
          v25 = *(v17 - 19) == 0x5F65727574786574 && *(v17 - 11) == 0x72615F736D5F6432;
          if (v25 && *(v17 - 8) == 0x79617272615F736DLL)
          {
            v16 = "struct._texture_2d_ms_array_t";
            v15 = "air.is_null_texture_2d_ms_array";
            goto LABEL_104;
          }
        }

        if (*(v17 - 12) != 0x5F65727574786574 || *(v17 - 4) != 1700951395)
        {
          if (v7 >= 0x12)
          {
            v28 = *(v17 - 18) == 0x5F65727574786574 && *(v17 - 10) == 0x7272615F65627563;
            if (v28 && *(v17 - 2) == 31073)
            {
              v16 = "struct._texture_cube_array_t";
              v15 = "air.is_null_texture_cube_array";
              goto LABEL_104;
            }
          }

          goto LABEL_89;
        }

LABEL_100:
        v16 = "struct._texture_cube_t";
        v15 = "air.is_null_texture_cube";
        goto LABEL_104;
      }

      v16 = "struct._texture_2d_t";
      v15 = "air.is_null_texture_2d";
      goto LABEL_104;
    }
  }

LABEL_7:
  v8 = v40[0].n128_u64[0] + v7;
  if (*(v40[0].n128_u64[0] + v7 - 8) == 0x64325F6874706564)
  {
    v16 = "struct._depth_2d_t";
    v15 = "air.is_null_depth_2d";
  }

  else if (v7 >= 0xE && (*(v8 - 14) == 0x64325F6874706564 ? (v9 = *(v8 - 8) == 0x79617272615F6432) : (v9 = 0), v9))
  {
    v16 = "struct._depth_2d_array_t";
    v15 = "air.is_null_depth_2d_array";
  }

  else if (*(v8 - 10) == 0x75635F6874706564 && *(v8 - 2) == 25954)
  {
    v16 = "struct._depth_cube_t";
    v15 = "air.is_null_depth_cube";
  }

  else if (v7 >= 0x10 && (*(v8 - 16) == 0x75635F6874706564 ? (v11 = *(v8 - 8) == 0x79617272615F6562) : (v11 = 0), v11))
  {
    v16 = "struct._depth_cube_array_t";
    v15 = "air.is_null_depth_cube_array";
  }

  else if (*(v8 - 11) == 0x64325F6874706564 && *(v8 - 8) == 0x736D5F64325F6874)
  {
    v16 = "struct._depth_2d_ms_t";
    v15 = "air.is_null_depth_2d_ms";
  }

  else
  {
    v13 = *(v8 - 17) ^ 0x64325F6874706564 | *(v8 - 9) ^ 0x617272615F736D5FLL | *(v8 - 1) ^ 0x79;
    v14 = v13 == 0;
    if (v13)
    {
      v15 = "air.is_null_texture_buffer_1d";
    }

    else
    {
      v15 = "air.is_null_depth_2d_ms_array";
    }

    if (v14)
    {
      v16 = "struct._depth_2d_ms_array_t";
    }

    else
    {
      v16 = "struct._texture_buffer_1d_t";
    }
  }

LABEL_104:
  v43.n128_u64[0] = v15;
  llvm::Value::getContext(BitOrPointerCast);
  strlen(v16);
  if (!llvm::StructType::getTypeByName())
  {
    llvm::Value::getContext(BitOrPointerCast);
    strlen(v16);
    llvm::StructType::create();
  }

  if ((*(*BitOrPointerCast + 8) & 0xFE) == 0x12)
  {
    v33 = *(**(*BitOrPointerCast + 16) + 8);
  }

  v42 = llvm::PointerType::get();
  v34 = getOrInsertFunction<char const*&,llvm::Type *&,llvm::Type *&>(*(*(a1[6] + 56) + 40), &v43, a1 + 21, &v42);
  if ((llvm::Function::onlyReadsMemory(v34) & 1) == 0)
  {
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
  }

  v35 = *(v34 + 3);
  v36 = *(*(v35 + 16) + 8);
  if (v36 != *BitOrPointerCast)
  {
    v41 = 257;
    BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(a1, BitOrPointerCast, v36, v40);
    v35 = *(v34 + 3);
  }

  v44[0] = BitOrPointerCast;
  v41 = 257;
  v37 = llvm::IRBuilderBase::CreateCall(a1, v35, v34, v44, 1, v40, 0);
  *(v37 + 18) = *(v37 + 18) & 0xFFFC | 1;
  llvm::Value::getContext(v37);
  *(v37 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v37);
  *(v37 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v37);
  *(v37 + 64) = llvm::AttributeList::addAttributeAtIndex();
  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

__n128 llvm::StringRef::split@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X2>, __n128 *a3@<X8>)
{
  v6 = llvm::StringRef::find();
  if (v6 == -1)
  {
    a3[1].n128_u64[0] = 0;
    a3[1].n128_u64[1] = 0;
    result = *a1;
    *a3 = *a1;
  }

  else
  {
    v9 = a1->n128_u64[0];
    v8 = a1->n128_u64[1];
    if (v8 >= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = a1->n128_u64[1];
    }

    v11 = v6 + a2;
    if (v8 < v6 + a2)
    {
      v11 = a1->n128_u64[1];
    }

    a3->n128_u64[0] = v9;
    a3->n128_u64[1] = v10;
    a3[1].n128_u64[0] = v9 + v11;
    a3[1].n128_u64[1] = v8 - v11;
  }

  return result;
}

uint64_t getOrInsertFunction<char const*&,llvm::Type *&,llvm::Type *&>(uint64_t a1, const char **a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a2;
  if (*a2)
  {
    v8 = strlen(*a2);
  }

  else
  {
    v8 = 0;
  }

  llvm::Module::getOrInsertFunction<llvm::Type *>(a1, v7, v8, 0, *a3, *a4);
  result = v9;
  if (*(v9 + 16) == 5)
  {
    return *(v9 - 32 * (*(v9 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t MTLIRBuilder::CreateBadTextureCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7, llvm::Value *a8, llvm::Value *a9)
{
  v23[8] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertBadTextureFunction(this, *(*(this[6] + 7) + 40));
  if (inserted)
  {
    v18 = *(inserted + 24);
  }

  else
  {
    v18 = 0;
  }

  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = a6;
  v23[7] = a9;
  v22[16] = 257;
  v19 = llvm::IRBuilderBase::CreateCall(this, v18, inserted, v23, 8, v22, 0);
  llvm::Value::getContext(v19);
  *(v19 + 8) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v19);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v19 + 8) = result;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLIRBuilder::getOrInsertBadTextureFunction(llvm::Type **this, llvm::Module *a2)
{
  v3 = this;
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v4 = *(v3 + 17);
  v3 = (v3 + 136);
  v9 = llvm::PointerType::get();
  v5 = *v3;
  v8 = llvm::PointerType::get();
  v6 = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_texture", &VoidTy, &v9, &v8, v3 + 5, v3, v3 + 3, v3 + 3, v3 + 1, v3 + 1);
  llvm::GlobalObject::setSection();
  return v6;
}

uint64_t MTLIRBuilder::getOrInsertTrapFunction(llvm::Type **this, llvm::Module *a2)
{
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    VoidTy = llvm::Type::getVoidTy(this[8], v4);
    v7 = this[17];
    v6 = (this + 17);
    v11 = llvm::PointerType::get();
    v8 = *v6;
    v10 = llvm::PointerType::get();
    Function = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.report_trap", &VoidTy, &v11, &v10, v6 + 5, v6, v6 + 1);
    if (Function)
    {
      llvm::GlobalObject::setSection();
    }
  }

  return Function;
}

uint64_t getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = strlen(__s);
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v16, 0, *a3, *a4, *a5, *a6, *a7, *a8);
  result = v17;
  if (*(v17 + 16) == 5)
  {
    return *(v17 - 32 * (*(v17 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t MTLIRBuilder::CreateTrapCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5)
{
  v19[5] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertTrapFunction(this, *(*(this[6] + 7) + 40));
  v11 = inserted;
  if (inserted)
  {
    v12 = *(inserted + 24);
  }

  else
  {
    v12 = 0;
  }

  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v13 = this[18];
  v19[4] = llvm::ConstantInt::get();
  v18 = 257;
  v14 = llvm::IRBuilderBase::CreateCall(this, v12, v11, v19, 5, v17, 0);
  llvm::Value::getContext(v14);
  *(v14 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v14);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v14 + 64) = result;
  *(v14 + 18) = *(v14 + 18) & 0xFFFC | 1;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLIRBuilder::CreateStackOverflowCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6)
{
  v19[5] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertStackOverflowFunction(this, *(*(this[6] + 7) + 40));
  if (inserted)
  {
    v13 = *(inserted + 24);
  }

  else
  {
    v13 = 0;
  }

  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v18 = 257;
  v14 = llvm::IRBuilderBase::CreateCall(this, v13, inserted, v19, 5, v17, 0);
  llvm::Value::getContext(v14);
  *(v14 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v14);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v14 + 64) = result;
  *(v14 + 18) = *(v14 + 18) & 0xFFFC | 1;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLIRBuilder::getOrInsertStackOverflowFunction(llvm::Type **this, llvm::Module *a2)
{
  v3 = this;
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v4 = v3[17];
  v3 += 17;
  v9 = llvm::PointerType::get();
  v5 = *v3;
  v8 = llvm::PointerType::get();
  v6 = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.stack_overflow", &VoidTy, &v9, &v8, v3 + 5, v3, v3 + 1);
  llvm::GlobalObject::setSection();
  return v6;
}

uint64_t MTLIRBuilder::CreateBadAccelerationStructureCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7, llvm::Value *a8)
{
  v23[7] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertBadAccelerationStructureFunction(this, *(*(this[6] + 7) + 40));
  if (inserted)
  {
    v17 = *(inserted + 24);
  }

  else
  {
    v17 = 0;
  }

  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = a6;
  v22 = 257;
  v18 = llvm::IRBuilderBase::CreateCall(this, v17, inserted, v23, 7, v21, 0);
  llvm::Value::getContext(v18);
  *(v18 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v18);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v18 + 64) = result;
  *(v18 + 18) = *(v18 + 18) & 0xFFFC | 1;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLIRBuilder::getOrInsertBadAccelerationStructureFunction(llvm::Type **this, llvm::Module *a2)
{
  v3 = this;
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v4 = *(v3 + 17);
  v3 = (v3 + 136);
  v9 = llvm::PointerType::get();
  v5 = *v3;
  v8 = llvm::PointerType::get();
  v6 = getOrInsertFunction<char const(&)[31],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_acceleration_structure", &VoidTy, &v9, &v8, v3 + 5, v3, v3, v3, v3 + 1);
  llvm::GlobalObject::setSection();
  return v6;
}

uint64_t getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, void *a9, void *a10, uint64_t *a11)
{
  v18 = strlen(__s);
  *(&v22 + 1) = *a10;
  *(&v21 + 1) = *a8;
  *&v22 = *a9;
  *&v21 = *a7;
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v18, 0, *a3, *a4, *a5, *a6, v21, v22, *a11);
  result = v19;
  if (*(v19 + 16) == 5)
  {
    return *(v19 - 32 * (*(v19 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t getOrInsertFunction<char const(&)[15],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, void *a9, void *a10, uint64_t *a11, uint64_t *a12)
{
  v18 = strlen(__s);
  *&v22 = *a9;
  *(&v22 + 1) = *a10;
  *&v21 = *a7;
  *(&v21 + 1) = *a8;
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v18, 0, *a3, *a4, *a5, *a6, v21, v22, *a11, *a12);
  result = v19;
  if (*(v19 + 16) == 5)
  {
    return *(v19 - 32 * (*(v19 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t getOrInsertFunction<char const(&)[31],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, uint64_t *a9, uint64_t *a10)
{
  v18 = strlen(__s);
  *&v21 = *a7;
  *(&v21 + 1) = *a8;
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v18, 0, *a3, *a4, *a5, *a6, v21, *a9, *a10);
  result = v19;
  if (*(v19 + 16) == 5)
  {
    return *(v19 - 32 * (*(v19 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t llvm::Module::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v11[0] = a6;
  v11[1] = a7;
  v11[2] = a8;
  llvm::SmallVector<llvm::Type *,3u>::SmallVector(&v12, v11, 3);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v12 != v13)
  {
    free(v12);
  }

  v9 = *MEMORY[0x277D85DE8];
  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,3u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x300000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213C54DF4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
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

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v14[0] = a6;
  v14[1] = a7;
  v14[2] = a8;
  v15 = a9;
  v16 = a10;
  v17 = a11;
  llvm::SmallVector<llvm::Type *,8u>::SmallVector(&v18, v14, 8);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v18 != v19)
  {
    free(v18);
  }

  v12 = *MEMORY[0x277D85DE8];
  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,8u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213C5518C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v21[9] = *MEMORY[0x277D85DE8];
  v15[0] = a6;
  v15[1] = a7;
  v15[2] = a8;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v19 = a12;
  llvm::SmallVector<llvm::Type *,9u>::SmallVector(&v20, v15, 9);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v20 != v21)
  {
    free(v20);
  }

  v13 = *MEMORY[0x277D85DE8];
  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,9u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x900000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213C55308(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v19[7] = *MEMORY[0x277D85DE8];
  v14[0] = a6;
  v14[1] = a7;
  v14[2] = a8;
  v15 = a9;
  v16 = a10;
  v17 = a11;
  llvm::SmallVector<llvm::Type *,7u>::SmallVector(&v18, v14, 7);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v18 != v19)
  {
    free(v18);
  }

  v12 = *MEMORY[0x277D85DE8];
  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,7u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x700000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_213C55484(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL isBufferMetadata(uint64_t a1)
{
  v1 = *(a1 - 8 * *(a1 + 8) + 8);
  if (*v1)
  {
    return 0;
  }

  String = llvm::MDString::getString(v1);
  v5 = v3;
  result = 0;
  if (v3 > 30)
  {
    switch(v3)
    {
      case 31:
        v6 = "air.intersection_function_table";
        break;
      case 35:
        v6 = "air.instance_acceleration_structure";
        break;
      case 36:
        v6 = "air.primitive_acceleration_structure";
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v3)
    {
      case 10:
        v7 = *String;
        v8 = String[4];
        return v7 == 0x666675622E726961 && v8 == 29285;
      case 19:
        v6 = "air.indirect_buffer";
        break;
      case 26:
        v6 = "air.visible_function_table";
        break;
      default:
        return result;
    }
  }

  return memcmp(String, v6, v5) == 0;
}

void MTLArgumentBufferConversion::~MTLArgumentBufferConversion(MTLArgumentBufferConversion *this)
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

BOOL MTLArgumentBufferConversion::runOnModule(MTLArgumentBufferConversion *this, llvm::Module *a2)
{
  v130[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  isLibraryModule = MTLBoundsCheck::isLibraryModule(a2, v4);
  if (!isLibraryModule)
  {
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v103[0] = 0;
    v103[1] = 0;
    v104 = 0;
    v128 = v130;
    v129 = 0x800000000;
    v126[0] = &v127;
    v126[1] = 0x800000000;
    v123 = &v125;
    v124 = 0x1F00000000;
    if ((*(*(this + 4) + 22) & 2) != 0)
    {
      v6 = 1;
      llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(&v123, 1uLL);
    }

    else
    {
      v6 = 31;
      llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(&v123, 0x1FuLL);
    }

    llvm::SmallVectorImpl<llvm::Instruction *>::assign(&v123, v6, 0);
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(v126);
    v120 = 0;
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(&v128);
    EntryFunction = MetalModulePass::getEntryFunction(this);
    v7 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
    v8 = *(v7 + 8);
    if (!v8)
    {
LABEL_27:
      if ((*(*(this + 4) + 22) & 2) != 0)
      {
        v23 = *(this + 10);
        v24 = llvm::PointerType::get();
        v25 = llvm::ArrayType::get(v24, 0x1F);
        *v123 = v25;
      }

      else
      {
        v20 = v124;
        if (v124)
        {
          v21 = 0;
          do
          {
            if (!*(v123 + v21))
            {
              v22 = *(this + 10);
              *(v123 + v21) = llvm::PointerType::get();
              v20 = v124;
            }

            ++v21;
          }

          while (v20 > v21);
        }
      }

      v26 = *(this + 5);
      v27 = llvm::StructType::create();
      v28 = *(this + 7);
      StructLayout = llvm::DataLayout::getStructLayout();
      v120 = &v122;
      v121 = 0x1F00000000;
      v118[0] = &v119;
      v118[1] = 0x1F00000000;
      llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(v118, v124);
      v102 = 0;
      if (v124)
      {
        v30 = 0;
        v31 = 0;
        v32 = StructLayout + 16;
        do
        {
          v101.n128_u64[0] = "air.read_write";
          v101.n128_u64[1] = 14;
          v33 = *(v27 + 2);
          if ((*(*(this + 4) + 22) & 2) != 0)
          {
            v34 = *(*v33 + 16);
          }

          else
          {
            v34 = (v33 + 8 * v31);
          }

          v35 = *v34;
          v100.n128_u64[0] = "int";
          v100.n128_u64[1] = 3;
          *(&__src.__r_.__value_.__s + 23) = 3;
          LODWORD(__src.__r_.__value_.__l.__data_) = 3039841;
          std::to_string(&v108, v30);
          if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &v108;
          }

          else
          {
            v36 = v108.__r_.__value_.__r.__words[0];
          }

          if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v108.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v108.__r_.__value_.__l.__size_;
          }

          v38 = std::string::append(&__src, v36, size);
          v39 = *&v38->__r_.__value_.__l.__data_;
          __p[0].__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&__p[0].__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          String = "air.buffer";
          v99 = 10;
          StructTypeInfo = 0;
          if ((*(*(this + 4) + 22) & 2) == 0)
          {
            __src.__r_.__value_.__r.__words[0] = 0;
            v40 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(v103, &v102, &__src);
            v41 = __src.__r_.__value_.__r.__words[0] == v103[0] + 32 * v104 ? 0 : v40;
            if (v41 == 1)
            {
              v42 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(v103, &v102);
              llvm::SmallVector<unsigned int,2u>::SmallVector(&__src, (v42 + 2));
              if (LODWORD(__src.__r_.__value_.__r.__words[1]) == 1)
              {
                v43 = *(v7 - 8 * *(v7 + 8) + 8 * *__src.__r_.__value_.__l.__data_);
                v116 = v100;
                LOBYTE(v117) = 1;
                MTLBoundsCheck::getArgTypeName(v43, &v116, &v108);
                v100 = *&v108.__r_.__value_.__l.__data_;
                v44 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
                v45 = __p[0].__r_.__value_.__r.__words[0];
                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v45 = __p;
                }

                if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v44 = __p[0].__r_.__value_.__l.__size_;
                }

                v95[0] = v45;
                v95[1] = v44;
                v96 = 1;
                MTLBoundsCheck::getArgName(v43, v95, &v116);
                llvm::StringRef::str(&v116, &v108);
                if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p[0].__r_.__value_.__l.__data_);
                }

                __p[0] = v108;
                v116 = v101;
                LOBYTE(v117) = 1;
                MTLBoundsCheck::getArgAccessType(v43, &v116, &v108);
                v101 = *&v108.__r_.__value_.__l.__data_;
                String = llvm::MDString::getString(*&v43[-2 * v43[2] + 2]);
                v99 = v46;
                StructTypeInfo = MTLBoundsCheck::getStructTypeInfo(v43);
              }

              if (__src.__r_.__value_.__l.__data_ != &__src.__r_.__value_.__r.__words[2])
              {
                free(__src.__r_.__value_.__l.__data_);
              }
            }
          }

          __src.__r_.__value_.__r.__words[0] = &__src.__r_.__value_.__r.__words[2];
          __src.__r_.__value_.__l.__size_ = 0x800000000;
          v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
          llvm::StringRef::str(&String, &v108);
          v116.n128_u64[0] = MetalModulePass::getMetadata(this, &v108);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v116);
          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.location_index", v47);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
          v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
          v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<int>(this);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
          llvm::StringRef::str(&v101, &v108);
          v116.n128_u64[0] = MetalModulePass::getMetadata(this, &v108);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v116);
          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (StructTypeInfo)
          {
            v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.struct_type_info", v48);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &StructTypeInfo);
          }

          if (llvm::Type::isSized(*v35[2]))
          {
            v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_size", v49);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
            v108.__r_.__value_.__r.__words[0] = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *v35[2]) + 7) >> 3;
            LODWORD(v108.__r_.__value_.__r.__words[1]) = v50 == 1;
            v116.n128_u64[0] = MetalModulePass::getMetadata(this);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v116);
            v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_align_size", v51);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
            llvm::DataLayout::getPrefTypeAlignment(*(this + 7), *v35[2]);
            v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned long long>(this);
            llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
          }

          v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_name", v49);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
          llvm::StringRef::str(&v100, &v108);
          v116.n128_u64[0] = MetalModulePass::getMetadata(this, &v108);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v116);
          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_name", v52);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
          v108.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, __p);
          llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&__src, &v108);
          v53 = *(this + 5);
          Impl = llvm::MDTuple::getImpl();
          v55 = v102;
          *(v118[0] + v102) = Impl;
          if (__src.__r_.__value_.__l.__data_ != &__src.__r_.__value_.__r.__words[2])
          {
            free(__src.__r_.__value_.__l.__data_);
            v55 = v102;
          }

          v56 = *(v32 + 8 * v55);
          v116.n128_u64[0] = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), v35) + 7) >> 3;
          v116.n128_u32[2] = v57 == 1;
          v58 = v120;
          v59 = v121;
          __src.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this);
          llvm::TypeSize::operator unsigned long long();
          __src.__r_.__value_.__l.__size_ = MetalModulePass::getMetadata<unsigned int>(this);
          __src.__r_.__value_.__r.__words[2] = MetalModulePass::getMetadata<unsigned int>(this);
          llvm::StringRef::str(&v100, &v108);
          Metadata = MetalModulePass::getMetadata(this, &v108);
          v111 = MetalModulePass::getMetadata(this, __p);
          v112 = MetalModulePass::getMetadata(this, "air.indirect_argument", v60);
          v113 = *(v118[0] + v102);
          llvm::SmallVectorImpl<llvm::Metadata *>::insert<llvm::Metadata * const*,void>(&v120, v58 + 8 * v59, &__src, &v114);
          if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v108.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          v30 = ++v102;
          v31 = v102;
        }

        while (v124 > v102);
      }

      v61 = *(this + 5);
      v62 = llvm::MDTuple::getImpl();
      TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(*(this + 7), v27);
      v65 = v64 == 1;
      PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(*(this + 7), v27);
      __src.__r_.__value_.__r.__words[0] = llvm::StructType::getName(v27);
      __src.__r_.__value_.__l.__size_ = v67;
      llvm::StringRef::str(&__src.__r_.__value_.__l.__data_, v93);
      LODWORD(v91) = 1;
      v68 = MetalModulePass::getMDTuple<unsigned int,char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,std::string,char const*,char const*>(this, 0, "air.indirect_buffer", "air.location_index", 0, 1, "air.read", "air.address_space", v91, "air.struct_type_info", v62, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v65, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", v93, "air.arg_name", "debug.argument_buffer");
      if (v94 < 0)
      {
        operator delete(v93[0]);
      }

      *v126[0] = v68;
      *v128 = llvm::PointerType::get();
      v69 = **(*(EntryFunction + 3) + 16);
      v70 = llvm::FunctionType::get();
      v71 = *(this + 6);
      llvm::Module::getFunction();
      v72 = *(EntryFunction + 8);
      LOWORD(v111) = 257;
      v73 = llvm::Function::Create(v70, v72 & 0xF, &__src, *(this + 6));
      llvm::Value::takeName();
      *(EntryFunction + 8) = *(EntryFunction + 8) & 0xFFFFBFC0 | 0x4007;
      __src.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
      v95[0] = llvm::AttributeList::getAttributes(&__src);
      v74 = llvm::AttributeSet::begin(v95);
      v75 = llvm::AttributeSet::end(v95);
      while (v74 != v75)
      {
        v76 = *v74;
        llvm::Function::addFnAttr();
        ++v74;
      }

      __src.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
      v101.n128_u64[0] = llvm::AttributeList::getAttributes(&__src);
      v77 = llvm::AttributeSet::begin(&v101);
      v78 = llvm::AttributeSet::end(&v101);
      while (v77 != v78)
      {
        v79 = *v77;
        llvm::compat::addAttribute();
        ++v77;
      }

      llvm::Function::addParamAttr();
      llvm::Function::addParamAttr();
      llvm::Function::addParamAttr();
      __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
      __p[0].__r_.__value_.__l.__size_ = 0x800000000;
      llvm::SmallVectorImpl<llvm::Type *>::resizeImpl<false>(__p, *(EntryFunction + 12));
      if (v106)
      {
        if (v107)
        {
          v82 = 8 * v107;
          v83 = v105;
          while (*v83 >= 0xFFFFFFFE)
          {
            v83 += 2;
            v82 -= 8;
            if (!v82)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          v83 = v105;
        }

        v84 = &v105[2 * v107];
        while (v83 != v84)
        {
          v85 = *v83;
          v86 = v83[1];
          v87 = *(this + 5);
          v108.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
          llvm::compat::getParamAttrs(&v108, v85, v80);
          llvm::AttrBuilder::AttrBuilder();
          llvm::Function::addParamAttrs();
          if (__src.__r_.__value_.__l.__size_ != &Metadata)
          {
            free(__src.__r_.__value_.__l.__size_);
          }

          if (*(v73 + 18))
          {
            llvm::Function::BuildLazyArguments(v73);
          }

          *(__p[0].__r_.__value_.__r.__words[0] + 8 * v85) = *(v73 + 88) + 40 * v86;
          do
          {
            v83 += 2;
          }

          while (v83 != v84 && *v83 >= 0xFFFFFFFE);
        }
      }

LABEL_106:
      v88 = *(this + 5);
      __src.__r_.__value_.__r.__words[0] = "entry";
      LOWORD(v111) = 259;
      llvm::BasicBlock::Create(v88, &__src, v73, 0, v81);
    }

    v9 = 0;
    v10 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
    while (1)
    {
      v11 = *(v10 - 8 * v8);
      v120 = v11;
      v12 = *(*&v11[-2 * v11[2]] + 128);
      v13 = (v12 + 24);
      if (*(v12 + 32) >= 0x41u)
      {
        v13 = *v13;
      }

      v14 = *v13;
      v118[0] = v14;
      if (*(EntryFunction + 9))
      {
        llvm::Function::BuildLazyArguments(EntryFunction);
        v14 = v118[0];
        v11 = v120;
      }

      __src.__r_.__value_.__r.__words[0] = *(*(EntryFunction + 11) + 40 * v14);
      __p[0].__r_.__value_.__s.__data_[0] = 0;
      __p[0].__r_.__value_.__s.__data_[4] = 0;
      if (isBufferMetadata(v11))
      {
        v15 = (*(__src.__r_.__value_.__r.__words[0] + 8) & 0xFE) == 0x12 ? *(**(__src.__r_.__value_.__r.__words[0] + 16) + 8) & 0xFFFFFF00 : *(__src.__r_.__value_.__r.__words[0] + 8) & 0xFFFFFF00;
        if (v15 == 256 || v15 == 512)
        {
          LocationIndex = MTLBoundsCheck::getLocationIndex(v120);
          if ((__p[0].__r_.__value_.__s.__data_[4] & 1) == 0)
          {
            __p[0].__r_.__value_.__s.__data_[4] = 1;
          }

          LODWORD(__p[0].__r_.__value_.__l.__data_) = LocationIndex;
          if (LocationIndex < 0x1F)
          {
            if ((*(*(this + 4) + 22) & 2) == 0 && !*(v123 + LocationIndex))
            {
              *(v123 + LocationIndex) = __src.__r_.__value_.__r.__words[0];
            }

            v17 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(v103, __p);
            llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned long long const&>((v17 + 2), v118);
            goto LABEL_26;
          }

          MTLBoundsCheck::setLocationIndex(v120);
        }
      }

      v18 = v129;
      LODWORD(v108.__r_.__value_.__l.__data_) = v118[0];
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::FindAndConstruct(&v105, &v108)[1] = v18;
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(&v128, &__src);
      llvm::SmallVectorImpl<llvm::Type *>::emplace_back<llvm::Type *&>(v126, &v120);
      v19 = *(this + 10);
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::MDNode::replaceOperandWith();
LABEL_26:
      ++v9;
      v8 = *(v7 + 8);
      v10 += 8;
      if (v9 >= v8)
      {
        goto LABEL_27;
      }
    }
  }

  v89 = *MEMORY[0x277D85DE8];
  return !isLibraryModule;
}

void sub_213C568C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a58);
  if (STACK[0x210] != a23)
  {
    free(STACK[0x210]);
  }

  if (STACK[0x280] != a24)
  {
    free(STACK[0x280]);
  }

  if (STACK[0x388] != a25)
  {
    free(STACK[0x388]);
  }

  if (STACK[0x490] != a28)
  {
    free(STACK[0x490]);
  }

  if (STACK[0x598] != a26)
  {
    free(STACK[0x598]);
  }

  v60 = *(v58 - 200);
  if (v60 != a27)
  {
    free(v60);
  }

  llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::~DenseMap(&a47);
  llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::~DenseMap(&a50);
  _Unwind_Resume(a1);
}

uint64_t llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::Type *,true>::push_back(a1, 0);
    v3 = *(a1 + 8);
  }

  else
  {
    *(*a1 + 8 * v2) = 0;
    v3 = v2 + 1;
    *(a1 + 8) = v3;
  }

  return *a1 + 8 * v3 - 8;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned long long const&>(uint64_t a1, int *a2)
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

uint64_t MetalModulePass::getMetadata<int>(uint64_t a1)
{
  v1 = *(a1 + 40);
  llvm::IntegerType::get();
  llvm::ConstantInt::get();

  return llvm::ValueAsMetadata::get();
}

uint64_t llvm::Type::isSized(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0x11)
  {
    goto LABEL_6;
  }

  v2 = 1;
  if (((1 << v1) & 0xAC7F) != 0)
  {
    return v2;
  }

  if (((1 << v1) & 0x30000) == 0)
  {
LABEL_6:
    if ((v1 & 0xFE) != 0x12 && v1 != 21)
    {
      return 0;
    }
  }

  return MEMORY[0x2821F5238]();
}

uint64_t MetalModulePass::getMDTuple<unsigned int,char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,std::string,char const*,char const*>(uint64_t a1, uint64_t a2, llvm::LLVMContext *a3, llvm::LLVMContext *a4, uint64_t a5, uint64_t a6, llvm::LLVMContext *a7, llvm::LLVMContext *a8, uint64_t a9, llvm::LLVMContext *a10, uint64_t a11, llvm::LLVMContext *a12, uint64_t a13, uint64_t a14, llvm::LLVMContext *a15, uint64_t a16, llvm::LLVMContext *a17, uint64_t *a18, llvm::LLVMContext *a19, llvm::LLVMContext *a20)
{
  v38 = *MEMORY[0x277D85DE8];
  v37 = *(a1 + 40);
  MetalModulePass::getMetadata<unsigned int>(a1);
  MetalModulePass::getMetadata(a1, a3, v25);
  MetalModulePass::getMetadata(a1, a4, v26);
  MetalModulePass::getMetadata<int>(a1);
  MetalModulePass::getMetadata<int>(a1);
  MetalModulePass::getMetadata(a1, a7, v27);
  MetalModulePass::getMetadata(a1, a8, v28);
  MetalModulePass::getMetadata<int>(a1);
  MetalModulePass::getMetadata(a1, a10, v29);
  MetalModulePass::getMetadata(a1, a11);
  MetalModulePass::getMetadata(a1, a12, v30);
  MetalModulePass::getMetadata(a1);
  MetalModulePass::getMetadata(a1, a15, v31);
  MetalModulePass::getMetadata<unsigned long long>(a1);
  MetalModulePass::getMetadata(a1, a17, v32);
  MetalModulePass::getMetadata(a1, a18);
  MetalModulePass::getMetadata(a1, a19, v33);
  MetalModulePass::getMetadata(a1, a20, v34);
  result = llvm::MDTuple::getImpl();
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::IRBuilderBase::CreateInBoundsGEP(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  result = (*(**(a1 + 72) + 48))(*(a1 + 72), a2, a3, a4, a5, 1);
  if (!result)
  {
    v13 = llvm::GetElementPtrInst::Create(a2, a3, a4, a5);
    llvm::GetElementPtrInst::setIsInBounds(v13);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v13, a6);
  }

  return result;
}

uint64_t MTLArgumentBufferConversion::applyAMDVaryingWA(uint64_t this)
{
  v1 = this;
  v2 = *(this + 120);
  if (v2)
  {
    if (v2 != 1)
    {
      abort();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(*(this + 128) - 8 * *(*(this + 128) + 8) + 8 * v3);
  v5 = *(v4 + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = *(v4 - 8 * *(v4 + 8) + 8 * i);
      this = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8 * v2));
      if (v8 == 17)
      {
        if (*this != 0x747265762E726961 || *(this + 8) != 0x757074756F5F7865 || *(this + 16) != 116)
        {
          continue;
        }
      }

      else
      {
        if (v8 != 18)
        {
          continue;
        }

        v9 = *this == 0x676172662E726961 && *(this + 8) == 0x706E695F746E656DLL;
        if (!v9 || *(this + 16) != 29813)
        {
          continue;
        }
      }

      this = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8 * v3));
      if (v13 == 12)
      {
        if (*this == 0x754F64656B636170 && *(this + 8) == 1953853556)
        {
LABEL_39:
          v16 = *(v7 + 8);
          if (v3 + 1 < v16)
          {
            v17 = v3;
            do
            {
              this = *(v7 - 8 * v16 + 8 * v17 + 8);
              if (!*this)
              {
                this = llvm::MDString::getString(this);
                if (v18 == 12 && *this == 0x61636F6C2E726961 && *(this + 8) == 1852795252)
                {
                  v20 = *(*(v7 - 8 * *(v7 + 8) + 8 * v17 + 16) + 128);
                  v21 = (v20 + 24);
                  if (*(v20 + 32) >= 0x41u)
                  {
                    v21 = *v21;
                  }

                  v22 = *v21;
                  v23 = *(v1 + 80);
                  llvm::ConstantInt::get();
                  llvm::ValueAsMetadata::get();
                  this = llvm::MDNode::replaceOperandWith();
                }
              }

              v16 = *(v7 + 8);
              v24 = v17 + 2;
              ++v17;
            }

            while (v24 < v16);
          }
        }
      }

      else if (v13 == 11 && *this == 0x6E4964656B636170 && *(this + 3) == 0x7475706E4964656BLL)
      {
        goto LABEL_39;
      }
    }
  }

  return this;
}

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
    *(inserted + 1) = inserted + 6;
    *(inserted + 2) = 0x200000000;
  }

  return inserted;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 32 * v6);
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
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 32 * v6);
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
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

  llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x21604BA70](32 * v8, 8);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::moveFromOldBuckets(a1, v4, v4 + 32 * v3);

    return llvm::deallocate_buffer(v4, (32 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 64);
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_213C7D090)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 16) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_213C7D0B0)))).i32[1])
        {
          *v16 = -1;
          v16[8] = -1;
        }

        v11 += 4;
        v16 += 32;
      }

      while (v14 != v11);
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x7FFFFFFFFFFFFFFLL;
    v9 = v8 & 0x7FFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x7FFFFFFFFFFFFFFLL) - (v8 & 3) + 4;
    v11 = vdupq_n_s64(v9);
    v12 = (*a1 + 64);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_213C7D090)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 16) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 8) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_213C7D0B0)))).i32[1])
      {
        *v12 = -1;
        v12[8] = -1;
      }

      v7 += 4;
      v12 += 32;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v17 = 0;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(a1, a2, &v17);
      v15 = v17;
      *v17 = *a2;
      llvm::SmallVector<unsigned int,2u>::SmallVector(v15 + 1, a2 + 8);
      ++*(a1 + 8);
      v16 = *(a2 + 8);
      if ((a2 + 24) != v16)
      {
        free(v16);
      }
    }

    a2 += 32;
  }
}

void *llvm::SmallVector<unsigned int,2u>::SmallVector(void *a1, uint64_t a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x200000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(a1, a2);
  }

  return a1;
}

{
  *a1 = a1 + 2;
  a1[1] = 0x200000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(a1, a2);
  }

  return a1;
}

void sub_213C576F4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

double llvm::SmallVectorImpl<unsigned int>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::FindAndConstruct(uint64_t *a1, _DWORD *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a2, &v7);
  inserted = v7;
  if ((v4 & 1) == 0)
  {
    inserted = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(a1, a2, a2, v7);
    *inserted = *a2;
  }

  return inserted;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
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
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
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

_DWORD *llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::InsertIntoBucketImpl<unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
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

  llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

uint64_t llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x21604BA70](8 * v8, 4);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 2 * v3);

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
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 16);
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_213C7D090)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 2) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_213C7D0B0)))).i32[1])
        {
          *v16 = -1;
          v16[2] = -1;
        }

        v11 += 4;
        v16 += 8;
      }

      while (v14 != v11);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::moveFromOldBuckets(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x1FFFFFFFFFFFFFFFLL;
    v9 = v8 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x1FFFFFFFFFFFFFFFLL) - (v8 & 3) + 4;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_213C7D090)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 4) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 2) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_213C7D0B0)))).i32[1])
      {
        *v12 = -1;
        v12[2] = -1;
      }

      v7 += 4;
      v12 += 8;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFD)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v5, a2, &v16);
      v15 = v16;
      *v16 = *a2;
      v15[1] = a2[1];
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

void sub_213C57D3C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *llvm::SmallVectorImpl<llvm::Metadata *>::insert<llvm::Metadata * const*,void>(unsigned int *a1, uint64_t a2, uint64_t *__src, uint64_t *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = a1[2];
  if (*a1 + 8 * v9 == a2)
  {
    llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, __src, a4);
    return (*a1 + v8);
  }

  v10 = a4 - __src;
  v11 = a4 - __src;
  if (v9 + v11 > a1[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = (v7 + v8);
  v13 = 8 * v9;
  v14 = (v7 + 8 * v9);
  v15 = 8 * v9 - v8;
  v16 = v15 >> 3;
  if (v15 >> 3 < v11)
  {
    v17 = v9 + (v10 >> 3);
    a1[2] = v17;
    if (v13 != v8)
    {
      memcpy((v7 + 8 * v17 - 8 * v16), v12, v15);
      v18 = v12;
      do
      {
        v19 = *v5++;
        *v18++ = v19;
        --v16;
      }

      while (v16);
    }

    if (v5 != a4)
    {
      memcpy(v14, v5, a4 - v5);
    }

    return v12;
  }

  llvm::SmallVectorImpl<llvm::Value *>::append<std::move_iterator<llvm::Value **>,void>(a1, &v14[-8 * v11], (v7 + 8 * v9));
  if (&v14[-8 * v11] != v12)
  {
    memmove(&v12[8 * v11], v12, &v14[-8 * v11] - v12);
  }

  if (a4 == v5)
  {
    return v12;
  }

  return memmove(v12, v5, a4 - v5);
}

uint64_t llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::~DenseMap(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (32 * *(a1 + 16)));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 32 * v1;
    v3 = *a1 + 24;
    do
    {
      if (*(v3 - 24) <= 0xFFFFFFFD)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 32;
      v2 -= 32;
    }

    while (v2);
  }
}

_BYTE *MTLFunctionTypeToString@<X0>(MTLFunctionType a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 - 1 > 7)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_2781717C0[a1 - 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

_BYTE *MTLBuildRequestTypeToString@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 + 1) > 0x12)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_278171800[a1 + 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void MTLCompilerObject::~MTLCompilerObject(MTLCompilerObject *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2) - v2;
  if (v3)
  {
    v4 = 0;
    if ((v3 >> 3) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 >> 3;
    }

    do
    {
      v6 = *(*(this + 1) + 8 * v4);
      if (v6)
      {
        MTLCompilerPluginInterface::~MTLCompilerPluginInterface(v6);
        MEMORY[0x21604C990]();
      }

      ++v4;
    }

    while (v5 != v4);
    v2 = *(this + 1);
  }

  *(this + 2) = v2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v7 = *(this + 4);
  MTLGPUCompilerDestroy();
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  free(*(this + 8));
  *(this + 8) = 0;
  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }
}

void *MTLCompilerObject::getFunctionFromLib(char **this, void *__handle, const char *__symbol)
{
  v5 = dlsym(__handle, __symbol);
  if (!v5)
  {
    dlerror();
    MTLCompilerErrorObject::setFormattedErrorMessage(this + 8, "Error: %s \n", __symbol);
  }

  return v5;
}

void *MTLCompilerObject::getComposeImageFuncSPI(MTLCompilerObject *this)
{
  result = *(this + 6);
  if (!result)
  {
    v3 = *(this + 5);
    if (v3 || (v3 = openLibComposeFilters(), (*(this + 5) = v3) != 0))
    {
      result = dlsym(v3, "composeImageFilterFunctionsSPI");
      *(this + 6) = result;
    }

    else
    {
      return *(this + 6);
    }
  }

  return result;
}

void *openLibComposeFilters(void)
{
  std::string::basic_string[abi:ne200100]<0>(&v5, "/System/Library/PrivateFrameworks/GPUCompiler.framework/Libraries/");
  v0 = std::string::append(&v5, "libComposeFilters.dylib");
  v1 = *&v0->__r_.__value_.__l.__data_;
  v7 = v0->__r_.__value_.__r.__words[2];
  *__p = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (v7 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = dlopen(v2, 5);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_213C58274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *MTLCompilerObject::getComposeImageFuncFromLibrariesSPI(MTLCompilerObject *this)
{
  result = *(this + 7);
  if (!result)
  {
    v3 = *(this + 5);
    if (v3 || (v3 = openLibComposeFilters(), (*(this + 5) = v3) != 0))
    {
      result = dlsym(v3, "composeImageFilterFunctionsFromModulesSPI");
      *(this + 7) = result;
    }

    else
    {
      return *(this + 7);
    }
  }

  return result;
}

MTLCompilerObject *MTLCodeGenServiceDestroy(MTLCompilerObject *result)
{
  if (result)
  {
    MTLCompilerObject::~MTLCompilerObject(result);

    JUMPOUT(0x21604C990);
  }

  return result;
}

__int128 **MTLCompilerObject::collectFunctionConstants(MTLCompilerObject *this, llvm::Module *a2, FunctionDesc *a3)
{
  __p[0] = "air.function_constants";
  LOWORD(v34) = 259;
  result = llvm::Module::getNamedMetadata(a2, __p);
  if (result)
  {
    v5 = result;
    NumOperands = llvm::NamedMDNode::getNumOperands(result);
    v7 = NumOperands;
    std::vector<FunctionConstantDesc>::reserve(a3 + 9, NumOperands);
    if (NumOperands)
    {
      v8 = 0;
      do
      {
        __p[0] = 0;
        __p[1] = 0;
        v32 = 0;
        Operand = llvm::NamedMDNode::getOperand(v5);
        v10 = Operand;
        v11 = *(Operand + 8);
        if (v11 >= 4)
        {
          v12 = Operand - 8 * v11;
          v13 = *(v12 + 16);
          v14 = *(v12 + 24);
          String = llvm::MDString::getString(*(v12 + 8));
          v17 = llvm::MDString::getString(v13);
          if (v17)
          {
            std::string::basic_string[abi:ne200100](&__dst, v17, v16);
          }

          else
          {
            __dst = 0uLL;
            v30 = 0;
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = __dst;
          v32 = v30;
          v18 = strlen(String);
          v33 = dataTypeFromString(String, v18);
          v19 = *(v14 + 128);
          v20 = (v19 + 24);
          if (*(v19 + 32) >= 0x41u)
          {
            v20 = *v20;
          }

          LOWORD(v34) = *v20;
          if (*(v10 + 8) == 5 && (v21 = *(v10 - 8)) != 0)
          {
            v22 = *(v21 + 128);
            v23 = (v22 + 24);
            if (*(v22 + 32) >= 0x41u)
            {
              v23 = *v23;
            }

            v24 = *v23 != 0;
          }

          else
          {
            v24 = 1;
          }

          HIWORD(v34) = v24;
          v25 = *(a3 + 10);
          if (v25 >= *(a3 + 11))
          {
            v28 = std::vector<FunctionConstantDesc>::__emplace_back_slow_path<FunctionConstantDesc>(a3 + 72, __p);
          }

          else
          {
            v26 = *__p;
            *(v25 + 16) = v32;
            *v25 = v26;
            __p[1] = 0;
            v32 = 0;
            __p[0] = 0;
            v27 = v34;
            *(v25 + 24) = v33;
            *(v25 + 32) = v27;
            v28 = v25 + 40;
          }

          *(a3 + 10) = v28;
        }

        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }

        ++v8;
      }

      while (v7 != v8);
    }

    return std::vector<FunctionConstantDesc>::shrink_to_fit(a3 + 9);
  }

  return result;
}

void sub_213C58544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<FunctionConstantDesc>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_213C58638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__int128 **std::vector<FunctionConstantDesc>::shrink_to_fit(__int128 **result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3);
    v15 = result;
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(result, 0xCCCCCCCCCCCCCCCDLL * (v4 >> 3));
    }

    v7 = 8 * (v4 >> 3);
    v12 = 0;
    v13 = 40 * v6;
    v14 = 40 * v6;
    if (0xCCCCCCCCCCCCCCCDLL * (v3 >> 3))
    {
      v8 = result[1];
      v9 = v7 + v2 - v8;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(result, v2, v8, v9);
      v10 = *v5;
      *v5 = v9;
      v11 = v5[2];
      *(v5 + 1) = v14;
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v12 = v10;
      v13 = v10;
    }

    return std::__split_buffer<FunctionConstantDesc>::~__split_buffer(&v12);
  }

  return result;
}

void sub_213C58738(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x213C58728);
}

uint64_t fixLinkage(llvm::Module *this, const char *a2)
{
  v3 = 1;
  v13 = 1;
  if (*a2)
  {
    v11 = a2;
    v3 = 3;
  }

  v12 = v3;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v11);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v6 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  v7 = this + 24;
  v8 = *(this + 4);
  if (v8 != this + 24)
  {
    do
    {
      if (v8)
      {
        v9 = (v8 - 56);
      }

      else
      {
        v9 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v9) & 1) == 0)
      {
        *(v9 + 8) = *(v9 + 8) & 0xFFFFBFC0 | 0x4007;
      }

      v8 = *(v8 + 1);
    }

    while (v8 != v7);
  }

  llvm::GlobalValue::setLinkage(v6, 0);
  return v6;
}

double llvm::Module::setTargetTriple(uint64_t a1, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  result = *&__dst;
  *(a1 + 216) = __dst;
  *(a1 + 232) = v7;
  return result;
}

uint64_t MTLCompilerObject::applyConstantValues(uint64_t a1, llvm::LLVMContext *this, uint64_t a3, uint64_t a4, const char *a5, unint64_t a6, uint64_t a7, const char **a8)
{
  v19[0] = this;
  v19[2] = llvm::LLVMContext::getDiagnosticContext(this);
  v19[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(this);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  v18 = 0;
  v13 = parseFunctionConstants(this, a5, a6, &v18);
  v14 = *(a1 + 32);
  v15 = MTLGPUCompilerSpecializeFunction();
  free(v13);
  if (!v15)
  {
    if (a8)
    {
      v16 = *a8;
    }

    else
    {
      v16 = "Failed to specialize function.";
    }

    MTLCompilerErrorObject::setErrorMessage((a1 + 64), v16);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v19);
  return 0;
}

void sub_213C58AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(va);
  _Unwind_Resume(a1);
}

void softDiagnosticHandler(uint64_t a1, MTLCompilerErrorObject *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  printDiagnosticError(a1, __p);
  if (!*(a1 + 12))
  {
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    MTLCompilerErrorObject::setErrorMessage(a2, v4);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_213C58B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getSerializedModule@<X0>(signed int __val@<W1>, void *a2@<X8>)
{
  if (__val <= 3901)
  {
    if (!__val || __val == 3802)
    {
      goto LABEL_24;
    }
  }

  else if (__val == 32023 || __val == 31001 || __val == 3902)
  {
    goto LABEL_24;
  }

  std::to_string(&v12, __val);
  v4 = std::string::insert(&v12, 0, "Unexpected llvmVersion (");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ") passed to getMTLBitcodeVersionFromLLVMVersion, using MTLBitcodeVersionDefault instead");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v13, &unk_213C7E907);
  v8 = SHIBYTE(v15);
  v9 = __p[0];
  std::string::basic_string[abi:ne200100]<0>(&v12, "MTLBuildRequestTypeUnknown");
  if (v8 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = v9;
  }

  logCompileError(&v13, v10);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_24:
  result = MTLWriteAIRBitcodeToMemoryBuffer();
  *a2 = result;
  return result;
}

void sub_213C58CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::serializeLibraryReply(uint64_t a1, void *a2, char *__s1, char a4, llvm::Module **a5, unint64_t a6, unsigned int a7, uint64_t a8, char a9, unsigned int __val, uint64_t *a11)
{
  v173[55] = *MEMORY[0x277D85DE8];
  v167 = 0;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  __n_4 = 0u;
  memset(v159, 0, sizeof(v159));
  v160 = 1065353216;
  v158 = 104;
  if (__s1)
  {
    DWORD2(v161) = 104;
    HIDWORD(v161) = strlen(__s1) + 1;
    v158 = HIDWORD(v161) + 104;
  }

  if (a4)
  {
    v126 = a5;
    if (a6)
    {
      HIDWORD(v119) = readVersionMetadata(*a5, "air.version", 0, 1, 6);
      VersionMetadata = readVersionMetadata(*a5, "air.language_version", 1u, 1, 0);
      LODWORD(v119) = VersionMetadata;
      v18 = 0;
      LOBYTE(v161) = v161 | 1;
      v155 = 0;
      v156 = 0;
      v157 = 0;
      v19 = a5;
      v20 = a6;
      do
      {
        v21 = *v19;
        if ((a9 & 1) == 0)
        {
          parseFunctions(*v19, &v155);
        }

        VersionMetadata = MTLCompilerObject::collectFunctionConstants(VersionMetadata, v21, (v155 + v18));
        ++v19;
        v18 += 136;
        --v20;
      }

      while (v20);
      v22 = v155;
      v23 = v156;
      a5 = v126;
    }

    else
    {
      v119 = 0;
      v22 = 0;
      v23 = 0;
      LOBYTE(v161) = 1;
      v155 = 0;
      v156 = 0;
      v157 = 0;
    }

    v151 = 0;
    v152 = &v151;
    v153 = 0x2020000000;
    v147[0] = MEMORY[0x277D85DD0];
    v147[1] = 3221225472;
    v148 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke;
    v149 = &unk_278171778;
    v150 = &v151;
    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v144 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_2;
    v145 = &unk_2781717A0;
    v146 = &v151;
    v25 = 12;
    v154 = 12;
    v26 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3);
    v125 = a6;
    v118 = a2;
    if (v23 != v22)
    {
      v27 = 0;
      if (v26 <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3);
      }

      do
      {
        v29 = v155;
        v30 = v155 + v27;
        (v148)(v147, *(v155 + v27 + 48));
        (v148)(v147, *(v30 + 52));
        (v148)(v147, *(v29 + v27 + 56));
        (v148)(v147, *(v29 + v27 + 60));
        (v148)(v147, *(v29 + v27 + 64));
        (v148)(v147, *(v29 + v27 + 68));
        (v148)(v147, *(v29 + v27 + 69));
        v144(v143, (v29 + v27 + 32));
        v27 += 136;
        --v28;
      }

      while (v28);
      v25 = v152[3];
      a6 = v125;
      a5 = v126;
    }

    *&__n_4 = __PAIR64__(v25, v158);
    v158 += v25;
    v142 = 0;
    __src = __s1;
    ptr = malloc_type_malloc(0xC3C3C3C3C3C3C400 * ((v23 - v22) >> 3), 0x100004077774924uLL);
    v141 = 0xC3C3C3C3C3C3C400 * ((v23 - v22) >> 3);
    v137 = 0;
    v138 = 0;
    v139 = 0;
    v123 = v22;
    v124 = v23;
    if (v23 != v22)
    {
      v31 = 0;
      v32 = 0;
      if (v26 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3);
      }

      v122 = v33;
      while (1)
      {
        v127 = v32;
        v34 = v155 + 136 * v32;
        *(v34 + 56) = v31;
        *(v34 + 60) = 0;
        memset(v136, 0, sizeof(v136));
        if ((entryPointsType[*(v34 + 48)] & 0xFFFFFFFFFFFFFFFDLL) == 1)
        {
          v35 = *(v34 + 8);
          if (v35)
          {
            v36 = *(v35 + 8);
          }

          else
          {
            v36 = 0;
          }

          v37 = *v34;
          if (*(*v34 + 18))
          {
            llvm::Function::BuildLazyArguments(*v34);
          }

          if (v36)
          {
            v38 = *(v37 + 11);
            v39 = *(*(v34 + 8) - 8 * *(*(v34 + 8) + 8));
            DataLayout = llvm::Module::getDataLayout(*(*v34 + 40));
            llvm::DataLayout::DataLayout(v173, DataLayout);
            MTLArgumentData::MTLArgumentData(&v169);
          }
        }

        v42 = v137;
        v41 = v138;
        v43 = (v138 - v137) >> 5;
        v44 = 0x8E38E38E38E38E39 * v43;
        v45 = 0;
        if (v138 != v137)
        {
          if (v44 <= 1)
          {
            v46 = 1;
          }

          else
          {
            v46 = 0x8E38E38E38E38E39 * v43;
          }

          v47 = 96;
          do
          {
            v48 = *(v137 + v47);
            if (v48)
            {
              v49 = *(v48 + 8);
              v50 = v49 - isPatchControlPointInputUnused(v48) - 3;
            }

            else
            {
              v50 = 1;
            }

            v45 += v50;
            v47 += 288;
            --v46;
          }

          while (v46);
        }

        if (v31 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_169;
        }

        if (v141 >= v31 + 4)
        {
          v52 = ptr;
        }

        else
        {
          if (v141)
          {
            v51 = v141;
          }

          else
          {
            v51 = 128;
          }

          while (v51 < v31 + 4)
          {
            if (v51 >> 1 >= ~v51)
            {
              v51 = v31 + 4;
            }

            else
            {
              v51 += v51 >> 1;
            }
          }

          v52 = malloc_type_realloc(ptr, v51, 0x100004077774924uLL);
          ptr = v52;
          if (!v52)
          {
            goto LABEL_169;
          }

          v141 = v51;
        }

        *&v52[v31] = v45;
        v142 = v31 + 4;
        if (v41 != v42)
        {
          v53 = 0;
          if (v44 <= 1)
          {
            v54 = 1;
          }

          else
          {
            v54 = v44;
          }

          do
          {
            v55 = v137 + 288 * v53;
            v56 = *(v55 + 96);
            if (v56)
            {
              v57 = *(v56 + 8);
              if ((v57 - isPatchControlPointInputUnused(v56)) >= 4)
              {
                v58 = *(*(v55 + 96) - 8 * *(*(v55 + 96) + 8) + 24);
                MTLArgumentData::MTLArgumentData(v173);
              }
            }

            else
            {
              serializeOneVertexAttribute((v137 + 288 * v53), &ptr);
            }

            ++v53;
          }

          while (v53 != v54);
        }

        std::vector<MTLArgumentData>::resize(&v137, 0);
        v59 = v142;
        if (v142 >= 0xFFFFFFFFFFFFFFFCLL)
        {
LABEL_169:
          abort();
        }

        v61 = *(v34 + 72);
        v60 = *(v34 + 80);
        v31 = v142 + 4;
        v62 = v141;
        if (v141 >= v142 + 4)
        {
          v63 = ptr;
        }

        else
        {
          if (!v141)
          {
            v62 = 128;
          }

          while (v62 < v31)
          {
            if (v62 >> 1 >= ~v62)
            {
              v62 = v142 + 4;
            }

            else
            {
              v62 += v62 >> 1;
            }
          }

          v63 = malloc_type_realloc(ptr, v62, 0x100004077774924uLL);
          ptr = v63;
          if (!v63)
          {
            goto LABEL_169;
          }

          v141 = v62;
        }

        *&v63[v59] = -858993459 * ((v60 - v61) >> 3);
        v142 = v59 + 4;
        v64 = *(v34 + 72);
        v65 = *(v34 + 80);
        while (v64 != v65)
        {
          v66 = *(v64 + 23);
          if ((v66 & 0x8000000000000000) != 0)
          {
            v67 = *v64;
            v66 = *(v64 + 8);
          }

          else
          {
            v67 = v64;
          }

          v68 = v66 + 1;
          if (__CFADD__(v31, v66 + 1))
          {
            goto LABEL_169;
          }

          v69 = v68 + v31;
          if (v62 < v68 + v31)
          {
            do
            {
              if (v62 >> 1 >= ~v62)
              {
                v62 = v68 + v31;
              }

              else
              {
                v62 += v62 >> 1;
              }
            }

            while (v62 < v69);
            v63 = malloc_type_realloc(v63, v62, 0x100004077774924uLL);
            ptr = v63;
            if (!v63)
            {
              goto LABEL_169;
            }

            v141 = v62;
          }

          v70 = &v63[v31];
          memcpy(v70, v67, v66);
          v70[v66] = 0;
          v142 = v69;
          if (v69 == -1)
          {
            goto LABEL_169;
          }

          v71 = *(v64 + 24);
          if (v62 <= v69)
          {
            if (!v62)
            {
              v141 = 128;
              v62 = 128;
            }

            while (v62 <= v69)
            {
              if (v62 >> 1 >= ~v62)
              {
                v62 = v69 + 1;
              }

              else
              {
                v62 += v62 >> 1;
              }
            }

            v63 = malloc_type_realloc(v63, v62, 0x100004077774924uLL);
            ptr = v63;
            if (!v63)
            {
              goto LABEL_169;
            }

            v141 = v62;
          }

          v63[v69] = v71;
          v142 = v69 + 1;
          if (v69 >= 0xFFFFFFFFFFFFFFFBLL)
          {
            goto LABEL_169;
          }

          v72 = *(v64 + 32);
          v73 = v69 + 5;
          if (v62 < v69 + 5)
          {
            do
            {
              if (v62 >> 1 >= ~v62)
              {
                v62 = v69 + 5;
              }

              else
              {
                v62 += v62 >> 1;
              }
            }

            while (v62 < v73);
            v63 = malloc_type_realloc(v63, v62, 0x100004077774924uLL);
            ptr = v63;
            if (!v63)
            {
              goto LABEL_169;
            }

            v141 = v62;
          }

          v74 = &v63[v69 + 1];
          *v74 = v72;
          *(v74 + 1) = 0;
          v142 = v69 + 5;
          if (v69 == -6)
          {
            goto LABEL_169;
          }

          v75 = *(v64 + 34);
          v31 = v69 + 6;
          if (v62 <= v73)
          {
            do
            {
              if (v62 >> 1 >= ~v62)
              {
                v62 = v69 + 6;
              }

              else
              {
                v62 += v62 >> 1;
              }
            }

            while (v62 <= v73);
            v63 = malloc_type_realloc(v63, v62, 0x100004077774924uLL);
            ptr = v63;
            if (!v63)
            {
              goto LABEL_169;
            }

            v141 = v62;
          }

          v63[v73] = v75;
          v142 = v69 + 6;
          v64 += 40;
        }

        if (entryPointsType[*(v34 + 48)] != 1)
        {
          break;
        }

        v76 = *(v34 + 16);
        a6 = v125;
        a5 = v126;
        if (v76)
        {
          v76 = *(v76 + 8);
          if (v76)
          {
            v77 = 0;
            v78 = 8 * v76;
            while (1)
            {
              v79 = *(*(v34 + 16) - 8 * *(*(v34 + 16) + 8) + v77);
              String = llvm::MDString::getString(*(v79 - 8 * *(v79 + 8)));
              if (v81 == 29)
              {
                v82 = *String == 0x646E65722E726961 && String[1] == 0x65677261745F7265;
                v83 = v82 && String[2] == 0x5F79617272615F74;
                if (v83 && *(String + 21) == 0x7865646E695F7961)
                {
                  break;
                }
              }

              v77 += 8;
              if (v78 == v77)
              {
                LOBYTE(v76) = 0;
                goto LABEL_131;
              }
            }

            LOBYTE(v76) = dataTypeFromMetadata(1u, v79);
            goto LABEL_130;
          }
        }

LABEL_132:
        *(v34 + 68) = v76;
        v173[0] = v136;
        std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v173);
        v32 = v127 + 1;
        if (v127 + 1 == v122)
        {
          goto LABEL_136;
        }
      }

      LOBYTE(v76) = 0;
LABEL_130:
      a6 = v125;
LABEL_131:
      a5 = v126;
      goto LABEL_132;
    }

    v31 = 0;
LABEL_136:
    v173[0] = &v137;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v173);
    *(&__n_4 + 1) = __PAIR64__(v31, v158);
    v158 += v31;
    *&v163 = v158;
    DWORD2(v163) = v158;
    std::vector<std::unique_ptr<llvm::MemoryBuffer>>::vector[abi:ne200100](&v168, a6);
    if (a6)
    {
      v85 = 0;
      v86 = 0;
      v87 = 64;
      do
      {
        if (v124 != v123)
        {
          *(v155 + v87) = v86;
        }

        v88 = a5[v85];
        getSerializedModule(__val, v173);
        v89 = v168;
        v90 = *(v168 + 8 * v85);
        *(v168 + 8 * v85) = v173[0];
        if (v90)
        {
          (*(*v90 + 8))(v90);
          v89 = v168;
        }

        a5[v85] = 0;
        v86 += *(*(v89 + 8 * v85) + 16) - *(*(v89 + 8 * v85) + 8) + 4;
        ++v85;
        v87 += 136;
      }

      while (a6 != v85);
    }

    else
    {
      v86 = 0;
    }

    v158 += v86;
    HIDWORD(v163) = v86;
    if (a8)
    {
      SerializedLibraryInfo::serializeDynamicLibraryDataHeader(a8, &v161, &v158);
    }

    if (a11)
    {
      if (a11[1])
      {
        v91 = *a11;
      }

      else
      {
        v91 = 0;
      }

      v92 = a11[16];
      v93 = a11[17];
      CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(v173, v91);
      addBlocksForOutput(v159, a11, 0, v173);
      HIDWORD(v167) = sizeOfSerializedCompilerBlocks(v159);
      LODWORD(v167) = v158;
      v158 += HIDWORD(v167);
      CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(v173);
    }

    *&v164 = __PAIR64__(a7, v158);
    v158 += a7;
    v94 = malloc_type_malloc(v158, 0x100004077774924uLL);
    v24 = v94;
    v95 = v161;
    v96 = v163;
    v94[1] = __n_4;
    v94[2] = v96;
    *v94 = v95;
    v97 = v164;
    v98 = v165;
    v99 = v166;
    *(v94 + 12) = v167;
    v94[4] = v98;
    v94[5] = v99;
    v94[3] = v97;
    if (__src)
    {
      memcpy(v94 + DWORD2(v161), __src, HIDWORD(v161));
      free(__src);
    }

    v169 = 0;
    v170 = &v169;
    v171 = 0x2020000000;
    v172 = (v24 + __n_4);
    *v172 = HIDWORD(v119);
    v100 = v170;
    ++v172;
    *v170[3] = v119;
    v100[3] += 4;
    v131 = &v169;
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v133 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_3;
    v134 = &unk_278171778;
    v135 = &v169;
    v128[0] = MEMORY[0x277D85DD0];
    v128[1] = 3221225472;
    v129 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_4;
    v130 = &unk_2781717A0;
    v82 = v156 == v155;
    v101 = 0xF0F0F0F0F0F0F0F1 * ((v156 - v155) >> 3);
    v102 = v170;
    *v170[3] = v101;
    v102[3] += 4;
    if (!v82)
    {
      v103 = 0;
      if (v101 <= 1)
      {
        v104 = 1;
      }

      else
      {
        v104 = v101;
      }

      do
      {
        v105 = v155;
        v106 = v155 + v103;
        v133(v132, *(v155 + v103 + 48));
        v133(v132, *(v106 + 52));
        v133(v132, *(v105 + v103 + 56));
        v133(v132, *(v105 + v103 + 60));
        v133(v132, *(v105 + v103 + 64));
        v133(v132, *(v105 + v103 + 68));
        v133(v132, *(v105 + v103 + 69));
        v129(v128, (v105 + v103 + 32));
        v103 += 136;
        --v104;
      }

      while (v104);
    }

    v107 = ptr;
    memcpy((v24 + DWORD2(__n_4)), ptr, v31);
    if (a8)
    {
      SerializedLibraryInfo::serializeDynamicLibraryData(a8, &v161, v24);
    }

    if (a11 && HIDWORD(v167))
    {
      memset(v173, 0, 64);
      serializeCompilerBlocks((v24 + v167), HIDWORD(v167), v159, v173);
    }

    if (v125)
    {
      v108 = 0;
      v109 = (v24 + DWORD2(v163));
      do
      {
        v110 = *(v168 + 8 * v108);
        v111 = *(v110 + 8);
        v112 = *(v110 + 16);
        v113 = v112 - v111;
        *v109 = v112 - v111;
        v114 = v109 + 4;
        memcpy(v114, v111, (v112 - v111));
        v109 = &v114[v113];
        ++v108;
      }

      while (v125 != v108);
    }

    *v118 = v158;
    _Block_object_dispose(&v169, 8);
    v173[0] = &v168;
    std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](v173);
    free(v107);
    _Block_object_dispose(&v151, 8);
    v173[0] = &v155;
    std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](v173);
  }

  else
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), __s1);
    free(__s1);
    v24 = 0;
  }

  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(v159);
  v115 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_213C59C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&STACK[0x240], 8);
  STACK[0x360] = &STACK[0x228];
  std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x360]);
  free(a38);
  _Block_object_dispose(&a51, 8);
  STACK[0x240] = &a55;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&a59);
  _Unwind_Resume(a1);
}

uint64_t ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_2(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

void std::vector<MTLArgumentData>::resize(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<MTLArgumentData>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<MTLArgumentData>::__base_destruct_at_end[abi:ne200100](a1, *a1 + 288 * a2);
  }
}

uint64_t SerializedLibraryInfo::serializeDynamicLibraryDataHeader(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = *a3;
  a2[14] = *a3;
  v7 = *(a1 + 23);
  if (v7 < 0)
  {
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_6;
    }

LABEL_5:
    LODWORD(v7) = v7 + 1;
    goto LABEL_6;
  }

  if (*(a1 + 23))
  {
    goto LABEL_5;
  }

  LODWORD(v7) = 0;
LABEL_6:
  v8 = v6 + v7;
  *a3 = v8;
  a2[15] = v7;
  a2[16] = v8;
  v9 = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 24));
  v10 = *a3 + v9;
  *a3 = v10;
  a2[17] = v9;
  a2[18] = v10;
  v11 = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 48));
  v12 = *a3 + v11;
  *a3 = v12;
  a2[19] = v11;
  a2[20] = v12;
  v13 = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 72));
  v14 = *a3 + v13;
  *a3 = v14;
  a2[21] = v13;
  a2[22] = v14;
  result = SerializedLibraryInfo::serializeStringArraySize(a1, (a1 + 96));
  a2[23] = result;
  *a3 += result;
  return result;
}

uint64_t ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_3(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_4(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = (*(v4 + 24) + v3);
  *(v4 + 24) = v6;
  if (!v3 || v2[v3 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

void SerializedLibraryInfo::serializeDynamicLibraryData(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2[15])
  {
    v6 = a2[14];
    v7 = a1;
    if (*(a1 + 23) < 0)
    {
      v7 = *a1;
    }

    strcpy((a3 + v6), v7);
  }

  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 24), (a3 + a2[16]));
  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 48), (a3 + a2[18]));
  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 72), (a3 + a2[20]));
  v8 = (a3 + a2[22]);

  SerializedLibraryInfo::serializeStringArray(a1, (a1 + 96), v8);
}

uint64_t countArgumentBufferResources(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (*a2 != v2)
  {
    v3 = result;
    v4 = *a2 + 104;
    do
    {
      *(v14 + 5) = 0;
      v14[0] = 0;
      if (*(v4 - 8))
      {
        result = countArgumentBufferResources(v14, v4);
        v6 = v14[0];
        v5 = HIDWORD(v14[0]);
        v7 = v14[1];
        LOBYTE(v8) = BYTE4(v14[1]);
      }

      else
      {
        v8 = *(v4 - 48);
        if (!v8)
        {
          goto LABEL_11;
        }

        v9 = *v8;
        if ((*v8 & 0x1000) != 0)
        {
          *(v3 + 12) = 1;
          v9 = *v8;
        }

        v10 = ((v9 >> 4) & 0x1F) - 1;
        if (v10 > 4)
        {
          LOBYTE(v8) = 0;
LABEL_11:
          v7 = 0;
          v5 = 0;
          v6 = 0;
          goto LABEL_12;
        }

        LOBYTE(v8) = 0;
        v7 = dword_213C7D544[v10];
        v5 = dword_213C7D558[v10];
        v6 = dword_213C7D56C[v10];
      }

LABEL_12:
      v11 = *(v4 - 64);
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v12 = *(v3 + 4);
      *v3 += v6 * v11;
      *(v3 + 4) = v12 + v5 * v11;
      *(v3 + 8) += v7 * v11;
      *(v3 + 12) |= v8;
      v13 = v4 + 72;
      v4 += 176;
    }

    while (v13 != v2);
  }

  return result;
}

uint64_t MTLSimCompiler::validSimulatorMetadata(MTLSimCompiler *this, llvm::Module *a2)
{
  v4 = 0;
  v23 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v5 = entryPointsMetadata[v4];
    v22 = 257;
    if (*v5)
    {
      v21[0] = v5;
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    LOBYTE(v22) = v6;
    NamedMetadata = llvm::Module::getNamedMetadata(a2, v21);
    v8 = NamedMetadata;
    if (NamedMetadata)
    {
      if (llvm::NamedMDNode::getNumOperands(NamedMetadata) > 0)
      {
        break;
      }
    }

    if (++v4 == 7)
    {
      goto LABEL_8;
    }
  }

  Operand = llvm::NamedMDNode::getOperand(v8);
  if (!Operand)
  {
LABEL_8:
    MTLCompilerErrorObject::setErrorMessage((this + 8), "invalid function metadata");
    result = 0;
    goto LABEL_9;
  }

  v19 = entryPointsType[v4];
  v12 = (Operand - 8 * *(Operand + 8));
  v13 = *(*v12 + 128);
  v14 = v12[2];
  v15 = *(v14 + 8);
  if (*(v13 + 18))
  {
    llvm::Function::BuildLazyArguments(v13);
  }

  if ((v19 - 1) > 2)
  {
    abort();
  }

  if (v15 >= 1)
  {
    v16 = *(v13 + 88);
    v17 = *(v14 - 8 * *(v14 + 8));
    DataLayout = llvm::Module::getDataLayout(a2);
    llvm::DataLayout::DataLayout(v21, DataLayout);
    MTLArgumentData::MTLArgumentData(&v20);
  }

  result = 1;
LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_213C5A704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(&a23);
  MTLArgumentData::~MTLArgumentData(&a26);
  MEMORY[0x21604B470](&a62);
  _Unwind_Resume(a1);
}

uint64_t MTLSimCompiler::buildRequestWithOptions(MTLSimCompiler *this, const void *a2, unint64_t a3, unsigned int a4, llvm::Module *a5, const void **a6, unint64_t *a7, const void **a8, unint64_t *a9, const void **a10, unint64_t *a11, const char **a12)
{
  *this = 0;
  v17 = (this + 8);
  v35[0] = *a5;
  v35[2] = llvm::LLVMContext::getDiagnosticContext(v35[0]);
  v35[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v35[0]);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  if (MTLDowngradeAIRModule() && MTLSimCompiler::validSimulatorMetadata(this, a5))
  {
    v18 = 0;
    while (1)
    {
      v19 = entryPointsMetadata[v18];
      v34 = 257;
      if (*v19)
      {
        __p[0] = v19;
        v20 = 3;
      }

      else
      {
        v20 = 1;
      }

      LOBYTE(v34) = v20;
      NamedMetadata = llvm::Module::getNamedMetadata(a5, __p);
      if (NamedMetadata)
      {
        break;
      }

      if (++v18 == 7)
      {
        goto LABEL_13;
      }
    }

    Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
    Name = llvm::Value::getName(*(*(Operand - 8 * *(Operand + 8)) + 128));
    if (Name)
    {
      std::string::basic_string[abi:ne200100](__p, Name, v26);
      goto LABEL_14;
    }

LABEL_13:
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
LABEL_14:
    *this = serializeModuleToBufferAsMetallib(a5, __p);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
      v28 = *this;
    }

    *a6 = LLVMGetBufferStart();
    v29 = *this;
    v30 = LLVMGetBufferSize();
    v23 = 0;
    v24 = 0;
    *a7 = v30;
    *a8 = 0;
    *a9 = 0;
    *a10 = 0;
    *a11 = 0;
  }

  else
  {
    v22 = MEMORY[0x21604BFC0](a5);
    MEMORY[0x21604C990](v22, 0x10B2C407FF26C1CLL);
    v23 = *v17;
    v24 = 1;
  }

  *a12 = v23;
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v35);
  return v24;
}

uint64_t serializeModuleToBufferAsMetallib(uint64_t a1, uint64_t *a2)
{
  LLVMGetTarget();
  MTLMetalLibCreateExecutableWithTriple();
  LLVMExtraMakeSharedModule();
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  MTLMetalFunctionCreate();
  MTLMetalLibInsertFunction();
  v4 = MTLWriteMetalLibToMemoryBuffer();
  LLVMExtraDisposeSharedModule();
  return v4;
}

void MTLSimCompiler::deleteCompilerReply(void **this)
{
  if (*this)
  {
    LLVMDisposeMemoryBuffer();
    *this = 0;
  }

  free(this[1]);
  this[1] = 0;
}

uint64_t MTLSimCompilerDelete(uint64_t result)
{
  if (result)
  {
    v1 = result;
    free(*(result + 8));
    *(v1 + 8) = 0;

    JUMPOUT(0x21604C990);
  }

  return result;
}

uint64_t MTLCompilerObject::createLoaderScript(uint64_t a1, char *__s, uint64_t a3)
{
  strlen(__s);
  v5 = LLVMCreateMemoryBufferWithMemoryRange();
  if (MTLCreateScript())
  {
    v6 = *(a1 + 32);
    MTLGPUCompilerSetLoaderScript();
  }

  else
  {
    MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "error while parsing script: %s", 0);
    free(0);
    (*(a3 + 16))(a3, 2 * (*(a1 + 64) != 0), 0, 0);
    return 0;
  }

  return v5;
}

void MTLCompilerObject::downgradeAndLoadModuleRequest(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v40[0] = 0;
  v41 = 0u;
  v37 = 0;
  *v39 = 0u;
  *v36 = 0u;
  v38 = -1;
  v40[1] = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v4 = *(a2 + 32);
  v5 = v4[55];
  if (v5 == 10 || v5 == 1)
  {
    v6 = *v4 >> 31;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x21604B680](v35);
  v34[0] = v35;
  v34[2] = llvm::LLVMContext::getDiagnosticContext(v35);
  v34[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v35);
  v7 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  LOWORD(v54) = 0;
  v55 = 0u;
  v56 = 0u;
  memset(v57, 0, sizeof(v57));
  v58 = 0u;
  memset(v59, 0, sizeof(v59));
  MTLCompilerObject::getReadParametersFromRequest(v7, &v54, *a2, *(a2 + 8), (*(a2 + 32) + 88), *(a2 + 32));
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(a1, &v54, v35, (a2 + 40), &v45, &v45 + 1, v5 == 1);
  *(a2 + 48) = ModuleFromBinaryRequest;
  v9 = (a2 + 48);
  if (!ModuleFromBinaryRequest)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(a1 + 64) != 0), 0, 0);
LABEL_31:
    free(v45);
    goto LABEL_32;
  }

  if (!v6)
  {
    v12 = *(a2 + 32);
    if ((*(v12 + 3) & 4) != 0)
    {
      *(a2 + 48) = MTLCompilerObject::invokeFunctionLoader(a1, v12, *(a2 + 8), v35, ModuleFromBinaryRequest, v45, *(&v45 + 1), *(a2 + 24));
      **(a2 + 32) &= ~0x4000000u;
    }

    free(v45);
    *&v45 = 0;
    v13 = *(a2 + 32);
    if ((*(v13 + 3) & 2) != 0)
    {
      if (!*v9)
      {
        goto LABEL_32;
      }

      *(a2 + 48) = MTLCompilerObject::invokeLowerModule(a1, v13, v35, *v9, *(a2 + 40), *(a2 + 24));
      **(a2 + 32) &= ~0x2000000u;
    }

    if (*v9)
    {
      v11 = *(a2 + 32);
      goto LABEL_18;
    }

LABEL_32:
    v20 = 0;
    v21 = 0;
    goto LABEL_33;
  }

  v10 = MTLCompilerObject::runFrameworkPasses(a1, a2, v36, v35);
  v11 = *(a2 + 32);
  if ((v10 & 1) == 0 && (*(v11 + 4) & 2) == 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if (*(v11 + 12) != 12)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(a1 + 64) != 0), 0, 0, "Invalid air downgrade request data size");
    goto LABEL_31;
  }

  v14 = (*a2 + *(v11 + 8));
  v15 = v14[1];
  v16 = *v14;
  if (v14[4])
  {
    if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
    {
      MTLCompilerObject::downgradeAndLoadModuleRequest();
    }

    if ((atomic_load_explicit(&qword_281130248, memory_order_acquire) & 1) == 0)
    {
      MTLCompilerObject::downgradeAndLoadModuleRequest();
    }

    qword_27C8E929C = qword_27C8E929C & 0xFFFFFFFFFFFFFFEFLL | (8 * *(v14 + 8)) & 0x10 | 0xC0000;
    if (!*a1)
    {
      operator new();
    }

    llvm::legacy::PassManager::run(*a1, *v9);
  }

  v17 = *v9;
  if (!MTLDowngradeAIRModule())
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(a1 + 64) != 0), 0, 0);
    goto LABEL_32;
  }

  v18 = *(a2 + 32);
  if ((*(v18 + 5) & 2) != 0)
  {
    if (((v51 - v50) & 0xFFFFFFFF0) != 0)
    {
      v19 = 12 * ((v51 - v50) >> 4) + 4;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v29 = (*v18 >> 30) & 1;
  v30 = v36;
  if (!v6)
  {
    v30 = 0;
  }

  v20 = 1;
  v21 = MTLCompilerObject::serializeLibraryReply(a1, &v53, 0, 1, (a2 + 48), 1uLL, v19, 0, v29, *(v14 + 1), v30);
LABEL_33:
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v34);
  llvm::LLVMContext::~LLVMContext(v35);
  if (v20)
  {
    if (v21)
    {
      __p = 0;
      v32 = 0;
      v33 = 0;
      std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&__p, v50, v51, (v51 - v50) >> 4);
      if (v21[13])
      {
        v22 = v21[12];
        v55 = 0uLL;
        v54 = 0;
        std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v54, __p, v32, (v32 - __p) >> 4);
        serializeCompileTimeData(v21 + v22, &v54);
        if (v54)
        {
          *&v55 = v54;
          operator delete(v54);
        }
      }

      if (__p)
      {
        v32 = __p;
        operator delete(__p);
      }

      (*(*(a2 + 24) + 16))();
      free(v21);
    }

    else
    {
      (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(a1 + 64) != 0), 0, 0);
    }

    if (v45)
    {
      free(v45);
      v45 = 0uLL;
    }
  }

  for (i = 22; i != 19; --i)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](&v36[i], 0);
  }

  v24 = v46;
  *&v46 = 0;
  if (v24)
  {
    free(v24);
  }

  v25 = v40[1];
  v40[1] = 0;
  if (v25)
  {
    free(v25);
  }

  v26 = v39[0];
  v39[0] = 0;
  if (v26)
  {
    free(v26);
  }

  v27 = v36[0];
  v36[0] = 0;
  if (v27)
  {
    free(v27);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t fatalDiagnosticHandler(uint64_t result)
{
  if (!*(result + 12))
  {
    memset(v1, 0, sizeof(v1));
    printDiagnosticError(result, v1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      fatalDiagnosticHandler(v1);
    }

    abort();
  }

  return result;
}

void sub_213C5B2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLBoundsCheck::SerializedData::~SerializedData(MTLBoundsCheck::SerializedData *this)
{
  v2 = this + 608;
  v3 = *(this + 76);
  if (v3 != this + 632)
  {
    free(v3);
  }

  v4 = *(this + 74);
  if (v4 != v2)
  {
    free(v4);
  }

  v5 = *(this + 48);
  if (v5 != this + 400)
  {
    free(v5);
  }

  v6 = *(this + 14);
  if (v6 != this + 128)
  {
    free(v6);
  }

  llvm::SmallVector<std::string,4u>::~SmallVector(this);
}

void FrameworkPassesOutput::~FrameworkPassesOutput(FrameworkPassesOutput *this)
{
  for (i = 176; i != 152; i -= 8)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((this + i), 0);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    free(v5);
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    free(v6);
  }
}

void MTLCompilerObject::stitchFunctionDag(uint64_t a1, llvm::LLVMContext *this, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v112 = *MEMORY[0x277D85DE8];
  v105[0] = this;
  v105[2] = llvm::LLVMContext::getDiagnosticContext(this);
  v105[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(this);
  v85 = a1;
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  v102 = a4;
  v103 = a5;
  if (a5 <= 3)
  {
    goto LABEL_132;
  }

  v104 = 4;
  v10 = DeserialContext::deserializeCStringNoCopy(&v102, 0);
  v106 = 0;
  v107 = 0u;
  v108 = 0u;
  memset(v109, 0, 26);
  v110 = 0u;
  memset(v111, 0, sizeof(v111));
  v11 = v104;
  if (v103 <= v104 || v103 - v104 <= 3)
  {
    goto LABEL_132;
  }

  v12 = v10;
  v13 = *(v102 + v104);
  v14 = v104 + 4;
  v104 += 4;
  if (v13 == 1634300534)
  {
    if (v103 <= v14)
    {
      goto LABEL_132;
    }

    if (v103 - v14 <= 3)
    {
      goto LABEL_132;
    }

    v15 = *(v102 + v14);
    v104 = v11 + 8;
    LODWORD(v109[0]) = v15;
    if (v103 <= v11 + 8)
    {
      goto LABEL_132;
    }

    if (v103 - (v11 + 8) <= 3)
    {
      goto LABEL_132;
    }

    v16 = *(v102 + v11 + 8);
    v104 = v11 + 12;
    HIDWORD(v109[0]) = v16;
    if (v103 <= v11 + 12 || v103 - (v11 + 12) <= 3)
    {
      goto LABEL_132;
    }

    v14 = v11 + 16;
    v104 = v11 + 16;
  }

  if (v103 <= v14 || v103 - v14 <= 3)
  {
    goto LABEL_132;
  }

  v17 = *(v102 + v14);
  v104 = v14 + 4;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v99, v17);
  __s = v12;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  __p = 0;
  v94 = 0;
  v95 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v96, v17);
  if (!v17)
  {
    goto LABEL_64;
  }

  v18 = 0;
  do
  {
    v19 = v103;
    v20 = v104;
    if (v103 <= v104 || v103 - v104 <= 3)
    {
      goto LABEL_132;
    }

    v22 = 0;
    while (1)
    {
      v23 = *(v102 + v20);
      v24 = v20 + 4;
      v104 = v20 + 4;
      if (v23 == 1651007859)
      {
        if (v19 <= v24)
        {
          goto LABEL_132;
        }

        v104 = v20 + 36;
        if (v20 + 36 > v19)
        {
          goto LABEL_132;
        }

        v25 = v102 + v24;
        v26 = v94;
        if (v94 >= v95)
        {
          v28 = (v94 - __p) >> 3;
          if ((v28 + 1) >> 61)
          {
            std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
          }

          v29 = (v95 - __p) >> 2;
          if (v29 <= v28 + 1)
          {
            v29 = v28 + 1;
          }

          if (v95 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          if (v30)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v30);
          }

          v31 = (8 * v28);
          *v31 = v25;
          v27 = 8 * v28 + 8;
          v32 = v31 - (v94 - __p);
          memcpy(v32, __p, v94 - __p);
          v33 = __p;
          __p = v32;
          v94 = v27;
          v95 = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v94 = v25;
          v27 = (v26 + 8);
        }

        v94 = v27;
        goto LABEL_40;
      }

      if (v23 != 1953656940)
      {
        break;
      }

      v22 = DeserialContext::deserializeCStringNoCopy(&v102, 0);
LABEL_40:
      v19 = v103;
      v20 = v104;
      if (v103 <= v104 || v103 - v104 <= 3)
      {
        goto LABEL_132;
      }
    }

    if (v23 != 1651078243)
    {
      goto LABEL_132;
    }

    v109[2] = v22;
    if (v19 <= v24)
    {
      goto LABEL_132;
    }

    if (v19 - v24 <= 3)
    {
      goto LABEL_132;
    }

    v35 = *(v102 + v24);
    v36 = v20 + 8;
    v104 = v36;
    if (v36 >= v19)
    {
      goto LABEL_132;
    }

    v104 = v36 + v35;
    if (v36 + v35 > v19)
    {
      goto LABEL_132;
    }

    v106 = 0;
    *&v107 = v35;
    *(&v107 + 1) = v102 + v36;
    *&v90 = 1;
    v37 = MTLCompilerObject::readModuleFromBinaryRequest(v85, &v106, this, &v90, 0, 0, 0);
    if (!v37)
    {
      (*(a6 + 16))(a6, 2 * (*(v85 + 64) != 0), 0, 0);
      goto LABEL_125;
    }

    __dst[0] = LLVMCreateMemoryBufferWithMemoryRange();
    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v96, __dst);
    v38 = v100;
    if (v100 >= v101)
    {
      v40 = (v100 - v99) >> 3;
      if ((v40 + 1) >> 61)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v41 = (v101 - v99) >> 2;
      if (v41 <= v40 + 1)
      {
        v41 = v40 + 1;
      }

      if (v101 - v99 >= 0x7FFFFFFFFFFFFFF8)
      {
        v42 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v42 = v41;
      }

      if (v42)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v99, v42);
      }

      v43 = (8 * v40);
      *v43 = v37;
      v39 = 8 * v40 + 8;
      v44 = v43 - (v100 - v99);
      memcpy(v44, v99, v100 - v99);
      v45 = v99;
      v99 = v44;
      v100 = v39;
      v101 = 0;
      if (v45)
      {
        operator delete(v45);
      }
    }

    else
    {
      *v100 = v37;
      v39 = (v38 + 8);
    }

    v100 = v39;
    ++v18;
  }

  while (v18 != v17);
LABEL_64:
  v46 = v104;
  if (v103 <= v104 || v103 - v104 <= 3)
  {
    goto LABEL_132;
  }

  v47 = *(v102 + v104);
  v48 = v104 + 4;
  v104 += 4;
  if (v47 == 1853189491)
  {
    if (v103 > v48 && v103 - v48 > 3)
    {
      v49 = *(v102 + v48);
      v104 = v46 + 8;
      goto LABEL_71;
    }

LABEL_132:
    abort();
  }

  v49 = 0;
LABEL_71:
  v90 = 0u;
  v91 = 0u;
  v92 = 1065353216;
  std::__hash_table<llvm::Function *,std::hash<llvm::Function *>,std::equal_to<llvm::Function *>,std::allocator<llvm::Function *>>::__rehash<true>(&v90, v49);
  if (v49)
  {
    do
    {
      v50 = v104;
      if (v103 <= v104 || v103 - v104 <= 3)
      {
        goto LABEL_132;
      }

      v52 = *(v102 + v104);
      v53 = v104 + 4;
      v104 += 4;
      if (v52 == 1634952050)
      {
        if (v103 <= v53 || v103 - v53 <= 3)
        {
          goto LABEL_132;
        }

        v55 = *(v102 + v53);
        v56 = v50 + 8;
        v104 = v56;
        if (v56 >= v103)
        {
          goto LABEL_132;
        }

        v104 = v56 + v55;
        if (v56 + v55 > v103)
        {
          goto LABEL_132;
        }

        v57 = (v102 + v56 + *(v102 + v56));
        v58 = (v57 + *(v57 - *v57 + 8));
        v59 = (v58 + *v58 + *(v58 + *v58 - *(v58 + *v58) + 6));
        v60 = (v59 + *v59 + *(v59 + *v59 - *(v59 + *v59) + 4));
        std::string::basic_string[abi:ne200100](__dst, v60 + *v60 + 4, *(v60 + *v60));
        __src = LLVMCreateMemoryBufferWithMemoryRange();
        std::__hash_table<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>>>::__emplace_unique_key_args<std::string,std::string,LLVMOpaqueMemoryBuffer *&>(&v90, __dst);
        if (v89 < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }

    while (--v49);
  }

  v61 = v104;
  if (v103 <= v104 || v103 - v104 <= 3)
  {
    goto LABEL_132;
  }

  v62 = *(v102 + v104);
  v63 = v104 + 4;
  v104 += 4;
  if (v62 == 1886676589)
  {
    v64 = v103 >= v63;
    v65 = v103 - v63;
    if (v65 == 0 || !v64 || v65 <= 3)
    {
      goto LABEL_132;
    }

    v63 = v61 + 8;
    v104 = v61 + 8;
  }

  if (v103 <= v63 || v103 - v63 <= 3)
  {
    goto LABEL_132;
  }

  v66 = *(v102 + v63);
  v67 = v63 + 4;
  v104 = v63 + 4;
  if (v66 != 1634888036)
  {
    goto LABEL_104;
  }

  if (v103 <= v67 || v103 - v67 <= 3)
  {
    goto LABEL_132;
  }

  v68 = *(v102 + v67);
  v69 = v63 + 8;
  v104 = v69;
  if (v68)
  {
    if (v69 >= v103)
    {
      goto LABEL_132;
    }

    v104 = v69 + v68;
    if (v69 + v68 > v103)
    {
      goto LABEL_132;
    }

    v70 = v102 + v69;
  }

  else
  {
LABEL_104:
    v70 = 0;
  }

  __src = 0;
  __dst[0] = 0;
  strlen(__s);
  LLVMCreateMemoryBufferWithMemoryRange();
  if (MTLCreateScript())
  {
    free(__src);
    __src = 0;
    v71 = *(v85 + 32);
    MTLGPUCompilerSetStitcherScript();
    v72 = *(v85 + 32);
    v73 = MTLGPUCompilerStitchFunctionsToBuffer() != 0;
  }

  else
  {
    MTLCompilerErrorObject::setFormattedErrorMessage((v85 + 64), "error while parsing script: %s", __src);
    free(__src);
    v73 = 0;
    __src = 0;
  }

  LLVMDisposeMemoryBuffer();
  if (v70)
  {
    v75 = v73;
  }

  else
  {
    v75 = 0;
  }

  if (v75)
  {
    v86 = 0;
    MTLCompilerObject::insertStitchedFunctionsIntoArchive(v85, v70, v74, __dst[0]);
  }

  v76 = v96;
  v77 = v97;
  while (v76 != v77)
  {
    v78 = *v76;
    LLVMDisposeMemoryBuffer();
    ++v76;
  }

  for (i = v91; i; i = *i)
  {
    v80 = i[5];
    LLVMDisposeMemoryBuffer();
  }

  if (v73)
  {
    v86 = 0;
    v81 = MTLCompilerObject::serializeLibraryToArchiveReply(v85, &v86, &__src, 1, 1, __dst[0], 0);
    if (__dst[0])
    {
      LLVMDisposeMemoryBuffer();
    }

    (*(a6 + 16))(a6, 0, v81, v86, 0);
    free(v81);
  }

  else
  {
    (*(a6 + 16))(a6, 2 * (*(v85 + 64) != 0), 0, 0);
  }

  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(&v90);
LABEL_125:
  if (__p)
  {
    v94 = __p;
    operator delete(__p);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(v105);
  v82 = *MEMORY[0x277D85DE8];
}

void sub_213C5BD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(&a22);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&a39);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::insertStitchedFunctionsIntoArchive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  v4 = 0u;
  v5 = 0u;
  v6 = 1065353216;
  MTLCompilerObject::extractFunctionsFromMetallib(a1, &v7);
}

void sub_213C5BFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::extractFunctionsFromMetallib(uint64_t a1, uint64_t *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  llvm::MemoryBufferRef::MemoryBufferRef();
  v3 = 0;
  operator new();
}

void sub_213C5C428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  llvm::SmallVector<std::string,4u>::~SmallVector(&a31);
  if ((a29 & 1) != 0 && a27)
  {
    (*(*a27 + 8))(a27);
  }

  (*(*v33 + 8))(v33);
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::invokeLoaderForSpecializedFunction(uint64_t a1, void **a2, uint64_t a3, unsigned int *a4, unint64_t a5, llvm::LLVMContext *a6, uint64_t a7)
{
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  if (a3)
  {
    MTLMetalLibGetFunctionNo();
    MTLMetalFunctionGetModule();
    Name = MTLMetalFunctionGetName();
    MEMORY[0x21604C780](__p, Name);
    llvm::CloneModule();
    v14 = v18;
    MTLMetalLibDestroy();
  }

  else
  {
    MEMORY[0x21604C780](__p, a4 + a4[22]);
    v14 = *a2;
  }

  *a4 |= 0xC000000u;
  v15 = MTLCompilerObject::invokeFunctionLoader(a1, a4, a5, a6, v14, 0, 0, a7);
  v16 = serializeModuleToBufferAsMetallib(v15, __p);
  if (v14 == *a2)
  {
    *a2 = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

void sub_213C5C6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::object::MetalLibObjectFile::moduleOfFunction@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  if (*(this + 70))
  {
    v7 = *(this + 408);
  }

  else
  {
    v5 = a2 - *(this + 280);
    v6 = *(*(this + 352) + (v5 >> 1));
    if (v6 == -1)
    {
      this = llvm::object::MetalLibObjectFile::materializeModuleForFunctionNo(this);
      v7 = v9;
      if (v9)
      {
        v8 = *(a3 + 8) | 1;
        goto LABEL_6;
      }

      v6 = *(*(v3 + 352) + 4 * (v5 >> 3));
    }

    v7 = *(v3 + 400) + 8 * v6;
  }

  v8 = *(a3 + 8) & 0xFE;
LABEL_6:
  *(a3 + 8) = v8;
  *a3 = v7;
  return this;
}

uint64_t MTLCompilerObject::insertFunctionInArchive(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a2[44];
  if (MTLGPUArchiverFromId())
  {
    v9 = a2[49];
    v8 = a2[50];
    LLVMCreateMemoryBufferWithMemoryRange();
    v11 = *(a3 + 8);
    v10 = *(a3 + 16);
    v12 = LLVMCreateMemoryBufferWithMemoryRange();
    v14 = 0u;
    v15 = 0u;
    v16 = 1065353216;
    MTLCompilerObject::extractFunctionsFromMetallib(v12, a4);
  }

  return 0;
}

void std::vector<CompileTimeData>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

void MTLCompilerObject::backendCompileStatelessRequest(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v38 = 0u;
  v39 = 0;
  memset(v37, 0, 24);
  v37[3] = -1;
  v40 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v36 = 0;
  v30 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  v28 = 0;
  v29 = 0;
  v4 = **(a2 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "MTLStatelessBackendCompileRequest");
  if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
  {
    MTLCompilerObject::buildSpecializedFunctionRequest();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1 + 80;
    if (*(a1 + 103) < 0)
    {
      v5 = *(a1 + 80);
    }

    v6 = __p;
    if (DiagnosticContext < 0)
    {
      v6 = __p[0];
    }

    v7 = "dynamic library";
    *buf = 136446722;
    if ((v4 & 0x40000000) == 0)
    {
      v7 = "visible function";
    }

    *v51 = v5;
    *&v51[8] = 2082;
    *&v51[10] = v6;
    *&v51[18] = 2080;
    *&v52 = v7;
    _os_log_impl(&dword_213BCC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", buf, 0x20u);
  }

  v8 = mach_absolute_time();
  if (SHIBYTE(DiagnosticContext) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x21604B680](v25);
  __p[0] = v25;
  DiagnosticContext = llvm::LLVMContext::getDiagnosticContext(v25);
  __p[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v25);
  v9 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  *buf = 0;
  *&v51[4] = 0u;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  MTLCompilerObject::getReadParametersFromRequest(v9, buf, *a2, *(a2 + 8), (*(a2 + 32) + 88), *(a2 + 32));
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(a1, buf, v25, (a2 + 40), &v45, &v45 + 1, 0);
  *(a2 + 48) = ModuleFromBinaryRequest;
  if (!ModuleFromBinaryRequest)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(a1 + 64) != 0), 0, 0);
LABEL_33:
    ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
    llvm::LLVMContext::~LLVMContext(v25);
    goto LABEL_34;
  }

  if ((MTLCompilerObject::runFrameworkPasses(a1, a2, v37, v25) & 1) == 0)
  {
    if (v45)
    {
      free(v45);
    }

    goto LABEL_33;
  }

  MTLCompilerObject::backendCompileModule(a1, a2, v31, v11, &v28);
  v12 = *(a2 + 32);
  if ((*(v12 + 5) & 2) != 0)
  {
    if ((v29 - v28) >> 4 == -2)
    {
      v13 = 0;
    }

    else
    {
      v13 = 12 * (((v29 - v28) >> 4) + 2) + 4;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  v24 = 0;
  if ((*(v12 + 2) & 0x80) != 0)
  {
    v15 = *a2;
    v16 = *(v12 + 176);
    v14 = MTLGPUArchiverFromId();
    v23 = v14;
    if (!v14 || !MTLCompilerObject::storeToBinaryArchive(a1, *(a2 + 32), *(a2 + 8), buf, v31, *(a2 + 40), v37, &v23, &v24))
    {
      (*(*(a2 + 24) + 16))();
      if (v45)
      {
        free(v45);
      }

      free(v24);
      MTLGPUArchiverDestroy();
      goto LABEL_33;
    }
  }

  MTLCompilerObject::serializeBackendCompilationOutput(a1, *(a2 + 16), a2, v37, v31, &v28, v8, v13);
  if (v14)
  {
    MTLGPUArchiverDestroy();
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
  llvm::LLVMContext::~LLVMContext(v25);
  if (v45)
  {
    free(v45);
    v45 = 0uLL;
  }

LABEL_34:
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  for (i = 22; i != 19; --i)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](&v37[i], 0);
  }

  v18 = v46;
  *&v46 = 0;
  if (v18)
  {
    free(v18);
  }

  v19 = v40;
  v40 = 0;
  if (v19)
  {
    free(v19);
  }

  v20 = v38;
  *&v38 = 0;
  if (v20)
  {
    free(v20);
  }

  v21 = v37[0];
  v37[0] = 0;
  if (v21)
  {
    free(v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

BOOL MTLCompilerObject::storeToBinaryArchive(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t *a8, char **a9)
{
  v88 = *MEMORY[0x277D85DE8];
  *a9 = 0;
  v15 = (a2 + *(a2 + 196));
  v16 = strncmp(v15 + 4, "AIRP", 4uLL);
  if (v16)
  {
    v80 = 0;
    v78 = 0;
  }

  else
  {
    v17 = &v15[*v15];
    LODWORD(v78) = getRequiredStagesPresentMask(v17);
    v18.i32[0] = v78;
    v19 = vaddlv_u8(vcnt_s8(v18));
    v20 = (v17 - *v17);
    if (*v20 >= 9u && (v21 = v20[4]) != 0)
    {
      HIDWORD(v78) = *(v17 + v21);
    }

    else
    {
      HIDWORD(v78) = 0;
    }

    v80 = v19;
  }

  v22 = *(a2 + 200);
  LLVMCreateMemoryBufferWithMemoryRange();
  v24 = *(a4 + 8);
  v23 = *(a4 + 16);
  v25 = LLVMCreateMemoryBufferWithMemoryRange();
  v84 = 0u;
  v85 = 0u;
  v86 = 1065353216;
  v26 = (*(a2 + 160) + *(a2 + 144));
  if (v16)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26 == 0;
  }

  v28 = !v27;
  if (!v27)
  {
    MTLCompilerObject::readVisibleFunctions(v25, a2, a3, &v84);
  }

  v83 = a5[1];
  if (a6 == 2 && a7[5])
  {
    v29 = *a5;
    v30 = a7[4];
    _MTLEncodeLinkingInfo();
  }

  v79 = a6;
  v31 = *a5;
  LLVMCreateMemoryBufferWithMemoryRange();
  v33 = *(a2 + 184);
  v32 = *(a2 + 188);
  v34 = *(a2 + 192);
  v35 = *a8;
  v36 = *(a2 + 208);
  v81 = MTLGPUArchiverAddUnit();
  if (v16)
  {
    v37 = 0;
  }

  else
  {
    v38 = malloc_type_malloc(0x30uLL, 0x102204031A510F6uLL);
    v37 = v38;
    v39 = *(a2 + 276);
    if (v39)
    {
      memcpy(v38, (a2 + *(a2 + 272)), v39);
    }

    else
    {
      *(v38 + 4) = -1;
      *&v40 = -1;
      *(&v40 + 1) = -1;
      *v38 = v40;
      v38[1] = v40;
      *(v38 + 10) = HIDWORD(v78);
      *(v38 + 45) = 0;
      *(v38 + 44) = v80;
    }
  }

  if (!v81)
  {
    v44 = 0;
    v58 = 0;
    goto LABEL_96;
  }

  v41 = a2 + v32;
  v42 = *a8;
  v43 = MTLGPUArchiverSetUnitHash();
  if (v16 || !v43 || !v26)
  {
    v44 = 0;
    if (!v43)
    {
      v58 = 0;
      v56 = v37;
      goto LABEL_55;
    }

    v56 = v37;
    v57 = v79;
LABEL_43:
    if (a7[21] && a7[22])
    {
      v59 = *a8;
      v58 = MTLGPUArchiverSetUnitReflection() != 0;
      v56 = v37;
      v57 = v79;
      if (v16)
      {
LABEL_55:
        if (!v56)
        {
          goto LABEL_58;
        }

LABEL_92:
        v71 = a7[18];
        a7[18] = v56;
        if (v71)
        {
          free(v71);
        }

        v62 = 48;
        goto LABEL_95;
      }
    }

    else
    {
      v58 = 1;
      if (v16)
      {
        goto LABEL_55;
      }
    }

    if (!v58)
    {
      goto LABEL_55;
    }

    if (v57 <= 2)
    {
      v60 = v78;
      if (v57 != 1)
      {
        if (v57 == 2)
        {
          *(v56 + 3) = v81;
          v61 = *(v56 + 45) | 1;
          goto LABEL_66;
        }

LABEL_78:
        v58 = 0;
        *a9 = strdup("Unsupported function or pipeline type");
        v61 = *(v56 + 45);
        goto LABEL_67;
      }

      *v56 = v81;
    }

    else
    {
      v60 = v78;
      switch(v57)
      {
        case 3:
          *(v56 + 4) = v81;
          break;
        case 7:
          *(v56 + 1) = v81;
          break;
        case 8:
          *(v56 + 2) = v81;
          v61 = *(v56 + 45) | 4;
LABEL_66:
          *(v56 + 45) = v61;
          v58 = 1;
LABEL_67:
          v63 = *(v56 + 44) - 1;
          *(v56 + 44) = v63;
          if (!v58 || v63 || v60 != v61)
          {
            goto LABEL_92;
          }

          *(v56 + 45) = v61 | 0x10;
          if (SHIDWORD(v78) > 2)
          {
            if (HIDWORD(v78) == 3)
            {
              goto LABEL_73;
            }

            if (HIDWORD(v78) != 4)
            {
              goto LABEL_79;
            }

            v65 = malloc_type_malloc(0x18uLL, 0x2004093837F09uLL);
            v64 = v65;
            if ((v60 & 4) != 0)
            {
              v66 = *(v56 + 2);
            }

            else
            {
              v66 = 0;
            }

            *v65 = v66;
            if (v60)
            {
              v69 = *(v56 + 3);
            }

            else
            {
              v69 = 0;
            }

            v65[2] = v69;
            v65[1] = *(v56 + 1);
          }

          else
          {
            if (HIDWORD(v78) != 1)
            {
              if (HIDWORD(v78) == 2)
              {
LABEL_73:
                v64 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
                *v64 = v81;
                goto LABEL_90;
              }

LABEL_79:
              v64 = 0;
              *a9 = strdup("Unsupported function or pipeline type");
              goto LABEL_90;
            }

            v67 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
            v64 = v67;
            if (v60)
            {
              v68 = *(v56 + 3);
            }

            else
            {
              v68 = 0;
            }

            v67[1] = v68;
            *v67 = *v56;
          }

LABEL_90:
          v70 = *a8;
          v58 = MTLGPUArchiverAddPipeline() != 0;
          if (v64)
          {
            free(v64);
          }

          goto LABEL_92;
        default:
          goto LABEL_78;
      }
    }

    v61 = *(v56 + 45) | 2;
    goto LABEL_66;
  }

  v44 = malloc_type_malloc(8 * v26, 0x2004093837F09uLL);
  v77 = v28;
  v76 = a7;
  if (!*(v41 + 4) && v33 >= 2)
  {
    v45 = 0;
    v46 = (v34 + a2 + 32);
    v47 = 2;
    do
    {
      v48 = v46[1];
      v87[0] = *v46;
      v87[1] = v48;
      v49 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(&v84, v87);
      if (v49)
      {
        v50 = v49[6];
        v52 = *(v50 + 8);
        v51 = *(v50 + 16);
        v44[v45++] = LLVMCreateMemoryBufferWithMemoryRange();
      }

      v46 += 2;
      if (*(v41 + 4 * v47))
      {
        v53 = 1;
      }

      else
      {
        v53 = v47 >= v33;
      }

      ++v47;
    }

    while (!v53);
  }

  v54 = *a8;
  v55 = MTLGPUArchiverAddLinkedModules();
  a7 = v76;
  v56 = v37;
  v57 = v79;
  if (v55)
  {
    v28 = v77;
    goto LABEL_43;
  }

  v58 = 0;
  v28 = v77;
  if (v37)
  {
    goto LABEL_92;
  }

LABEL_58:
  v62 = 0;
LABEL_95:
  a7[19] = v62;
LABEL_96:
  LLVMDisposeMemoryBuffer();
  LLVMDisposeMemoryBuffer();
  LLVMDisposeMemoryBuffer();
  if (v28)
  {
    do
    {
      v72 = *v44;
      LLVMDisposeMemoryBuffer();
      ++v44;
      --v26;
    }

    while (v26);
    for (i = v85; i; i = *i)
    {
      free(i[6]);
    }
  }

  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(&v84);
  v74 = *MEMORY[0x277D85DE8];
  return v58;
}

void sub_213C5D55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::__unordered_map_hasher<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::hash<llvm::DISubprogram *>,std::equal_to<llvm::DISubprogram *>,true>,std::__unordered_map_equal<llvm::DISubprogram *,std::__hash_value_type<llvm::DISubprogram *,unsigned int>,std::equal_to<llvm::DISubprogram *>,std::hash<llvm::DISubprogram *>,true>,std::allocator<std::__hash_value_type<llvm::DISubprogram *,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::runKernelPasses(MTLCompilerObject *a1, uint64_t a2)
{
  if (*(*(a2 + 32) + 28) < 0xCu)
  {
    return 1;
  }

  result = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(a1, a2);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(MTLCompilerObject *this, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a2 + *(v4 + 24);
  v6 = *(v5 + 8);
  if (v6)
  {
    if ((v6 & 0x20) != 0)
    {
      v10 = 20;
    }

    else
    {
      v10 = 12;
    }

    MTLCompilerObject::validateSerializedVertexDescriptor(this, (v5 + v10), *(v4 + 28));
    if ((*(v5 + 8) & 4) == 0)
    {
      __p = 0;
      v16 = 0;
      v17 = 0;
      v11 = *(this + 72);
      v12 = (this + 64);
      v19 = v12;
      v20 = v11;
      if (!MTLAddVertexFetchingToModulePass::addVertexFetchingToModule(&v19, *(a2 + 48), 1, (v5 + v10), 0, 0, 0, 0, v11, v11, *(*(a2 + 32) + 4), &__p))
      {
        if (*(a2 + 48))
        {
          v14 = MEMORY[0x21604BFC0]();
          MEMORY[0x21604C990](v14, 0x10B2C407FF26C1CLL);
        }

        *(a2 + 48) = 0;
        (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*v12 != 0), 0, 0);
        if (__p)
        {
          v16 = __p;
          operator delete(__p);
        }

        return 0;
      }

      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }
    }

    return 1;
  }

  if ((v6 & 4) != 0)
  {
    return 1;
  }

  v7 = *(a2 + 48);
  __p = "air.kernel";
  v18 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v7, &__p);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  if (MTLCompilerObject::checkNoStageInAttributes(this, Operand))
  {
    return 1;
  }

  (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(this + 8) != 0), 0, 0);
  return 0;
}

void sub_213C5D77C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::generateAIRReflectionType(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((*(result + 72) & 1) == 0)
  {
    v7 = *(a2 + 48);
    v8 = MTLWriteAIRReflectionToMemoryBuffer();

    return std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((a3 + 8 * a4 + 160), v8);
  }

  return result;
}

void *deserializePluginDataForFunctionType<MTLSerializedStatelessFunctionData>(void *result, uint64_t a2)
{
  v2 = result[4];
  if (*(v2 + 28) >= 0x2Cu)
  {
    v4 = (*result + *(v2 + 24));
    v5 = *v4;
    if (v5)
    {
      result = MTLDeserializePluginDataDictionary(&v4[v5]);
      *(a2 + 112) = result;
    }

    v6 = *(v4 + 1);
    if (v6)
    {
      result = MTLDeserializePluginDataDictionary(&v4[v6]);
      *(a2 + 120) = result;
    }
  }

  return result;
}

void MTLCompilerObject::FragmentVaryingsInfo::~FragmentVaryingsInfo(char **this)
{
  std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy((this + 6), this[7]);
  v2 = this[3];
  if (v2)
  {
    this[4] = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void MTLCompilerObject::addDebugInstrumentationToModule(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v5 = a3[1];
  if ((atomic_load_explicit(&qword_281130250, memory_order_acquire) & 1) == 0)
  {
    MTLCompilerObject::addDebugInstrumentationToModule();
  }

  if ((atomic_load_explicit(&qword_281130258, memory_order_acquire) & 1) == 0)
  {
    MTLCompilerObject::addDebugInstrumentationToModule();
  }

  v7 = [objc_msgSend(a3[14] objectForKeyedSubscript:{@"MTLBoundsCheck::Options", "bytes"}];
  v14 = strlen((*(a2 + 32) + *(*(a2 + 32) + 280)));
  if (llvm::StringRef::find() == -1)
  {
    if (llvm::StringRef::find() == -1)
    {
      goto LABEL_10;
    }

    v8 = *(v7 + 20) & 0xFFFFFFE9FEDFFBFELL | 1;
  }

  else
  {
    v8 = *(v7 + 20) | 0x1000000000;
  }

  *(v7 + 20) = v8;
LABEL_10:
  if (MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions != *v7 || *(&MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions + 1) != *(v7 + 8) || qword_27C8E92B8 != *(v7 + 16) || dword_27C8E92C0 != *(v7 + 24))
  {
    v12 = *v7;
    *(&MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions + 12) = *(v7 + 12);
    MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions = v12;
  }

  v13 = a3[15];
  MTLUpdateBoundsRunPipeline();
}

void sub_213C5DE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::unique_ptr<llvm::Module>::reset[abi:ne200100](va, 0);
  llvm::SMDiagnostic::~SMDiagnostic(va1);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::AIRNTGetVertexFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneVertexFunctionDescriptor<Air::VertexFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 1);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneVertexFunctionDescriptor<Air::VertexFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x2Fu && (v7 = v6[23]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x2Du && *(a2 + v5 + 44))
  {
    v9 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 44) + *(a2 + *(a2 + v5 + 44))));
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + v5) >= 0x1Fu && *(a2 + v5 + 30))
  {
    v70 = (a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30)));
    v10 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneVertexFunctionDescriptorINS3_24VertexFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39VertexFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v70, &v70, a1);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 7u && *(a2 + v5 + 6))
  {
    v11 = Air::CloneVertexDescriptor<Air::VertexDescriptor>(a1, (a2 + *(a2 + v5 + 6) + *(a2 + *(a2 + v5 + 6))));
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = (a2 + v5);
  if (*v16 >= 0x1Bu)
  {
    v17 = v16[13];
    if (v17)
    {
      v12 = *(a2 + v17);
    }

    else
    {
      v12 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 26, v12, 1);
  v18 = (a2 - *a2);
  if (*v18 >= 0xDu && (v19 = v18[6]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 16;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v20, 16);
  v21 = (a2 - *a2);
  if (*v21 >= 5u && (v22 = v21[2]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 4, v23, 1);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 46, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 44, v9);
  }

  v24 = (a2 - *a2);
  if (*v24 >= 0x29u && (v25 = v24[20]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 40, v26, 0);
  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v11);
  }

  v27 = (a2 - *a2);
  v29 = *v27 >= 0x2Bu && (v28 = v27[21]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, v29, 0);
  v30 = (a2 - *a2);
  if (*v30 >= 0x27u && (v31 = v30[19]) != 0)
  {
    v32 = *(a2 + v31);
  }

  else
  {
    v32 = 255;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, v32, 255);
  v33 = (a2 - *a2);
  if (*v33 >= 0x25u && (v34 = v33[18]) != 0)
  {
    v35 = *(a2 + v34);
    if (v35 >= 3)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, v35, 0);
  v36 = (a2 - *a2);
  v38 = *v36 >= 0x23u && (v37 = v36[17]) != 0 && *(a2 + v37) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, v38, 0);
  v39 = (a2 - *a2);
  if (*v39 >= 0x21u && (v40 = v39[16]) != 0)
  {
    v41 = *(a2 + v40);
    if (v41 >= 2)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, v41, 0);
  v42 = (a2 - *a2);
  if (*v42 >= 0x1Du && (v43 = v42[14]) != 0)
  {
    v44 = *(a2 + v43);
    if (v44 >= 2)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v44 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 28, v44, 0);
  v45 = (a2 - *a2);
  if (*v45 >= 0x19u && (v46 = v45[12]) != 0)
  {
    v47 = *(a2 + v46);
    if (v47 >= 4)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v47 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v47, 0);
  v48 = (a2 - *a2);
  if (*v48 >= 0x17u && (v49 = v48[11]) != 0)
  {
    v50 = *(a2 + v49);
    if (v50 >= 2)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v50 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v50, 0);
  v51 = (a2 - *a2);
  if (*v51 >= 0x15u && (v52 = v51[10]) != 0)
  {
    v53 = *(a2 + v52);
    if (v53 >= 4)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v53 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v53, 0);
  v54 = (a2 - *a2);
  if (*v54 >= 0x13u && (v55 = v54[9]) != 0)
  {
    v56 = *(a2 + v55);
    if (v56 >= 3)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v56 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v56, 0);
  v57 = (a2 - *a2);
  if (*v57 >= 0x11u && (v58 = v57[8]) != 0)
  {
    v59 = *(a2 + v58);
    if (v59 >= 2)
    {
LABEL_100:
      abort();
    }
  }

  else
  {
    v59 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v59, 0);
  v60 = (a2 - *a2);
  v62 = *v60 >= 0xFu && (v61 = v60[7]) != 0 && *(a2 + v61) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v62, 0);
  v63 = (a2 - *a2);
  if (*v63 >= 0xBu && (v64 = v63[5]) != 0)
  {
    v65 = *(a2 + v64);
    if (v65 >= 4)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v65 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v65, 0);
  v66 = (a2 - *a2);
  v68 = *v66 < 9u || (v67 = v66[4]) == 0 || *(a2 + v67) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v68, 1);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t MTLCompilerObject::AIRNTGetFragmentFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneFragmentFunctionDescriptor<Air::FragmentFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneFragmentFunctionDescriptor<Air::FragmentFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x3Bu && (v7 = v6[29]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x37u && *(a2 + v5 + 54))
  {
    v9 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 54) + *(a2 + *(a2 + v5 + 54))));
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  if (*(a2 + v5) >= 0x1Du && *(a2 + v5 + 28))
  {
    v90 = (a2 + *(a2 + v5 + 28) + *(a2 + *(a2 + v5 + 28)));
    v10 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v90, &v90, a1);
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x17u && *(a2 + v5 + 22))
  {
    v90 = (a2 + *(a2 + v5 + 22) + *(a2 + *(a2 + v5 + 22)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air33FragmentColorAttachmentDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v90, &v90, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = (a2 + v5);
  if (*v15 >= 0x11u && (v16 = v15[8]) != 0)
  {
    v17 = *(a2 + v16);
  }

  else
  {
    v17 = -1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, v17, -1);
  v18 = (a2 - *a2);
  if (*v18 >= 0xFu && (v19 = v18[7]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v20, 0);
  v21 = (a2 - *a2);
  if (*v21 >= 0xDu && (v22 = v21[6]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 1;
  }

  v24 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v23, 1);
  v25 = (a2 - *a2);
  if (*v25 >= 5u)
  {
    v26 = v25[2];
    if (v26)
    {
      v24 = *(a2 + v26);
    }

    else
    {
      v24 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 4, v24, 1);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 58, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 54, v9);
  }

  v27 = (a2 - *a2);
  if (*v27 >= 0x35u && (v28 = v27[26]) != 0)
  {
    v29 = *(a2 + v28);
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 52, v29, 0);
  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v11);
  }

  v30 = (a2 - *a2);
  v31 = 1.0;
  if (*v30 >= 0x13u)
  {
    v32 = v30[9];
    if (v32)
    {
      v31 = *(a2 + v32);
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 18, v31, 1.0);
  v33 = (a2 - *a2);
  if (*v33 >= 0x1Bu && (v34 = v33[13]) != 0)
  {
    v35 = *(a2 + v34);
  }

  else
  {
    v35 = 0;
  }

  v36 = Air::ClonePixelFormat<Air::PixelFormat>(v35);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 26, v36, 0);
  v37 = (a2 - *a2);
  if (*v37 >= 0x19u && (v38 = v37[12]) != 0)
  {
    v39 = *(a2 + v38);
  }

  else
  {
    v39 = 0;
  }

  v40 = Air::ClonePixelFormat<Air::PixelFormat>(v39);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 24, v40, 0);
  v41 = (a2 - *a2);
  if (*v41 >= 0x39u && (v42 = v41[28]) != 0)
  {
    v43 = *(a2 + v42);
    if (v43 >= 2)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v43 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 56, v43, 0);
  v44 = (a2 - *a2);
  v46 = *v44 >= 0x33u && (v45 = v44[25]) != 0 && *(a2 + v45) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 50, v46, 0);
  v47 = (a2 - *a2);
  v49 = *v47 >= 0x31u && (v48 = v47[24]) != 0 && *(a2 + v48) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 48, v49, 0);
  v50 = (a2 - *a2);
  v52 = *v50 >= 0x2Fu && (v51 = v50[23]) != 0 && *(a2 + v51) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 46, v52, 0);
  v53 = (a2 - *a2);
  v55 = *v53 >= 0x2Du && (v54 = v53[22]) != 0 && *(a2 + v54) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 44, v55, 0);
  v56 = (a2 - *a2);
  if (*v56 >= 0x2Bu && (v57 = v56[21]) != 0)
  {
    v58 = *(a2 + v57);
    if (v58 >= 8)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v58 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, v58, 0);
  v59 = (a2 - *a2);
  v61 = *v59 >= 0x29u && (v60 = v59[20]) != 0 && *(a2 + v60) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 40, v61, 0);
  v62 = (a2 - *a2);
  if (*v62 >= 0x27u && (v63 = v62[19]) != 0)
  {
    v64 = *(a2 + v63);
    if (v64 >= 0x10)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v64 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, v64, 0);
  v65 = (a2 - *a2);
  v67 = *v65 >= 0x25u && (v66 = v65[18]) != 0 && *(a2 + v66) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, v67, 0);
  v68 = (a2 - *a2);
  if (*v68 >= 0x23u && (v69 = v68[17]) != 0)
  {
    v70 = *(a2 + v69);
    if (v70 >= 3)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v70 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, v70, 0);
  v71 = (a2 - *a2);
  v73 = *v71 >= 0x21u && (v72 = v71[16]) != 0 && *(a2 + v72) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, v73, 0);
  v74 = (a2 - *a2);
  if (*v74 >= 0x1Fu && (v75 = v74[15]) != 0)
  {
    v76 = *(a2 + v75);
    if (v76 >= 2)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v76 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 30, v76, 0);
  v77 = (a2 - *a2);
  v79 = *v77 >= 0x15u && (v78 = v77[10]) != 0 && *(a2 + v78) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v79, 0);
  v80 = (a2 - *a2);
  if (*v80 >= 0xBu && (v81 = v80[5]) != 0)
  {
    v82 = *(a2 + v81);
    if (v82 >= 2)
    {
LABEL_121:
      abort();
    }
  }

  else
  {
    v82 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v82, 0);
  v83 = (a2 - *a2);
  if (*v83 >= 9u && (v84 = v83[4]) != 0)
  {
    v85 = *(a2 + v84);
    if (v85 >= 2)
    {
      goto LABEL_121;
    }
  }

  else
  {
    v85 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v85, 0);
  v86 = (a2 - *a2);
  v88 = *v86 < 7u || (v87 = v86[3]) == 0 || *(a2 + v87) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v88, 1);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t MTLCompilerObject::AIRNTGetComputeFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneComputeFunctionDescriptor<Air::ComputeFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 3);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneComputeFunctionDescriptor<Air::ComputeFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x1Bu && (v7 = v6[13]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x19u && *(a2 + v5 + 24))
  {
    VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24))), a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x17u && *(a2 + v5 + 22))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 22) + *(a2 + *(a2 + v5 + 22))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0xDu && *(a2 + v5 + 12))
  {
    v38 = (a2 + *(a2 + v5 + 12) + *(a2 + *(a2 + v5 + 12)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_30CloneComputeFunctionDescriptorINS3_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v38, &v38, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + v5) >= 0xBu && *(a2 + v5 + 10))
  {
    v12 = Air::CloneStageInputOutputDescriptor<Air::StageInputOutputDescriptor>(a1, (a2 + *(a2 + v5 + 10) + *(a2 + *(a2 + v5 + 10))));
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  v13 = 1;
  *(a1 + 70) = 1;
  v14 = (a2 + v5);
  if (*v14 >= 9u)
  {
    v15 = v14[4];
    if (v15)
    {
      v13 = *(a2 + v15);
    }

    else
    {
      v13 = 1;
    }
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v13, 1);
  v19 = (a2 - *a2);
  if (*v19 >= 7u && (v20 = v19[3]) != 0)
  {
    v21 = *(a2 + v20);
  }

  else
  {
    v21 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v21, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 26, v8);
  }

  if (VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 24, VectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 12, v11);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v12);
  }

  v22 = (a2 - *a2);
  v24 = *v22 >= 0x15u && (v23 = v22[10]) != 0 && *(a2 + v23) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v24, 0);
  v25 = (a2 - *a2);
  if (*v25 >= 0x13u && (v26 = v25[9]) != 0)
  {
    v27 = *(a2 + v26);
    if (v27 >= 3)
    {
LABEL_55:
      abort();
    }
  }

  else
  {
    v27 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v27, 0);
  v28 = (a2 - *a2);
  v30 = *v28 >= 0x11u && (v29 = v28[8]) != 0 && *(a2 + v29) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v30, 0);
  v31 = (a2 - *a2);
  if (*v31 >= 0xFu && (v32 = v31[7]) != 0)
  {
    v33 = *(a2 + v32);
    if (v33 >= 2)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v33 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v33, 0);
  v34 = (a2 - *a2);
  v36 = *v34 >= 5u && (v35 = v34[2]) != 0 && *(a2 + v35) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v36, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v18 - v17 + v16);
}

uint64_t MTLCompilerObject::AIRNTGetTileFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneTileFunctionDescriptor<Air::TileFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 4);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneTileFunctionDescriptor<Air::TileFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x1Bu && (v7 = v6[13]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x19u && *(a2 + v5 + 24))
  {
    VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24))), a2 + *(a2 + v5 + 24) + *(a2 + *(a2 + v5 + 24)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x17u && *(a2 + v5 + 22))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 22) + *(a2 + *(a2 + v5 + 22))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x11u && *(a2 + v5 + 16))
  {
    v38 = (a2 + *(a2 + v5 + 16) + *(a2 + *(a2 + v5 + 16)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v38, &v38, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + v5) >= 0xFu && *(a2 + v5 + 14))
  {
    v38 = (a2 + *(a2 + v5 + 14) + *(a2 + *(a2 + v5 + 14)));
    v12 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air29TileColorAttachmentDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v38, &v38, a1);
    v5 = -*a2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = (a2 + v5);
  if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
  {
    v15 = *(a2 + v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v37 = *(a1 + 40);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v15, 0);
  v18 = (a2 - *a2);
  if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 1;
  }

  v21 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v20, 1);
  v22 = (a2 - *a2);
  if (*v22 >= 9u)
  {
    v23 = v22[4];
    if (v23)
    {
      v21 = *(a2 + v23);
    }

    else
    {
      v21 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v21, 1);
  v24 = (a2 - *a2);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v26, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 26, v8);
  }

  if (VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 24, VectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 16, v11);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 14, v12);
  }

  v27 = (a2 - *a2);
  if (*v27 >= 0x15u && (v28 = v27[10]) != 0)
  {
    v29 = *(a2 + v28);
    if (v29 >= 3)
    {
      abort();
    }
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v29, 0);
  v30 = (a2 - *a2);
  v32 = *v30 >= 0x13u && (v31 = v30[9]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v32, 0);
  v33 = (a2 - *a2);
  v35 = *v33 >= 5u && (v34 = v33[2]) != 0 && *(a2 + v34) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v35, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v17 - v16 + v37);
}

uint64_t MTLCompilerObject::AIRNTGetObjectFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneObjectFunctionDescriptor<Air::ObjectFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 7);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneObjectFunctionDescriptor<Air::ObjectFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x21u && (v7 = v6[16]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x1Fu && *(a2 + v5 + 30))
  {
    VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30))), a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x1Du && *(a2 + v5 + 28))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 28) + *(a2 + *(a2 + v5 + 28))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x13u && *(a2 + v5 + 18))
  {
    v49 = (a2 + *(a2 + v5 + 18) + *(a2 + *(a2 + v5 + 18)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneObjectFunctionDescriptorINS3_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v49, &v49, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = (a2 + v5);
  if (*v16 >= 0xFu)
  {
    v17 = v16[7];
    if (v17)
    {
      v12 = *(a2 + v17);
    }

    else
    {
      v12 = 1;
    }
  }

  v18 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v12, 1);
  v19 = (a2 - *a2);
  if (*v19 >= 0xDu)
  {
    v20 = v19[6];
    if (v20)
    {
      v18 = *(a2 + v20);
    }

    else
    {
      v18 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, v18, 1);
  v21 = (a2 - *a2);
  if (*v21 >= 0xBu && (v22 = v21[5]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v23, 0);
  v24 = (a2 - *a2);
  if (*v24 >= 9u && (v25 = v24[4]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v26, 0);
  v27 = (a2 - *a2);
  if (*v27 >= 7u && (v28 = v27[3]) != 0)
  {
    v29 = *(a2 + v28);
  }

  else
  {
    v29 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v29, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 32, v8);
  }

  if (VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, VectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, v11);
  }

  v30 = (a2 - *a2);
  v32 = *v30 >= 0x1Bu && (v31 = v30[13]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, v32, 0);
  v33 = (a2 - *a2);
  if (*v33 >= 0x19u && (v34 = v33[12]) != 0)
  {
    v35 = *(a2 + v34);
    if (v35 >= 3)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v35, 0);
  v36 = (a2 - *a2);
  v38 = *v36 >= 0x17u && (v37 = v36[11]) != 0 && *(a2 + v37) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v38, 0);
  v39 = (a2 - *a2);
  if (*v39 >= 0x15u && (v40 = v39[10]) != 0)
  {
    v41 = *(a2 + v40);
    if (v41 >= 2)
    {
LABEL_66:
      abort();
    }
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v41, 0);
  v42 = (a2 - *a2);
  if (*v42 >= 0x11u && (v43 = v42[8]) != 0)
  {
    v44 = *(a2 + v43);
    if (v44 >= 2)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v44 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v44, 0);
  v45 = (a2 - *a2);
  v47 = *v45 >= 5u && (v46 = v45[2]) != 0 && *(a2 + v46) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v47, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t MTLCompilerObject::AIRNTGetMeshFunctionScript(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = Air::CloneMeshFunctionDescriptor<Air::MeshFunctionDescriptor>(a3, a4);
  v7 = (a2 - *a2);
  v8 = *v7;
  if (v8 >= 5 && v7[2])
  {
    v9 = (a2 + v7[2]);
  }

  else
  {
    v9 = 0;
  }

  if (v8 >= 7 && (v10 = v7[3]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  *(a3 + 70) = 1;
  v12 = *(a3 + 40);
  v13 = *(a3 + 32) - *(a3 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a3, 10, v6);
  flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(a3, 4, v9);
  v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a3, 8);
  flatbuffers::FlatBufferBuilder::TrackField(a3, 8, v14);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 6, v11, 0);
  v15 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 + v12);
  flatbuffers::FlatBufferBuilder::Finish(a3, v15, "AIRF", 0);
  return *(a3 + 48) + **(a3 + 48);
}

uint64_t Air::CloneMeshFunctionDescriptor<Air::MeshFunctionDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 0x23u && (v7 = v6[17]) != 0)
  {
    v8 = Air::CloneFunctionOptions<Air::FunctionOptions>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 0x21u && *(a2 + v5 + 32))
  {
    VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(a1, *(a2 + *(a2 + v5 + 32) + *(a2 + *(a2 + v5 + 32))), a2 + *(a2 + v5 + 32) + *(a2 + *(a2 + v5 + 32)));
    v5 = -*a2;
  }

  else
  {
    VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1 = 0;
  }

  if (*(a2 + v5) >= 0x1Fu && *(a2 + v5 + 30))
  {
    v10 = Air::CloneLinkedFunctions<Air::LinkedFunctions>(a1, (a2 + *(a2 + v5 + 30) + *(a2 + *(a2 + v5 + 30))));
    v5 = -*a2;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + v5) >= 0x13u && *(a2 + v5 + 18))
  {
    v52 = (a2 + *(a2 + v5 + 18) + *(a2 + *(a2 + v5 + 18)));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneMeshFunctionDescriptorINS3_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v52, &v52, a1);
    v5 = -*a2;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = (a2 + v5);
  if (*v16 >= 0xFu)
  {
    v17 = v16[7];
    if (v17)
    {
      v12 = *(a2 + v17);
    }

    else
    {
      v12 = 1;
    }
  }

  v18 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, v12, 1);
  v19 = (a2 - *a2);
  if (*v19 >= 0xBu)
  {
    v20 = v19[5];
    if (v20)
    {
      v18 = *(a2 + v20);
    }

    else
    {
      v18 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 10, v18, 1);
  v21 = (a2 - *a2);
  if (*v21 >= 9u && (v22 = v21[4]) != 0)
  {
    v23 = *(a2 + v22);
  }

  else
  {
    v23 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v23, 0);
  v24 = (a2 - *a2);
  if (*v24 >= 7u && (v25 = v24[3]) != 0)
  {
    v26 = *(a2 + v25);
  }

  else
  {
    v26 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v26, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 34, v8);
  }

  if (VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 32, VectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1);
  }

  if (v10)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 30, v10);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 18, v11);
  }

  v27 = (a2 - *a2);
  v29 = *v27 >= 0x1Du && (v28 = v27[14]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 28, v29, 0);
  v30 = (a2 - *a2);
  if (*v30 >= 0x1Bu && (v31 = v30[13]) != 0)
  {
    v32 = *(a2 + v31);
  }

  else
  {
    v32 = 255;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 26, v32, 255);
  v33 = (a2 - *a2);
  if (*v33 >= 0x19u && (v34 = v33[12]) != 0)
  {
    v35 = *(a2 + v34);
    if (v35 >= 3)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v35 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 24, v35, 0);
  v36 = (a2 - *a2);
  v38 = *v36 >= 0x17u && (v37 = v36[11]) != 0 && *(a2 + v37) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 22, v38, 0);
  v39 = (a2 - *a2);
  if (*v39 >= 0x15u && (v40 = v39[10]) != 0)
  {
    v41 = *(a2 + v40);
    if (v41 >= 2)
    {
LABEL_66:
      abort();
    }
  }

  else
  {
    v41 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v41, 0);
  v42 = (a2 - *a2);
  if (*v42 >= 0x11u && (v43 = v42[8]) != 0)
  {
    v44 = *(a2 + v43);
    if (v44 >= 2)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v44 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v44, 0);
  v45 = (a2 - *a2);
  v47 = *v45 < 0xDu || (v46 = v45[6]) == 0 || *(a2 + v46) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v47, 1);
  v48 = (a2 - *a2);
  v50 = *v48 >= 5u && (v49 = v48[2]) != 0 && *(a2 + v49) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v50, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

void MTLCompilerObject::AIRNTGetFunctionScriptFromPipeline(const Air::PipelineScript *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = 0;
  v36 = 0;
  v37 = xmmword_213C7D4D0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  v41 = 1;
  v42 = 256;
  v43 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v22 = Air::PipelineScript::pipeline_as_render(a1);
      v23 = (v22 - *v22);
      if (*v23 >= 9u && (v24 = v23[4]) != 0)
      {
        v25 = (v22 + v24 + *(v22 + v24));
      }

      else
      {
        v25 = 0;
      }

      MTLCompilerObject::AIRNTGetVertexFunctionScript(v22, a1, &v35, v25);
      goto LABEL_47;
    }

    if (a2 != 2)
    {
      goto LABEL_47;
    }

    if (Air::PipelineScript::pipeline_as_render(a1))
    {
      v10 = Air::PipelineScript::pipeline_as_render(a1);
      v11 = (v10 - *v10);
      if (*v11 >= 0xBu)
      {
        v12 = v11[5];
        if (v12)
        {
LABEL_14:
          v13 = (v10 + v12 + *(v10 + v12));
LABEL_46:
          MTLCompilerObject::AIRNTGetFragmentFunctionScript(v10, a1, &v35, v13);
          goto LABEL_47;
        }
      }
    }

    else
    {
      if (Air::PipelineScript::pipeline_as_tile_render(a1))
      {
LABEL_37:
        v26 = Air::PipelineScript::pipeline_as_tile_render(a1);
        v27 = (v26 - *v26);
        if (*v27 >= 7u && (v28 = v27[3]) != 0)
        {
          v29 = (v26 + v28 + *(v26 + v28));
        }

        else
        {
          v29 = 0;
        }

        MTLCompilerObject::AIRNTGetTileFunctionScript(v26, a1, &v35, v29);
        goto LABEL_47;
      }

      if (!Air::PipelineScript::pipeline_as_mesh_render(a1))
      {
        goto LABEL_47;
      }

      v10 = Air::PipelineScript::pipeline_as_mesh_render(a1);
      v30 = (v10 - *v10);
      if (*v30 >= 0xFu)
      {
        v12 = v30[7];
        if (v12)
        {
          goto LABEL_14;
        }
      }
    }

    v13 = 0;
    goto LABEL_46;
  }

  switch(a2)
  {
    case 8:
      if (Air::PipelineScript::pipeline_as_mesh_render(a1))
      {
        v14 = Air::PipelineScript::pipeline_as_mesh_render(a1);
        v15 = (v14 - *v14);
        if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
        {
          v17 = (v14 + v16 + *(v14 + v16));
        }

        else
        {
          v17 = 0;
        }

        MTLCompilerObject::AIRNTGetObjectFunctionScript(v14, a1, &v35, v17);
      }

      break;
    case 7:
      if (Air::PipelineScript::pipeline_as_mesh_render(a1))
      {
        v18 = Air::PipelineScript::pipeline_as_mesh_render(a1);
        v19 = (v18 - *v18);
        if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
        {
          v21 = (v18 + v20 + *(v18 + v20));
        }

        else
        {
          v21 = 0;
        }

        MTLCompilerObject::AIRNTGetMeshFunctionScript(v18, a1, &v35, v21);
      }

      break;
    case 3:
      if (Air::PipelineScript::pipeline_as_compute(a1))
      {
        v6 = Air::PipelineScript::pipeline_as_compute(a1);
        v7 = (v6 - *v6);
        if (*v7 >= 7u && (v8 = v7[3]) != 0)
        {
          v9 = (v6 + v8 + *(v6 + v8));
        }

        else
        {
          v9 = 0;
        }

        MTLCompilerObject::AIRNTGetComputeFunctionScript(v6, a1, &v35, v9);
        break;
      }

      if (!Air::PipelineScript::pipeline_as_tile_render(a1))
      {
        break;
      }

      goto LABEL_37;
    default:
      break;
  }

LABEL_47:
  v31 = v36;
  v32 = v38;
  v33 = v39;
  v34 = (v38 + DWORD2(v38) - v39);
  *a3 = v35;
  *(a3 + 8) = v31;
  *(a3 + 16) = *(&v32 + 1);
  *(a3 + 24) = v32;
  *(a3 + 32) = v33;
  *(a3 + 40) = v34;
  if (v31 == 1)
  {
    v35 = 0;
    v36 = 0;
  }

  v38 = 0u;
  v39 = 0u;
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v35);
}

uint64_t Air::PipelineScript::pipeline_as_compute(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 2) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::PipelineScript::pipeline_as_tile_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 3) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::PipelineScript::pipeline_as_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 1) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::PipelineScript::pipeline_as_mesh_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 4) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void logCompileError(uint64_t *a1, const std::string::value_type *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_213C7E907);
  if (a2 && *a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, " - ");
    v4 = std::string::append(&v8, a2);
    v5 = v4->__r_.__value_.__r.__words[0];
    v12[0] = v4->__r_.__value_.__l.__size_;
    *(v12 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
    v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p);
    }

    __p = v5;
    *v10 = v12[0];
    *&v10[7] = *(v12 + 7);
    v11 = v6;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    logCompileError(a1);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_213C60A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *flatbuffers::DetachedBuffer::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = a1 + 2;
    v4 = a1[2];
    if (v4)
    {
      v6 = *a1;
      if (*a1)
      {
        v7 = a1[3];
        (*(*v6 + 24))(v6);
      }

      else
      {
        MEMORY[0x21604C970](v4, 0x1000C8077774924);
      }
    }

    if (*(a1 + 8) == 1 && *a1)
    {
      (*(**a1 + 8))(*a1);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *v5 = 0u;
    *(a1 + 2) = 0u;
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    a1[2] = *(a2 + 16);
    *(a1 + 3) = *(a2 + 24);
    a1[5] = *(a2 + 40);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  return a1;
}

void flatbuffers::DetachedBuffer::~DetachedBuffer(flatbuffers::DetachedBuffer *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = *this;
    if (*this)
    {
      v5 = *(this + 3);
      (*(*v4 + 24))(v4);
    }

    else
    {
      MEMORY[0x21604C970](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
  *v3 = 0u;
  v3[1] = 0u;
}

uint64_t MTLCompilerPluginInterface::airntEmitPipelineImage(uint64_t a1, uint64_t a2, llvm::Module *a3, signed int __val, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a3;
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = v17(*(a1 + 144), a2, a5, a3, "offline_module_name", a6, a7, a8, "offline_script_name", a9, a10, a11, a12, a13);
  }

  else
  {
    v21 = a6;
    v22 = a7;
    getSerializedModule(__val, &v25);
    v23 = &v26;
    v24 = 1;
    v19 = v25;
    v18 = (*(a1 + 40))(*(a1 + 144), a2, a5, *(v25 + 8), *(v25 + 16) - *(v25 + 8), "offline_module_name", v21, v22, a8, "offline_script_name", a9, a10, a11, a12, a13);
    llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(&v23);
    (*(*v19 + 8))(v19);
  }

  return v18 ^ 1u;
}

void sub_213C60E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(va);
  (*(*v9 + 8))(v9);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::readVisibleFunctions(uint64_t a1, unsigned int *a2, unint64_t a3, void *a4)
{
  v7 = a2[36];
  if (v7)
  {
    v8 = (a2 + a2[37]);
    do
    {
      v9 = malloc_type_malloc(0x78uLL, 0x1050040A24A0AE1uLL);
      MTLCompilerObject::getReadParametersFromRequest(v9, v9, a2, a3, v8, a2);
      std::__hash_table<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(a4, (v9 + 84))[6] = v9;
      v8 += 14;
      --v7;
    }

    while (v7);
  }

  v10 = a2[40];
  if (v10)
  {
    v11 = (a2 + a2[41]);
    do
    {
      v12 = malloc_type_malloc(0x78uLL, 0x1050040A24A0AE1uLL);
      MTLCompilerObject::getReadParametersFromRequest(v12, v12, a2, a3, v11, a2);
      std::__hash_table<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(a4, (v12 + 84))[6] = v12;
      v11 += 14;
      --v10;
    }

    while (v10);
  }
}

uint64_t getRequiredStagesPresentMask(const Air::PipelineScript *this)
{
  v1 = (this - *this);
  if (*v1 < 9u)
  {
    return 0;
  }

  v2 = v1[4];
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + v2);
  if ((v4 - 2) < 2)
  {
    return 2;
  }

  if (v4 == 1)
  {
    v9 = Air::PipelineScript::pipeline_as_render(this);
    v10 = (v9 - *v9);
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2 * (v10[2] != 0);
    }

    v15 = Air::PipelineScript::pipeline_as_render(this);
    v16 = (v15 - *v15);
    v17 = *v16 >= 7u && v16[3] != 0;
    return v11 | v17;
  }

  else if (v4 == 4)
  {
    v5 = Air::PipelineScript::pipeline_as_mesh_render(this);
    v6 = (v5 - *v5);
    v7 = *v6 >= 9u && v6[4] != 0;
    v12 = Air::PipelineScript::pipeline_as_mesh_render(this);
    v13 = (v12 - *v12);
    v14 = 2;
    if (*v13 >= 5u)
    {
      if (v13[2])
      {
        v14 = 6;
      }

      else
      {
        v14 = 2;
      }
    }

    return v14 | v7;
  }

  else
  {
    return 0;
  }
}

uint64_t serializeCompileTimeData(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = a2[1] - *a2;
    if (v2)
    {
      v3 = v2 >> 4;
      *result = v3;
      *(result + 2) = BYTE2(v3);
      *(result + 3) = BYTE3(v3);
      v4 = v3;
      if (v3)
      {
        v5 = 0;
        v6 = result + 4;
        v7 = 16 * v4;
        do
        {
          *v6 = *(*a2 + v5);
          *(v6 + 4) = *(*a2 + v5 + 8);
          v6 += 12;
          v5 += 16;
        }

        while (v7 != v5);
      }
    }
  }

  return result;
}

void BackendCompilationOutput::free(BackendCompilationOutput *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {

    free(v4);
  }
}

void MTLCompilerPluginInterface::~MTLCompilerPluginInterface(void (**this)(void))
{
  if (this[16])
  {
    this[1]();
  }

  v2 = this[14];
  if (v2)
  {
    free(v2);
  }

  v3 = this[13];
  if (v3)
  {
    free(v3);
  }

  v4 = this[17];
  if (v4)
  {
    dlclose(v4);
  }

  if (this[20])
  {
    deleteCompilerHelper();
  }

  if (this[18])
  {
    v5 = this[10];
    if (v5)
    {
      v5();
    }
  }
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void FunctionDesc::~FunctionDesc(FunctionDesc *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = (this + 72);
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<FunctionConstantDesc>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void printDiagnosticError(uint64_t a1, uint64_t a2)
{
  llvm::raw_string_ostream::raw_string_ostream(v4, a2);
  v3[0] = MEMORY[0x277D82218] + 16;
  v3[1] = v4;
  (*(*a1 + 24))(a1, v3);
  if (v6 != v5)
  {
    llvm::raw_ostream::flush_nonempty(v4);
  }

  llvm::raw_ostream::~raw_ostream(v4);
}

void sub_213C61418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  llvm::raw_ostream::~raw_ostream(va);
  _Unwind_Resume(a1);
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

void std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 288;
      std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

char *serializeOneVertexAttribute(int *a1, char **a2)
{
  v2 = *(a1 + 3);
  v3 = v2 + 1;
  v4 = a2[2];
  if (__CFADD__(v4, v2 + 1))
  {
    goto LABEL_35;
  }

  v7 = *(a1 + 2);
  v8 = a2[1];
  if (v8 >= &v4[v3])
  {
    v9 = *a2;
  }

  else
  {
    if (!v8)
    {
      v8 = 128;
      a2[1] = 128;
    }

    while (v8 < &v4[v3])
    {
      if (v8 >> 1 >= ~v8)
      {
        v8 = &v4[v3];
      }

      else
      {
        v8 += v8 >> 1;
      }
    }

    v9 = malloc_type_realloc(*a2, v8, 0x100004077774924uLL);
    *a2 = v9;
    if (!v9)
    {
      goto LABEL_35;
    }

    a2[1] = v8;
    v4 = a2[2];
  }

  memcpy(&v4[v9], v7, v2);
  a2[2][*a2 + v2] = 0;
  v10 = &a2[2][v3];
  a2[2] = v10;
  if (v10 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_35;
  }

  v12 = *a1;
  v11 = a1[1];
  v13 = a2[1];
  if (v13 >= v10 + 4)
  {
    v14 = *a2;
  }

  else
  {
    if (!v13)
    {
      v13 = 128;
      a2[1] = 128;
    }

    while (v13 < v10 + 4)
    {
      if (v13 >> 1 >= ~v13)
      {
        v13 = v10 + 4;
      }

      else
      {
        v13 += v13 >> 1;
      }
    }

    v14 = malloc_type_realloc(*a2, v13, 0x100004077774924uLL);
    *a2 = v14;
    if (!v14)
    {
      goto LABEL_35;
    }

    a2[1] = v13;
    v10 = a2[2];
  }

  v15 = &v14[v10];
  *v15 = v11;
  v15[2] = BYTE2(v11);
  v15[3] = ((v12 << 17) & 0x40000000 | (((v12 >> 14) & 1) << 29) & 0x7FFFFFFF | ((v12 >> 3) << 31) | v11) >> 24;
  a2[2] += 4;
  v16 = *(a1 + 4);
  v17 = strlen(v16);
  v18 = dataTypeFromString(v16, v17);
  v19 = a2[2];
  if (v19 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_35;
  }

  v20 = v18;
  v21 = a2[1];
  if (v21 >= v19 + 4)
  {
    result = *a2;
    goto LABEL_34;
  }

  if (!v21)
  {
    v21 = 128;
    a2[1] = 128;
  }

  while (v21 < v19 + 4)
  {
    if (v21 >> 1 >= ~v21)
    {
      v21 = v19 + 4;
    }

    else
    {
      v21 += v21 >> 1;
    }
  }

  result = malloc_type_realloc(*a2, v21, 0x100004077774924uLL);
  *a2 = result;
  if (!result)
  {
LABEL_35:
    abort();
  }

  a2[1] = v21;
  v19 = a2[2];
LABEL_34:
  *&result[v19] = v20;
  a2[2] += 4;
  return result;
}

uint64_t SerializedLibraryInfo::serializeStringArraySize(uint64_t a1, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 4;
  while (v2 != v3)
  {
    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *v2, *(v2 + 1));
    }

    else
    {
      v5 = *v2;
      v8.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&v8.__r_.__value_.__l.__data_ = v5;
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v8.__r_.__value_.__l.__size_ + 1;
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    else
    {
      v6 = HIBYTE(v8.__r_.__value_.__r.__words[2]) + 1;
    }

    v4 += v6;
    v2 = (v2 + 24);
  }

  return v4;
}

void SerializedLibraryInfo::serializeStringArray(uint64_t a1, __int128 **a2, _DWORD *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = v3 == *a2;
  *a3 = -1431655765 * ((v3 - *a2) >> 3);
  if (!v5)
  {
    v6 = (a3 + 1);
    do
    {
      if (*(v4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__src, *v4, *(v4 + 1));
      }

      else
      {
        v7 = *v4;
        __src.__r_.__value_.__r.__words[2] = *(v4 + 2);
        *&__src.__r_.__value_.__l.__data_ = v7;
      }

      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = __src.__r_.__value_.__r.__words[0];
        strcpy(v6, __src.__r_.__value_.__l.__data_);
        v9 = __src.__r_.__value_.__l.__size_ + 1;
        operator delete(v10);
      }

      else
      {
        v8 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
        strcpy(v6, &__src);
        v9 = v8 + 1;
      }

      v6 += v9;
      v4 = (v4 + 24);
    }

    while (v4 != v3);
  }
}

llvm::NamedMDNode *getMDNodeForFunctionType(llvm::Module *a1, MTLFunctionType a2)
{
  v2 = a2 - 1;
  if (a2 - 1 >= 8 || ((0xF7u >> v2) & 1) == 0)
  {
    abort();
  }

  v3 = *off_278171898[v2];
  v4 = 1;
  v9 = 1;
  if (*v3)
  {
    v7 = v3;
    v4 = 3;
  }

  v8 = v4;
  result = llvm::Module::getNamedMetadata(a1, &v7);
  if (result)
  {
    v6 = result;
    if (llvm::NamedMDNode::getNumOperands(result))
    {
      return llvm::NamedMDNode::getOperand(v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::SmallVector<std::string,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 24 * v3 - 1;
    v5 = -24 * v3;
    v6 = v4;
    do
    {
      v7 = *v6;
      v6 -= 24;
      if (v7 < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 = v6;
      v5 += 24;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::handleAllErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = 0;
  llvm::handleErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v3, a2, &v4);
  result = v3;
  if (v3)
  {
    return (*(*v3 + 8))(v3);
  }

  return result;
}

void sub_213C61A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9)
  {
    MTLCompilerObject::readModuleFromBinaryRequest(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::handleErrors<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v4 + 48))(v4, MEMORY[0x277D821A8]))
    {
      *a3 = 0;
      v6 = v4[1];
      v7 = v4[2];
      if (v6 != v7)
      {
        v8 = 0;
        do
        {
          v14 = v8;
          *a3 = 0;
          v9 = *v6;
          *v6 = 0;
          v12 = v9;
          llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v12, a2, &v13);
          llvm::ErrorList::join(&v14, &v13, &v15);
          v8 = v15;
          *a3 = v15;
          v15 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }

          v10 = v12;
          v12 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          if (v14)
          {
            (*(*v14 + 8))(v14);
          }

          ++v6;
        }

        while (v6 != v7);
      }

      return (*(*v4 + 8))(v4);
    }

    else
    {
      v11 = v4;
      llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v11, a2, a3);
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_213C61C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *llvm::ErrorList::join@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t **a3@<X8>)
{
  result = *a1;
  v7 = *a2;
  if (!result)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    if ((*(*result + 48))(result, MEMORY[0x277D821A8]))
    {
      v8 = *a1;
      if (*a2)
      {
        v9 = (*(**a2 + 48))(*a2, MEMORY[0x277D821A8]);
        v10 = *a2;
        if (v9)
        {
          *a2 = 0;
          v11 = v10[1];
          v12 = v10[2];
          if (v11 == v12)
          {
            goto LABEL_9;
          }

          do
          {
            result = std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](v8 + 1, v11++);
          }

          while (v11 != v12);
          if (v10)
          {
LABEL_9:
            result = (*(*v10 + 8))(v10);
          }

LABEL_21:
          *a3 = *a1;
          goto LABEL_22;
        }
      }

      else
      {
        v10 = 0;
      }

      v15 = v10;
      *a2 = 0;
      std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](v8 + 1, &v15);
      result = v15;
      v15 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_21;
    }

    if (!*a2 || !(*(**a2 + 48))(*a2, MEMORY[0x277D821A8]))
    {
      operator new();
    }

    v13 = (*a2 + 1);
    v14 = *v13;
    v15 = *a1;
    *a1 = 0;
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(v13, v14, &v15);
    result = v15;
    v15 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v7 = *a2;
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return result;
  }

  *a3 = result;
LABEL_22:
  *a1 = 0;
  return result;
}

void sub_213C61F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t *a12)
{
  if (a12)
  {
    MTLCompilerObject::readModuleFromBinaryRequest(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(**a1 + 48))(*a1, MEMORY[0x277D81FF0]);
  v7 = *a1;
  *a1 = 0;
  if (result)
  {
    v8 = v7;
    llvm::ErrorHandlerTraits<void (&)(llvm::ErrorInfoBase &)>::apply<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(a2, &v8, a3);
    result = v8;
    v8 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  else
  {
    *a3 = v7;
  }

  return result;
}

void sub_213C620BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    MTLCompilerObject::readModuleFromBinaryRequest(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}