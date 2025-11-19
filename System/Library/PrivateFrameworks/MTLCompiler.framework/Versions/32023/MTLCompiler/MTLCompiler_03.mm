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
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v32, &v29);
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

void sub_2579EC610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a27 != a9)
  {
    free(a27);
  }

  _Unwind_Resume(exception_object);
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

  v11 = MEMORY[0x259C6A8D0](a3 + 25, 8);
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

  v9 = MEMORY[0x259C6A8D0](a3 + 25, 8);
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

void *llvm::SmallVector<std::reference_wrapper<llvm::Function>,8u>::SmallVector<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(void *a1, uint64_t *a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<std::reference_wrapper<llvm::Function>>::append<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_2579EC8B8(_Unwind_Exception *exception_object)
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

uint64_t llvm::IRBuilderBase::CreateMemCpy(uint64_t a1, llvm::LLVMContext *a2)
{
  llvm::Type::getInt64Ty(*(a1 + 64), a2);
  llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateMemTransferInst();
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
        return llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v7, &v8);
      }
    }
  }

  return result;
}

void *llvm::SmallVector<llvm::Constant *,8u>::SmallVector(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(a1, a2, *a3);
  return a1;
}

void sub_2579ECD28(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

llvm::Module *MTLAddPostVertexDumpingToModulePass::addPostVertexDumpingToModule(int a1, llvm::Module *this, int a3, int a4, int *a5, uint64_t *a6, int a7)
{
  v156 = a6;
  v157 = a5;
  LODWORD(v161) = a4;
  v212[38] = *MEMORY[0x277D85DE8];
  v164 = *this;
  v198[0] = "air.vertex";
  v199[8] = 259;
  v158 = this;
  NamedMetadata = llvm::Module::getNamedMetadata(this, v198);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v11 = *(*(Operand - 8 * *(Operand + 8)) + 128);
  memset(v188, 0, sizeof(v188));
  std::vector<BOOL>::reserve(v188, *(v11 + 96));
  v186 = 0;
  v185 = 0;
  v187 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v185, *(v11 + 96));
  v182 = 0;
  v183 = 0;
  v184 = 0;
  std::vector<MTLOpaqueObject *>::reserve(&v182, *(v11 + 96));
  v12 = *(Operand + 8);
  if (v12 >= 4 && (v13 = *(Operand - 8 * v12 + 24), v14 = *(v13 + 8), v14 >= 2) && (v15 = llvm::MDString::getString(*(v13 - 8 * v14)), v16 == 9) && (*v15 == 0x637461702E726961 ? (v17 = *(v15 + 8) == 104) : (v17 = 0), v17))
  {
    String = llvm::MDString::getString(*(v13 - 8 * *(v13 + 8) + 8));
    if (v138 == 8)
    {
      v19 = 0;
      v139 = bswap64(*String);
      v140 = v139 >= 0x747269616E676C65;
      v141 = v139 > 0x747269616E676C65;
      v142 = !v140;
      v18 = v141 == v142;
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = 1;
  }

  v179 = 0;
  v180 = 0;
  v181 = 0;
  std::vector<BuiltInInfo>::reserve(&v179, 0xAuLL);
  LOBYTE(v198[0]) = -1;
  std::vector<signed char>::vector[abi:ne200100](v178, 10);
  std::vector<unsigned int>::vector[abi:ne200100](v177, *(v11 + 96));
  MTLFrameworkPass::getArgumentMetadataIndices(*(Operand - 8 * *(Operand + 8) + 16), v177);
  Int32Ty = *(Operand - 8 * *(Operand + 8) + 16);
  v20 = *(v11 + 96);
  if (*(v11 + 18))
  {
    llvm::Function::BuildLazyArguments(v11);
  }

  LODWORD(v147) = v19;
  LODWORD(v146) = v18;
  LODWORD(v148) = a7;
  LODWORD(v145) = a3;
  v152 = v11;
  v143 = NamedMetadata;
  v149 = Operand;
  if (v20 < 1)
  {
    v162 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v162 = 0;
    v163 = 0;
    v23 = 0;
    v24 = *(v152 + 11);
    Int8Ty = &v197;
    Int64Ty = v20 & 0x7FFFFFFF;
    do
    {
      v25 = *(v177[0] + v21);
      if (v25 != -1)
      {
        v26 = *(Int32Ty - 8 * *(Int32Ty + 8) + 8 * v25);
        DataLayout = llvm::Module::getDataLayout(v158);
        llvm::DataLayout::DataLayout(v198, DataLayout);
        MTLArgumentData::MTLArgumentData(&v191);
      }

      LOBYTE(v198[0]) = 0;
      std::vector<BOOL>::push_back(v188, v198);
      if (v23 >= v163)
      {
        v159 = v21;
        v28 = v22;
        v29 = v23 - v162;
        v30 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v162) >> 2);
        v31 = v30 + 1;
        if (v30 + 1 > 0x1555555555555555)
        {
          std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v163 - v162) >> 2) > v31)
        {
          v31 = 0x5555555555555556 * ((v163 - v162) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v163 - v162) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v32 = 0x1555555555555555;
        }

        else
        {
          v32 = v31;
        }

        if (v32)
        {
          if (v32 <= 0x1555555555555555)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v33 = 12 * v30;
        v163 = 0;
        *v33 = 0;
        *(v33 + 1) = 11;
        *(v33 + 4) = -1;
        *(v33 + 8) = 0;
        v23 = 12 * v30 + 12;
        memcpy((12 * v30 + 12 * (v29 / -12)), v162, v29);
        if (v162)
        {
          operator delete(v162);
        }

        v162 = (12 * v30 + 12 * (v29 / -12));
        v22 = v28;
        v21 = v159;
      }

      else
      {
        *v23 = 0;
        *(v23 + 1) = 11;
        *(v23 + 4) = -1;
        *(v23 + 8) = 0;
        v23 += 12;
      }

      v24 += 40;
      v21 = (v21 + 1);
    }

    while (v21 != Int64Ty);
  }

  LOBYTE(v198[0]) = 0;
  std::vector<unsigned char>::vector[abi:ne200100](&v175, 10);
  v175[1] = 1;
  v35 = v164;
  v36 = v152;
  if (v147)
  {
    *v175 = 1;
  }

  else
  {
    v175[3] = 1;
    if (v146)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v175[4] = v37;
  }

  if (v148)
  {
    v175[8] = 1;
  }

  if (v161)
  {
    Int8Ty = 0;
    v38 = -1;
  }

  else
  {
    Int8Ty = llvm::Type::getInt8Ty(v35, v34);
    v39 = llvm::PointerType::get();
    v40 = v186;
    v41 = v186 - v185;
    if (v186 >= v187)
    {
      v43 = v41 >> 3;
      v44 = (v41 >> 3) + 1;
      if (v44 >> 61)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v45 = (v187 - v185) >> 2;
      if (v45 <= v44)
      {
        v45 = (v41 >> 3) + 1;
      }

      if (v187 - v185 >= 0x7FFFFFFFFFFFFFF8)
      {
        v46 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v45;
      }

      if (v46)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v185, v46);
      }

      *(8 * v43) = v39;
      v42 = 8 * v43 + 8;
      v47 = (8 * v43 - (v186 - v185));
      memcpy(v47, v185, v186 - v185);
      v48 = v185;
      v185 = v47;
      v186 = v42;
      v187 = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      *v186 = v39;
      v42 = (v40 + 8);
    }

    v186 = v42;
    MTLFrameworkPass::appendBufferMetadata(v164, &v182);
    v38 = (v41 >> 3);
    v35 = v164;
  }

  *&v49 = -1;
  *(&v49 + 1) = -1;
  v174[3] = v49;
  v174[4] = v49;
  v174[1] = v49;
  v174[2] = v49;
  v174[0] = v49;
  v50 = v35;
  Int1Ty = llvm::Type::getInt1Ty(v35, v34);
  v145 = v38;
  Int32Ty = llvm::Type::getInt32Ty(v50, v52);
  Int64Ty = llvm::Type::getInt64Ty(v50, v53);
  MTLFrameworkPass::addRequiredBuiltInsToBuiltInList(&v179, v178, &v175);
  if ((v161 & 1) == 0)
  {
    v55 = v179;
    for (i = v180; v55 != i; *(v174 + v58) = v54)
    {
      LLVMVectorType = MTLFrameworkPass::getLLVMVectorType(v164, *(v55 + 1), v55[1]);
      v54 = MTLFrameworkPass::addBuiltInParameter(v164, MTLFrameworkPass::vertexFetchbuiltInAIRString[*v55], &v185, &v182, LLVMVectorType, *(v55 + 1), v55[1]);
      v58 = *v55;
      v55 += 8;
    }
  }

  v144 = Int1Ty;
  v147 = &v143;
  v59 = **(*(v36 + 3) + 16);
  v150 = v199;
  v151 = v59;
  v198[0] = v199;
  v198[1] = 0x200000000;
  v202 = v164;
  v203 = &v211;
  v204 = v212;
  v205 = 0;
  v206 = 0;
  v207 = 512;
  v208 = 7;
  v201 = 0;
  v200 = 0;
  v148 = &v211;
  v210 = 0;
  v209 = 0;
  v211 = MEMORY[0x277D821C8] + 16;
  v146 = v212;
  v212[0] = MEMORY[0x277D82210] + 16;
  MEMORY[0x28223BE20](v54);
  if ((v63 & 0x7FFFFFE00) != 0)
  {
    v64 = v61;
  }

  else
  {
    v64 = v60;
  }

  v163 = &v143 - v62;
  bzero(&v143 - v62, v64);
  v159 = 0;
  v155 = 0;
  if ((v161 & 1) == 0)
  {
    llvm::Type::getVoidTy(v164, v65);
    v66 = llvm::FunctionType::get();
    *&v191 = "air.vertexDumpFunction";
    LOWORD(v192.__r_.__value_.__r.__words[2]) = 259;
    v67 = llvm::Function::Create(v66, 0, &v191, v158);
    createDebugInfoForWrapperFunction(v164, v198, v67, v36);
    v69 = v179;
    v70 = v180;
    if (v179 == v180)
    {
LABEL_69:
      *&v191 = "Body";
      LOWORD(v192.__r_.__value_.__r.__words[2]) = 259;
      llvm::BasicBlock::Create(v164, &v191, v67, 0, v68);
    }

    while (1)
    {
      v71 = *(v69 + 1);
      if (v71 > 0x29)
      {
        break;
      }

      if (((1 << v71) & 0x10008) == 0)
      {
        v72 = *(v174 + *v69);
        if (((1 << v71) & 0x2020000000) == 0 && ((1 << v71) & 0x20200000000) == 0)
        {
          break;
        }

        llvm::Function::addParamAttr();
      }

      v69 += 8;
      if (v69 == v70)
      {
        goto LABEL_69;
      }
    }

    abort();
  }

  v152 = 0;
  v144 = 0;
  v145 = 0;
  *v157 = 0;
  v74 = v175;
  v73 = v176;
  if (v176 != v175)
  {
    v75 = 0;
    v76 = 0;
    do
    {
      if (v74[v76])
      {
        v77 = &v179[8 * *(v178[0] + (v75 >> 56))];
        VectorDataType = MTLDataTypeGetVectorDataType(*(v77 + 1), v77[1]);
        v79 = MTLFrameworkPass::getLLVMVectorType(v164, *(v77 + 1), v77[1]);
        v80 = v79;
        if (v161)
        {
          v81 = 0;
        }

        else
        {
          v81 = *&v163[8 * *(v174 + *v77)];
        }

        *&v191 = llvm::Type::getPrimitiveSizeInBits(v79);
        DWORD2(v191) = v82;
        v83 = llvm::TypeSize::operator unsigned long long() >> 3;
        if (v83 <= 4)
        {
          LODWORD(v83) = 4;
        }

        v84 = *v157;
        *v157 += (v83 + 3) & 0xFFFFFFFC;
        std::string::basic_string[abi:ne200100]<0>(&v172, MTLFrameworkPass::vertexFetchbuiltInAIRString[*v77]);
        std::string::basic_string[abi:ne200100]<0>(&v170, &unk_257A6F51A);
        PostVertexDumpOutput::PostVertexDumpOutput(&v191, v80, v81, &v172, VectorDataType, 0, VectorDataType, &v170, v84);
        std::vector<PostVertexDumpOutput>::push_back[abi:ne200100](v156, &v191);
        if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v195.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v192.__r_.__value_.__l.__data_);
        }

        if (v171 < 0)
        {
          operator delete(v170);
        }

        if (v173 < 0)
        {
          operator delete(v172);
        }

        v74 = v175;
        v73 = v176;
      }

      ++v76;
      v75 += 0x100000000000000;
    }

    while (v76 < v73 - v74);
  }

  v85 = *(v149 - 8 * *(v149 + 8) + 8);
  if (v161)
  {
    v86 = 0;
  }

  else
  {
    v86 = v198;
  }

  std::string::basic_string[abi:ne200100]<0>(v168, &unk_257A6F51A);
  std::string::basic_string[abi:ne200100]<0>(v166, &unk_257A6F51A);
  v165[0] = MEMORY[0x277D85DD0];
  v165[1] = 3221225472;
  v165[2] = ___ZN35MTLAddPostVertexDumpingToModulePass28addPostVertexDumpingToModuleEPN4llvm6ModuleEibRjRNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEb_block_invoke;
  v165[3] = &__block_descriptor_48_e320_v96__0r__Type___LLVMContext_b8b24I___Type__8__Value___Type___Use_Cb1b7Sb27b1b1b1b1b1_16_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1___24Q48Q56Q64_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1___72l;
  v165[4] = v157;
  v165[5] = v156;
  iterateAllContainedValues(v86, v151, v155, v85, v168, 0, 0, 0, v166, v165);
  v87 = v152;
  if (v167 < 0)
  {
    operator delete(v166[0]);
  }

  if (v169 < 0)
  {
    operator delete(v168[0]);
  }

  if ((v161 & 1) == 0)
  {
    v88 = llvm::ConstantInt::get();
    LOWORD(v192.__r_.__value_.__r.__words[2]) = 257;
    GEP = llvm::IRBuilderBase::CreateGEP(v198, Int8Ty, v87, v88, &v191);
    v90 = *v157;
    v91 = llvm::ConstantInt::get();
    LOWORD(v192.__r_.__value_.__r.__words[2]) = 257;
    Mul = llvm::IRBuilderBase::CreateMul(v198, v159, v91, &v191, 0, 0);
    v93 = *(GEP + 9);
    LOWORD(v192.__r_.__value_.__r.__words[2]) = 257;
    v94 = llvm::IRBuilderBase::CreateGEP(v198, v93, GEP, Mul, &v191);
    v96 = *v156;
    v163 = v156[1];
    if (v96 != v163)
    {
      v97 = v94;
      v161 = v94;
      do
      {
        v191 = *v96;
        if (*(v96 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v192, *(v96 + 16), *(v96 + 24));
        }

        else
        {
          v98 = *(v96 + 16);
          v192.__r_.__value_.__r.__words[2] = *(v96 + 32);
          *&v192.__r_.__value_.__l.__data_ = v98;
        }

        v99 = *(v96 + 40);
        v194 = *(v96 + 56);
        v193 = v99;
        if (*(v96 + 87) < 0)
        {
          std::string::__init_copy_ctor_external(&v195, *(v96 + 64), *(v96 + 72));
        }

        else
        {
          v100 = *(v96 + 64);
          v195.__r_.__value_.__r.__words[2] = *(v96 + 80);
          *&v195.__r_.__value_.__l.__data_ = v100;
        }

        v196 = *(v96 + 88);
        v101 = *(&v191 + 1);
        v102 = *(v97 + 9);
        v103 = llvm::ConstantInt::get();
        v190 = 257;
        v104 = llvm::IRBuilderBase::CreateGEP(v198, v102, v97, v103, v189);
        v105 = *v101;
        v106 = llvm::PointerType::get();
        v190 = 257;
        Cast = llvm::IRBuilderBase::CreateCast(v198, 49, v104, v106, v189);
        v109 = *v101;
        if ((*(*v101 + 8) & 0xFE) == 0x12)
        {
          v110 = *(v109 + 32);
          v111 = *(v109 + 24);
          llvm::Type::getInt32Ty(*v109, v107);
          if ((*(*Cast + 8) & 0xFE) == 0x12)
          {
            v112 = *(**(*Cast + 16) + 8);
          }

          v113 = llvm::PointerType::get();
          v190 = 257;
          v114 = llvm::IRBuilderBase::CreateCast(v198, 49, Cast, v113, v189);
          if (v110)
          {
            v115 = v114;
            for (j = 0; j != v110; ++j)
            {
              v117 = llvm::ConstantInt::get();
              v190 = 257;
              Element = llvm::IRBuilderBase::CreateExtractElement(v198, v101, v117, v189, v118);
              v190 = 257;
              v120 = llvm::IRBuilderBase::CreateGEP(v198, v111, v115, v117, v189);
              llvm::IRBuilderBase::CreateAlignedStore(v198, Element, v120, 0);
            }
          }
        }

        else
        {
          llvm::IRBuilderBase::CreateAlignedStore(v198, v101, Cast, 258);
        }

        v97 = v161;
        if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v195.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v192.__r_.__value_.__l.__data_);
        }

        v96 += 96;
      }

      while (v96 != v163);
    }

    v121 = v145;
    v122 = llvm::BranchInst::Create(v145, 0, v95);
    LOWORD(v192.__r_.__value_.__r.__words[2]) = 257;
    llvm::IRBuilderBase::Insert<llvm::CastInst>(v198, v122, &v191);
    llvm::IRBuilderBase::SetInsertPoint(v198, v121, v121 + 40);
    v123 = v149;
    v125 = llvm::ReturnInst::Create(v202, 0, 0, v124);
    LOWORD(v192.__r_.__value_.__r.__words[2]) = 257;
    v126 = llvm::IRBuilderBase::Insert<llvm::CastInst>(v198, v125, &v191);
    v127 = *(v123 + 8);
    MEMORY[0x28223BE20](v126);
    v129 = (&v143 - ((v128 + 15) & 0xFFFFFFFF0));
    if (v128 >= 0x200)
    {
      v130 = 512;
    }

    else
    {
      v130 = v128;
    }

    bzero(&v143 - ((v128 + 15) & 0xFFFFFFFF0), v130);
    *v129 = llvm::ValueAsMetadata::get();
    v129[1] = llvm::MDTuple::getImpl();
    v129[2] = llvm::MDTuple::getImpl();
    if (v127 >= 4)
    {
      v131 = (v123 - 8 * *(v123 + 8) + 24);
      v132 = v129 + 3;
      v133 = v127 - 3;
      do
      {
        v134 = *v131++;
        *v132++ = v134;
        --v133;
      }

      while (v133);
    }

    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::eraseFromParent(v143);
    llvm::Module::getOrInsertNamedMetadata();
    llvm::NamedMDNode::addOperand();
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v146);
  llvm::IRBuilderFolder::~IRBuilderFolder(v148);
  if (v198[0] != v150)
  {
    free(v198[0]);
  }

  if (v175)
  {
    v176 = v175;
    operator delete(v175);
  }

  if (v177[0])
  {
    v177[1] = v177[0];
    operator delete(v177[0]);
  }

  if (v178[0])
  {
    v178[1] = v178[0];
    operator delete(v178[0]);
  }

  if (v179)
  {
    v180 = v179;
    operator delete(v179);
  }

  if (v182)
  {
    v183 = v182;
    operator delete(v182);
  }

  if (v185)
  {
    v186 = v185;
    operator delete(v185);
  }

  if (v162)
  {
    operator delete(v162);
  }

  if (v188[0])
  {
    operator delete(v188[0]);
  }

  v135 = *MEMORY[0x277D85DE8];
  return v158;
}

void sub_2579EE53C(_Unwind_Exception *exception_object)
{
  v1[19] = 0;
  v3 = v1[62];
  if (v3)
  {
    v1[63] = v3;
    operator delete(v3);
  }

  v4 = v1[65];
  if (v4)
  {
    v1[66] = v4;
    operator delete(v4);
  }

  v5 = v1[19];
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v1[68];
  if (v6)
  {
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2579EE898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<BuiltInInfo>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<BuiltInInfo>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t std::vector<PostVertexDumpOutput>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<PostVertexDumpOutput>::__emplace_back_slow_path<PostVertexDumpOutput>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    v5 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v5;
    v6 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 64) = v6;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(v3 + 88) = *(a2 + 88);
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
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

void iterateAllContainedValues(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, const void **a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v103 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v101, &unk_257A6F51A);
  std::string::basic_string[abi:ne200100]<0>(&v100, &unk_257A6F51A);
  v80 = a2;
  v83 = a6;
  if (a4)
  {
    v17 = *(a4 + 8);
    if (v17)
    {
      v18 = 0;
      v86 = 0;
      v88 = 0;
      v84 = 0;
      v19 = -v17;
      v20 = a4;
      while (1)
      {
        v21 = *(v20 - 8 * *(a4 + 8));
        if (v21 && !*v21)
        {
          String = llvm::MDString::getString(v21);
          v102.__r_.__value_.__r.__words[0] = String;
          v102.__r_.__value_.__l.__size_ = v23;
          if (v23 != 17)
          {
            if (v23 == 12 && *String == 0x5F6772612E726961 && *(String + 8) == 1701667182)
            {
              v96.__r_.__value_.__r.__words[0] = llvm::MDString::getString(*(v20 - 8 * *(a4 + 8) + 8));
              v96.__r_.__value_.__l.__size_ = v25;
              llvm::StringRef::str(&v96.__r_.__value_.__l.__data_, &v98);
              if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v100.__r_.__value_.__l.__data_);
              }

              v100 = v98;
              goto LABEL_28;
            }

LABEL_23:
            if (!v18)
            {
              llvm::StringRef::str(&v102.__r_.__value_.__l.__data_, &v98);
              if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v101.__r_.__value_.__l.__data_);
              }

              v101 = v98;
            }

            goto LABEL_28;
          }

          if (*String != 0x5F6772612E726961 || *(String + 8) != 0x6D616E5F65707974 || *(String + 16) != 101)
          {
            goto LABEL_23;
          }

          v28 = a7;
          v29 = a8;
          v30 = llvm::MDString::getString(*(v20 - 8 * *(a4 + 8) + 8));
          v31 = strlen(v30);
          v32 = dataTypeFromString(v30, v31);
          v33 = strlen(v30);
          v34 = pixelFormatAndALUTypeFromString(v30, v33);
          v84 = HIDWORD(v34);
          v86 = v34;
          v88 = v32;
          a8 = v29;
          a7 = v28;
        }

LABEL_28:
        v20 += 8;
        if (v19 == --v18)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v84 = 0;
  v86 = 0;
  v88 = 0;
LABEL_31:
  v35 = *(a5 + 23);
  if (v35 < 0)
  {
    if (a5[1])
    {
      goto LABEL_33;
    }

LABEL_46:
    std::string::basic_string[abi:ne200100]<0>(&v98, &unk_257A6F51A);
    goto LABEL_47;
  }

  if (!*(a5 + 23))
  {
    goto LABEL_46;
  }

LABEL_33:
  if (v35 >= 0)
  {
    v36 = *(a5 + 23);
  }

  else
  {
    v36 = a5[1];
  }

  std::string::basic_string[abi:ne200100](&v98, v36 + 1);
  v37 = a7;
  v38 = a8;
  if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v98;
  }

  else
  {
    v39 = v98.__r_.__value_.__r.__words[0];
  }

  if (v36)
  {
    if (*(a5 + 23) >= 0)
    {
      v40 = a5;
    }

    else
    {
      v40 = *a5;
    }

    memmove(v39, v40, v36);
  }

  *(&v39->__r_.__value_.__l.__data_ + v36) = 32;
  a8 = v38;
  a7 = v37;
LABEL_47:
  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v101;
  }

  else
  {
    v41 = v101.__r_.__value_.__r.__words[0];
  }

  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v101.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v101.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v98, v41, size);
  v44 = v43->__r_.__value_.__r.__words[0];
  v102.__r_.__value_.__r.__words[0] = v43->__r_.__value_.__l.__size_;
  *(v102.__r_.__value_.__r.__words + 7) = *(&v43->__r_.__value_.__r.__words[1] + 7);
  v45 = HIBYTE(v43->__r_.__value_.__r.__words[2]);
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  v46 = v102.__r_.__value_.__r.__words[0];
  *a5 = v44;
  a5[1] = v46;
  *(a5 + 15) = *(v102.__r_.__value_.__r.__words + 7);
  *(a5 + 23) = v45;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (v83)
  {
    v47 = v83;
  }

  else
  {
    v47 = v88;
  }

  v48 = v86;
  if (a7)
  {
    v48 = a7;
  }

  v87 = v48;
  v89 = v47;
  v49 = v84;
  if (a8)
  {
    v49 = a8;
  }

  v85 = v49;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a9, &v100.__r_.__value_.__l.__data_, &v98);
  v50 = (a9 + 23);
  if (*(a9 + 23) < 0)
  {
    operator delete(*a9);
  }

  *a9 = v98;
  v51 = *(v80 + 8);
  if (v51 == 7)
  {
    goto LABEL_166;
  }

  if (v51 == 16)
  {
    std::string::basic_string[abi:ne200100]<0>(&v102, &unk_257A6F51A);
    if (*(v80 + 24))
    {
      v96.__r_.__value_.__r.__words[0] = llvm::StructType::getName(v80);
      v96.__r_.__value_.__l.__size_ = v66;
      llvm::StringRef::str(&v96.__r_.__value_.__l.__data_, &v98);
      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      v102 = v98;
    }

    v67 = *v50;
    if (v67 < 0)
    {
      v67 = *(a9 + 8);
    }

    if (v67)
    {
      v68 = a9;
    }

    else
    {
      v68 = &v102;
    }

    if (v67)
    {
      v69 = (a9 + 23);
    }

    else
    {
      v69 = &v102.__r_.__value_.__r.__words[2] + 7;
    }

    if ((v68->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(v68->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v68->__r_.__value_.__l.__size_;
    }

    v71 = &v96;
    std::string::basic_string[abi:ne200100](&v96, v70 + 1);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v71 = v96.__r_.__value_.__r.__words[0];
    }

    if (v70)
    {
      if (*v69 >= 0)
      {
        v72 = v68;
      }

      else
      {
        v72 = v68->__r_.__value_.__r.__words[0];
      }

      memmove(v71, v72, v70);
    }

    *(&v71->__r_.__value_.__l.__data_ + v70) = 46;
    v73 = *(v80 + 12);
    v97[0] = 0;
    if (!v73)
    {
LABEL_151:
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_166;
      }

      v78 = v102.__r_.__value_.__r.__words[0];
LABEL_165:
      operator delete(v78);
      goto LABEL_166;
    }

    v74 = 0;
    while (1)
    {
      v75 = *(*(v80 + 16) + 8 * v74);
      if (a1)
      {
        v99 = 257;
        Value = llvm::IRBuilderBase::CreateExtractValue(a1, a3, v97, 1, &v98);
        if (!a4)
        {
          goto LABEL_139;
        }
      }

      else
      {
        Value = 0;
        if (!a4)
        {
LABEL_139:
          v77 = 0;
          goto LABEL_140;
        }
      }

      v77 = *(a4 - 8 * *(a4 + 8) + 8 * v97[0]);
LABEL_140:
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v93, *a5, a5[1]);
      }

      else
      {
        v93 = *a5;
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v92, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
      }

      else
      {
        v92 = v96;
      }

      iterateAllContainedValues(a1, v75, Value, v77, &v93, v89, v87, v85, &v92, a10);
      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      v74 = v97[0] + 1;
      v97[0] = v74;
      if (v74 >= v73)
      {
        goto LABEL_151;
      }
    }
  }

  if (v51 != 17)
  {
    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v91, *a5, a5[1]);
    }

    else
    {
      v91 = *a5;
    }

    if (*v50 < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *a9, *(a9 + 8));
    }

    else
    {
      *&v90.__r_.__value_.__l.__data_ = *a9;
      v90.__r_.__value_.__r.__words[2] = *(a9 + 16);
    }

    (*(a10 + 16))(a10, v80, a3, &v91, v89, v87, v85, &v90);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_166;
    }

    v78 = v91.__r_.__value_.__r.__words[0];
    goto LABEL_165;
  }

  v52 = *(v80 + 32);
  if (v52)
  {
    v53 = 0;
    v81 = **(v80 + 16);
    do
    {
      if (a1)
      {
        LODWORD(v102.__r_.__value_.__l.__data_) = v53;
        v99 = 257;
        v54 = llvm::IRBuilderBase::CreateExtractValue(a1, a3, &v102, 1, &v98);
      }

      else
      {
        v54 = 0;
      }

      if (*(a9 + 23) >= 0)
      {
        v55 = *(a9 + 23);
      }

      else
      {
        v55 = *(a9 + 8);
      }

      std::string::basic_string[abi:ne200100](&v102, v55 + 1);
      if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v102;
      }

      else
      {
        v56 = v102.__r_.__value_.__r.__words[0];
      }

      if (v55)
      {
        if (*(a9 + 23) >= 0)
        {
          v57 = a9;
        }

        else
        {
          v57 = *a9;
        }

        memmove(v56, v57, v55);
      }

      *(&v56->__r_.__value_.__l.__data_ + v55) = 91;
      std::to_string(&v96, v53);
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v96;
      }

      else
      {
        v58 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v96.__r_.__value_.__l.__size_;
      }

      v60 = std::string::append(&v102, v58, v59);
      v61 = *&v60->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v98, "]");
      v63 = v62->__r_.__value_.__r.__words[0];
      v64 = v62->__r_.__value_.__l.__size_;
      v97[0] = v62->__r_.__value_.__r.__words[2];
      *(v97 + 3) = *(&v62->__r_.__value_.__r.__words[2] + 3);
      v65 = SHIBYTE(v62->__r_.__value_.__r.__words[2]);
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v95, *a5, a5[1]);
      }

      else
      {
        v95 = *a5;
      }

      if (v65 < 0)
      {
        std::string::__init_copy_ctor_external(&v94, v63, v64);
      }

      else
      {
        v94.__r_.__value_.__r.__words[0] = v63;
        v94.__r_.__value_.__l.__size_ = v64;
        LODWORD(v94.__r_.__value_.__r.__words[2]) = v97[0];
        *(&v94.__r_.__value_.__r.__words[2] + 3) = *(v97 + 3);
        *(&v94.__r_.__value_.__s + 23) = v65;
      }

      iterateAllContainedValues(a1, v81, v54, 0, &v95, v89, v87, v85, &v94, a10);
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
        if (v65 < 0)
        {
LABEL_110:
          operator delete(v63);
        }
      }

      else if (v65 < 0)
      {
        goto LABEL_110;
      }

      ++v53;
    }

    while (v52 != v53);
  }

LABEL_166:
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  v79 = *MEMORY[0x277D85DE8];
}

void sub_2579EF3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  if (*(v62 - 137) < 0)
  {
    operator delete(*(v62 - 160));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN35MTLAddPostVertexDumpingToModulePass28addPostVertexDumpingToModuleEPN4llvm6ModuleEibRjRNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEb_block_invoke(uint64_t a1, llvm::Type *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(this);
  v24 = v16;
  v17 = llvm::TypeSize::operator unsigned long long() >> 3;
  if (v17 <= 4)
  {
    LODWORD(v17) = 4;
  }

  v18 = *(a1 + 32);
  v19 = *v18;
  *v18 += (v17 + 3) & 0xFFFFFFFC;
  v20 = *(a1 + 40);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a4, *(a4 + 8));
  }

  else
  {
    v22 = *a4;
  }

  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a8, *(a8 + 8));
  }

  else
  {
    v21 = *a8;
  }

  PostVertexDumpOutput::PostVertexDumpOutput(&PrimitiveSizeInBits, this, a3, &v22, a5, a6, a7, &v21, v19);
  std::vector<PostVertexDumpOutput>::push_back[abi:ne200100](v20, &PrimitiveSizeInBits);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_2579EF67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void MTLArgumentData::MTLArgumentData(MTLArgumentData *this)
{
  *this &= 0x1000u;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 6) = 0u;
  operator new();
}

void sub_2579EF90C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 136);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::vector<MTLStructMemberInfo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868EC720;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C6B890);
}

void std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = v4 - 72;
        std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v7);
        v6 = *(v4 - 14);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 176;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
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

uint64_t PostVertexDumpOutput::PostVertexDumpOutput(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, int a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v14 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v14;
  }

  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 56) = a7;
  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a8, *(a8 + 1));
  }

  else
  {
    v15 = *a8;
    *(a1 + 80) = *(a8 + 2);
    *(a1 + 64) = v15;
  }

  *(a1 + 88) = a9;
  return a1;
}

void sub_2579EFBF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<BuiltInInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<signed char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2579EFF8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<signed char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2579F0098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PostVertexDumpOutput>::__emplace_back_slow_path<PostVertexDumpOutput>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PostVertexDumpOutput>>(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v9 = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 40) = v9;
  v10 = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 64) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(v7 + 88) = *(a2 + 88);
  *&v19 = 96 * v2 + 96;
  v11 = a1[1];
  v12 = 96 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<PostVertexDumpOutput>::~__split_buffer(&v17);
  return v16;
}

void sub_2579F0210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PostVertexDumpOutput>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PostVertexDumpOutput>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 16);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 16) = v8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = 0;
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      v10 = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(a4 + 64) = v10;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 64) = 0;
      *(a4 + 88) = *(v7 + 88);
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](a1, v5);
      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 39) < 0)
  {
    v3 = *(a2 + 16);

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>::operator()[abi:ne200100](a1);
  }

  return a1;
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

void **std::__split_buffer<PostVertexDumpOutput>::~__split_buffer(void **a1)
{
  std::__split_buffer<PostVertexDumpOutput>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<PostVertexDumpOutput>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](v4, i - 96);
  }
}

void MTLThreadgroupMemoryCheckPass::~MTLThreadgroupMemoryCheckPass(MTLThreadgroupMemoryCheckPass *this)
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

uint64_t MTLThreadgroupMemoryCheckPass::runOnModule(MTLThreadgroupMemoryCheckPass *this, llvm::Module *a2)
{
  v2 = *(*(*(this + 8) + 64) + 651);
  if ((v2 & 1) == 0)
  {
    MetalModulePass::runOnModule(this, a2);
    *(this + 46) = 0;
    *(this + 12) = 0u;
    *(this + 13) = 0u;
    if (MTLBoundsCheck::isLibraryModule(*(this + 6), v5))
    {
      MTLThreadgroupMemoryCheckPass::createTagFunctions(this, a2);
    }

    if ((*(*(this + 4) + 23) & 2) != 0)
    {
      MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(this);
      if (*(this + 30) == 5)
      {
        MTLThreadgroupMemoryCheckPass::createMeshThreadgroupGlobal(this);
      }
    }

    MTLThreadgroupMemoryCheckPass::replaceGlobalBindings(this);
    if ((*(*(this + 4) + 23) & 4) != 0)
    {
      MTLThreadgroupMemoryCheckPass::mergeThreadgroupArguments(this);
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

void sub_2579F094C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void MTLThreadgroupMemoryCheckPass::createMeshThreadgroupGlobal(MTLThreadgroupMemoryCheckPass *this)
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

void sub_2579F0B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v17[5] = v17[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v17);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a17);
  _Unwind_Resume(a1);
}

void MTLThreadgroupMemoryCheckPass::replaceGlobalBindings(MTLThreadgroupMemoryCheckPass *this)
{
  v81[7] = *MEMORY[0x277D85DE8];
  __p = 0;
  v72 = 0;
  v73 = 0;
  v2 = *(this + 6);
  v78[0] = "air.global_bindings";
  v79[8] = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v2, v78);
  if (NamedMetadata)
  {
    v4 = 0;
    v63 = 0;
    v64 = NamedMetadata;
    while (v4 < llvm::NamedMDNode::getNumOperands(v64))
    {
      Operand = llvm::NamedMDNode::getOperand(v64);
      v6 = Operand - 8 * *(Operand + 8);
      v7 = *(v6 + 16);
      v8 = *(*(v6 + 8) + 128);
      LocationIndex = MTLBoundsCheck::getLocationIndex(v7);
      String = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8));
      if (v11 == 11 && (*String == 0x747865742E726961 ? (v12 = *(String + 3) == 0x657275747865742ELL) : (v12 = 0), v12 || (*String == 0x706D61732E726961 ? (v13 = *(String + 3) == 0x72656C706D61732ELL) : (v13 = 0), v13)) || MTLBoundsCheck::getAddressSpace(v7) != 3)
      {
        v63 = 1;
      }

      else
      {
        v70 = 0u;
        memset(v69, 0, sizeof(v69));
        v14 = *(v8 + 8);
        if (v14)
        {
          do
          {
            v15 = *(v14 + 24);
            v78[0] = v15;
            v16 = v15[16];
            if (v15)
            {
              v17 = v16 >= 0x1C;
            }

            else
            {
              v17 = 0;
            }

            if (v17)
            {
              std::deque<llvm::User *>::push_back(v69, v78);
            }

            else
            {
              if (v15)
              {
                v18 = v16 == 5;
              }

              else
              {
                v18 = 0;
              }

              if (v18)
              {
                llvm::ConstantExpr::isCast(v15);
                v15 = v78[0];
              }

              for (i = *(v15 + 1); i; i = *(i + 8))
              {
                v66[0] = *(i + 24);
                if (v66[0])
                {
                  v20 = *(v66[0] + 16) >= 0x1Cu;
                }

                else
                {
                  v20 = 0;
                }

                if (v20)
                {
                  std::deque<llvm::User *>::push_back(v69, v66);
                }
              }
            }

            v14 = *(v14 + 8);
          }

          while (v14);
          v21 = *(&v70 + 1);
          if (*(&v70 + 1))
          {
            v65 = 1 << LocationIndex;
            do
            {
              v22 = *(*(*(&v69[0] + 1) + ((v70 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v70 & 0x1FF));
              *&v70 = v70 + 1;
              *(&v70 + 1) = v21 - 1;
              if (v70 >= 0x400)
              {
                operator delete(**(&v69[0] + 1));
                *(&v69[0] + 1) += 8;
                *&v70 = v70 - 512;
              }

              if (v22[16] <= 0x1Bu)
              {
                v23 = 0;
              }

              else
              {
                v23 = v22;
              }

              v68 = v23;
              MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(v78, &v68);
              inserted = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(*(this + 8));
              v25 = *(inserted + 3);
              v67 = 257;
              AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v78, v25, inserted, 0, 0, v66);
              v27 = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(*(this + 8));
              v28 = *(v27 + 3);
              v67 = 257;
              v29 = llvm::IRBuilderBase::CreateAlignedLoad(v78, v28, v27, 0, 0, v66);
              v30 = *(this + 8);
              v74 = v29;
              llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v30 + 208, &v74, v66);
              v31 = v4;
              v32 = *(this + 8);
              v74 = AlignedLoad;
              llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v32 + 208, &v74, v66);
              v33 = *(this + 8);
              *(*(v33 + 64) + 636) |= v65;
              Name = llvm::Value::getName(v27);
              GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v33, Name, v35);
              v37 = *(this + 9);
              v74 = llvm::ConstantInt::get();
              v38 = *(this + 10);
              v75 = llvm::ConstantInt::get();
              v67 = 257;
              v39 = llvm::IRBuilderBase::CreateGEP(v78, GVBaseType, v29, &v74, 2, v66);
              v40 = *(v39 + 72);
              v67 = 257;
              v41 = llvm::IRBuilderBase::CreateAlignedLoad(v78, v40, v39, 0, 0, v66);
              v4 = v31;
              v42 = *(this + 8);
              v43 = llvm::Value::getName(inserted);
              v45 = MTLBoundsCheck::SharedPassData::getGVBaseType(v42, v43, v44);
              v46 = *(this + 9);
              v67 = 257;
              Cast = llvm::IRBuilderBase::CreateCast(v78, 40, v41, v46, v66);
              v77[4] = 257;
              GEP = llvm::IRBuilderBase::CreateGEP(v78, v45, AlignedLoad, Cast, &v74);
              v49 = *(this + 4);
              v74 = *(this + 5);
              v75 = v77;
              v76 = 0;
              if ((*(v49 + 23) & 8) != 0)
              {
                ++*(this + 46);
                MTLMDBuilder::getMDTuple<unsigned int>(&v74);
                llvm::Instruction::setMetadata();
              }

              v50 = *v68;
              v67 = 257;
              llvm::IRBuilderBase::CreateBitOrPointerCast(v78, GEP, v50, v66);
              llvm::Value::replaceAllUsesWith();
              v51 = v72;
              if (v72 >= v73)
              {
                v53 = (v72 - __p) >> 3;
                if ((v53 + 1) >> 61)
                {
                  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                }

                v54 = (v73 - __p) >> 2;
                if (v54 <= v53 + 1)
                {
                  v54 = v53 + 1;
                }

                if (v73 - __p >= 0x7FFFFFFFFFFFFFF8)
                {
                  v55 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v54;
                }

                if (v55)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&__p, v55);
                }

                *(8 * v53) = v8;
                v52 = 8 * v53 + 8;
                v56 = (8 * v53 - (v72 - __p));
                memcpy(v56, __p, v72 - __p);
                v57 = __p;
                __p = v56;
                v72 = v52;
                v73 = 0;
                if (v57)
                {
                  operator delete(v57);
                }
              }

              else
              {
                *v72 = v8;
                v52 = (v51 + 8);
              }

              v72 = v52;
              llvm::Instruction::eraseFromParent(v68);
              if (v75 != v77)
              {
                free(v75);
              }

              llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v81);
              llvm::IRBuilderFolder::~IRBuilderFolder(&v80);
              if (v78[0] != v79)
              {
                free(v78[0]);
              }

              v21 = *(&v70 + 1);
            }

            while (*(&v70 + 1));
          }
        }

        std::deque<llvm::User *>::~deque[abi:ne200100](v69);
      }

      v4 = (v4 + 1);
    }

    v58 = __p;
    v59 = v72;
    while (v58 != v59)
    {
      v60 = *v58;
      llvm::GlobalVariable::dropAllReferences(*v58);
      llvm::Constant::getNullValue(*v60, v61);
      llvm::Value::replaceAllUsesWith();
      llvm::GlobalVariable::eraseFromParent(v60);
      ++v58;
    }

    if ((v63 & 1) == 0)
    {
      llvm::NamedMDNode::clearOperands(v64);
      llvm::NamedMDNode::eraseFromParent(v64);
    }
  }

  if (__p)
  {
    v72 = __p;
    operator delete(__p);
  }

  v62 = *MEMORY[0x277D85DE8];
}

void sub_2579F1190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLThreadgroupMemoryCheckPass::mergeThreadgroupArguments(MTLThreadgroupMemoryCheckPass *this)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v15 = *(this + 5);
  v16 = v18;
  v17 = 0;
  EntryFunction = MetalModulePass::getEntryFunction(this);
  v3 = *(EntryFunction + 24);
  v14 = *(EntryFunction + 112);
  v29[0] = v30;
  v29[1] = 0x400000000;
  v27[0] = v28;
  v27[1] = 0x400000000;
  v25[0] = v26;
  v25[1] = 0x400000000;
  v22 = v24;
  v23 = 0x400000000;
  v18[0] = 0;
  if (*(v3 + 12) != 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
      v6 = *(v5 - 8 * *(v5 + 8) + 8 * v4);
      v20[0] = v6;
      v19 = *(*(v3 + 16) + 8 * (v4 + 1));
      if (*(v19 + 2) == 783 && !MTLThreadgroupMemoryCheckPass::isMeshGridPropertiesArg(this, v6))
      {
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v22, v20);
      }

      else
      {
        MTLMDBuilder::getMetadata<unsigned int>(&v15);
        llvm::MDNode::replaceOperandWith();
        llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(v25, v18);
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v29, v20);
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v27, &v19);
      }

      v4 = v18[0] + 1;
      v18[0] = v4;
    }

    while (v4 < *(v3 + 12) - 1);
    if (v23)
    {
      v7 = **(v3 + 16);
      v8 = llvm::FunctionType::get();
      v9 = *(EntryFunction + 32);
      v21 = 257;
      v10 = llvm::Function::Create(v8, v9 & 0xF, v20, *(this + 6));
      v11 = *(this + 5);
      v21 = 257;
      llvm::BasicBlock::Create(v11, v20, v10, 0, v12);
    }
  }

  if (v22 != v24)
  {
    free(v22);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (v16 != v18)
  {
    free(v16);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2579F199C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a50);
  if (STACK[0x200] != a13)
  {
    free(STACK[0x200]);
  }

  v53 = *(v51 - 224);
  if (v53 != a14)
  {
    free(v53);
  }

  v54 = *(v51 - 192);
  if (v54 != a15)
  {
    free(v54);
  }

  v55 = *(v51 - 144);
  if (v55 != a16)
  {
    free(v55);
  }

  if (a28 != v50)
  {
    free(a28);
  }

  _Unwind_Resume(a1);
}

void MTLThreadgroupMemoryCheckPass::createTagFunctions(MTLThreadgroupMemoryCheckPass *this, llvm::Module *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v15[0] = "mtl.threadgroup.strip_tag";
  v16 = 259;
  v4 = *(this + 12);
  v5 = llvm::PointerType::get();
  v6 = *(this + 12);
  v14 = llvm::PointerType::get();
  *(this + 24) = getMangledFunction<llvm::PointerType *>(a2, v15, v5, &v14);
  llvm::Function::addFnAttr();
  v7 = *(this + 24);
  llvm::Function::addFnAttr();
  llvm::Function::onlyWritesMemory(*(this + 24));
  v8 = *(this + 24);
  llvm::Function::addFnAttr();
  *(*(this + 24) + 32) = *(*(this + 24) + 32) & 0xFFFFBFC0 | 0x4007;
  v10 = *(this + 24);
  v11 = v10;
  if (*(v10 + 18))
  {
    llvm::Function::BuildLazyArguments(v10);
    v11 = *(this + 24);
  }

  v12 = *(v10 + 88);
  v13 = *(this + 5);
  v16 = 257;
  llvm::BasicBlock::Create(v13, v15, v11, 0, v9);
}

void sub_2579F1ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
  *a2 = &unk_2868EC7F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1}::operator()(uint64_t a1, llvm::Type **a2)
{
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = *(v5 + 24);
  v19 = 257;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a2, v6, v5, 0, 0, v18);
  v8 = *(v4 + 64);
  Name = llvm::Value::getName(**a1);
  GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v8, Name, v10);
  v12 = *(*(a1 + 16) + 8);
  v19 = 257;
  ConstGEP1_64 = llvm::IRBuilderBase::CreateConstGEP1_64(a2, GVBaseType, AlignedLoad, v12, v18);
  v14 = ***(a1 + 16);
  v17[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a2, 49, ConstGEP1_64, v14, v17);
  if ((*(*(v4 + 32) + 23) & 8) != 0)
  {
    ++*(v4 + 184);
    MetalModulePass::getMDTuple<unsigned int>(v4);
    llvm::Instruction::setMetadata();
  }

  return Cast;
}

uint64_t MetalModulePass::getMDTuple<unsigned int>(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  MetalModulePass::getMetadata<unsigned int>(a1);
  result = llvm::MDTuple::getImpl();
  v3 = *MEMORY[0x277D85DE8];
  return result;
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

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(uint64_t a1, llvm::BasicBlock **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

uint64_t MTLMDBuilder::getMDTuple<unsigned int>(uint64_t *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  MTLMDBuilder::getMetadata<unsigned int>(a1);
  result = llvm::MDTuple::getImpl();
  v3 = *MEMORY[0x277D85DE8];
  return result;
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

void sub_2579F2D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void sub_2579F3050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void sub_2579F332C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
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

void MTLThreadgroupMemoryCheckPass::applyPointerTagging(MTLThreadgroupMemoryCheckPass *this, llvm::Function *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  EntryFunction = MetalModulePass::getEntryFunction(this);
  v5 = EntryFunction + 72;
  v6 = *(EntryFunction + 80);
  if (v6 != EntryFunction + 72)
  {
    do
    {
      v7 = v6 - 24;
      if (!v6)
      {
        v7 = 0;
      }

      v8 = v7 + 40;
      for (i = *(v7 + 48); i != v8; i = *(i + 8))
      {
        if (i)
        {
          v10 = i - 24;
        }

        else
        {
          v10 = 0;
        }

        if (*(v10 + 48) || (*(v10 + 23) & 0x20) != 0)
        {
          v24[0] = llvm::Instruction::getMetadataImpl();
          if (v24[0])
          {
            v17[0] = v10;
            llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::MDTuple *>>::emplace_back<llvm::Instruction *,llvm::MDTuple *&>(&v18, v17, v24);
            llvm::Instruction::setMetadata();
          }
        }
      }

      v6 = *(v6 + 8);
    }

    while (v6 != v5);
  }

  if (v19)
  {
    *v17 = *v18;
    v11 = *(*(v17[1] - 8 * *(v17[1] + 8)) + 128);
    v12 = (v11 + 24);
    if (*(v11 + 32) >= 0x41u)
    {
      v12 = *v12;
    }

    v16 = *v12;
    v25 = 0;
    operator new();
  }

  if (v18 != v20)
  {
    free(v18);
  }

  if ((*(*(this + 4) + 23) & 1) == 0)
  {
    v21 = v23;
    v22 = 0x1000000000;
    llvm::InstVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor,void>::visit(&v18, a2);
    v13 = v21;
    if (v22)
    {
      v14 = 8 * v22;
      do
      {
        v17[0] = *v13;
        v24[0] = &unk_2868EC888;
        v24[1] = this;
        v24[2] = v17;
        v25 = v24;
        MTLRAUWUtility::replaceAllUsesWith(&v16, v17[0], v24);
        std::__function::__value_func<llvm::Value * ()(MTLIRBuilder &)>::~__value_func[abi:ne200100](v24);
        ++v13;
        v14 -= 8;
      }

      while (v14);
      v13 = v21;
    }

    if (v13 != v23)
    {
      free(v13);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2579F3684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18 != v18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::MDTuple *>>::emplace_back<llvm::Instruction *,llvm::MDTuple *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
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

uint64_t llvm::InstVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor,void>::visit(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *a1 = v4;
  DataLayout = llvm::Module::getDataLayout(v4);
  v6 = **a1;
  *(a1 + 8) = v6;
  *(a1 + 16) = DataLayout;
  *(a1 + 24) = llvm::Type::getInt32Ty(v6, v7);
  v8 = *(a2 + 80);

  return llvm::InstVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock,false,false,void>,false,false>>(a1, v8, a2 + 72);
}

{
  v2 = *(a2 + 16);
  if ((v2 - 61) > 0x22)
  {
    if ((v2 - 29) >= 0x1F)
    {
      return MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitLoadInst(a1, a2);
    }
  }

  else if (((1 << (v2 - 61)) & 0x7FF7FFFFELL) == 0)
  {
    if (v2 == 61)
    {
      return MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitStoreInst(a1, a2);
    }

    else
    {
      return MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitCallInst(a1, a2);
    }
  }

  return a1;
}

__n128 std::__function::__func<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#1},std::allocator<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#1}>,llvm::Value * ()(MTLIRBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868EC840;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#1},std::allocator<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#1}>,llvm::Value * ()(MTLIRBuilder &)>::operator()(uint64_t a1, llvm::IRBuilderBase *a2)
{
  v4 = **(a1 + 8);
  v5 = *(*(a1 + 16) + 72);
  v14 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a2, 47, v4, v5, v13);
  v7 = **(a1 + 24);
  v14 = 257;
  v8 = *Cast;
  v9 = llvm::ConstantInt::get();
  v10 = llvm::IRBuilderBase::CreateOr(a2, Cast, v9, v13);
  v11 = ***(a1 + 8);
  v14 = 257;
  return llvm::IRBuilderBase::CreateCast(a2, 48, v10, v11, v13);
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

uint64_t llvm::InstVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock,false,false,void>,false,false>>(uint64_t result, uint64_t a2, uint64_t a3)
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

          result = llvm::InstVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor,void>::visit(v4, v10);
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

uint64_t MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitLoadInst(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v6 = (llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), **(**(a2 - 32) + 16)) + 7) >> 3;
  llvm::TypeSize::operator unsigned long long();
  llvm::ConstantInt::get();
  return MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(a1, a2, *(a2 - 32));
}

uint64_t MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v3 = *(*a3 + 8);
  if ((v3 & 0xFE) == 0x12)
  {
    v3 = *(**(*a3 + 16) + 8);
  }

  if ((v3 & 0xFFFFFF00) == 0x300)
  {
    return llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(result + 32, &v4);
  }

  return result;
}

uint64_t MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitStoreInst(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v6 = (llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), **(**(a2 - 32) + 16)) + 7) >> 3;
  llvm::TypeSize::operator unsigned long long();
  llvm::ConstantInt::get();
  return MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(a1, a2, *(a2 - 32));
}

uint64_t MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitCallInst(uint64_t a1, uint64_t a2)
{
  result = *(a2 - 32);
  if (!result || *(result + 16) || *(result + 24) != *(a2 + 72))
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

    if (*result != 0x6D6F74612E726961 || *(result + 8) != 25449)
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
    MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(a1, a2, *v13);
    v16 = a1;
    v17 = a2;
    v18 = v14;
LABEL_48:

    return MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(v16, v17, v18);
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

  if (*result == 0x6D6F74612E726961 && *(result + 8) == 25449)
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
    return MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(a1, a2, v22);
  }

  return result;
}

__n128 std::__function::__func<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#2},std::allocator<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#2}>,llvm::Value * ()(MTLIRBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868EC888;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#2},std::allocator<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#2}>,llvm::Value * ()(MTLIRBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = *(v4 + 192);
  if (v5)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = **(a1 + 16);
  v8 = *(v4 + 96);
  v9 = llvm::PointerType::get();
  v16 = 257;
  v17[0] = llvm::IRBuilderBase::CreateCast(a2, 49, v7, v9, v15);
  v14[16] = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a2, v6, v5, v17, 1, v14, 0);
  v11 = ***(a1 + 16);
  v16 = 257;
  result = llvm::IRBuilderBase::CreateCast(a2, 49, v10, v11, v15);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void MTLThreadgroupMemoryCheckPass::applyThreadgroupChecks(MTLBoundsCheck::SharedPassData **this, llvm::Function *a2)
{
  v31[16] = *MEMORY[0x277D85DE8];
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    v23 = a2 + 72;
    do
    {
      v5 = v3 - 24;
      if (!v3)
      {
        v5 = 0;
      }

      v29 = v31;
      v30 = 0x800000000;
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

          v9 = *(v8 + 16);
          if ((v9 - 60) >= 2)
          {
            if (v9 == 84)
            {
              v10 = *(v8 - 32);
              if (v10)
              {
                if (!*(v10 + 16) && *(v10 + 24) == *(v8 + 72))
                {
                  llvm::Value::getName(v10);
                }
              }
            }
          }

          else
          {
            CheckedInstruction = MTLThreadgroupMemoryCheckPass::createCheckedInstruction(this, v8);
            if (CheckedInstruction)
            {
              v24[0] = v8;
              llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::MDTuple *>>::emplace_back<llvm::Instruction *,llvm::MDTuple *&>(&v29, v24, &CheckedInstruction);
            }
          }

          v7 = *(v7 + 1);
        }

        while (v7 != v6);
        v11 = v29;
        if (v30)
        {
          v12 = (v29 + 16 * v30);
          do
          {
            v13 = *v11;
            v14 = *(*v11 + 5);
            if ((v14 & 0x40000000) != 0)
            {
              v16 = *(v13 - 1);
              v15 = v14 & 0x7FFFFFF;
            }

            else
            {
              v15 = v14 & 0x7FFFFFF;
              v16 = v13 - 32 * v15;
            }

            v17 = v11[1];
            llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *,void>(&CheckedInstruction, v16, &v16[32 * v15]);
            v18 = this[10];
            MTLBoundsCheck::SharedPassData::indexForInstruction(this[8], v13);
            v24[0] = llvm::ConstantInt::get();
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&CheckedInstruction, v24);
            if (v17)
            {
              v19 = *(v17 + 24);
            }

            else
            {
              v19 = 0;
            }

            v25 = 257;
            v20 = llvm::CallInst::Create(v19, v17, CheckedInstruction, v27, 0, 0);
            llvm::ReplaceInstWithInst(v13, v20, v21);
            if (CheckedInstruction != &v28)
            {
              free(CheckedInstruction);
            }

            v11 += 2;
          }

          while (v11 != v12);
          v11 = v29;
          v2 = v23;
        }

        if (v11 != v31)
        {
          free(v11);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2579F42B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
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

void sub_2579F53B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
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

void sub_2579F569C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
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

void MTLFragmentInputPackingPass::fragmentInputPacking(int a1, llvm::Type **this, uint64_t a3)
{
  v141[10] = *MEMORY[0x277D85DE8];
  v4 = *this;
  *&v135 = "air.fragment";
  LOWORD(v137) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v135);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v7 = (Operand - 8 * *(Operand + 8));
  v8 = v7[2];
  v9 = *(*v7 + 128);
  v10 = *(v9 + 3);
  __p = 0;
  v132 = 0;
  v133 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  __src = 0;
  v126 = 0;
  v127 = 0;
  if (v8)
  {
    std::vector<unsigned int>::vector[abi:ne200100](&v124, *(v9 + 12));
    MTLFrameworkPass::getArgumentMetadataIndices(v8, &v124);
    v119 = v10;
    v115 = this;
    if (*(v9 + 9))
    {
      llvm::Function::BuildLazyArguments(v9);
    }

    v11 = 0;
    v117 = 0;
    for (i = *(v9 + 11); ; i += 40)
    {
      if (*(v9 + 9))
      {
        llvm::Function::BuildLazyArguments(v9);
      }

      if (i == *(v9 + 11) + 40 * *(v9 + 12))
      {
        v42 = 126 - 2 * __clz((v132 - __p) >> 5);
        if (v132 == __p)
        {
          v43 = 0;
        }

        else
        {
          v43 = v42;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,false>(__p, v132, &v135, v43, 1);
        v118 = v9;
        if (((v132 - __p) & 0x1FFFFFFFE0) != 0)
        {
          v44 = 0;
          v45 = ((v132 - __p) >> 5);
          do
          {
            v46 = __p + 32 * v44;
            v47 = v128;
            v48 = v129;
            ComponentType = MTLDataTypeGetComponentType(*(v46 + 6));
            ComponentCount = MTLDataTypeGetComponentCount(*(v46 + 6));
            v51 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3);
            v52 = v46[28];
            v53 = v51;
            v54 = (v52 & 0x38) == 0x20 || v51 == 0;
            v9 = v118;
            if (v54)
            {
LABEL_73:
              v58 = *(*(v119 + 16) + 8 * (*v46 + 1));
              if ((*(v58 + 8) & 0xFE) == 0x12)
              {
                v58 = **(v58 + 16);
              }

              v59 = v129;
              if (v129 >= v130)
              {
                v61 = 0xAAAAAAAAAAAAAAABLL * ((v129 - v128) >> 3);
                v62 = v61 + 1;
                if (v61 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v130 - v128) >> 3) > v62)
                {
                  v62 = 0x5555555555555556 * ((v130 - v128) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v130 - v128) >> 3) >= 0x555555555555555)
                {
                  v63 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v63 = v62;
                }

                if (v63)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(&v128, v63);
                }

                v65 = 8 * ((v129 - v128) >> 3);
                *v65 = ComponentType;
                *(v65 + 2) = ComponentCount;
                *(v65 + 4) = 1;
                *(v65 + 6) = v44;
                *(v65 + 16) = v58;
                v60 = 24 * v61 + 24;
                v66 = (24 * v61 - (v129 - v128));
                memcpy(v66, v128, v129 - v128);
                v67 = v128;
                v128 = v66;
                v129 = v60;
                v130 = 0;
                if (v67)
                {
                  operator delete(v67);
                }

                v9 = v118;
              }

              else
              {
                *v129 = ComponentType;
                *(v59 + 1) = ComponentCount;
                *(v59 + 2) = 1;
                *(v59 + 3) = v44;
                v60 = (v59 + 24);
                *(v59 + 2) = v58;
              }

              v129 = v60;
            }

            else
            {
              v55 = (v128 + 6);
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

        v122 = 0;
        v123 = 0;
        v121 = 0;
        std::vector<MTLOpaqueObject *>::reserve(&v121, (*(v119 + 12) - 1));
        v120[3] = *(v9 + 14);
        v140[0] = v141;
        v140[1] = 0xA00000000;
        memset(v120, 0, 24);
        std::vector<MTLOpaqueObject *>::reserve(v120, (*(v119 + 12) - 1));
        v114 = 0xAAAAAAAAAAAAAAABLL * ((v129 - v128) >> 3);
        if (v114)
        {
          v68 = 0;
          v69 = 16;
          do
          {
            v70 = v128;
            v71 = __p + 32 * *(v128 + v69 - 10);
            v72 = *(v128 + v69 - 14);
            v73 = MTLDataTypeGetComponentType(*(v71 + 6));
            v74 = *&v70[v69];
            if (v72 >= 2 && (v71[28] & 0x38) != 0x20)
            {
              v75 = *&v70[v69];
              v74 = llvm::VectorType::get();
            }

            v76 = v122;
            if (v122 >= v123)
            {
              v78 = (v122 - v121) >> 3;
              if ((v78 + 1) >> 61)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              v79 = (v123 - v121) >> 2;
              if (v79 <= v78 + 1)
              {
                v79 = v78 + 1;
              }

              if (v123 - v121 >= 0x7FFFFFFFFFFFFFF8)
              {
                v80 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v80 = v79;
              }

              if (v80)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v121, v80);
              }

              v81 = (8 * v78);
              *v81 = v74;
              v77 = 8 * v78 + 8;
              v82 = v81 - (v122 - v121);
              memcpy(v82, v121, v122 - v121);
              v83 = v121;
              v121 = v82;
              v122 = v77;
              v123 = 0;
              if (v83)
              {
                operator delete(v83);
              }
            }

            else
            {
              *v122 = v74;
              v77 = (v76 + 8);
            }

            v122 = v77;
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v140, 0);
            ShaderTypeName = MTLDataTypeGetShaderTypeName(v73, v72);
            v139 = 0;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            llvm::Type::getInt32Ty(v4, v85);
            llvm::ConstantInt::get();
            *&v135 = llvm::ValueAsMetadata::get();
            *(&v135 + 1) = llvm::MDString::get();
            *&v136 = llvm::MDString::get();
            *(&v136 + 1) = llvm::MDString::get();
            llvm::Type::getInt32Ty(v4, v86);
            llvm::ConstantInt::get();
            *&v137 = llvm::ValueAsMetadata::get();
            *(&v137 + 1) = llvm::MDString::get();
            strlen(ShaderTypeName);
            *&v138 = llvm::MDString::get();
            v87 = MTLFrameworkPass::samplingStringFromQualifier(((v71[28] >> 3) & 7));
            strlen(v87);
            *(&v138 + 1) = llvm::MDString::get();
            v88 = MTLFrameworkPass::interpolationStringFromQualifier(((v71[28] >> 1) & 3));
            strlen(v88);
            v139 = llvm::MDString::get();
            Impl = llvm::MDTuple::getImpl();
            std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v120, &Impl);
            ++v68;
            v69 += 24;
          }

          while (v114 != v68);
        }

        if (((v126 - __src) & 0x3FFFFFFFCLL) != 0)
        {
          v89 = 0;
          v90 = ((v126 - __src) >> 2);
          do
          {
            v91 = *(__src + v89);
            v92 = *(*(v119 + 16) + 8 * (v91 + 1));
            v93 = v122;
            if (v122 >= v123)
            {
              v95 = (v122 - v121) >> 3;
              if ((v95 + 1) >> 61)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              v96 = (v123 - v121) >> 2;
              if (v96 <= v95 + 1)
              {
                v96 = v95 + 1;
              }

              if (v123 - v121 >= 0x7FFFFFFFFFFFFFF8)
              {
                v97 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v97 = v96;
              }

              if (v97)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v121, v97);
              }

              v98 = (8 * v95);
              *v98 = v92;
              v94 = 8 * v95 + 8;
              v99 = v98 - (v122 - v121);
              memcpy(v99, v121, v122 - v121);
              v100 = v121;
              v121 = v99;
              v122 = v94;
              v123 = 0;
              if (v100)
              {
                operator delete(v100);
              }
            }

            else
            {
              *v122 = v92;
              v94 = (v93 + 8);
            }

            v122 = v94;
            ParamAttrs = llvm::compat::getParamAttrs();
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v140, ParamAttrs);
            v102 = *(v8 - 8 * *(v8 + 8) + 8 * *(v124 + v91));
            if (v102)
            {
              v103 = *(v102 + 8);
              std::vector<llvm::Metadata *>::vector[abi:ne200100](&v135, v103);
              llvm::Type::getInt32Ty(v4, v104);
              llvm::ConstantInt::get();
              *v135 = llvm::ValueAsMetadata::get();
              if (v103 >= 2)
              {
                v105 = v102 - 8 * *(v102 + 8);
                v106 = 8;
                do
                {
                  *(v135 + v106) = *(v105 + v106);
                  v106 += 8;
                }

                while (8 * v103 != v106);
              }

              v107 = llvm::MDTuple::getImpl();
              if (v135)
              {
                *(&v135 + 1) = v135;
                operator delete(v135);
              }
            }

            else
            {
              v107 = 0;
            }

            *&v135 = v107;
            std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v120, &v135);
            ++v89;
          }

          while (v89 != v90);
        }

        v108 = **(*(v118 + 3) + 16);
        v109 = llvm::FunctionType::get();
        *(v118 + 8) = *(v118 + 8) & 0xFFFFBFC0 | 0x4007;
        *&v135 = "air.packedFragmentFunction";
        LOWORD(v137) = 259;
        v110 = llvm::Function::Create(v109, 0, &v135, v115);
        llvm::Function::getContext(v118);
        llvm::compat::getFnAttrs();
        llvm::compat::getRetAttrs();
        *(v110 + 14) = llvm::AttributeList::get();
        *&v135 = "Body";
        LOWORD(v137) = 259;
        llvm::BasicBlock::Create(v4, &v135, v110, 0, v111);
      }

      v13 = *(v124 + v11);
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

          LODWORD(v117) = v117 + 1;
          v22 = HIDWORD(v117) + 1;
LABEL_31:
          HIDWORD(v117) = v22;
LABEL_32:
          v23 = v126;
          if (v126 >= v127)
          {
            v25 = __src;
            v26 = v126 - __src;
            v27 = (v126 - __src) >> 2;
            v28 = v27 + 1;
            if ((v27 + 1) >> 62)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v29 = v127 - __src;
            if ((v127 - __src) >> 1 > v28)
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
            v126 = v24;
            v127 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v126 = v11;
            v24 = (v23 + 4);
          }

          v126 = v24;
          goto LABEL_45;
        }

        if (v16 == 15)
        {
          if (!memcmp(String, "air.point_coord", 0xFuLL))
          {
            LODWORD(v117) = v117 + 1;
            v22 = HIDWORD(v117) + 2;
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
          LODWORD(v135) = 0;
          *(&v135 + 1) = 0;
          *&v136 = 0;
          *(&v136 + 5) = 0;
          MTLFrameworkPass::extractVaryingInfoFromMetadata(&v135, v14, 2u, 0);
          LODWORD(v135) = v11;
          BYTE12(v136) |= 1u;
          v19 = v132;
          if (v132 >= v133)
          {
            v32 = __p;
            v33 = v132 - __p;
            v34 = (v132 - __p) >> 5;
            v35 = v34 + 1;
            if ((v34 + 1) >> 59)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v36 = v133 - __p;
            if ((v133 - __p) >> 4 > v35)
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

            v37 = (v132 - __p) >> 5;
            v38 = (32 * v34);
            v39 = v136;
            *v38 = v135;
            v38[1] = v39;
            v21 = (32 * v34 + 32);
            v40 = (32 * v34 - 32 * v37);
            memcpy(&v38[-2 * v37], v32, v33);
            v41 = __p;
            __p = v40;
            v132 = v21;
            v133 = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            v20 = v136;
            *v132 = v135;
            *(v19 + 1) = v20;
            v21 = (v19 + 32);
          }

          v132 = v21;
          LODWORD(v117) = v117 + 1;
          HIDWORD(v117) += MTLDataTypeGetComponentCount(SDWORD2(v136));
        }
      }

LABEL_45:
      ++v11;
    }
  }

  *&v135 = this;
  LODWORD(v140[0]) = 0;
  LODWORD(Impl) = 0;
  LODWORD(v124) = 0;
  v112 = *(a3 + 24);
  if (!v112)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v112 + 48))(v112, &v135, v140, &Impl, &v124, &v128, &__p);
  if (__src)
  {
    v126 = __src;
    operator delete(__src);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (__p)
  {
    v132 = __p;
    operator delete(__p);
  }

  v113 = *MEMORY[0x277D85DE8];
}

void sub_2579F68F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
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

void sub_2579F6B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
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
    MEMORY[0x259C6A980](v15, a2, a3, a4, a5, v16, 0);
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

void sub_2579F6DC4(_Unwind_Exception *exception_object)
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

void sub_2579F6E3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
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

void createDebugInfoForWrapperFunction(uint64_t a1, llvm::IRBuilderBase *a2, llvm::Value *a3, llvm::Function *this)
{
  Subprogram = llvm::Function::getSubprogram(this);
  if (Subprogram)
  {
    v8 = Subprogram;
    v9 = *(Subprogram - 8 * *(Subprogram + 8) + 8);
    Name = llvm::Value::getName(a3);
    v12 = *(v8 + 8);
    v13 = *v8 == 15 ? v8 : *(v8 - 8 * v12);
    v14 = (v8 - 8 * v12);
    v15 = v12 < 9 ? 0 : v14[8];
    Impl = llvm::DISubprogram::getImpl(a1, v9, Name, v10, 0, 0, v13, 0, v14[4], 0, v15, 0, 0x1C00000140, v14[5], 0, 0, 0, 0, 0, &unk_257A6F51A, 0);
    llvm::Function::setSubprogram();
    llvm::IRBuilderBase::getCurrentDebugLocation(&v22, a2);
    v17 = v22;
    llvm::TrackingMDRef::~TrackingMDRef(&v22);
    if (Impl && v17 == 0)
    {
      v19 = *(Impl + 28);
      llvm::DebugLoc::get();
      v21 = v22;
      if (v22)
      {
        llvm::MetadataTracking::track();
        v20 = v21;
      }

      else
      {
        v20 = 0;
      }

      llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(a2, 0, v20);
      llvm::TrackingMDRef::~TrackingMDRef(&v21);
      llvm::TrackingMDRef::~TrackingMDRef(&v22);
    }
  }
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

unint64_t parseArgumentMetadata(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t *a7, int a8)
{
  if (atomic_load_explicit(&buildInMetadataSetOnce, memory_order_acquire) != -1)
  {
    __p[0] = &v117;
    v120[0] = __p;
    std::__call_once(&buildInMetadataSetOnce, v120, std::__call_once_proxy[abi:ne200100]<std::tuple<parseArgumentMetadata(MTLArgumentData &,llvm::MDNode *,llvm::Value *,MTLCompilerArgumentAccess,llvm::DataLayout const&,BOOL,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>> &,MTLFunctionTypeIndex)::$_0 &&>>);
  }

  if (a3)
  {
    v13 = 8 * (*(a3 + 8) != 0);
  }

  else
  {
    v13 = 8;
  }

  v14 = *(a2 + 8);
  v15 = *a1 & 0xFFFFEFF1;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *a1 = v15 | v13;
  String = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * (a6 ^ 1u)));
  v120[0] = String;
  v120[1] = v17;
  if (a6)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = String;
  v20 = v17;
  switch(v17)
  {
    case 8uLL:
LABEL_10:
      if (memcmp(String, "air.mesh", v17))
      {
        goto LABEL_94;
      }

      *a1 |= 4u;
      *(a1 + 12) = 24;
      parseMeshStruct(a1, *(a2 - 8 * *(a2 + 8) + 8 * v18));
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v116 = 0;
      v24 = 16;
      break;
    case 9uLL:
LABEL_43:
      if (!memcmp(String, "air.byval", v17))
      {
        goto LABEL_239;
      }

      goto LABEL_94;
    case 0xAuLL:
LABEL_52:
      if (*String != 0x666675622E726961 || *(String + 4) != 29285)
      {
        goto LABEL_94;
      }

      goto LABEL_238;
    case 0xBuLL:
LABEL_69:
      if (!memcmp(String, "air.texture", v17))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v116 = 0;
        v24 = 1;
      }

      else if (*v19 == 0x706D61732E726961 && *(v19 + 3) == 0x72656C706D61732ELL)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v116 = 0;
        v24 = 2;
      }

      else
      {
        if (memcmp(v19, "air.payload", v20))
        {
          goto LABEL_94;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 15;
        v116 = 1;
      }

      break;
    case 0xCuLL:
LABEL_76:
      if (!memcmp(String, "air.constant", v17))
      {
LABEL_239:
        v21 = 0;
        v22 = 0;
        v116 = 0;
        v24 = 9;
        v23 = 1;
        break;
      }

      if (*v19 != 0x676174732E726961 || *(v19 + 2) != 1852399461)
      {
        goto LABEL_94;
      }

LABEL_82:
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v116 = 0;
      v38 = *a1 | 2;
LABEL_90:
      *a1 = v38;
      goto LABEL_98;
    case 0xEuLL:
LABEL_58:
      if (memcmp(String, "air.imageblock", v17))
      {
        goto LABEL_94;
      }

      v32 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * v18));
      if (v33 != 8)
      {
        goto LABEL_258;
      }

      v18 = a6 ^ 1 | 2;
      if (*v32 == 0x746963696C706D69)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v116 = 0;
        *(a1 + 184) = 0;
      }

      else
      {
        if (*v32 != 0x746963696C707865)
        {
LABEL_258:
          abort();
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v116 = 0;
        *(a1 + 184) = 1;
      }

      v24 = 5;
      break;
    case 0xFuLL:
      if (*String != 0x637461702E726961 || *(String + 7) != 0x7475706E695F6863)
      {
        goto LABEL_94;
      }

      *a1 |= 0x2000u;
      goto LABEL_82;
    case 0x10uLL:
      if (*String != 0x747265762E726961 || String[1] != 0x7475706E695F7865)
      {
        goto LABEL_94;
      }

      goto LABEL_82;
    case 0x12uLL:
LABEL_86:
      if (!memcmp(String, "air.command_buffer", v17))
      {
        goto LABEL_237;
      }

      if (memcmp(v19, "air.fragment_input", v20))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v116 = 0;
      v34 = *a1;
      v35 = 32770;
      goto LABEL_89;
    case 0x13uLL:
LABEL_83:
      if (!memcmp(String, "air.indirect_buffer", v17))
      {
LABEL_238:
        v22 = 0;
        v23 = 0;
        v116 = 0;
        v24 = 0;
        v21 = 1;
      }

      else
      {
        if (memcmp(v19, "air.imageblock_data", v20))
        {
          goto LABEL_94;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v116 = 0;
        v24 = 4;
      }

      break;
    case 0x14uLL:
      if (*String == 0x6C706D612E726961 && String[1] == 0x6F69746163696669 && *(String + 4) == 1684627310)
      {
        goto LABEL_42;
      }

LABEL_19:
      if (!memcmp(String, "air.function_pointer", v17))
      {
        goto LABEL_258;
      }

      goto LABEL_94;
    case 0x15uLL:
LABEL_47:
      if (memcmp(String, "air.indirect_constant", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v23 = 0;
      v116 = 0;
      v24 = 3;
      v22 = 1;
      break;
    case 0x17uLL:
      if (*String == 0x6C706D612E726961 && String[1] == 0x6F69746163696669 && *(String + 15) == 0x746E756F635F6E6FLL)
      {
LABEL_42:
        *a1 |= 8u;
        switch(v17)
        {
          case 8uLL:
            goto LABEL_10;
          case 9uLL:
            goto LABEL_43;
          case 0xAuLL:
            goto LABEL_52;
          case 0xBuLL:
            goto LABEL_69;
          case 0xCuLL:
            goto LABEL_76;
          case 0xEuLL:
            goto LABEL_58;
          case 0x12uLL:
            goto LABEL_86;
          case 0x13uLL:
            goto LABEL_83;
          case 0x14uLL:
            goto LABEL_19;
          case 0x15uLL:
            goto LABEL_47;
          case 0x17uLL:
            break;
          case 0x19uLL:
            goto LABEL_63;
          case 0x1AuLL:
            goto LABEL_49;
          case 0x1BuLL:
            goto LABEL_45;
          case 0x1DuLL:
            goto LABEL_65;
          case 0x1FuLL:
            goto LABEL_67;
          case 0x23uLL:
            goto LABEL_93;
          case 0x24uLL:
            goto LABEL_91;
          default:
            goto LABEL_94;
        }
      }

      if (memcmp(String, "air.depth_stencil_state", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v116 = 0;
      v24 = 17;
      break;
    case 0x19uLL:
LABEL_63:
      if (memcmp(String, "air.render_pipeline_state", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v116 = 0;
      v24 = 7;
      break;
    case 0x1AuLL:
LABEL_49:
      if (!memcmp(String, "air.compute_pipeline_state", v17))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v116 = 0;
        v24 = 6;
      }

      else if (!memcmp(v19, "air.visible_function_table", v20))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v116 = 0;
        v24 = 11;
      }

      else
      {
LABEL_94:
        v39 = buildInMetadataSet;
        llvm::StringRef::str(v120, __p);
        v40 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v39, __p);
        if (v119 < 0)
        {
          operator delete(__p[0]);
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v116 = 0;
        if (buildInMetadataSet + 8 != v40)
        {
          *a1 |= 4u;
          *(a1 + 12) = *(v40 + 56);
        }

LABEL_98:
        v24 = 18;
      }

      break;
    case 0x1BuLL:
LABEL_45:
      if (memcmp(String, "air.indirect_command_buffer", v17))
      {
        goto LABEL_94;
      }

LABEL_237:
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v116 = 0;
      v24 = 8;
      break;
    case 0x1DuLL:
LABEL_65:
      if (memcmp(String, "air.patch_control_point_input", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v116 = 0;
      *(a1 + 96) = a2;
      v34 = *a1;
      v35 = 16386;
LABEL_89:
      v38 = v34 | v35;
      goto LABEL_90;
    case 0x1FuLL:
LABEL_67:
      if (memcmp(String, "air.intersection_function_table", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v116 = 0;
      v24 = 12;
      break;
    case 0x23uLL:
LABEL_93:
      if (memcmp(String, "air.instance_acceleration_structure", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v116 = 0;
      v24 = 14;
      break;
    case 0x24uLL:
LABEL_91:
      if (memcmp(String, "air.primitive_acceleration_structure", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v116 = 0;
      v24 = 13;
      break;
    default:
      goto LABEL_94;
  }

  result = *(a1 + 96);
  if (result)
  {
    result = isPatchControlPointInputUnused(result);
    v42 = (*(*(a1 + 96) + 8) - result);
    if (result)
    {
      *a1 &= ~8u;
    }

    if (v18 < v42)
    {
      v115 = v23;
      v43 = v22;
      v44 = v21;
      v45 = a8;
      v46 = v18;
      do
      {
        v47 = *(*(a1 + 96) - 8 * *(*(a1 + 96) + 8) + 8 * v46);
        v48 = *(v47 + 8);
        v49 = v47;
        if (v48)
        {
          do
          {
            result = *(v49 - 8 * *(v47 + 8));
            if (result && !*result)
            {
              result = llvm::MDString::getString(result);
            }

            v49 += 8;
            --v48;
          }

          while (v48);
        }

        ++v46;
      }

      while (v46 != v42);
      v50 = 0;
      v51 = 1;
      v52 = 1;
      v53 = 1;
      a8 = v45;
      v21 = v44;
      v22 = v43;
      v23 = v115;
      goto LABEL_191;
    }

    v50 = 0;
    v51 = 1;
LABEL_190:
    v52 = 1;
    v53 = 1;
LABEL_191:
    v89 = v116;
    goto LABEL_192;
  }

  v51 = 1;
  if (v18 >= v14)
  {
    v50 = 0;
    goto LABEL_190;
  }

  v107 = v22;
  v108 = v21;
  v109 = a8;
  v110 = 0;
  v111 = 0;
  v54 = 0;
  do
  {
    result = *(a2 - 8 * *(a2 + 8) + 8 * v18);
    v55 = v18 + 1;
    if (!*result)
    {
      result = llvm::MDString::getString(result);
      v57 = result;
      v58 = v56;
      switch(v56)
      {
        case 8uLL:
          v59 = "air.read";
          goto LABEL_143;
        case 9uLL:
          result = memcmp(result, "air.write", v56);
          v67 = HIDWORD(v111);
          if (!result)
          {
            v67 = 1;
          }

          goto LABEL_172;
        case 0xAuLL:
          v59 = "air.sample";
          goto LABEL_143;
        case 0xBuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x13uLL:
        case 0x16uLL:
        case 0x19uLL:
        case 0x1AuLL:
        case 0x1BuLL:
        case 0x1CuLL:
          break;
        case 0xCuLL:
          if (*result == 0x5F6772612E726961 && *(result + 8) == 1701667182)
          {
            v74 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            v55 = v18 + 2;
            result = llvm::MDString::getString(v74);
            *(a1 + 16) = result;
            *(a1 + 24) = v75;
          }

          break;
        case 0xDuLL:
          v59 = "air.read_only";
LABEL_143:
          result = memcmp(result, v59, v58);
          if (!result)
          {
            v54 = 1;
          }

          break;
        case 0xEuLL:
          result = memcmp(result, "air.write_only", v56);
          if (result)
          {
            if (*v57 == 0x646165722E726961 && *(v57 + 6) == 0x65746972775F6461)
            {
              LODWORD(v111) = 1;
            }

            else
            {
              result = memcmp(v57, "air.arg_unused", v58);
              if (!result)
              {
                *a1 &= ~8u;
              }
            }
          }

          else
          {
            v67 = 1;
LABEL_172:
            HIDWORD(v111) = v67;
          }

          break;
        case 0x11uLL:
          if (!memcmp(result, "air.arg_type_name", v56))
          {
            v80 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            v55 = v18 + 2;
            result = llvm::MDString::getString(v80);
            *(a1 + 32) = result;
            *(a1 + 40) = v81;
          }

          else
          {
            result = memcmp(v57, "air.arg_type_size", v58);
            if (result)
            {
              result = memcmp(v57, "air.address_space", v58);
              if (!result)
              {
                v76 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
                v77 = (v76 + 24);
                if (*(v76 + 32) >= 0x41u)
                {
                  v77 = *v77;
                }

                v110 = *v77;
              }
            }

            else
            {
              v84 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
              v85 = (v84 + 24);
              if (*(v84 + 32) >= 0x41u)
              {
                v85 = *v85;
              }

              *(a1 + 56) = *v85;
LABEL_187:
              v55 = v18 + 2;
            }
          }

          break;
        case 0x12uLL:
          result = memcmp(result, "air.location_index", v56);
          if (!result)
          {
            v68 = a2 - 8 * *(a2 + 8);
            v69 = *(*(v68 + 8 * v55) + 128);
            if (*(v69 + 16) == 16)
            {
              v70 = (v69 + 24);
              if (*(v69 + 32) >= 0x41u)
              {
                v70 = *v70;
              }

              v71 = *v70;
            }

            else
            {
              v71 = -1;
            }

            *(a1 + 4) = v71;
            v86 = *(*(v68 + 8 * (v18 + 2)) + 128);
            if (*(v86 + 16) == 16)
            {
              v87 = (v86 + 24);
              if (*(v86 + 32) >= 0x41u)
              {
                v87 = *v87;
              }

              v88 = *v87;
            }

            else
            {
              v88 = -1;
            }

            *(a1 + 8) = v88;
            v55 = v18 + 3;
          }

          break;
        case 0x14uLL:
          result = memcmp(result, "air.struct_type_info", v56);
          if (!result)
          {
            v117 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            __p[0] = v117;
            v55 = v18 + 2;
            *(a1 + 72) = v117;
            v120[0] = 0;
            result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a7, __p, v120);
            if ((result & 1) == 0 || (v79 = *(v120[0] + 1)) == 0)
            {
              v82 = *(a1 + 160);
              llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(a7, &v117)[1] = v82;
              v83 = *(a1 + 160);
              parseStructTypeMetadata(v117, a5, a4);
            }

            *(a1 + 160) = v79;
          }

          break;
        case 0x15uLL:
          result = memcmp(result, "air.imageblock_master", v56);
          if (!result)
          {
            v72 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            *(a1 + 192) = v72;
            parseStructTypeMetadata(v72, a5, a4);
          }

          break;
        case 0x17uLL:
          result = memcmp(result, "air.arg_type_align_size", v56);
          if (result)
          {
            break;
          }

          v65 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
          v66 = (v65 + 24);
          if (*(v65 + 32) >= 0x41u)
          {
            v66 = *v66;
          }

          *(a1 + 52) = *v66;
          goto LABEL_187;
        case 0x18uLL:
          result = memcmp(result, "air.imageblock_data_size", v56);
          if (result)
          {
            break;
          }

          v63 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
          v64 = (v63 + 24);
          if (*(v63 + 32) >= 0x41u)
          {
            v64 = *v64;
          }

          *(a1 + 188) = *v64;
          goto LABEL_187;
        case 0x1DuLL:
          result = memcmp(result, "air.alias_implicit_imageblock", v56);
          if (!result)
          {
            *(a1 + 224) = 1;
          }

          break;
        default:
          if (v56 != 43)
          {
            break;
          }

          result = memcmp(result, "air.alias_implicit_imageblock_render_target", 0x2BuLL);
          if (result)
          {
            break;
          }

          v60 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
          if (*(v60 + 16) == 16)
          {
            v61 = (v60 + 24);
            if (*(v60 + 32) >= 0x41u)
            {
              v61 = *v61;
            }

            v62 = *v61;
          }

          else
          {
            v62 = -1;
          }

          *(a1 + 228) = v62;
          goto LABEL_187;
      }
    }

    v18 = v55;
  }

  while (v55 < v14);
  v53 = v111 == 0;
  v52 = HIDWORD(v111) == 0;
  v51 = v54 == 0;
  v21 = v108;
  a8 = v109;
  v22 = v107;
  v89 = v116;
  v50 = v110;
LABEL_192:
  if ((v21 | v22 | v23 | v89) == 1)
  {
    if (*(a1 + 72))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v90 = v50;
      v91 = v51;
      LODWORD(__p[0]) = 0;
      LODWORD(v120[0]) = 0;
      v92 = *(a1 + 32);
      if (v92)
      {
        v93 = strlen(*(a1 + 32));
        v94 = dataTypeFromString(v92, v93, __p, v120);
      }

      else
      {
        v94 = 0;
      }

      *(a1 + 48) = v94;
      if (!*(a1 + 52))
      {
        *(a1 + 52) = __p[0];
      }

      if (!*(a1 + 56))
      {
        *(a1 + 56) = v120[0];
      }

      v95 = *(a1 + 32);
      if (v95)
      {
        v96 = strlen(*(a1 + 32));
        result = pixelFormatAndALUTypeFromString(v95, v96);
        v97 = HIDWORD(result);
      }

      else
      {
        result = 0;
        LODWORD(v97) = 0;
      }

      *(a1 + 232) = result;
      *(a1 + 236) = v97;
      v51 = v91;
      v50 = v90;
    }
  }

  v98 = *a1;
  v99 = *a1 & 0xFFFFF00E;
  *a1 = v99 | 1;
  switch(v24)
  {
    case 0:
      if (v50 == 2)
      {
        v104 = 17;
      }

      else
      {
        if (v50 == 3)
        {
          v100 = 561;
          goto LABEL_252;
        }

        v104 = 33;
      }

      v105 = v99 | v104;
      *a1 = v105;
      v106 = v105 | 0x400;
      if (v52)
      {
        v106 = v105;
      }

      v103 = v105 | 0x200;
      if (v53)
      {
        v103 = v106;
      }

      goto LABEL_253;
    case 1:
      *a1 = v99 | 0x41;
      if (v53)
      {
        if (!v51)
        {
          return result;
        }

        v100 = 1089;
      }

      else
      {
        v100 = 577;
      }

      goto LABEL_252;
    case 2:
      v100 = 81;
      goto LABEL_252;
    case 3:
      v101 = ((a4 & 7) << 9) | 0x81;
      goto LABEL_235;
    case 4:
      v100 = 145;
      goto LABEL_252;
    case 5:
      v100 = 161;
      goto LABEL_252;
    case 6:
      v100 = 177;
      goto LABEL_252;
    case 7:
      v100 = 193;
      goto LABEL_252;
    case 8:
      v100 = 209;
      goto LABEL_252;
    case 9:
      v100 = 225;
      goto LABEL_252;
    case 11:
      v100 = 257;
      goto LABEL_252;
    case 12:
      v100 = 273;
      goto LABEL_252;
    case 13:
      v100 = 289;
      goto LABEL_252;
    case 14:
      v100 = 305;
      goto LABEL_252;
    case 15:
      *a1 = v99 | 0x151;
      if (!v53)
      {
        goto LABEL_228;
      }

      if (v52)
      {
        v102 = !v51;
        if (a8 != 6)
        {
          v102 = 1;
        }

        if (v102)
        {
          return result;
        }

LABEL_228:
        v100 = 849;
      }

      else
      {
        v100 = 1361;
      }

LABEL_252:
      v103 = v99 | v100;
LABEL_253:
      *a1 = v103;
      return result;
    case 16:
      v100 = 1376;
      goto LABEL_252;
    case 17:
      v100 = 369;
      goto LABEL_252;
    case 18:
      if ((v98 & 4) != 0)
      {
        v101 = 96;
      }

      else
      {
        v101 = 112;
      }

LABEL_235:
      v103 = v101 | v99;
      goto LABEL_253;
    default:
      return result;
  }
}

void sub_2579F8338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void sub_2579F84C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void parseStructTypeMetadata(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a3;
  operator new();
}

void sub_2579F8948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t vertexFetchBuiltInInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = strlen(v4);
  LODWORD(v4) = dataTypeFromString(v4, v5);
  *(a1 + 4) = MTLDataTypeGetComponentType(v4);
  result = MTLDataTypeGetComponentCount(v4);
  *(a1 + 1) = result;
  v7 = *(a2 + 12) - 1;
  if (v7 <= 0x15 && ((0x30F01Bu >> v7) & 1) != 0)
  {
    *a1 = byte_257A6DB11[v7];
  }

  return result;
}

uint64_t MTLDataTypeGetComponentType(int a1)
{
  if ((a1 - 3) > 0x55)
  {
    return 0;
  }

  else
  {
    return dword_257A6DB28[a1 - 3];
  }
}

uint64_t MTLDataTypeGetComponentCount(int a1)
{
  if ((a1 - 3) > 0x55)
  {
    return 0;
  }

  else
  {
    return byte_257A6DC80[a1 - 3];
  }
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
    return dword_257A6DCD8[v1];
  }

  return result;
}

uint64_t MTLDataTypeGetVectorDataType(int a1, int a2)
{
  v2 = a2 - 1;
  if (a1 <= 40)
  {
    v3 = a2 + 28;
    if (v2 >= 4)
    {
      v3 = 0;
    }

    v10 = a2 + 32;
    if (v2 >= 4)
    {
      v10 = 0;
    }

    v11 = a2 + 36;
    if (v2 >= 4)
    {
      v11 = 0;
    }

    if (a1 != 37)
    {
      v11 = 0;
    }

    if (a1 != 33)
    {
      v10 = v11;
    }

    if (a1 != 29)
    {
      v3 = v10;
    }

    v12 = v2 >= 4;
    if (v2 >= 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = a2 + 2;
    }

    v13 = a2 + 15;
    if (v12)
    {
      v13 = 0;
    }

    if (a1 != 16)
    {
      v13 = 0;
    }

    if (a1 != 3)
    {
      v8 = v13;
    }

    v9 = a1 <= 28;
  }

  else
  {
    v3 = a2 + 52;
    if (v2 >= 4)
    {
      v3 = 0;
    }

    v4 = a2 + 80;
    if (v2 >= 4)
    {
      v4 = 0;
    }

    v5 = a2 + 84;
    if (v2 >= 4)
    {
      v5 = 0;
    }

    if (a1 != 85)
    {
      v5 = 0;
    }

    if (a1 != 81)
    {
      v4 = v5;
    }

    if (a1 != 53)
    {
      v3 = v4;
    }

    v6 = a2 + 40;
    if (v2 >= 4)
    {
      v6 = 0;
    }

    v7 = a2 + 44;
    if (v2 < 4)
    {
      v8 = a2 + 48;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    if (a1 != 49)
    {
      v8 = 0;
    }

    if (a1 == 45)
    {
      v8 = v7;
    }

    if (a1 == 41)
    {
      v8 = v6;
    }

    v9 = a1 <= 52;
  }

  if (v9)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

const char *MTLDataTypeGetShaderTypeName(int a1, int a2)
{
  result = &unk_257A6F51A;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a1 <= 40)
      {
        if (a1 <= 28)
        {
          if (a1 == 3)
          {
            return "float3";
          }

          else if (a1 == 16)
          {
            return "half3";
          }
        }

        else
        {
          switch(a1)
          {
            case 29:
              return "int3";
            case 33:
              return "uint3";
            case 37:
              return "short3";
          }
        }
      }

      else if (a1 > 52)
      {
        switch(a1)
        {
          case '5':
            return "BOOL3";
          case 'Q':
            return "long3";
          case 'U':
            return "ulong3";
        }
      }

      else
      {
        switch(a1)
        {
          case ')':
            return "ushort3";
          case '-':
            return "char3";
          case '1':
            return "uchar3";
        }
      }
    }

    else if (a2 == 4)
    {
      if (a1 <= 40)
      {
        if (a1 <= 28)
        {
          if (a1 == 3)
          {
            return "float4";
          }

          else if (a1 == 16)
          {
            return "half4";
          }
        }

        else
        {
          switch(a1)
          {
            case 29:
              return "int4";
            case 33:
              return "uint4";
            case 37:
              return "short4";
          }
        }
      }

      else if (a1 > 52)
      {
        switch(a1)
        {
          case '5':
            return "BOOL4";
          case 'Q':
            return "long4";
          case 'U':
            return "ulong4";
        }
      }

      else
      {
        switch(a1)
        {
          case ')':
            return "ushort4";
          case '-':
            return "char4";
          case '1':
            return "uchar4";
        }
      }
    }
  }

  else if (a2 == 1)
  {
    if (a1 <= 40)
    {
      if (a1 <= 28)
      {
        if (a1 == 3)
        {
          return "float";
        }

        else if (a1 == 16)
        {
          return "half";
        }
      }

      else
      {
        switch(a1)
        {
          case 29:
            return "int";
          case 33:
            return "uint";
          case 37:
            return "short";
        }
      }
    }

    else if (a1 > 52)
    {
      switch(a1)
      {
        case '5':
          return "BOOL";
        case 'Q':
          return "long";
        case 'U':
          return "ulong";
      }
    }

    else
    {
      switch(a1)
      {
        case ')':
          return "ushort";
        case '-':
          return "char";
        case '1':
          return "uchar";
      }
    }
  }

  else if (a2 == 2)
  {
    if (a1 <= 40)
    {
      if (a1 <= 28)
      {
        if (a1 == 3)
        {
          return "float2";
        }

        else if (a1 == 16)
        {
          return "half2";
        }
      }

      else
      {
        switch(a1)
        {
          case 29:
            return "int2";
          case 33:
            return "uint2";
          case 37:
            return "short2";
        }
      }
    }

    else if (a1 > 52)
    {
      switch(a1)
      {
        case '5':
          return "BOOL2";
        case 'Q':
          return "long2";
        case 'U':
          return "ulong2";
      }
    }

    else
    {
      switch(a1)
      {
        case ')':
          return "ushort2";
        case '-':
          return "char2";
        case '1':
          return "uchar2";
      }
    }
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
      v9 = &unk_257A6F51A;
      v8 = &unk_257A6F51A;
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
      v33 = xmmword_257A6DAF0;
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
    v8 = &unk_257A6F51A;
    v9 = &unk_257A6F51A;
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

void sub_2579F99FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MTLStructMemberInfo::~MTLStructMemberInfo(va);
  _Unwind_Resume(a1);
}

void sub_2579F9B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,MTLCompilerMeshTopologyType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerMeshTopologyType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerMeshTopologyType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::vector<MTLStructMemberInfo>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MTLStructMemberInfo>::__emplace_back_slow_path<MTLStructMemberInfo const&>(a1, a2);
  }

  else
  {
    std::vector<MTLStructMemberInfo>::__construct_one_at_end[abi:ne200100]<MTLStructMemberInfo const&>(a1, a2);
    result = v3 + 176;
  }

  a1[1] = result;
  return result;
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

__n128 std::vector<MTLStructMemberInfo>::__construct_one_at_end[abi:ne200100]<MTLStructMemberInfo const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(v4 + 48) = *(a2 + 12);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  v8 = *(a2 + 8);
  *(v4 + 56) = *(a2 + 7);
  *(v4 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 72);
  v10 = *(a2 + 88);
  *(v4 + 104) = 0;
  *(v4 + 72) = v9;
  *(v4 + 88) = v10;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(v4 + 104, *(a2 + 13), *(a2 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 14) - *(a2 + 13)) >> 4));
  result = a2[8];
  v12 = a2[10];
  *(v4 + 144) = a2[9];
  *(v4 + 160) = v12;
  *(v4 + 128) = result;
  *(a1 + 8) = v4 + 176;
  return result;
}

void sub_2579F9D6C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MTLStructMemberInfo>::__emplace_back_slow_path<MTLStructMemberInfo const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v25 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLStructMemberInfo>>(a1, v6);
  }

  v7 = 176 * v2;
  v22 = 0;
  v23 = v7;
  v24 = v7;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  *(v7 + 48) = *(a2 + 12);
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  *v7 = v8;
  v11 = *(a2 + 8);
  *(v7 + 56) = *(a2 + 7);
  *(v7 + 64) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(v7 + 104) = 0;
  *(v7 + 72) = v12;
  *(v7 + 88) = v13;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(v7 + 104, *(a2 + 13), *(a2 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 14) - *(a2 + 13)) >> 4));
  v15 = a2[9];
  v14 = a2[10];
  *(v7 + 128) = a2[8];
  *(v7 + 144) = v15;
  *(v7 + 160) = v14;
  *&v24 = v24 + 176;
  v16 = a1[1];
  v17 = v23 + *a1 - v16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<MTLStructMemberInfo>::~__split_buffer(&v22);
  return v21;
}

void sub_2579F9F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MTLStructMemberInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2579F9FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLStructMemberInfo>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLStructMemberInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*,MTLStructMemberInfo*,MTLStructMemberInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v19 = a4;
  v20 = a4;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  v18 = 0;
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      *(v5 + 48) = *(v7 + 12);
      *(v5 + 16) = v9;
      *(v5 + 32) = v10;
      *v5 = v8;
      v11 = *(v7 + 8);
      *(v5 + 56) = *(v7 + 7);
      *(v5 + 64) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = *(v7 + 72);
      v13 = *(v7 + 88);
      *(v5 + 104) = 0;
      *(v5 + 72) = v12;
      *(v5 + 88) = v13;
      *(v5 + 112) = 0;
      *(v5 + 120) = 0;
      std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(v5 + 104, *(v7 + 13), *(v7 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(v7 + 14) - *(v7 + 13)) >> 4), a5);
      v14 = v7[8];
      v15 = v7[10];
      *(v5 + 144) = v7[9];
      *(v5 + 160) = v15;
      *(v5 + 128) = v14;
      v7 += 11;
      v5 = v20 + 176;
      v20 += 176;
    }

    while (v7 != a3);
  }

  v18 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](v17);
  return v5;
}

void sub_2579FA180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 64);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
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

void std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 104);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = *(v7 + 16);
      v10 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
      *a4 = v8;
      *(a4 + 56) = *(v7 + 56);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = 0;
      *(a4 + 104) = *(v7 + 104);
      *(a4 + 120) = *(v7 + 120);
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      v12 = *(v7 + 128);
      v13 = *(v7 + 160);
      *(a4 + 144) = *(v7 + 144);
      *(a4 + 160) = v13;
      *(a4 + 128) = v12;
      v7 += 176;
      a4 += 176;
    }

    while (v7 != a3);
    v18 = a4;
    v16 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(a1, v5);
      v5 += 176;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__split_buffer<MTLStructMemberInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTLStructMemberInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTLStructMemberInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 176;
    std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(v5, v4 - 176);
  }
}

uint64_t std::function<void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::operator()(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20[0] = a6;
  v20[1] = a7;
  v19[0] = a9;
  v19[1] = a10;
  v18 = a2;
  v16 = a4;
  v17 = a3;
  v15 = a5;
  v13 = *(a1 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v13 + 48))(v13, &v18, &v17, &v16, &v15, v20, v19, &a11, &a12, &a13, &a13 + 4);
}

__n128 std::__function::__func<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0,std::allocator<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0>,void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868EC8D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0,std::allocator<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0>,void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, uint64_t a6, __int128 *a7, uint64_t *a8, uint64_t *a9, unsigned int *a10, unsigned int *a11)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v16 = *a6;
  v15 = *(a6 + 8);
  v17 = *a8;
  v18 = *a9;
  v19 = *a10;
  v20 = *a11;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0uLL;
  v36 = 0;
  v37 = xmmword_257A6DAF0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v29 = *a7;
  LODWORD(v32) = v12;
  LODWORD(v33) = v14;
  v38 = v17;
  v30 = v16;
  v31 = v15;
  if (v17)
  {
    v21 = 1;
  }

  else if (v18)
  {
    v21 = 57;
  }

  else
  {
    v22 = strlen(v16);
    v21 = dataTypeFromString(v16, v22);
    v23 = strlen(v16);
    *(&v37 + 1) = pixelFormatAndALUTypeFromString(v16, v23);
    v14 = v33;
  }

  if (v14)
  {
    HIDWORD(v33) = v21;
    v34 = v13;
    v21 = 2;
  }

  HIDWORD(v32) = v21;
  if (v17)
  {
    v24 = *(a1 + 24);
    parseStructTypeMetadata(v17, *(a1 + 8), **(a1 + 16));
  }

  if (v18)
  {
    if (llvm::MDNode::classof(v18))
    {
      _ZNSt3__115allocate_sharedB8ne200100I15MTLArgumentDataNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v25 = *(v18 + 128);
    if (*(v25 + 16) == 16)
    {
      v26 = (v25 + 24);
      if (*(v25 + 32) >= 0x41u)
      {
        v26 = *v26;
      }

      v27 = *v26;
    }

    else
    {
      v27 = -1;
    }

    v36 = v27;
  }

  *&v37 = __PAIR64__(v20, v19);
  std::vector<MTLStructMemberInfo>::push_back[abi:ne200100](*(a1 + 32), &v29);
  *&v28 = v39;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v28);
  if (*(&v35 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v35 + 1));
  }
}

void sub_2579FA758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MTLStructMemberInfo::~MTLStructMemberInfo(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__120__shared_ptr_emplaceI15MTLArgumentDataNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2868EC918;
  MTLArgumentData::MTLArgumentData((a1 + 3));
}

void std::__shared_ptr_emplace<MTLArgumentData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868EC918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C6B890);
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

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t findNonStructMember(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  for (i = (*a1 + 104); i[1] != *i; i += 22)
  {
    result = findNonStructMember(i);
    if (result)
    {
      return result;
    }

    v4 = i + 9;
    if (v4 == v1)
    {
      return 0;
    }
  }

  return (i - 13);
}

void sub_2579FB1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void MTLFoldMergePass::MTLFoldMergePass(MTLFoldMergePass *this, MTLBoundsCheck::SharedPassData *a2)
{
  v3 = MetalModulePass::MetalModulePass(this, &MTLFoldMergePass::ID, a2);
  *v3 = &unk_2868EC950;
  *(v3 + 216) = 128;
  *(this + 25) = MEMORY[0x259C6A8D0](11264, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(this + 25);
  *(this + 224) = 0;
  *(this + 248) = 0;
}

void MTLFoldMergePass::~MTLFoldMergePass(MTLFoldMergePass *this)
{
  *this = &unk_2868EC950;
  if (*(this + 248) == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap(this + 56);
    *(this + 248) = 0;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(this + 200);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EC950;
  if (*(this + 248) == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap(this + 56);
    *(this + 248) = 0;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(this + 200);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLFoldMergePass::runOnModule(MTLFoldMergePass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  v4 = a2 + 24;
  v5 = *(a2 + 4);
  if (v5 == a2 + 24)
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

      if ((llvm::GlobalValue::isDeclaration(v7) & 1) == 0)
      {
        v6 |= MTLFoldMergePass::runOnFunction(this, v7);
      }

      v5 = *(v5 + 1);
    }

    while (v5 != v4);
  }

  return v6 & 1;
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::init(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(a1 + 16) = v4;
    *a1 = MEMORY[0x259C6A8D0](88 * v4, 8);

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(a1);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(uint64_t *a1)
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
    v3 = *a1 + 88 * v1;
    v4 = (*a1 + 8);
    do
    {
      v5 = llvm::ValueHandleBase::ValueHandleBase(v4, (LODWORD(v7[0]) >> 1) & 3, v7);
      v6 = v5 - 8;
      *(v5 - 1) = &unk_2868EC9F0;
      *(v5 + 3) = v8;
      v4 = (v5 + 88);
      v2 += 88;
    }

    while (v6 + 88 != v3);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v7);
}

void llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v4, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v3 = &unk_2868EC9F0;
  v4[3] = v2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::erase(v2, &v3);
  llvm::ValueHandleBase::~ValueHandleBase(v4);
}

void llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  llvm::ValueHandleBase::ValueHandleBase(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(a1 + 32);
  v11 = &unk_2868EC9F0;
  v13 = v4;
  v14 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(v4, &v11, &v14);
  v6 = *v4 + 88 * v4[2].u32[0];
  if (v5)
  {
    v7 = v14;
  }

  else
  {
    v7 = v6;
  }

  if ((*v13 + 88 * v13[2].u32[0]) != v7)
  {
    llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(v17, v7 + 40);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::erase(v13, v7);
    v8 = v13;
    v14 = a2;
    llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(&v15, v17);
    llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::insert(v8, &v14, &v10);
    if (v15 != &v16)
    {
      free(v15);
    }

    if (v17[0] != v18)
    {
      free(v17[0]);
    }
  }

  llvm::ValueHandleBase::~ValueHandleBase(v12);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_2579FBBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18 != (v18 + 24))
  {
    free(a18);
  }

  v22 = *(v20 - 88);
  if (v22 != (v20 - 72))
  {
    free(v22);
  }

  llvm::ValueHandleBase::~ValueHandleBase((v19 + 8));
  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::erase(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v7);
  if (v3)
  {
    v4 = v7;
    v5 = v7[5];
    if (v5 != (v7 + 7))
    {
      free(v5);
    }

    v8[0] = 2;
    v8[1] = 0;
    v8[2] = -8192;
    v9 = 0;
    v7 = &unk_2868EC9F0;
    llvm::ValueHandleBase::operator=((v4 + 1), v8);
    v4[4] = v9;
    llvm::ValueHandleBase::~ValueHandleBase(v8);
    *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
  }

  return v3;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t *a1, uint64_t a2, void *a3)
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
    v16[4] = &unk_2868EC9F0;
    v16[0] = 2;
    v16[1] = 0;
    v16[2] = -8192;
    v5 = *(a2 + 24);
    v6 = v3 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v3 - 1);
    v8 = v4 + 88 * v7;
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
        v8 = v4 + 88 * (v15 & v6);
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

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::erase(int32x2_t *a1, void *a2)
{
  v4 = a2[5];
  if (v4 != a2 + 7)
  {
    free(v4);
  }

  v6[0] = 2;
  v6[1] = 0;
  v6[2] = -8192;
  v7 = 0;
  llvm::ValueHandleBase::operator=((a2 + 1), v6);
  a2[4] = v7;
  llvm::ValueHandleBase::~ValueHandleBase(v6);
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

double llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::insert@<D0>(uint64_t a1@<X0>, llvm::Value **a2@<X1>, uint64_t a3@<X8>)
{
  v15[4] = *MEMORY[0x277D85DE8];
  llvm::CallbackVH::CallbackVH(&v8, *a2);
  v8 = &unk_2868EC9F0;
  v9[3] = a1;
  std::pair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>::pair[abi:ne200100]<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,0>(&v12, &v8, (a2 + 1));
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::try_emplace<llvm::SmallVector<llvm::CallInst *,4u>>(a1, &v12, &v14, &v10);
  if (v14 != v15)
  {
    free(v14);
  }

  llvm::ValueHandleBase::~ValueHandleBase(&v13);
  llvm::ValueHandleBase::~ValueHandleBase(v9);
  result = *&v10;
  *a3 = v10;
  *(a3 + 16) = v11;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2579FBFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::pair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>::~pair(va1);
  llvm::ValueHandleBase::~ValueHandleBase(va);
  _Unwind_Resume(a1);
}

void llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>,false>::AdvancePastEmptyBuckets(uint64_t *a1)
{
  v4[0] = 2;
  v4[1] = 0;
  v4[2] = -4096;
  v4[3] = 0;
  v3[3] = 0;
  v3[4] = &unk_2868EC9F0;
  v3[0] = 2;
  v3[1] = 0;
  v3[2] = -8192;
  v2 = *a1;
  v1 = a1[1];
  while (v2 != v1 && (*(v2 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v2 += 88;
    *a1 = v2;
  }

  llvm::ValueHandleBase::~ValueHandleBase(v3);
  llvm::ValueHandleBase::~ValueHandleBase(v4);
}

void *llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(void *a1, uint64_t a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<llvm::CallInst *>::operator=(a1, a2);
  }

  return a1;
}

void sub_2579FC108(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<llvm::CallInst *>::operator=(uint64_t a1, uint64_t a2)
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
          memmove(*a1, v4, 8 * v6);
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
          memmove(*a1, v4, 8 * v7);
        }

        else
        {
          v7 = 0;
        }

        v8 = *(a2 + 8) - v7;
        if (v8)
        {
          memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
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

double llvm::SmallVectorImpl<llvm::CallInst *>::assignRemote(uint64_t a1, uint64_t a2)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::try_emplace<llvm::SmallVector<llvm::CallInst *,4u>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucket<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>(a1, v12, a2, a3);
    v9 = result;
    v10 = 1;
  }

  v11 = *a1 + 88 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucket<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a3, a3, a2);
  llvm::ValueHandleBase::operator=((v6 + 1), (a3 + 8));
  v6[4] = *(a3 + 32);
  llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(v6 + 5, a4);
  return v6;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a3, &v10);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  v11[0] = 2;
  v11[1] = 0;
  v11[2] = -4096;
  v11[3] = 0;
  v10 = &unk_2868EC9F0;
  if (a4[3] != -4096)
  {
    --*(a1 + 12);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v11);
  return a4;
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::grow(uint64_t a1, int a2)
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
  *a1 = MEMORY[0x259C6A8D0](v8, 88 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::moveFromOldBuckets(a1, v4, v4 + 88 * v3);

    llvm::deallocate_buffer(v4, (88 * v3));
  }

  else
  {

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(a1);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, char *a3)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(a1);
  v16[0] = 2;
  v16[1] = 0;
  v17 = -4096;
  v18 = 0;
  v14 = 0;
  v15 = &unk_2868EC9F0;
  v12[0] = 2;
  v12[1] = 0;
  v13 = -8192;
  if (a2 != a3)
  {
    v6 = (a2 + 56);
    do
    {
      v7 = *(v6 - 4);
      if (v7 != v17 && v7 != v13)
      {
        v19 = 0;
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, (v6 - 7), &v19);
        v9 = v19;
        llvm::ValueHandleBase::operator=((v19 + 8), v6 - 6);
        *(v9 + 32) = *(v6 - 3);
        llvm::SmallVector<llvm::CallInst *,4u>::SmallVector((v9 + 40), (v6 - 2));
        ++*(a1 + 8);
        v10 = *(v6 - 2);
        if (v6 != v10)
        {
          free(v10);
        }
      }

      llvm::ValueHandleBase::~ValueHandleBase((v6 - 6));
      v11 = (v6 + 4);
      v6 += 11;
    }

    while (v11 != a3);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v12);
  llvm::ValueHandleBase::~ValueHandleBase(v16);
}

void sub_2579FC64C(_Unwind_Exception *a1)
{
  llvm::ValueHandleBase::~ValueHandleBase((v2 + 8));
  llvm::ValueHandleBase::~ValueHandleBase((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::pair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>::pair[abi:ne200100]<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 8;
  llvm::ValueHandleBase::ValueHandleBase((a1 + 1), (*(a2 + 8) >> 1) & 3, (a2 + 8));
  *a1 = &unk_2868EC9F0;
  a1[4] = *(v5 + 24);
  llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(a1 + 5, a3);
  return a1;
}

void *std::pair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>::~pair(void *a1)
{
  v2 = a1[5];
  if (v2 != a1 + 7)
  {
    free(v2);
  }

  llvm::ValueHandleBase::~ValueHandleBase((a1 + 1));
  return a1;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (88 * *(a1 + 16)));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11[0] = 2;
    v11[1] = 0;
    v12 = -4096;
    v13 = 0;
    v9 = 0;
    v10 = &unk_2868EC9F0;
    v7[0] = 2;
    v7[1] = 0;
    v8 = -8192;
    v2 = 88 * v1;
    v3 = *a1 + 56;
    do
    {
      v4 = *(v3 - 32);
      if (v4 != v12 && v4 != v8)
      {
        v6 = *(v3 - 16);
        if (v3 != v6)
        {
          free(v6);
        }
      }

      llvm::ValueHandleBase::~ValueHandleBase((v3 - 48));
      v3 += 88;
      v2 -= 88;
    }

    while (v2);
    llvm::ValueHandleBase::~ValueHandleBase(v7);
    llvm::ValueHandleBase::~ValueHandleBase(v11);
  }
}

uint64_t MTLFoldMergePass::runOnFunction(MTLFoldMergePass *this, llvm::Function *a2)
{
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    do
    {
      if (v3)
      {
        v5 = (v3 - 24);
      }

      else
      {
        v5 = 0;
      }

      MTLFoldMergePass::buildFoldList(this, v5);
      v6 = *(this + 25);
      v7 = *(this + 54);
      if (*(this + 52))
      {
        v12.i64[0] = *(this + 25);
        v12.i64[1] = v6 + 88 * v7;
        llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>,false>::AdvancePastEmptyBuckets(v12.i64);
        v8 = v12;
        v6 = *(this + 25);
        v7 = *(this + 54);
      }

      else
      {
        v8 = vdupq_n_s64(v6 + 88 * v7);
      }

      v12 = v8;
      v9 = v6 + 88 * v7;
      v10 = v8.i64[0];
      if (v9 != v8.i64[0])
      {
        do
        {
          MTLFoldMergePass::findCommonIndices(this, *(v10 + 24), v10 + 40);
          v12.i64[0] += 88;
          llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>,false>::AdvancePastEmptyBuckets(v12.i64);
          v10 = v12.i64[0];
        }

        while (v12.i64[0] != v9);
      }

      llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::clear(this + 200);
      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  return 1;
}

uint64_t MTLFoldMergePass::buildFoldList(uint64_t this, llvm::BasicBlock *a2)
{
  v6 = this;
  v2 = a2 + 40;
  v3 = *(a2 + 6);
  if (v3 != a2 + 40)
  {
    do
    {
      v18 = 0;
      v19 = 0;
      if (v3)
      {
        v4 = (v3 - 24);
      }

      else
      {
        v4 = 0;
      }

      v16 = 0;
      v17 = 0;
      v7 = "bounds.fold";
      v8 = xmmword_257A6DA40;
      v9 = &v19;
      v10 = 1;
      v11 = &v18;
      v12 = 2;
      v13 = &v17;
      v14 = 3;
      v15 = &v16;
      this = llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>>::match<llvm::Value>(&v7, v4);
      if (this)
      {
        v7 = v19;
        v5 = llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[]((v6 + 200), &v7);
        v20 = v4;
        this = llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v5, &v20);
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t MTLFoldMergePass::findCommonIndices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v3 = *(a3 + 8);
  if (v3)
  {
    v5 = *a3;
    v6 = 8 * v3;
    do
    {
      v12 = *(*v5 - 32 * (*(*v5 + 20) & 0x7FFFFFF) + 32);
      v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::FindAndConstruct(&v13, &v12);
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>((v7 + 1), v5++);
      v6 -= 8;
    }

    while (v6);
    if (v14)
    {
      if (v15)
      {
        v8 = 56 * v15;
        for (i = v13; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 7)
        {
          v8 -= 56;
          if (!v8)
          {
            return llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(&v13);
          }
        }
      }

      else
      {
        i = v13;
      }

      v11 = &v13[7 * v15];
      while (i != v11)
      {
        MTLFoldMergePass::mergeCommonIndices(a1, (i + 1));
        do
        {
          i += 7;
        }

        while (i != v11 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }
  }

  return llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(&v13);
}

void sub_2579FCB58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(va);
  _Unwind_Resume(a1);
}

void llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::clear(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::clear(a1);
  if (*(a1 + 48) == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap((a1 + 24));
    *(a1 + 48) = 0;
  }
}

void *llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t *a1, llvm::Value **a2)
{
  llvm::CallbackVH::CallbackVH(&v5, *a2);
  v5 = &unk_2868EC9F0;
  v6[3] = a1;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::FindAndConstruct(a1, &v5);
  llvm::ValueHandleBase::~ValueHandleBase(v6);
  return v3 + 5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::FindAndConstruct(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a2, a2, v7);
    llvm::ValueHandleBase::operator=((v5 + 1), (a2 + 8));
    v5[4] = *(a2 + 32);
    v5[5] = v5 + 7;
    v5[6] = 0x400000000;
  }

  return v5;
}

uint64_t MTLFoldMergePass::mergeCommonIndices(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) >= 2)
  {
    v3 = result;
    v4 = 1;
    do
    {
      result = MTLFoldMergePass::mergeFold(v3, **a2, *(*a2 + 8 * v4++));
    }

    while (v4 < *(a2 + 8));
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::Value *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucketImpl<llvm::Value *>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = v5 + 3;
    v5[2] = 0x400000000;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::Value *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 56 * v6);
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
        v7 = (v4 + 56 * (v13 & v5));
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

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucketImpl<llvm::Value *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

  llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::Value *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::grow(uint64_t a1, int a2)
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
  result = MEMORY[0x259C6A8D0](v8, 56 * v8, 8);
  *a1 = result;
  if (v4)
  {
    v10 = 56 * v3;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::moveFromOldBuckets(a1, v4, (v4 + v10));

    return llvm::deallocate_buffer(v4, v10);
  }

  else
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = (56 * v11 - 56) / 0x38;
      v14 = vdupq_n_s64(v13);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v12), xmmword_257A6D000)));
        if (v15.i8[0])
        {
          *result = -4096;
        }

        if (v15.i8[4])
        {
          result[7] = -4096;
        }

        v12 += 2;
        result += 14;
      }

      while (((v13 + 2) & 0xFFFFFFFFFFFFFFELL) != v12);
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::moveFromOldBuckets(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *a1;
    v9 = (56 * v6 - 56) / 0x38;
    v10 = vdupq_n_s64(v9);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_257A6D000)));
      if (v11.i8[0])
      {
        *v8 = -4096;
      }

      if (v11.i8[4])
      {
        v8[7] = -4096;
      }

      v7 += 2;
      v8 += 14;
    }

    while (((v9 + 2) & 0xFFFFFFFFFFFFFFELL) != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::Value *>(a1, a2, &v14);
      v12 = v14;
      *v14 = *a2;
      llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(v12 + 1, (a2 + 1));
      ++*(a1 + 8);
      v13 = a2[1];
      if (a2 + 3 != v13)
      {
        free(v13);
      }
    }

    a2 += 7;
  }
}

uint64_t MTLFoldMergePass::mergeFold(uint64_t a1, uint64_t a2, llvm::Instruction *a3)
{
  v5 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 64);
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  v7 = *v6;
  v8 = (a3 - 4 * (*(a3 + 5) & 0x7FFFFFF))[8];
  v9 = (v8 + 24);
  if (*(v8 + 32) >= 0x41u)
  {
    v9 = *v9;
  }

  *v9;
  v10 = *(a1 + 80);
  v11 = llvm::ConstantInt::get();
  llvm::CallBase::setArgOperand(a2, 2u, v11);
  llvm::Value::replaceAllUsesWith();
  llvm::User::dropAllReferences(a3);

  return llvm::Instruction::removeFromParent(a3);
}

uint64_t llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (56 * *(a1 + 16)));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 56 * v1;
    v3 = *a1 + 24;
    do
    {
      if ((*(v3 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 56;
      v2 -= 56;
    }

    while (v2);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 || *(a1 + 12))
  {
    v3 = *(a1 + 16);
    if (v3 <= 4 * v2 || v3 < 0x41)
    {
      v12[0] = 2;
      v12[1] = 0;
      v13 = -4096;
      v14 = 0;
      v10 = 0;
      v11 = &unk_2868EC9F0;
      v8[0] = 2;
      v8[1] = 0;
      v9 = -8192;
      if (v3)
      {
        v4 = 88 * v3;
        v5 = *a1 + 56;
        do
        {
          v6 = *(v5 - 32);
          if (v6 != v13)
          {
            if (v6 != v9)
            {
              v7 = *(v5 - 16);
              if (v5 != v7)
              {
                free(v7);
              }
            }

            llvm::ValueHandleBase::operator=((v5 - 48), v12);
            *(v5 - 24) = v14;
          }

          v5 += 88;
          v4 -= 88;
        }

        while (v4);
      }

      *(a1 + 8) = 0;
      llvm::ValueHandleBase::~ValueHandleBase(v8);
      llvm::ValueHandleBase::~ValueHandleBase(v12);
    }

    else
    {

      llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::shrink_and_clear(a1);
    }
  }
}