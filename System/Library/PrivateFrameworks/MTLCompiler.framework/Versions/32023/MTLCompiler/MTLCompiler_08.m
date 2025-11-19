void sub_257A32B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLFrameworkPass::callFunction(uint64_t a1, uint64_t a2, char *__s, uint64_t a4, uint64_t **a5, uint64_t a6, uint64_t a7)
{
  if (__s)
  {
    strlen(__s);
  }

  Function = llvm::Module::getFunction();
  if (!Function)
  {
    __p = 0;
    v31 = 0;
    v32 = 0;
    if (a6)
    {
      v27 = a5;
      v14 = 0;
      v15 = 8 * a6;
      do
      {
        v16 = **a5;
        if (v14 >= v32)
        {
          v17 = (v14 - __p) >> 3;
          if ((v17 + 1) >> 61)
          {
            std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
          }

          v18 = (v32 - __p) >> 2;
          if (v18 <= v17 + 1)
          {
            v18 = v17 + 1;
          }

          if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&__p, v19);
          }

          v20 = (8 * v17);
          *v20 = v16;
          v14 = (8 * v17 + 8);
          v21 = v20 - (v31 - __p);
          memcpy(v21, __p, v31 - __p);
          v22 = __p;
          __p = v21;
          v31 = v14;
          v32 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v14 = v16;
          v14 += 8;
        }

        v31 = v14;
        ++a5;
        v15 -= 8;
      }

      while (v15);
      a5 = v27;
    }

    v23 = llvm::FunctionType::get();
    v24 = 1;
    HIBYTE(v29) = 1;
    if (*__s)
    {
      v28[0] = __s;
      v24 = 3;
    }

    LOBYTE(v29) = v24;
    Function = llvm::Function::Create(v23, 0, v28, a1);
    *(Function + 112) = a7;
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }

  v25 = *(Function + 24);
  v29 = 257;
  return llvm::IRBuilderBase::CreateCall(a2, v25, Function, a5, a6, v28, 0);
}

void sub_257A32D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
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

uint64_t MTLIRBuilder::CreateBadAccessCall(llvm::Constant **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7, llvm::Value *a8, llvm::Value *a9, llvm::Value *a10)
{
  NullValue = a10;
  v26[9] = *MEMORY[0x277D85DE8];
  if (!a10)
  {
    NullValue = llvm::Constant::getNullValue(this[18], a2);
  }

  inserted = MTLIRBuilder::getOrInsertBadAccessFunction(this, *(*(this[6] + 7) + 40));
  if (inserted)
  {
    v20 = *(inserted + 24);
  }

  else
  {
    v20 = 0;
  }

  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v26[6] = a8;
  v26[7] = a9;
  v26[8] = NullValue;
  v25 = 257;
  v21 = llvm::IRBuilderBase::CreateCall(this, v20, inserted, v26, 9, v24, 0);
  llvm::Value::getContext(v21);
  *(v21 + 8) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v21);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v21 + 8) = result;
  v23 = *MEMORY[0x277D85DE8];
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
  v6 = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_access", &VoidTy, &v9, &v8, v3 + 5, v3, v3, v3 + 2, v3 + 2, v3 + 1, v3 + 1);
  llvm::GlobalObject::setSection();
  return v6;
}

uint64_t MTLIRBuilder::CreateIsNullTextureCall(MTLIRBuilder *this, llvm::Value **a2)
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
  v34 = getOrInsertFunction<char const*&,llvm::Type *&,llvm::Type *&>(*(*(*(this + 6) + 56) + 40), &v43, this + 21, &v42);
  if ((llvm::Function::hasFnAttribute() & 1) == 0)
  {
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
  }

  v35 = *(v34 + 24);
  v36 = *(*(v35 + 16) + 8);
  if (v36 != *BitOrPointerCast)
  {
    v41 = 257;
    BitOrPointerCast = llvm::IRBuilderBase::CreateBitOrPointerCast(this, BitOrPointerCast, v36, v40);
    v35 = *(v34 + 24);
  }

  v44[0] = BitOrPointerCast;
  v41 = 257;
  v37 = llvm::IRBuilderBase::CreateCall(this, v35, v34, v44, 1, v40, 0);
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

uint64_t MTLIRBuilder::CreateBadTextureCall(llvm::Constant **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, llvm::Value *a6, llvm::Value *a7, llvm::Value *a8, llvm::Value *a9, llvm::Value *a10)
{
  NullValue = a10;
  v26[9] = *MEMORY[0x277D85DE8];
  if (!a10)
  {
    NullValue = llvm::Constant::getNullValue(this[18], a2);
  }

  inserted = MTLIRBuilder::getOrInsertBadTextureFunction(this, *(*(this[6] + 7) + 40));
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v26[6] = a8;
  v26[7] = a9;
  v26[8] = NullValue;
  if (inserted)
  {
    v20 = *(inserted + 24);
  }

  else
  {
    v20 = 0;
  }

  v25 = 257;
  v21 = llvm::IRBuilderBase::CreateCall(this, v20, inserted, v26, 9, v24, 0);
  llvm::Value::getContext(v21);
  *(v21 + 8) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v21);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v21 + 8) = result;
  v23 = *MEMORY[0x277D85DE8];
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
  v6 = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_texture", &VoidTy, &v9, &v8, v3 + 5, v3, v3 + 1, v3 + 1, v3 + 3, v3 + 3, v3 + 1);
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
    Function = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.report_trap", &VoidTy, &v11, &v10, v6 + 5, v6, v6 + 1, v6 + 1);
    if (Function)
    {
      llvm::GlobalObject::setSection();
    }
  }

  return Function;
}

uint64_t getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, uint64_t *a9)
{
  v17 = strlen(__s);
  *(&v20 + 1) = *a8;
  *&v20 = *a7;
  llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(a1, __s, v17, 0, *a3, *a4, *a5, *a6, v20, *a9);
  result = v18;
  if (*(v18 + 16) == 5)
  {
    return *(v18 - 32 * (*(v18 + 20) & 0x7FFFFFF));
  }

  return result;
}

uint64_t MTLIRBuilder::CreateTrapCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5)
{
  v19[6] = *MEMORY[0x277D85DE8];
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
  v14 = this[18];
  v19[5] = llvm::ConstantInt::get();
  v18[16] = 257;
  v15 = llvm::IRBuilderBase::CreateCall(this, v12, v11, v19, 6, v18, 0);
  llvm::Value::getContext(v15);
  *(v15 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v15);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v15 + 64) = result;
  *(v15 + 18) = *(v15 + 18) & 0xFFFC | 1;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLIRBuilder::CreateStackOverflowCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, unsigned int a6, llvm::Value *a7)
{
  v21[6] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertStackOverflowFunction(this, *(*(this[6] + 7) + 40));
  v14 = inserted;
  if (inserted)
  {
    v15 = *(inserted + 24);
  }

  else
  {
    v15 = 0;
  }

  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v16 = this[18];
  v21[4] = llvm::ConstantInt::get();
  v21[5] = a7;
  v20[16] = 257;
  v17 = llvm::IRBuilderBase::CreateCall(this, v15, v14, v21, 6, v20, 0);
  llvm::Value::getContext(v17);
  *(v17 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v17);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v17 + 64) = result;
  *(v17 + 18) = *(v17 + 18) & 0xFFFC | 1;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTLIRBuilder::getOrInsertStackOverflowFunction(llvm::Type **this, llvm::Module *a2)
{
  v3 = this;
  VoidTy = llvm::Type::getVoidTy(this[8], a2);
  v4 = *(v3 + 17);
  v3 = (v3 + 136);
  v9 = llvm::PointerType::get();
  v5 = *v3;
  v8 = llvm::PointerType::get();
  v6 = getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.stack_overflow", &VoidTy, &v9, &v8, v3 + 5, v3, v3 + 1, v3 + 1);
  llvm::GlobalObject::setSection();
  return v6;
}

uint64_t MTLIRBuilder::CreateBadAccelerationStructureCall(llvm::Type **this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, unsigned int a6, llvm::Value *a7, llvm::Value *a8, llvm::Value *a9)
{
  v25[8] = *MEMORY[0x277D85DE8];
  inserted = MTLIRBuilder::getOrInsertBadAccelerationStructureFunction(this, *(*(this[6] + 7) + 40));
  v16 = inserted;
  if (inserted)
  {
    v17 = *(inserted + 24);
  }

  else
  {
    v17 = 0;
  }

  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v18 = this[18];
  v25[4] = llvm::ConstantInt::get();
  v25[5] = a7;
  v25[6] = a8;
  v25[7] = a9;
  v24 = 257;
  v19 = llvm::IRBuilderBase::CreateCall(this, v17, v16, v25, 8, v23, 0);
  llvm::Value::getContext(v19);
  *(v19 + 64) = llvm::AttributeList::addAttributeAtIndex();
  llvm::Value::getContext(v19);
  result = llvm::AttributeList::addAttributeAtIndex();
  *(v19 + 64) = result;
  *(v19 + 18) = *(v19 + 18) & 0xFFFC | 1;
  v21 = *MEMORY[0x277D85DE8];
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
  v6 = getOrInsertFunction<char const(&)[31],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(a2, "mtl.bad_acceleration_structure", &VoidTy, &v9, &v8, v3 + 5, v3, v3 + 1, v3 + 1, v3, v3);
  llvm::GlobalObject::setSection();
  return v6;
}

uint64_t getOrInsertFunction<char const(&)[16],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, void *a9, void *a10, uint64_t *a11, uint64_t *a12)
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

uint64_t getOrInsertFunction<char const(&)[31],llvm::Type *,llvm::PointerType *,llvm::PointerType *,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, char *__s, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7, void *a8, void *a9, void *a10, uint64_t *a11)
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

void sub_257A34FC0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Module::getOrInsertFunction<llvm::PointerType *,llvm::PointerType *,llvm::Type *,llvm::Type *,llvm::Type *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v13[0] = a6;
  v13[1] = a7;
  v13[2] = a8;
  v14 = a9;
  v15 = a10;
  llvm::SmallVector<llvm::Type *,6u>::SmallVector(&v16, v13, 6);
  llvm::FunctionType::get();
  inserted = llvm::Module::getOrInsertFunction();
  if (v16 != v17)
  {
    free(v16);
  }

  v11 = *MEMORY[0x277D85DE8];
  return inserted;
}

uint64_t llvm::SmallVector<llvm::Type *,6u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_257A3513C(_Unwind_Exception *exception_object)
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

void sub_257A352B8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
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

void sub_257A35434(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLCompilerObject::getFragmentVaryingsInfo(MTLCompilerObject *this, int a2, const char *a3, unint64_t a4, MTLCompilerObject::FragmentVaryingsInfo *a5)
{
  if (a4)
  {
    v31 = a3;
    v32 = a4;
    *(a5 + 19) = *a3;
    if (a4 == 1)
    {
      goto LABEL_30;
    }

    *(a5 + 20) = *(a3 + 1);
    if (a4 <= 2)
    {
      goto LABEL_30;
    }

    *(a5 + 21) = *(a3 + 2);
    if (a4 == 3)
    {
      goto LABEL_30;
    }

    v6 = *(a3 + 3);
    v33 = 4;
    *(a5 + 18) = v6;
    if (a2)
    {
      std::vector<PackedInput>::reserve(a5 + 3, v6);
      if (*(a5 + 18))
      {
        v7 = 0;
        while (1)
        {
          v8 = v33;
          if (v33 >= v32)
          {
            break;
          }

          v9 = v31[v33++];
          LOWORD(v29) = v9;
          if (v8 + 1 >= v32)
          {
            break;
          }

          v10 = v31[v8 + 1];
          v33 = v8 + 2;
          WORD1(v29) = v10 & 0xF;
          v11 = v10 >> 4;
          WORD2(v29) = v10 >> 4;
          v12 = &v29 + 3;
          if (v10 >= 0x10)
          {
            do
            {
              v13 = (*(a5 + 1) - *a5) >> 5;
              *v12++ = v13;
              deserializeFragmentInput(&v31, v13, a5 + 48, v28);
              std::vector<VaryingInfo>::push_back[abi:ne200100](a5, v28);
              --v11;
            }

            while (v11);
          }

          v15 = *(a5 + 4);
          v14 = *(a5 + 5);
          if (v15 >= v14)
          {
            v17 = *(a5 + 3);
            v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
            v19 = v18 + 1;
            if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
            if (2 * v20 > v19)
            {
              v19 = 2 * v20;
            }

            if (v20 >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(a5 + 24, v21);
            }

            v22 = 24 * v18;
            *v22 = v29;
            *(v22 + 16) = v30;
            v16 = 24 * v18 + 24;
            v23 = *(a5 + 3);
            v24 = *(a5 + 4) - v23;
            v25 = 24 * v18 - v24;
            memcpy((v22 - v24), v23, v24);
            v26 = *(a5 + 3);
            *(a5 + 3) = v25;
            *(a5 + 4) = v16;
            *(a5 + 5) = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v15 = v29;
            *(v15 + 16) = v30;
            v16 = v15 + 24;
          }

          *(a5 + 4) = v16;
          if (++v7 >= *(a5 + 18))
          {
            return;
          }
        }

LABEL_30:
        abort();
      }
    }

    else
    {
      std::vector<VaryingInfo>::reserve(a5, v6);
      if (*(a5 + 18))
      {
        v27 = 0;
        do
        {
          deserializeFragmentInput(&v31, v27, a5 + 48, v28);
          std::vector<VaryingInfo>::push_back[abi:ne200100](a5, v28);
          ++v27;
        }

        while (v27 < *(a5 + 18));
      }
    }
  }
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

void sub_257A359CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_257A35D44(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,TextureTokenData>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

BOOL isBufferMetadata(uint64_t a1)
{
  v1 = *(a1 - 8 * *(a1 + 8) + 8);
  if (*v1)
  {
    return 0;
  }

  String = llvm::MDString::getString(v1);
  v2 = 0;
  if (v4 > 30)
  {
    if (v4 == 31)
    {
      return *String == 0x65746E692E726961 && String[1] == 0x6E6F697463657372 && String[2] == 0x6F6974636E75665FLL && *(String + 23) == 0x656C6261745F6E6FLL;
    }

    else
    {
      if (v4 == 35)
      {
        v8 = "air.instance_acceleration_structure";
        v9 = 35;
      }

      else
      {
        if (v4 != 36)
        {
          return v2;
        }

        v8 = "air.primitive_acceleration_structure";
        v9 = 36;
      }

      return memcmp(String, v8, v9) == 0;
    }
  }

  else
  {
    switch(v4)
    {
      case 10:
        v7 = *String == 0x666675622E726961 && *(String + 4) == 29285;
        break;
      case 19:
        v7 = *String == 0x69646E692E726961 && String[1] == 0x6675625F74636572 && *(String + 11) == 0x7265666675625F74;
        break;
      case 26:
        v7 = *String == 0x697369762E726961 && String[1] == 0x636E75665F656C62 && String[2] == 0x6261745F6E6F6974 && *(String + 12) == 25964;
        break;
      default:
        return v2;
    }
  }

  return v7;
}

void MTLArgumentBufferConversion::~MTLArgumentBufferConversion(MTLArgumentBufferConversion *this)
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

BOOL MTLArgumentBufferConversion::runOnModule(MTLArgumentBufferConversion *this, llvm::Module *a2)
{
  v129[8] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  isLibraryModule = MTLBoundsCheck::isLibraryModule(a2, v4);
  if (!isLibraryModule)
  {
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v102[0] = 0;
    v102[1] = 0;
    v103 = 0;
    v127 = v129;
    v128 = 0x800000000;
    v125[0] = &v126;
    v125[1] = 0x800000000;
    v122 = &v124;
    v123 = 0x1F00000000;
    if ((*(*(this + 4) + 22) & 2) != 0)
    {
      v6 = 1;
      llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(&v122, 1uLL);
    }

    else
    {
      v6 = 31;
      llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(&v122, 0x1FuLL);
    }

    llvm::SmallVectorImpl<llvm::Value *>::assign(&v122, v6, 0);
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(v125);
    v119 = 0;
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<decltype(nullptr)>(&v127);
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
        *v122 = v25;
      }

      else
      {
        v20 = v123;
        if (v123)
        {
          v21 = 0;
          do
          {
            if (!*(v122 + v21))
            {
              v22 = *(this + 10);
              *(v122 + v21) = llvm::PointerType::get();
              v20 = v123;
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
      v119 = &v121;
      v120 = 0x1F00000000;
      v117[0] = &v118;
      v117[1] = 0x1F00000000;
      llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(v117, v123);
      v101 = 0;
      if (v123)
      {
        v30 = 0;
        v31 = 0;
        v32 = StructLayout + 16;
        do
        {
          v100.n128_u64[0] = "air.read_write";
          v100.n128_u64[1] = 14;
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
          v99.n128_u64[0] = "int";
          v99.n128_u64[1] = 3;
          *(&__src.__r_.__value_.__s + 23) = 3;
          LODWORD(__src.__r_.__value_.__l.__data_) = 3039841;
          std::to_string(&v107, v30);
          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &v107;
          }

          else
          {
            v36 = v107.__r_.__value_.__r.__words[0];
          }

          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v107.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v107.__r_.__value_.__l.__size_;
          }

          v38 = std::string::append(&__src, v36, size);
          v39 = *&v38->__r_.__value_.__l.__data_;
          __p[0].__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&__p[0].__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          String = "air.buffer";
          v98 = 10;
          StructTypeInfo = 0;
          if ((*(*(this + 4) + 22) & 2) == 0)
          {
            __src.__r_.__value_.__r.__words[0] = 0;
            v40 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::LookupBucketFor<unsigned int>(v102, &v101, &__src);
            v41 = __src.__r_.__value_.__r.__words[0] == v102[0] + 32 * v103 ? 0 : v40;
            if (v41 == 1)
            {
              v42 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(v102, &v101);
              llvm::SmallVector<unsigned int,2u>::SmallVector(&__src, (v42 + 2));
              if (LODWORD(__src.__r_.__value_.__r.__words[1]) == 1)
              {
                v43 = *(v7 - 8 * *(v7 + 8) + 8 * *__src.__r_.__value_.__l.__data_);
                v115 = v99;
                LOBYTE(v116) = 1;
                MTLBoundsCheck::getArgTypeName(v43, &v115, &v107);
                v99 = *&v107.__r_.__value_.__l.__data_;
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

                v94[0] = v45;
                v94[1] = v44;
                v95 = 1;
                MTLBoundsCheck::getArgName(v43, v94, &v115);
                llvm::StringRef::str(&v115, &v107);
                if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p[0].__r_.__value_.__l.__data_);
                }

                __p[0] = v107;
                v115 = v100;
                LOBYTE(v116) = 1;
                MTLBoundsCheck::getArgAccessType(v43, &v115, &v107);
                v100 = *&v107.__r_.__value_.__l.__data_;
                String = llvm::MDString::getString(*&v43[-2 * v43[2] + 2]);
                v98 = v46;
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
          v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
          llvm::StringRef::str(&String, &v107);
          v115.n128_u64[0] = MetalModulePass::getMetadata(this, &v107);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v115);
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.location_index", v47);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
          v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
          v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<int>(this);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
          llvm::StringRef::str(&v100, &v107);
          v115.n128_u64[0] = MetalModulePass::getMetadata(this, &v107);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v115);
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          if (StructTypeInfo)
          {
            v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.struct_type_info", v48);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &StructTypeInfo);
          }

          if (llvm::Type::isSized(*v35[2]))
          {
            v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_size", v49);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
            v107.__r_.__value_.__r.__words[0] = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), *v35[2]) + 7) >> 3;
            LODWORD(v107.__r_.__value_.__r.__words[1]) = v50 == 1;
            v115.n128_u64[0] = MetalModulePass::getMetadata(this);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v115);
            v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_align_size", v51);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
            llvm::DataLayout::getPrefTypeAlignment(*(this + 7), *v35[2]);
            v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned long long>(this);
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
          }

          v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_type_name", v49);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
          llvm::StringRef::str(&v99, &v107);
          v115.n128_u64[0] = MetalModulePass::getMetadata(this, &v107);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v115);
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, "air.arg_name", v52);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
          v107.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata(this, __p);
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__src, &v107);
          v53 = *(this + 5);
          Impl = llvm::MDTuple::getImpl();
          v55 = v101;
          *(v117[0] + v101) = Impl;
          if (__src.__r_.__value_.__l.__data_ != &__src.__r_.__value_.__r.__words[2])
          {
            free(__src.__r_.__value_.__l.__data_);
            v55 = v101;
          }

          v56 = *(v32 + 8 * v55);
          v115.n128_u64[0] = (llvm::DataLayout::getTypeSizeInBits(*(this + 7), v35) + 7) >> 3;
          v115.n128_u32[2] = v57 == 1;
          v58 = v119;
          v59 = v120;
          __src.__r_.__value_.__r.__words[0] = MetalModulePass::getMetadata<unsigned int>(this);
          llvm::TypeSize::operator unsigned long long();
          __src.__r_.__value_.__l.__size_ = MetalModulePass::getMetadata<unsigned int>(this);
          __src.__r_.__value_.__r.__words[2] = MetalModulePass::getMetadata<unsigned int>(this);
          llvm::StringRef::str(&v99, &v107);
          Metadata = MetalModulePass::getMetadata(this, &v107);
          v110 = MetalModulePass::getMetadata(this, __p);
          v111 = MetalModulePass::getMetadata(this, "air.indirect_argument", v60);
          v112 = *(v117[0] + v101);
          llvm::SmallVectorImpl<llvm::Metadata *>::insert<llvm::Metadata * const*,void>(&v119, v58 + 8 * v59, &__src, &v113);
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          v30 = ++v101;
          v31 = v101;
        }

        while (v123 > v101);
      }

      v61 = *(this + 5);
      v62 = llvm::MDTuple::getImpl();
      TypeSizeInBits = llvm::DataLayout::getTypeSizeInBits(*(this + 7), v27);
      v65 = v64 == 1;
      PrefTypeAlignment = llvm::DataLayout::getPrefTypeAlignment(*(this + 7), v27);
      __src.__r_.__value_.__r.__words[0] = llvm::StructType::getName(v27);
      __src.__r_.__value_.__l.__size_ = v67;
      llvm::StringRef::str(&__src.__r_.__value_.__l.__data_, v92);
      LODWORD(v90) = 1;
      v68 = MetalModulePass::getMDTuple<unsigned int,char const*,char const*,int,int,char const*,char const*,int,char const*,llvm::MDTuple *,char const*,llvm::TypeSize,char const*,unsigned long long,char const*,std::string,char const*,char const*>(this, 0, "air.indirect_buffer", "air.location_index", 0, 1, "air.read", "air.address_space", v90, "air.struct_type_info", v62, "air.arg_type_size", (TypeSizeInBits + 7) >> 3, v65, "air.arg_type_align_size", PrefTypeAlignment, "air.arg_type_name", v92, "air.arg_name", "debug.argument_buffer");
      if (v93 < 0)
      {
        operator delete(v92[0]);
      }

      *v125[0] = v68;
      *v127 = llvm::PointerType::get();
      v69 = **(*(EntryFunction + 3) + 16);
      v70 = llvm::FunctionType::get();
      v71 = *(this + 6);
      llvm::Module::getFunction();
      v72 = *(EntryFunction + 8);
      __src.__r_.__value_.__r.__words[0] = "mtl.argument_buffer_wrap";
      LOWORD(v110) = 259;
      v73 = llvm::Function::Create(v70, v72 & 0xF, &__src, *(this + 6));
      *(EntryFunction + 8) = *(EntryFunction + 8) & 0xFFFFBFC0 | 0x4007;
      __src.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
      v94[0] = llvm::AttributeList::getAttributes(&__src);
      v74 = llvm::AttributeSet::begin(v94);
      v75 = llvm::AttributeSet::end(v94);
      while (v74 != v75)
      {
        v76 = *v74;
        llvm::Function::addFnAttr();
        ++v74;
      }

      __src.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
      v100.n128_u64[0] = llvm::AttributeList::getAttributes(&__src);
      v77 = llvm::AttributeSet::begin(&v100);
      v78 = llvm::AttributeSet::end(&v100);
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
      llvm::SmallVectorImpl<llvm::Value *>::resizeImpl<false>(__p, *(EntryFunction + 12));
      if (v105)
      {
        if (v106)
        {
          v81 = 8 * v106;
          v82 = v104;
          while (*v82 >= 0xFFFFFFFE)
          {
            v82 += 2;
            v81 -= 8;
            if (!v81)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          v82 = v104;
        }

        v83 = &v104[2 * v106];
        while (v82 != v83)
        {
          v84 = *v82;
          v85 = v82[1];
          v86 = *(this + 5);
          v107.__r_.__value_.__r.__words[0] = *(EntryFunction + 14);
          llvm::compat::getParamAttrs();
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

          *(__p[0].__r_.__value_.__r.__words[0] + 8 * v84) = *(v73 + 88) + 40 * v85;
          do
          {
            v82 += 2;
          }

          while (v82 != v83 && *v82 >= 0xFFFFFFFE);
        }
      }

LABEL_106:
      v87 = *(this + 5);
      __src.__r_.__value_.__r.__words[0] = "entry";
      LOWORD(v110) = 259;
      llvm::BasicBlock::Create(v87, &__src, v73, 0, v80);
    }

    v9 = 0;
    v10 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
    while (1)
    {
      v11 = *(v10 - 8 * v8);
      v119 = v11;
      v12 = *(*&v11[-2 * v11[2]] + 128);
      v13 = (v12 + 24);
      if (*(v12 + 32) >= 0x41u)
      {
        v13 = *v13;
      }

      v14 = *v13;
      v117[0] = v14;
      if (*(EntryFunction + 9))
      {
        llvm::Function::BuildLazyArguments(EntryFunction);
        v14 = v117[0];
        v11 = v119;
      }

      __src.__r_.__value_.__r.__words[0] = *(*(EntryFunction + 11) + 40 * v14);
      __p[0].__r_.__value_.__s.__data_[0] = 0;
      __p[0].__r_.__value_.__s.__data_[4] = 0;
      if (isBufferMetadata(v11))
      {
        v15 = (*(__src.__r_.__value_.__r.__words[0] + 8) & 0xFE) == 0x12 ? *(**(__src.__r_.__value_.__r.__words[0] + 16) + 8) & 0xFFFFFF00 : *(__src.__r_.__value_.__r.__words[0] + 8) & 0xFFFFFF00;
        if (v15 == 256 || v15 == 512)
        {
          LocationIndex = MTLBoundsCheck::getLocationIndex(v119);
          if ((__p[0].__r_.__value_.__s.__data_[4] & 1) == 0)
          {
            __p[0].__r_.__value_.__s.__data_[4] = 1;
          }

          LODWORD(__p[0].__r_.__value_.__l.__data_) = LocationIndex;
          if (LocationIndex < 0x1F)
          {
            if ((*(*(this + 4) + 22) & 2) == 0 && !*(v122 + LocationIndex))
            {
              *(v122 + LocationIndex) = __src.__r_.__value_.__r.__words[0];
            }

            v17 = llvm::DenseMapBase<llvm::DenseMap<unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>,unsigned int,llvm::SmallVector<unsigned int,2u>,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,llvm::SmallVector<unsigned int,2u>>>::FindAndConstruct(v102, __p);
            llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned long long const&>((v17 + 2), v117);
            goto LABEL_26;
          }

          MTLBoundsCheck::setLocationIndex(v119);
        }
      }

      v18 = v128;
      LODWORD(v107.__r_.__value_.__l.__data_) = v117[0];
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::FindAndConstruct(&v104, &v107)[1] = v18;
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v127, &__src);
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v125, &v119);
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

  v88 = *MEMORY[0x277D85DE8];
  return !isLibraryModule;
}

void sub_257A3725C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
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
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1, 0);
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
  result = MEMORY[0x259C6A8D0](32 * v8, 8);
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
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_257A6D000)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 16) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_257A6DA10)))).i32[1])
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
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_257A6D000)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 16) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 8) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_257A6DA10)))).i32[1])
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

void sub_257A38040(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
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
  result = MEMORY[0x259C6A8D0](8 * v8, 4);
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
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_257A6D000)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 2) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_257A6DA10)))).i32[1])
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
      v14 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_257A6D000)));
      if (vuzp1_s16(v14, *v11.i8).u8[0])
      {
        *(v12 - 4) = -1;
      }

      if (vuzp1_s16(v14, *&v11).i8[2])
      {
        *(v12 - 2) = -1;
      }

      if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v13, xmmword_257A6DA10)))).i32[1])
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

void sub_257A385D8(_Unwind_Exception *exception_object)
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

  llvm::SmallVectorImpl<llvm::User *>::append<std::move_iterator<llvm::User **>,void>(a1, &v14[-8 * v11], (v7 + 8 * v9));
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
    v2 = off_27984E628[a1 - 1];
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
    v2 = off_27984E668[a1 + 1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t MTLCompilerObject::MTLCompilerObject(uint64_t a1, __int128 *a2)
{
  *(a1 + 58) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *(a1 + 80) = v3;
  }

  if (disableFreezer(void)::disableFreezerOnce != -1)
  {
    MTLCompilerObject::MTLCompilerObject();
  }

  *(a1 + 32) = MTLGPUCompilerCreate();
  return a1;
}

void sub_257A38944(_Unwind_Exception *a1)
{
  free(v1[8]);
  v1[8] = 0;
  v3 = v1[1];
  if (v3)
  {
    v1[2] = v3;
    operator delete(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
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
        MEMORY[0x259C6B890]();
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

void sub_257A38C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

    JUMPOUT(0x259C6B890);
  }

  return result;
}

uint64_t MTLCompilerObject::initDriverPlugin(MTLCompilerObject *this, const char *__s2, const void *a3, size_t a4)
{
  v7 = *(this + 1);
  v8 = *(this + 2) - v7;
  if (!v8)
  {
LABEL_14:
    operator new();
  }

  v9 = 0;
  v10 = v8 >> 3;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  while (1)
  {
    v12 = *(v7 + 8 * v9);
    if (strcmp(*(v12 + 104), __s2))
    {
      goto LABEL_6;
    }

    if (a3)
    {
      break;
    }

    if (!*(v12 + 112))
    {
      return v9;
    }

LABEL_6:
    if (v11 == ++v9)
    {
      goto LABEL_14;
    }
  }

  if (*(v12 + 120) != a4 || memcmp(a3, *(v12 + 112), a4))
  {
    goto LABEL_6;
  }

  return v9;
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

void sub_257A39128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
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

void sub_257A3921C(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_257A3931C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x257A3930CLL);
}

void parseFunctions(llvm::Module *a1, uint64_t *a2)
{
  std::vector<FunctionDesc>::reserve(a2, 8uLL);
  v4 = 0;
  v5 = -1;
  while (1)
  {
    v6 = entryPointsMetadata[v4];
    LOWORD(Name) = 257;
    if (*v6)
    {
      v117 = v6;
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    LOBYTE(Name) = v7;
    NamedMetadata = llvm::Module::getNamedMetadata(a1, &v117);
    if (!NamedMetadata || !llvm::NamedMDNode::getNumOperands(NamedMetadata))
    {
      goto LABEL_9;
    }

    if ((entryPointsType[v4] - 5) > 1)
    {
      break;
    }

    v5 = v4;
LABEL_9:
    if (++v4 == 7)
    {
      goto LABEL_12;
    }
  }

  v5 = v4;
LABEL_12:
  v9 = entryPointsMetadata[v5];
  LOWORD(Name) = 257;
  if (*v9)
  {
    v117 = v9;
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  LOBYTE(Name) = v10;
  v11 = llvm::Module::getNamedMetadata(a1, &v117);
  Operand = llvm::NamedMDNode::getOperand(v11);
  v13 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  Name = 0;
  v121 = 0;
  v125 = 0u;
  *__src = 0u;
  v127 = 0u;
  v128 = 0u;
  v117 = v13;
  v14 = Operand - 8 * *(Operand + 8);
  v118 = vextq_s8(*(v14 + 8), *(v14 + 8), 8uLL);
  Name = llvm::Value::getName(v13);
  v121 = v15;
  v122 = v5;
  Subprogram = llvm::Function::getSubprogram(v13);
  if (Subprogram)
  {
    v17 = *(Subprogram + 24);
  }

  else
  {
    v17 = 0;
  }

  v123 = v17;
  BYTE1(v124) = -4;
  v119 = 0;
  v128 = 0uLL;
  v18 = *(Operand + 8);
  if (v18 >= 4)
  {
    v19 = Operand + 24;
    for (i = 3; i < v18; ++i)
    {
      v21 = *(v19 - 8 * v18);
      if (llvm::MDNode::classof(v21))
      {
        v22 = *(v21 + 8);
        if (v22 >= 2)
        {
          v23 = (v21 - 8 * v22);
          v24 = *v23;
          if (!**v23)
          {
            v25 = v23[1];
            String = llvm::MDString::getString(*v23);
            if (v27 == 19)
            {
              v28 = *String == 0x726573752E726961 && String[1] == 0x7461746F6E6E615FLL;
              v29 = v28 && *(String + 11) == 0x6E6F697461746F6ELL;
              if (v29 && !*v25)
              {
                *&v128 = llvm::MDString::getString(v25);
                *(&v128 + 1) = v30;
              }
            }

            if (!*v24)
            {
              v31 = llvm::MDString::getString(v24);
              if (v32 == 18)
              {
                v33 = *v31 == 0x746974732E726961 && *(v31 + 8) == 0x6E695F676E696863;
                if (v33 && *(v31 + 16) == 28518)
                {
                  v119 = v21;
                }
              }
            }
          }
        }
      }

      v18 = *(Operand + 8);
      v19 += 8;
    }
  }

  if (entryPointsType[v122] != 6)
  {
    goto LABEL_179;
  }

  v35 = *(Operand - 8 * v18 + 24);
  v36 = llvm::MDString::getString(v35);
  if (v37 == 12 && *v36 == 0x616972742E726961 && *(v36 + 8) == 1701603182)
  {
    v45 = v124 & 0xFFFCFFFF | 0x10000;
    goto LABEL_66;
  }

  v39 = llvm::MDString::getString(v35);
  if (v40 == 16 && *v39 == 0x6E756F622E726961 && v39[1] == 0x786F625F676E6964)
  {
    v45 = v124 & 0xFFFCFFFF | 0x20000;
    goto LABEL_66;
  }

  v42 = llvm::MDString::getString(v35);
  if (v43 == 9 && *v42 == 0x767275632E726961 && *(v42 + 8) == 101)
  {
    v45 = v124 | 0x30000;
LABEL_66:
    v124 = v45;
  }

  v18 = *(Operand + 8);
  if (v18 >= 5)
  {
    v46 = Operand + 32;
    for (j = 4; j < v18; ++j)
    {
      v48 = *(v46 - 8 * v18);
      if (!*v48)
      {
        v49 = llvm::MDString::getString(v48);
        if (v50 == 17)
        {
          v51 = *v49 == 0x616972742E726961 && *(v49 + 8) == 0x7461645F656C676ELL;
          if (v51 && *(v49 + 16) == 97)
          {
            v92 = 2;
            goto LABEL_166;
          }
        }

        v53 = llvm::MDString::getString(v48);
        if (v54 == 14 && *v53 == 0x74736E692E726961 && *(v53 + 6) == 0x676E69636E617473)
        {
          v92 = 1;
          goto LABEL_166;
        }

        v56 = llvm::MDString::getString(v48);
        if (v57 == 20)
        {
          v58 = *v56 == 0x6C726F772E726961 && *(v56 + 8) == 0x5F65636170735F64;
          if (v58 && *(v56 + 16) == 1635017060)
          {
            v92 = 3;
            goto LABEL_166;
          }
        }

        v60 = llvm::MDString::getString(v48);
        if (v61 == 19)
        {
          v62 = *v60 == 0x74736E692E726961 && v60[1] == 0x746F6D5F65636E61;
          if (v62 && *(v60 + 11) == 0x6E6F69746F6D5F65)
          {
            v92 = 4;
            goto LABEL_166;
          }
        }

        v64 = llvm::MDString::getString(v48);
        if (v65 == 20)
        {
          v66 = *v64 == 0x6D6972702E726961 && *(v64 + 8) == 0x6F6D5F6576697469;
          if (v66 && *(v64 + 16) == 1852795252)
          {
            v92 = 5;
            goto LABEL_166;
          }
        }

        v68 = llvm::MDString::getString(v48);
        if (v69 == 19)
        {
          v70 = *v68 == 0x657478652E726961 && v68[1] == 0x6D696C5F6465646ELL;
          if (v70 && *(v68 + 11) == 0x7374696D696C5F64)
          {
            v92 = 6;
            goto LABEL_166;
          }
        }

        v72 = llvm::MDString::getString(v48);
        if (v73 == 14 && *v72 == 0x767275632E726961 && *(v72 + 6) == 0x617461645F657672)
        {
          v92 = 7;
          goto LABEL_166;
        }

        v75 = llvm::MDString::getString(v48);
        if (v76 == 26)
        {
          v77 = *v75 == 0x746C756D2E726961 && *(v75 + 8) == 0x5F6C6576656C5F69;
          v78 = v77 && *(v75 + 16) == 0x69636E6174736E69;
          if (v78 && *(v75 + 24) == 26478)
          {
            v129[0] = 1;
            std::vector<MTLTagType>::emplace_back<MTLTagType>(&__src[1], v129);
            v92 = 8;
            goto LABEL_166;
          }
        }

        v80 = llvm::MDString::getString(v48);
        if (v81 == 32)
        {
          v82 = *v80 == 0x65746E692E726961 && v80[1] == 0x6E6F697463657372;
          v83 = v82 && v80[2] == 0x6F6974636E75665FLL;
          if (v83 && v80[3] == 0x7265666675625F6ELL)
          {
            v92 = 9;
            goto LABEL_166;
          }
        }

        v85 = llvm::MDString::getString(v48);
        if (v86 == 13 && *v85 == 0x726573752E726961 && *(v85 + 5) == 0x617461645F726573)
        {
          v92 = 10;
          goto LABEL_166;
        }

        v88 = llvm::MDString::getString(v48);
        if (v89 != 19 || (*v88 == 0x726573752E726961 ? (v90 = v88[1] == 0x7461746F6E6E615FLL) : (v90 = 0), v90 ? (v91 = *(v88 + 11) == 0x6E6F697461746F6ELL) : (v91 = 0), !v91))
        {
          v92 = 0;
LABEL_166:
          v93 = v127;
          if (v127 >= *(&v127 + 1))
          {
            v95 = __src[1];
            v96 = v127 - __src[1];
            v97 = (v127 - __src[1]) >> 3;
            v98 = v97 + 1;
            if ((v97 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v99 = *(&v127 + 1) - __src[1];
            if ((*(&v127 + 1) - __src[1]) >> 2 > v98)
            {
              v98 = v99 >> 2;
            }

            v102 = v99 >= 0x7FFFFFFFFFFFFFF8;
            v100 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v102)
            {
              v100 = v98;
            }

            if (v100)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src[1], v100);
            }

            *(8 * v97) = v92;
            v94 = 8 * v97 + 8;
            memcpy(0, v95, v96);
            v101 = __src[1];
            __src[1] = 0;
            v127 = v94;
            if (v101)
            {
              operator delete(v101);
            }
          }

          else
          {
            *v127 = v92;
            v94 = v93 + 8;
          }

          *&v127 = v94;
        }
      }

      v18 = *(Operand + 8);
      v46 += 8;
    }
  }

LABEL_179:
  v102 = entryPointsType[v122] == 1 && v18 >= 4;
  if (v102)
  {
    v103 = Operand + 24;
    v104 = 3;
    do
    {
      v105 = *(v103 - 8 * v18);
      v106 = *(v105 + 8);
      if (v106 >= 2)
      {
        v107 = llvm::MDString::getString(*(v105 - 8 * v106));
        if (v108 == 9 && *v107 == 0x637461702E726961 && *(v107 + 8) == 104)
        {
          v110 = llvm::MDString::getString(*(v105 - 8 * *(v105 + 8) + 8));
          if (v111 == 8 && *v110 == 0x656C676E61697274)
          {
            v112 = 256;
          }

          else
          {
            v112 = 512;
          }

          v113 = v124 & 0xFFFFFCFF | v112;
          v124 = v113;
          v114 = *(v105 + 8);
          if (v114 >= 4)
          {
            v115 = *(*(v105 - 8 * v114 + 24) + 128);
            v116 = (v115 + 24);
            if (*(v115 + 32) >= 0x41u)
            {
              v116 = *v116;
            }

            v124 = v113 & 0xFFFF03FF | ((*v116 & 0x3F) << 10);
          }
        }
      }

      ++v104;
      v18 = *(Operand + 8);
      v103 += 8;
    }

    while (v104 < v18);
  }

  std::vector<FunctionDesc>::push_back[abi:ne200100](a2, &v117);
  if (__src[1])
  {
    *&v127 = __src[1];
    operator delete(__src[1]);
  }

  v129[0] = &v125;
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](v129);
}

void sub_257A39D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  FunctionDesc::~FunctionDesc(va);
  _Unwind_Resume(a1);
}

void *std::vector<FunctionDesc>::reserve(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionDesc>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_257A39DFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<FunctionDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<FunctionDesc>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<FunctionDesc>::__emplace_back_slow_path<FunctionDesc const&>(a1, a2);
  }

  else
  {
    std::vector<FunctionDesc>::__construct_one_at_end[abi:ne200100]<FunctionDesc const&>(a1, a2);
    result = v3 + 136;
  }

  a1[1] = result;
  return result;
}

uint64_t eliminateOtherEntryPoints(llvm::Module *this, const char *a2, MTLFunctionType *a3)
{
  v6 = 0;
  v21 = 0;
  do
  {
    v7 = entryPointsMetadata[v6];
    v24 = 257;
    if (*v7)
    {
      v23[0] = v7;
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    LOBYTE(v24) = v8;
    NamedMetadata = llvm::Module::getNamedMetadata(this, v23);
    if (NamedMetadata)
    {
      v10 = NamedMetadata;
      v11 = 0;
      v22 = 0;
      while (v11 < llvm::NamedMDNode::getNumOperands(v10))
      {
        Operand = llvm::NamedMDNode::getOperand(v10);
        v23[0] = llvm::Value::getName(*(*(Operand - 8 * *(Operand + 8)) + 128));
        v23[1] = v13;
        if (a2)
        {
          v14 = strlen(a2);
        }

        else
        {
          v14 = 0;
        }

        ++v11;
        if (!llvm::StringRef::compare(v23, a2, v14))
        {
          if (a3)
          {
            *a3 = entryPointsType[v6];
          }

          llvm::TrackingMDRef::reset(&v22, Operand);
          v21 = 1;
          break;
        }
      }

      v15 = entryPointsType[v6];
      v16 = v15 > 8;
      v17 = (1 << v15) & 0x18E;
      if (!v16 && v17 != 0)
      {
        llvm::NamedMDNode::eraseFromParent(v10);
        if (v22)
        {
          if (entryPointsMetadata[v6])
          {
            v19 = strlen(entryPointsMetadata[v6]);
          }

          llvm::Module::getOrInsertNamedMetadata();
          llvm::NamedMDNode::addOperand();
        }
      }

      llvm::TrackingMDRef::~TrackingMDRef(&v22);
    }

    ++v6;
  }

  while (v6 != 7);
  return v21 & 1;
}

void sub_257A3A064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  llvm::TrackingMDRef::~TrackingMDRef(va);
  _Unwind_Resume(a1);
}

void *llvm::TrackingMDRef::reset(void *result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    result = llvm::MetadataTracking::untrack();
  }

  *v3 = a2;
  if (a2)
  {

    return llvm::MetadataTracking::track();
  }

  return result;
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

llvm::Constant *getLLVMConstantValue(llvm::LLVMContext *a1, MTLDataType a2, const unsigned __int8 *a3)
{
  ComponentType = MTLDataTypeGetComponentType();
  ComponentCount = MTLDataTypeGetComponentCount();
  if (ComponentType <= 32)
  {
    switch(ComponentType)
    {
      case 3:
        llvm::Type::getFloatTy(a1, v5);
        result = llvm::ConstantDataVector::getFP();
        break;
      case 16:
        llvm::Type::getHalfTy(a1, v5);
        result = llvm::ConstantDataVector::getFP();
        break;
      case 29:
LABEL_10:
        result = llvm::ConstantDataVector::get();
        break;
      default:
        goto LABEL_21;
    }
  }

  else
  {
    v7 = ComponentType - 37;
    if ((ComponentType - 37) > 0x30)
    {
      goto LABEL_20;
    }

    if (((1 << v7) & 0x11100) != 0)
    {
      result = llvm::ConstantDataVector::get();
    }

    else
    {
      if (((1 << v7) & 0x11) == 0)
      {
        if (((1 << v7) & 0x1100000000000) != 0)
        {
          result = llvm::ConstantDataVector::get();
          goto LABEL_15;
        }

LABEL_20:
        if (ComponentType != 33)
        {
LABEL_21:
          abort();
        }

        goto LABEL_10;
      }

      result = llvm::ConstantDataVector::get();
    }
  }

LABEL_15:
  if (ComponentCount == 1)
  {

    return llvm::Constant::getAggregateElement(result);
  }

  return result;
}

uint64_t MTLCompilerObject::getReadParametersFromRequest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  *a2 = *(a5 + 3);
  v6 = a3 + a5[2];
  *(a2 + 8) = a5[3];
  *(a2 + 16) = v6;
  LODWORD(v6) = *(a6 + 4);
  *(a2 + 65) = BYTE2(v6) & 1;
  *(a2 + 64) = (v6 & 0x8000) == 0;
  *(a2 + 80) = *(a6 + 268);
  v7 = *(a5 + 6);
  *(a2 + 100) = *(a5 + 10);
  *(a2 + 84) = v7;
  v8 = a5[5];
  *(a2 + 24) = v8;
  if (v8)
  {
    v9 = a3 + a5[4];
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 32) = v9;
  *(a2 + 48) = a3 + *a5;
  v10 = *(a3 + 32);
  if (v10 > a4)
  {
    goto LABEL_14;
  }

  v13 = *(a3 + 36);
  if ((v13 + v10) > a4)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    v15 = a3 + v10;
    if (strnlen((a3 + v10), *(a3 + 36)) < v13)
    {
      *(a2 + 56) = v15;
    }
  }

  *(a2 + 40) = *(a3 + 48);
  v16 = *(a3 + 168);
  if (v16 > a4 || (v17 = *(a3 + 172), (v17 + v16) > a4))
  {
LABEL_14:
    abort();
  }

  if (v17)
  {
    *(a2 + 72) = a3 + v16;
  }

  return 1;
}

uint64_t MTLCompilerObject::upgradeAIRModule(MTLCompilerObject *this, llvm::Module *a2, int a3, int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a4 | a3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = a3;
    v9 = 1024;
    v10 = a4;
    _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MTLCompiler upgrade pass forced to use air version %d.%d", v8, 0xEu);
  }

  result = MTLUpgradeAIRModule();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Module *MTLCompilerObject::readModuleFromBinaryRequest(uint64_t a1, unsigned __int16 *a2, llvm::LLVMContext *a3, MTLFunctionType *a4, void **a5, unint64_t *a6, int a7)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v45 = 0;
  v13 = *(a2 + 3);
  v14 = *(a2 + 4);
  v15 = *a2;
  if ((v15 | 2) == 3)
  {
    v16 = moduleFromOpenGLBitcode(v15 == 3, a3, *(a2 + 2), *(a2 + 1), v14, v13, a5, a6);
    v19 = v16;
    v45 = v16;
    v20 = *a2;
    *(a1 + 72) = 1;
    if (!v16)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Failed to process function bitcode(%d) in plugin", v20);
LABEL_55:
      v19 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v24 = *(a2 + 1);
    __p = *(a2 + 2);
    v39 = v24;
    v40 = &unk_257A6F51A;
    v41 = 0;
    llvm::getLazyBitcodeModule();
    llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(v49, v46);
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(v49);
    if (v47)
    {
      MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to read function bitcode.");
      if (v47)
      {
        goto LABEL_55;
      }

      v25 = v46[0];
      v46[0] = 0;
      if (!v25)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v19 = v46[0];
    v45 = v46[0];
    v46[0] = 0;
    v16 = llvm::Module::materializeAll(&__p, v45);
    v26 = __p;
    if (__p)
    {
      MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to materializeAll.");
      v16 = __p;
      if (__p)
      {
        v16 = (*(*__p + 8))(__p);
      }
    }

    if ((v47 & 1) == 0)
    {
      v16 = v46[0];
      v46[0] = 0;
      if (v16)
      {
        v27 = MEMORY[0x259C6AE50]();
        v16 = MEMORY[0x259C6B890](v27, 0x10B2C407FF26C1CLL);
      }
    }

    if (v26)
    {
      goto LABEL_52;
    }

    v20 = *a2;
  }

  if (v20 == 2)
  {
    v45 = 0;
    v16 = moduleFromOpenCLModule(a3, v19, v14, v13, a5, a6, v17, v18, v36);
    v19 = v16;
    v45 = v16;
    *(a1 + 73) = 1;
    if (!v16)
    {
      MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Failed to process function bitcode(%d) in plugin", *a2);
      goto LABEL_55;
    }
  }

  v21 = *(a2 + 7);
  if (v21)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v21);
    v22 = SHIBYTE(v40) >= 0 ? &__p : __p;
    v23 = SHIBYTE(v40) >= 0 ? SHIBYTE(v40) : v39;
    llvm::Module::setTargetTriple(v19, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }
  }

  if ((*(a1 + 72) & 1) != 0 || (v19 = v45, MTLCompilerObject::upgradeAIRModule(v16, v45, *(a2 + 10), *(a2 + 11))))
  {
    if (*(a2 + 64) == 1)
    {
      v19 = v45;
      if (*(v45 + 239) < 0)
      {
        std::string::__init_copy_ctor_external(&v44, *(v45 + 27), *(v45 + 28));
      }

      else
      {
        v44 = *(v45 + 9);
      }

      v48 = 260;
      v46[0] = &v44;
      MEMORY[0x259C6AE60](&__p, v46);
      v46[0] = "air.version";
      v48 = 259;
      if (llvm::Module::getNamedMetadata(v19, v46))
      {
        v28 = readVersionMetadata(v19, "air.version", 0, 0, 0) > 0x20003;
      }

      else
      {
        v28 = 0;
      }

      if (((_os_feature_enabled_impl() ^ 1) & v28 & 1) == 0 && v43 != 7)
      {
        MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Target OS is incompatible.");
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        v45 = 0;
        goto LABEL_53;
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }
    }

    if (!a7)
    {
      v33 = 0;
      *a4 = 0xFFFFLL;
      v19 = v45;
      while (1)
      {
        v34 = entryPointsMetadata[v33];
        v42 = 257;
        if (*v34)
        {
          __p = v34;
          v35 = 3;
        }

        else
        {
          v35 = 1;
        }

        LOBYTE(v42) = v35;
        if (llvm::Module::getNamedMetadata(v19, &__p))
        {
          break;
        }

        if (++v33 == 7)
        {
          goto LABEL_56;
        }
      }

      *a4 = entryPointsType[v33];
      goto LABEL_56;
    }

    v29 = *(a2 + 6);
    *a4 = MTLFunctionTypeVertex;
    v19 = v45;
    if (eliminateOtherEntryPoints(v45, v29, a4))
    {
      goto LABEL_56;
    }

    MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Function %s was not found in the module.", v29);
  }

  else
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to upgrade function bitcode");
  }

LABEL_52:
  v45 = 0;
  if (v19)
  {
LABEL_53:
    v25 = v19;
LABEL_54:
    v30 = MEMORY[0x259C6AE50](v25);
    MEMORY[0x259C6B890](v30, 0x10B2C407FF26C1CLL);
    goto LABEL_55;
  }

LABEL_56:
  v31 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t std::unique_ptr<llvm::Module>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x259C6AE50]();

    JUMPOUT(0x259C6B890);
  }

  return result;
}

void llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1;
    *a1 = 0;
    v7 = v3;
    v4 = llvm::errorToErrorCodeAndEmitErrors();
    *(a2 + 16) |= 1u;
    *a2 = v4;
    *(a2 + 8) = v5;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  else
  {
    *(a2 + 16) &= ~1u;
    v6 = *a1;
    *a1 = 0;
    *a2 = v6;
  }
}

void sub_257A3ABC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    MTLCompilerObject::readModuleFromBinaryRequest(a10);
  }

  _Unwind_Resume(exception_object);
}

double llvm::Module::setTargetTriple(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  result = *&__dst;
  *(a1 + 216) = __dst;
  *(a1 + 232) = v7;
  return result;
}

uint64_t readVersionMetadata(llvm::Module *a1, const char *a2, unsigned int a3, int a4, int a5)
{
  v8 = 1;
  v20 = 1;
  if (*a2)
  {
    v18 = a2;
    v8 = 3;
  }

  v19 = v8;
  NamedMetadata = llvm::Module::getNamedMetadata(a1, &v18);
  if (!NamedMetadata)
  {
    return (a5 + (a4 << 16));
  }

  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v11 = Operand - 8 * *(Operand + 8);
  v12 = *(*(v11 + 8 * a3) + 128);
  v13 = (v12 + 24);
  if (*(v12 + 32) >= 0x41u)
  {
    v13 = *v13;
  }

  v14 = *v13;
  v15 = *(*(v11 + 8 * (a3 + 1)) + 128);
  v16 = (v15 + 24);
  if (*(v15 + 32) >= 0x41u)
  {
    v16 = *v16;
  }

  return (*v16 + (v14 << 16));
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

void sub_257A3AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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

void sub_257A3AF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *parseFunctionConstants(llvm::LLVMContext *a1, const char *a2, unint64_t a3, unsigned int *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 <= 3)
  {
    goto LABEL_12;
  }

  v7 = *a2;
  v18 = malloc_type_malloc(16 * v7, 0x1020040D5A9D86FuLL);
  if (v7)
  {
    v8 = (v18 + 8);
    v9 = 4;
    v10 = v7;
    while (a3 > v9)
    {
      if (a3 - v9 <= 1)
      {
        break;
      }

      if (v9 + 2 >= a3)
      {
        break;
      }

      v11 = *&a2[v9];
      v12 = a2[v9 + 2];
      v13 = v9 + 3;
      v14 = _MTLConstantDataSize();
      if (v9 + 3 >= a3)
      {
        break;
      }

      v9 = v14 + v13;
      if (v14 + v13 > a3 || v14 >= 0x11)
      {
        break;
      }

      memcpy(__dst, &a2[v13], v14);
      *(v8 - 2) = v11;
      *v8 = getLLVMConstantValue(a1, v12, __dst);
      v8 += 2;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    abort();
  }

LABEL_11:
  *a4 = v7;
  v15 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t MTLCompilerObject::applyConstantValuesToArchive(uint64_t a1, llvm::LLVMContext *this, uint64_t a3, uint64_t a4, const char *a5, unint64_t a6, uint64_t a7, const char **a8)
{
  v19[0] = this;
  v19[2] = llvm::LLVMContext::getDiagnosticContext(this);
  v19[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(this);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
  v18 = 0;
  v13 = parseFunctionConstants(this, a5, a6, &v18);
  v14 = *(a1 + 32);
  v15 = MTLGPUCompilerSpecializeFunctionToBuffer();
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

void sub_257A3B1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(va);
  _Unwind_Resume(a1);
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

  std::string::basic_string[abi:ne200100]<0>(&v13, &unk_257A6F51A);
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

void sub_257A3B364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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
    v149 = &unk_27984E5E0;
    v150 = &v151;
    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v144 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_2;
    v145 = &unk_27984E608;
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
    v134 = &unk_27984E5E0;
    v135 = &v169;
    v128[0] = MEMORY[0x277D85DD0];
    v128[1] = 3221225472;
    v129 = ___ZN17MTLCompilerObject21serializeLibraryReplyEPmPcbPPN4llvm6ModuleEmmP21SerializedLibraryInfobjP21FrameworkPassesOutput_block_invoke_4;
    v130 = &unk_27984E608;
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

  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(v159);
  v115 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_257A3C2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&STACK[0x240], 8);
  STACK[0x360] = &STACK[0x228];
  std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x360]);
  free(a38);
  _Block_object_dispose(&a51, 8);
  STACK[0x240] = &a55;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(&a59);
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

char *MTLCompilerObject::serializeLibraryToArchiveReply(uint64_t a1, size_t *a2, const char **a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = a4;
  v9 = a3;
  v28 = a5;
  v12 = 0;
  if (a4)
  {
    v13 = a3;
    v14 = a4;
    do
    {
      if (*v13)
      {
        v12 += strlen(*v13) + 1;
      }

      ++v13;
      --v14;
    }

    while (v14);
    if (v12 >= 0xFFFFFFFF)
    {
      return 0;
    }

    v15 = v12 + 104;
    a5 = v28;
  }

  else
  {
    v15 = 104;
  }

  v27 = a2;
  v26 = a1;
  if (a5)
  {
    v16 = v15;
    v17 = LLVMGetBufferSize();
    if (a7)
    {
      v18 = v15 + v17;
    }

    else
    {
      v18 = 0;
    }

    v15 += v17 + a7;
    v19 = 3;
  }

  else
  {
    v18 = 0;
    LODWORD(a7) = 0;
    v17 = 0;
    v16 = 0;
    v19 = 2;
  }

  v20 = malloc_type_malloc(v15, 0x100004077774924uLL);
  *v20 = v19;
  *(v20 + 1) = 0;
  *(v20 + 4) = 0x6800000000;
  *(v20 + 3) = v12;
  *(v20 + 3) = 0;
  *(v20 + 4) = 0;
  *(v20 + 2) = 0;
  *(v20 + 10) = v16;
  *(v20 + 11) = v17;
  *(v20 + 12) = v18;
  *(v20 + 13) = a7;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  if (v8)
  {
    v21 = 0;
    do
    {
      v22 = *v9;
      if (*v9)
      {
        v23 = strlen(*v9) + 1;
        if (v8 != 1)
        {
          v22[v23] = 10;
        }

        memcpy(&v20[v21 + 104], v22, v23);
        free(v22);
        v21 += v23;
      }

      ++v9;
      --v8;
    }

    while (v8);
  }

  if ((v28 & 1) == 0)
  {
    MTLCompilerErrorObject::setErrorMessage((v26 + 64), v20 + 104);
    free(v20);
    return 0;
  }

  v24 = LLVMGetBufferStart();
  memcpy(&v20[v16], v24, v17);
  *v27 = v15;
  return v20;
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
        v7 = dword_257A6DE94[v10];
        v5 = dword_257A6DEA8[v10];
        v6 = dword_257A6DEBC[v10];
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

void sub_257A3CF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(&a23);
  MTLArgumentData::~MTLArgumentData(&a26);
  MEMORY[0x259C6A2B0](&a62);
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
    v22 = MEMORY[0x259C6AE50](a5);
    MEMORY[0x259C6B890](v22, 0x10B2C407FF26C1CLL);
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

    JUMPOUT(0x259C6B890);
  }

  return result;
}

BOOL MTLCompilerObject::readVisibleFunctions(uint64_t a1, uint64_t a2, llvm::LLVMContext *a3, unsigned int a4, unsigned int a5, uint64_t a6, unint64_t a7, uint64_t a8, std::string *a9)
{
  v23 = a1;
  v34 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v12 = a9;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    a1 = std::string::append(v12, "STRIP { ");
  }

  if (a5)
  {
    v13 = 0;
    v14 = (a6 + a4);
    v15 = a5;
    v16 = 1;
    v17 = a5;
    while (1)
    {
      v28 = 0;
      v29 = 0u;
      v30 = 0u;
      memset(v31, 0, 26);
      v32 = 0u;
      memset(v33, 0, sizeof(v33));
      MTLCompilerObject::getReadParametersFromRequest(a1, &v28, a6, a7, v14, a8);
      v27 = 0;
      v18 = MTLCompilerObject::readModuleFromBinaryRequest(v23, &v28, a3, &v27, 0, 0, 1);
      if (!v18)
      {
        break;
      }

      v19 = v18;
      if (v12)
      {
        std::string::append(a9, v31[1]);
        std::string::append(a9, " { } ");
      }

      a1 = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2, v19);
      v13 = v16 >= v15;
      v14 += 14;
      ++v16;
      if (!--v17)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    if (v12)
    {
      std::string::append(v12, "}\n");
    }

    v13 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
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

uint64_t MTLCompilerObject::invokeFunctionLoader(uint64_t a1, unsigned int *a2, unint64_t a3, llvm::LLVMContext *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76[1] = *MEMORY[0x277D85DE8];
  if (a6 && (v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a6 length:a7 freeWhenDone:0], (v15 = objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAC58], "propertyListWithData:options:format:error:", v14, 0, 0, 0), "objectForKeyedSubscript:", @"LinkerScript_module"), "UTF8String")) != 0))
  {
    LoaderScript = MTLCompilerObject::createLoaderScript(a1, v15, a8);
  }

  else
  {
    LoaderScript = 0;
  }

  v62 = 0;
  v63 = 0;
  v67 = a5;
  llvm::SmallVector<LLVMOpaqueModule *,1u>::SmallVector(&v74, &v67, 1);
  if (!MTLCompilerObject::readVisibleFunctions(a1, &v74, a4, a2[37], a2[36], a2, a3, a2, 0))
  {
    (*(a8 + 16))(a8, 2 * (*(a1 + 64) != 0), 0, 0);
    v33 = 0;
    goto LABEL_51;
  }

  if (a2[38])
  {
    v46 = a4;
    v47 = a1;
    v45 = a2;
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:a2 + a2[39] length:?];
    v64 = 0;
    v17 = MEMORY[0x277CCAAC8];
    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v17 unarchivedObjectOfClasses:objc_msgSend(v18 fromData:"setWithObjects:" error:{v19, v20, objc_opt_class(), 0), v16, &v64}];
    v44 = a8;
    v67 = v69;
    v68 = 0;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v58 objects:v73 count:16];
    if (v22)
    {
      v23 = *v59;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v59 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v58 + 1) + 8 * i);
          __s.__r_.__value_.__r.__words[0] = &__s.__r_.__value_.__r.__words[2];
          __s.__r_.__value_.__l.__size_ = 0;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v26 = [v21 objectForKeyedSubscript:v25];
          v27 = [v26 countByEnumeratingWithState:&v54 objects:v72 count:16];
          if (v27)
          {
            v28 = *v55;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v55 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__s, [*(*(&v54 + 1) + 8 * j) UTF8String]);
              }

              v27 = [v26 countByEnumeratingWithState:&v54 objects:v72 count:16];
            }

            while (v27);
          }

          [v25 UTF8String];
          v30 = MTLFunctionGroupCreate();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v67, v30);
          if (__s.__r_.__value_.__l.__data_ != &__s.__r_.__value_.__r.__words[2])
          {
            free(__s.__r_.__value_.__l.__data_);
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v58 objects:v73 count:16];
      }

      while (v22);
    }

    a1 = v47;
    v31 = *(v47 + 32);
    MTLGPUCompilerSetFunctionGroups();
    a8 = v44;
    a2 = v45;
    a4 = v46;
    if (v67 != v69)
    {
      free(v67);
    }
  }

  memset(&__s, 0, sizeof(__s));
  if (MTLCompilerObject::readVisibleFunctions(a1, &v74, a4, a2[41], a2[40], a2, a3, a2, &__s))
  {
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__s.__r_.__value_.__l.__size_)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
        goto LABEL_33;
      }
    }

    else if (*(&__s.__r_.__value_.__s + 23))
    {
      p_s = &__s;
LABEL_33:
      LoaderScript = MTLCompilerObject::createLoaderScript(a1, p_s, a8);
    }

    v67 = 0;
    v68 = 0;
    v69[0] = v70;
    v69[1] = 0x400000000;
    v70[4] = v71;
    v70[5] = 0;
    v71[0] = 0;
    v71[1] = 1;
    v52 = &v67;
    __p[0] = 0;
    llvm::SmallVector<char const*,1u>::SmallVector(&v64, v75, __p);
    v34 = v65;
    if (v65)
    {
      v35 = 0;
      do
      {
        std::to_string(&v49, v35);
        v36 = std::string::insert(&v49, 0, "linked-air-blob-");
        v37 = *&v36->__r_.__value_.__l.__data_;
        v51 = v36->__r_.__value_.__r.__words[2];
        *__p = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        *(v64 + v35) = llvm::StringSaver::save();
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        ++v35;
      }

      while (v34 != v35);
    }

    v38 = *a2;
    v39 = *(a1 + 32);
    MTLGPUCompilerSetLoadingMode();
    v40 = *(a1 + 32);
    Modules = MTLGPUCompilerLoadModules();
    if (LoaderScript)
    {
      LLVMDisposeMemoryBuffer();
    }

    if (Modules)
    {
      v33 = v63;
    }

    else
    {
      (*(a8 + 16))(a8, 2, 0, 0, v62);
      free(v62);
      v33 = 0;
    }

    if (v64 != &v66)
    {
      free(v64);
    }

    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&v67);
    goto LABEL_49;
  }

  (*(a8 + 16))(a8, 2 * (*(a1 + 64) != 0), 0, 0);
  v33 = 0;
LABEL_49:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_51:
  if (v74 != v76)
  {
    free(v74);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v33;
}

void sub_257A3DBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t *a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a55 != &a57)
  {
    free(a55);
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&a58);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  v60 = *(v58 - 128);
  if (v60 != (v58 - 112))
  {
    free(v60);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::invokeLowerModule(uint64_t a1, uint64_t a2, int a3, llvm::Module *a4, MTLFunctionType a5, uint64_t a6)
{
  v10 = *(a1 + 32);
  if (*(a2 + 284))
  {
    v11 = *(a2 + 280);
    MTLGPUCompilerHandleSPIs();
    free(0);
  }

  if (a5 <= MTLFunctionTypeObject && ((1 << a5) & 0x186) != 0)
  {
    if ((*(a2 + 5) & 8) != 0)
    {
      MDNodeForFunctionType = getMDNodeForFunctionType(a4, a5);
      if (MDNodeForFunctionType)
      {
        v13 = *(*(MDNodeForFunctionType - *(MDNodeForFunctionType + 2)) + 128);
      }

      MTLGPUCompilerEnableDegenerateVertexAmplificationEmulation();
    }

    if (a5 == MTLFunctionTypeFragment && (*(a2 + 5) & 0x20) != 0)
    {
      v14 = getMDNodeForFunctionType(a4, MTLFunctionTypeFragment);
      v15 = (v14 - *(v14 + 2))[2];
      if (v15)
      {
        v16 = *(v15 + 8);
        if (v16)
        {
          v17 = v14;
          v18 = -8 * v16;
          while (1)
          {
            v19 = *(v15 + v18);
            v20 = *(v19 + 8);
            if (v20 >= 2)
            {
              v21 = *(v19 - 8 * v20 + 8);
              if (!*v21)
              {
                String = llvm::MDString::getString(v21);
                if (v23 == 29)
                {
                  v24 = *String == 0x646E65722E726961 && String[1] == 0x65677261745F7265;
                  v25 = v24 && String[2] == 0x5F79617272615F74;
                  if (v25 && *(String + 21) == 0x7865646E695F7961)
                  {
LABEL_73:
                    v66 = *(*(v17 - *(v17 + 2)) + 128);
                    v67 = *(*(v19 - 8 * *(v19 + 8)) + 128);
                    v68 = (v67 + 24);
                    if (*(v67 + 32) >= 0x41u)
                    {
                      v68 = *v68;
                    }

                    v69 = *v68;
                    if (*(v66 + 18))
                    {
                      llvm::Function::BuildLazyArguments(v66);
                    }

                    llvm::Constant::getNullValue(*(*(v66 + 88) + 40 * v69), v23);
                    llvm::Value::replaceAllUsesWith();
                    v70 = *(v19 + 16);
                    if ((v70 & 4) != 0)
                    {
                      v71 = *(v70 & 0xFFFFFFFFFFFFFFF8);
                    }

                    llvm::MDString::get();
                    llvm::MDNode::replaceOperandWith();
                    goto LABEL_41;
                  }
                }
              }

              v27 = *(v19 + 8);
              if (v27 >= 4)
              {
                v28 = *(v19 - 8 * v27 + 24);
                if (!*v28)
                {
                  v29 = llvm::MDString::getString(v28);
                  if (v23 == 29)
                  {
                    break;
                  }
                }
              }
            }

LABEL_40:
            v18 += 8;
            if (!v18)
            {
              goto LABEL_41;
            }
          }

          v30 = bswap64(*v29);
          v31 = 0x6169722E72656E64;
          if (v30 == 0x6169722E72656E64)
          {
            v30 = bswap64(v29[1]);
            if (v30 == 0x65725F7461726765)
            {
              v30 = bswap64(v29[2]);
              v31 = 0x745F61727261795FLL;
              if (v30 == 0x745F61727261795FLL)
              {
                v30 = bswap64(*(v29 + 21));
                v31 = 0x61795F696E646578;
                if (v30 == 0x61795F696E646578)
                {
                  v32 = 0;
                  goto LABEL_39;
                }
              }
            }

            else
            {
              v31 = 0x65725F7461726765;
            }
          }

          if (v30 < v31)
          {
            v32 = -1;
          }

          else
          {
            v32 = 1;
          }

LABEL_39:
          if (!v32)
          {
            goto LABEL_73;
          }

          goto LABEL_40;
        }
      }
    }
  }

LABEL_41:
  v33 = *(a2 + 4);
  MTLGPUCompilerEnableRaytracingEmulation();
  v34 = *(a2 + 4);
  MTLGPUCompilerSetRaytracingEmulationIndirectAccelerationStructures();
  v35 = *(a2 + 232);
  MTLGPUCompilerSetRaytracingEmulationMaxAccelerationStructureTraversalDepth();
  v36 = *(a2 + 4);
  MTLGPUCompilerEnable16BitTextureCoordinateEmulation();
  v37 = *(a2 + 4);
  MTLGPUCompilerEnableTLSEmulation();
  v38 = *(a2 + 4);
  MTLGPUCompilerEnableResourcePatchingInstrumentation();
  v39 = *(a2 + 4);
  MTLGPUCompilerEnableResourceUsageInstrumentation();
  v40 = *(a2 + 4);
  MTLGPUCompilerEnableExternallyInitializedVariableSupport();
  v41 = *(a2 + 4);
  MTLGPUCompilerEnableBFloatEmulation();
  MTLGPUCompilerEnableDoubleEmulation();
  if (a5 <= MTLFunctionTypeObject && ((1 << a5) & 0x18C) != 0)
  {
    if (*(a2 + 200))
    {
      v42 = (a2 + *(a2 + 196) + *(a2 + *(a2 + 196)));
      v43 = (v42 - *v42);
      if (*v43 >= 9u)
      {
        v44 = v43[4];
        if (v44)
        {
          v45 = *(v42 + v44);
          if (v45 == 4)
          {
            v56 = Air::PipelineScript::pipeline_as_mesh_render(v42);
            if (!v56)
            {
              goto LABEL_70;
            }

            if (a5 == MTLFunctionTypeMesh)
            {
              v60 = (v56 - *v56);
              if (*v60 < 0xDu)
              {
                goto LABEL_70;
              }

              v61 = v60[6];
              if (!v61)
              {
                goto LABEL_70;
              }

              v49 = (v56 + v61 + *(v56 + v61));
              v62 = (v49 - *v49);
              if (*v62 < 0x21u)
              {
                goto LABEL_70;
              }

              v51 = v62[16];
              if (!v51)
              {
                goto LABEL_70;
              }
            }

            else
            {
              if (a5 != MTLFunctionTypeObject)
              {
                goto LABEL_70;
              }

              v57 = (v56 - *v56);
              if (*v57 < 0xBu)
              {
                goto LABEL_70;
              }

              v58 = v57[5];
              if (!v58)
              {
                goto LABEL_70;
              }

              v49 = (v56 + v58 + *(v56 + v58));
              v59 = (v49 - *v49);
              if (*v59 < 0x1Fu)
              {
                goto LABEL_70;
              }

              v51 = v59[15];
              if (!v51)
              {
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v45 == 3)
            {
              v46 = Air::PipelineScript::pipeline_as_tile_render(v42);
              if (!v46)
              {
                goto LABEL_70;
              }
            }

            else
            {
              if (v45 != 2)
              {
                goto LABEL_70;
              }

              v46 = Air::PipelineScript::pipeline_as_compute(v42);
              if (!v46)
              {
                goto LABEL_70;
              }
            }

            v47 = (v46 - *v46);
            if (*v47 < 7u)
            {
              goto LABEL_70;
            }

            v48 = v47[3];
            if (!v48)
            {
              goto LABEL_70;
            }

            v49 = (v46 + v48 + *(v46 + v48));
            v50 = (v49 - *v49);
            if (*v50 < 0x19u)
            {
              goto LABEL_70;
            }

            v51 = v50[12];
            if (!v51)
            {
              goto LABEL_70;
            }
          }

          v52 = v49 + v51 + *(v49 + v51);
          if (*v52 >= 3u)
          {
            v53 = *(v52 + 4);
            v54 = *(v52 + 12);
            v55 = *(v52 + 20);
            MTLGPUCompilerSetRequiredThreadsPerThreadgroup();
          }
        }
      }
    }
  }

LABEL_70:
  v63 = *(a2 + 208);
  MTLGPUCompilerSetNativeArch();
  v64 = *(a1 + 32);
  if (!MTLGPUCompilerLowerModule())
  {
    (*(a6 + 16))(a6, 2, 0, 0, 0);
  }

  free(0);
  return 0;
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

  MEMORY[0x259C6A4D0](v35);
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

    if ((atomic_load_explicit(&qword_28153FBD8, memory_order_acquire) & 1) == 0)
    {
      MTLCompilerObject::downgradeAndLoadModuleRequest();
    }

    qword_27F8ECD94 = qword_27F8ECD94 & 0xFFFFFFFFFFFFFFEFLL | (8 * *(v14 + 8)) & 0x10 | 0xC0000;
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

void sub_257A3E94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::runFrameworkPasses(uint64_t a1, uint64_t *a2, void *a3, llvm::LLVMContext *a4)
{
  v4 = a2[4];
  if ((*v4 & 0x80000000) == 0)
  {
    return 1;
  }

  v6 = a4;
  v10 = v4[1];
  if ((*v4 & 0x800000) != 0 || ((v10 & 2) != 0 ? (v11 = a3[17] == 0) : (v11 = 0), !v11))
  {
    if (!MTLCompilerObject::loadModule(a1, a2, a3, a4))
    {
      return 0;
    }

    if ((*(a1 + 72) & 1) == 0)
    {
      v15 = a2[6];
      v16 = MTLWriteAIRReflectionToMemoryBuffer();
      std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](a3 + 21, v16);
    }
  }

  if (v10 & 0x40000000) == 0 && (MTLCompilerObject::generateReflection(a1, a2, a3))
  {
    return 0;
  }

  MTLCompilerObject::deserializePluginData(a1, a2, a3);
  MTLCompilerObject::runDebugInstrumentationPass(a1, a2, a3);
  if ((v10 & 2) == 0 && !MTLCompilerObject::lowerModule(a1, a2, a3, v6))
  {
    return 0;
  }

  *v18 = 0u;
  *__p = 0u;
  v20 = 0u;
  v21 = v22;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  if ((MTLCompilerObject::runFWPassesForFunctionType(a1, a2, v12, v18) & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v13 = a2[6];
    v14 = MTLWriteAIRReflectionToMemoryBuffer();
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](a3 + 22, v14);
  }

  if (v10 & 0x40000000) != 0 && (MTLCompilerObject::generateReflection(a1, a2, a3))
  {
LABEL_18:
    v5 = 0;
  }

  else
  {
    MTLCompilerObject::patchReflection(a1, a2, a3);
    v5 = MTLCompilerObject::runLinkingPasses(a1, a2, a3, v18);
  }

  std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(&v21, v22[0]);
  if (__p[1])
  {
    *&v20 = __p[1];
    operator delete(__p[1]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  return v5;
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
  std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::__rehash<true>(&v90, v49);
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

void sub_257A3F628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
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

void sub_257A3F868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

void sub_257A3FCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33)
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
    MEMORY[0x259C6B680](__p, Name);
    llvm::CloneModule();
    v14 = v18;
    MTLMetalLibDestroy();
  }

  else
  {
    MEMORY[0x259C6B680](__p, a4 + a4[22]);
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

void sub_257A3FF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void MTLCompilerObject::buildSpecializedFunctionRequest(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  v41 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "MTLSpecializeFunctionToArchive");
  if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
  {
    MTLCompilerObject::buildSpecializedFunctionRequest();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1 + 80;
    if (*(a1 + 103) < 0)
    {
      v9 = *(a1 + 80);
    }

    p_p = &__p;
    if (DiagnosticContext < 0)
    {
      p_p = __p;
    }

    *buf = 136446722;
    *v45 = v9;
    *&v45[8] = 2082;
    *&v45[10] = p_p;
    *&v45[18] = 2080;
    *&v46 = "function specialization";
    _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", buf, 0x20u);
  }

  v11 = mach_absolute_time();
  if (SHIBYTE(DiagnosticContext) < 0)
  {
    operator delete(__p);
  }

  v38 = 0;
  *buf = 0;
  *&v45[4] = 0u;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  if ((*(a2 + 5) & 2) != 0)
  {
    v11 = mach_absolute_time();
  }

  MEMORY[0x259C6A4D0](v37);
  *&__p = v37;
  DiagnosticContext = llvm::LLVMContext::getDiagnosticContext(v37);
  *(&__p + 1) = llvm::LLVMContext::getDiagnosticHandlerCallBack(v37);
  v12 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  MTLCompilerObject::getReadParametersFromRequest(v12, buf, a2, a3, (a2 + 88), a2);
  v36 = 1;
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(a1, buf, v37, &v36, 0, 0, 1);
  v14 = ModuleFromBinaryRequest;
  v34 = 0;
  v35 = ModuleFromBinaryRequest;
  v33 = 0;
  if (!ModuleFromBinaryRequest)
  {
    (*(a5 + 16))(a5, 2 * (*(a1 + 64) != 0), 0, 0);
LABEL_39:
    v25 = 0;
    v24 = 0;
    v22 = 0;
    goto LABEL_40;
  }

  v15 = *(a2 + 160);
  v16 = *(a2 + 12);
  if (!v16)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    if (!v15)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v17 = *(a2 + 8);
  if ((*(a2 + 5) & 2) != 0)
  {
    v18 = mach_absolute_time();
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    ModuleFromBinaryRequest = MTLCompilerObject::applyConstantValues(a1, v37, v14, a2 + 236, (a2 + v17), v16, v48, &v33);
    v20 = ModuleFromBinaryRequest;
    if (ModuleFromBinaryRequest)
    {
      v19 = 0;
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  ModuleFromBinaryRequest = MTLCompilerObject::applyConstantValuesToArchive(a1, v37, v14, a2 + 236, (a2 + v17), v16, v48, &v33);
  v19 = ModuleFromBinaryRequest;
  v34 = ModuleFromBinaryRequest;
  if (!ModuleFromBinaryRequest)
  {
LABEL_38:
    free(v33);
    (*(a5 + 16))(a5, 2 * (*(a1 + 64) != 0), 0, 0);
    goto LABEL_39;
  }

  v20 = 0;
LABEL_26:
  if (*(a2 + 160))
  {
LABEL_27:
    ModuleFromBinaryRequest = MTLCompilerObject::invokeLoaderForSpecializedFunction(a1, &v35, v20, a2, a3, v37, a5);
    v19 = ModuleFromBinaryRequest;
    v34 = ModuleFromBinaryRequest;
  }

LABEL_28:
  if ((*(a2 + 2) & 0x80) != 0)
  {
    *&v32 = 0;
    MTLCompilerObject::insertFunctionInArchive(ModuleFromBinaryRequest, a2, buf, &v34);
  }

  if ((*(a2 + 5) & 2) != 0)
  {
    v22 = (*&gMachTimeToNS * (mach_absolute_time() - v18));
    LODWORD(v32) = 1;
    *(&v32 + 1) = v22;
    std::vector<CompileTimeData>::push_back[abi:ne200100](&v39, &v32);
    v23 = (v40 - v39) >> 4;
    if (v23 == -2)
    {
      v21 = 0;
    }

    else
    {
      v21 = (12 * v23 + 28);
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v24 = MTLCompilerObject::serializeLibraryToArchiveReply(a1, &v38, &v33, 1, 1, v19, v21);
  if (v19)
  {
    LLVMDisposeMemoryBuffer();
  }

  v25 = 1;
LABEL_40:
  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&__p);
  llvm::LLVMContext::~LLVMContext(v37);
  if (v25)
  {
    if (v24)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "MTLSpecializeFunctionToArchive");
      v26 = logCompileEnd(a1 + 80, v11, "function specialization", &__p, v48);
      if (SHIBYTE(DiagnosticContext) < 0)
      {
        operator delete(__p);
      }

      if ((*(a2 + 5) & 2) != 0)
      {
        LODWORD(__p) = 6;
        *(&__p + 1) = v26;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v39, &__p);
        LODWORD(__p) = 4;
        *(&__p + 1) = v26 - v22;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v39, &__p);
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
      std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v29, v39, v40, (v40 - v39) >> 4);
      if (v24[13])
      {
        v27 = v24[12];
        DiagnosticContext = 0;
        __p = 0uLL;
        std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&__p, v29, v30, (v30 - v29) >> 4);
        serializeCompileTimeData(v24 + v27, &__p);
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      (*(a5 + 16))(a5, 0, v24, v38, 0);
      free(v24);
    }

    else
    {
      (*(a5 + 16))(a5, 2 * (*(a1 + 64) != 0), 0, 0);
    }
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  v28 = *MEMORY[0x277D85DE8];
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

unint64_t logCompileEnd(std::string::size_type a1, uint64_t a2, const std::string::value_type *a3, uint64_t *a4, const std::string::value_type *a5)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v10 = mach_absolute_time();
  v11 = *&gMachTimeToNS;
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_257A6F51A);
  if (a5 && *a5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v27, " [FunctionName=");
    v12 = std::string::append(&v27, a5);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v31, "]");
    v15 = v14->__r_.__value_.__r.__words[0];
    v37[0] = v14->__r_.__value_.__l.__size_;
    *(v37 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v30 < 0)
    {
      operator delete(__p);
    }

    __p = v15;
    *v29 = v37[0];
    *&v29[7] = *(v37 + 7);
    v30 = v16;
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v27, &unk_257A6F51A);
  if (a3 && *a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v31, " - ");
    v17 = std::string::append(&v31, a3);
    v18 = v17->__r_.__value_.__r.__words[0];
    v37[0] = v17->__r_.__value_.__l.__size_;
    *(v37 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
    v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v27.__r_.__value_.__r.__words[0] = v18;
    v27.__r_.__value_.__l.__size_ = v37[0];
    *(&v27.__r_.__value_.__r.__words[1] + 7) = *(v37 + 7);
    *(&v27.__r_.__value_.__s + 23) = v19;
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  v20 = (v11 * (v10 - a2));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = *a1;
    }

    p_p = &__p;
    if (v30 < 0)
    {
      p_p = __p;
    }

    if (*(a4 + 23) >= 0)
    {
      v23 = a4;
    }

    else
    {
      v23 = *a4;
    }

    v24 = &v27;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v27.__r_.__value_.__r.__words[0];
    }

    LODWORD(v31.__r_.__value_.__l.__data_) = 136447234;
    *(v31.__r_.__value_.__r.__words + 4) = v21;
    WORD2(v31.__r_.__value_.__r.__words[1]) = 2080;
    *(&v31.__r_.__value_.__r.__words[1] + 6) = p_p;
    HIWORD(v31.__r_.__value_.__r.__words[2]) = 2082;
    v32 = v23;
    v33 = 2080;
    v34 = v24;
    v35 = 2048;
    v36 = v20 * 0.000001;
    _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation SUCCESS (ParentProcessName=%{public}s)%s (TYPE=%{public}s%s): Time %f ms ", &v31, 0x34u);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(__p);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_257A40BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::checkNoStageInAttributes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8 * *(a2 + 8) + 16);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v2 - 8 * *(v2 + 8) + 8 * v5);
        String = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8));
        v9 = v8;
        if (v8 <= 15)
        {
          break;
        }

        if (v8 == 29)
        {
          v10 = "air.patch_control_point_input";
LABEL_18:
          if (memcmp(String, v10, v9))
          {
            goto LABEL_19;
          }

          goto LABEL_21;
        }

        if (v8 != 16)
        {
          goto LABEL_19;
        }

        if (*String != 0x747265762E726961 || String[1] != 0x7475706E695F7865)
        {
          goto LABEL_19;
        }

LABEL_21:
        v12 = *(v6 + 8);
        if (!v12)
        {
LABEL_31:
          MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Function requires stage_in attributes but no descriptor was set.");
          return 0;
        }

        v13 = v6;
        while (1)
        {
          v14 = *(v13 - 8 * *(v6 + 8));
          if (v14)
          {
            if (!*v14)
            {
              v15 = llvm::MDString::getString(v14);
              if (v16 == 14 && *v15 == 0x5F6772612E726961 && *(v15 + 6) == 0x646573756E755F67)
              {
                break;
              }
            }
          }

          v13 += 8;
          if (!--v12)
          {
            goto LABEL_31;
          }
        }

LABEL_19:
        if (++v5 == v3)
        {
          return 1;
        }
      }

      if (v8 == 12)
      {
        v10 = "air.stage_in";
      }

      else
      {
        if (v8 != 15)
        {
          goto LABEL_19;
        }

        v10 = "air.patch_input";
      }

      goto LABEL_18;
    }
  }

  return 1;
}

const char *MTLCompilerObject::validateSerializedVertexDescriptor(MTLCompilerObject *this, const char *a2, unint64_t a3)
{
  if (a3 <= 7)
  {
    MTLCompilerErrorObject::setErrorMessage((this + 64), "Invalid vertex descriptor");
  }

  v5 = *a2;
  if (v5 > a3 || v5 < 8 || (v6 = *(a2 + 1), ((v6 >> 2) & 0x1F0) + *(a2 + 2) > v5) || *(a2 + 3) + ((v6 >> 8) & 0xF8) > v5)
  {
    abort();
  }

  return a2;
}

uint64_t MTLCompilerObject::checkVertexRenderTargetArrayIndex(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 && !a3)
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Vertex shader writes render_target_array_index but inputPrimitiveTopology is not specified");
    return 0;
  }

  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2 == 0;
  }

  v5 = 1;
  if (!v4 && a3 != 1 && a4 && (*(a1 + 72) & 1) == 0)
  {
    if (a3)
    {
      if (a3 == 3)
      {
        v6 = "MTLPrimitiveTopologyClassTriangle";
      }

      else
      {
        if (a3 != 2)
        {
          abort();
        }

        v6 = "MTLPrimitiveTopologyClassLine";
      }
    }

    else
    {
      v6 = "MTLPrimitiveTopologyClassUnspecified";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Vertex shader writes point size but inputPrimitiveTopology is %s", v6);
    return 0;
  }

  return v5;
}

void *createSerializedCompileRequest(size_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sizeOfSerializedCompilerBlocks(a2);
  v7 = v6;
  if (a1)
  {
    *a1 = v6;
  }

  memptr = 0;
  v8 = malloc_type_posix_memalign(&memptr, 8uLL, v6, 0xC81645FuLL);
  result = 0;
  if (!v8)
  {
    bzero(memptr, v7);
    serializeCompilerBlocks(memptr, v7, a2, a3);
    return memptr;
  }

  return result;
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
    _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", buf, 0x20u);
  }

  v8 = mach_absolute_time();
  if (SHIBYTE(DiagnosticContext) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x259C6A4D0](v25);
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

double MTLCompilerObject::backendCompileModule(void *a1, uint64_t *a2, BackendCompilationOutput *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2[4] + 4);
  v10 = (v9 >> 8) & 1 | *(a2 + 14);
  if ((v9 & 0x200) != 0)
  {
    v10 = v10 | 2;
    v11 = mach_absolute_time();
  }

  else
  {
    v11 = 0;
  }

  v13 = *(a2 + 4);
  v14 = a1[1];
  v15 = *(v14 + 8 * v13);
  if (*(v15 + 154) == 1)
  {
    *(*(v15 + 128) + 16) = a1[4];
  }

  v16 = a2[4];
  v17 = *(v16 + 224);
  if (v17 >> 3 >= 0xFA3)
  {
    *(a3 + 6) = 1;
    v18 = "Cannot compile for given LLVM version";
LABEL_8:
    *(a3 + 2) = v18;
    return result;
  }

  v41 = v11;
  v19 = *a2;
  v20 = *(v16 + 8);
  if (v17)
  {
    v21 = v17 == 32023;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  if (*(v16 + 48) && *(v16 + 94) != 3)
  {
    v23 = *(v16 + 52);
    v24 = a2[6];
    if (!MTLDowngradeAIRModule())
    {
      *(a3 + 6) = 1;
      v18 = a1[8];
      goto LABEL_8;
    }

    v42 = a5;
    v13 = *(a2 + 4);
    v14 = a1[1];
    v16 = a2[4];
  }

  else
  {
    v42 = a5;
  }

  v25 = *(v14 + 8 * v13);
  if ((*(v16 + 288) & 1) != 0 && (*(v25 + 152) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerObject::backendCompileModule();
    }

    MTLFunctionTypeToString(a2[5], v48);
    logCompileError(a1 + 10, "Compile request asks for AIRNTInterfaces, but the compilation plugin does not support them.");
    std::string::~string(v48);
    abort();
  }

  if ((*(v16 + 288) & 1) != 0 && *(v25 + 152) && *(v25 + 153) == 1 && *(v16 + 200))
  {
    *(a3 + 64) = 1;
    v26 = (*a2 + *(v16 + 196));
    *&v48[0] = 0;
    BYTE8(v48[0]) = 0;
    v48[1] = 0u;
    v49 = 0u;
    v27 = strncmp(v26 + 4, "AIRP", 4uLL);
    v28 = *v26;
    if (v27)
    {
      v40 = &v26[v28];
    }

    else
    {
      MTLCompilerObject::AIRNTGetFunctionScriptFromPipeline(&v26[v28], a2[5], v47);
      flatbuffers::DetachedBuffer::operator=(v48, v47);
      flatbuffers::DetachedBuffer::~DetachedBuffer(v47);
      v40 = v49 + *v49;
      v16 = a2[4];
      v25 = *(a1[1] + 8 * *(a2 + 4));
    }

    v31 = *(v16 + 208);
    v32 = (*(v25 + 56))(v19 + v20, *(v16 + 12));
    v46 = 0;
    v47[0] = 0;
    v44 = 0;
    v45 = 0;
    __s1 = 0;
    v33 = *(a2[4] + 4);
    v34 = &v45;
    if ((v33 & 0x200) == 0)
    {
      v34 = 0;
    }

    v35 = &v44;
    if ((v33 & 0x200) == 0)
    {
      v35 = 0;
    }

    *(a3 + 6) = MTLCompilerPluginInterface::airntEmitPipelineImage(*(a1[1] + 8 * *(a2 + 4)), v32, a2[6], v17, v10, HIDWORD(v31), v31, v40, v47, &v46, v34, v35, &__s1);
    (*(*(a1[1] + 8 * *(a2 + 4)) + 64))(v32);
    v36 = v46;
    *a3 = v47[0];
    *(a3 + 1) = v36;
    v37 = __s1;
    if (__s1)
    {
      *(a3 + 2) = strdup(__s1);
      free(v37);
    }

    else
    {
      *(a3 + 2) = 0;
    }

    v29 = v42;
    v39 = v44;
    v38 = v45;
    if ((v33 & 0x200) == 0)
    {
      v38 = 0;
      v39 = 0;
    }

    *(a3 + 6) = v38;
    *(a3 + 7) = v39;
    flatbuffers::DetachedBuffer::~DetachedBuffer(v48);
  }

  else
  {
    *(a3 + 6) = MTLCompilerPluginInterface::compilerBuildRequest(v25, (*(v16 + 4) & 0x200000 | v22) != 0, v17, (v19 + v20), *(v16 + 12), v10, a2[6], a3);
    v29 = v42;
  }

  if ((*(a2[4] + 5) & 2) != 0)
  {
    v30 = *&gMachTimeToNS * (mach_absolute_time() - v41);
    *(a3 + 9) = v30;
    LODWORD(v48[0]) = 5;
    *(&v48[0] + 1) = v30;
    std::vector<CompileTimeData>::push_back[abi:ne200100](v29, v48);
  }

  return result;
}

void sub_257A41824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  flatbuffers::DetachedBuffer::~DetachedBuffer(va);
  flatbuffers::DetachedBuffer::~DetachedBuffer((v14 - 136));
  _Unwind_Resume(a1);
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

  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(&v84);
  v74 = *MEMORY[0x277D85DE8];
  return v58;
}