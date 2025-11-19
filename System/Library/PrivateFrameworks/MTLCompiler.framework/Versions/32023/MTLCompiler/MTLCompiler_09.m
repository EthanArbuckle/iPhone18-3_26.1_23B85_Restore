void sub_257A41F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

BOOL MTLCompilerObject::serializeBackendCompilationOutput(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t a8)
{
  v57 = *MEMORY[0x277D85DE8];
  v16 = a3[4];
  if (!*(v16 + 4) && *(v16 + 216) == 1)
  {
    v17 = *(a5 + 24);
LABEL_9:
    if (!v17)
    {
      v19 = 0;
      goto LABEL_20;
    }

    if (v17 == 1)
    {
      v19 = 2;
LABEL_20:
      v28 = a3[3];
      v29 = *a5;
      v30 = *(a5 + 8);
      v31 = *(a5 + 16);
      (*(a3[3] + 16))();
      goto LABEL_36;
    }

LABEL_43:
    abort();
  }

  v17 = *(a5 + 24);
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = *a5 == 0;
  }

  if (v18)
  {
    goto LABEL_9;
  }

  memset(v52, 0, sizeof(v52));
  v53 = 1065353216;
  v20 = *a4;
  if (a4[1])
  {
    v21 = *a4;
  }

  else
  {
    v21 = 0;
  }

  v22 = a4[16];
  v23 = a4[17];
  CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(v51, v21);
  addBlocksForOutput(v52, a4, a5, v51);
  LOBYTE(__p[0]) = 5;
  v54[0] = a8;
  std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,CompilerOutputBlock>(v52, __p);
  v55 = 0u;
  v56 = 0u;
  memset(v54, 0, sizeof(v54));
  v50 = 0;
  v24 = createSerializedCompileRequest(&v50, v52, v54);
  if (!v24)
  {
    MTLCompilerErrorObject::setErrorMessage((a1 + 64), "Failed to serialize reply data");
    v32 = *(a1 + 64);
    (*(a3[3] + 16))();
    v19 = 0;
    goto LABEL_35;
  }

  v25 = *a3;
  v26 = *(a3[4] + 88);
  std::string::basic_string[abi:ne200100]<0>(__p, "MTLBuildFunctions");
  v27 = logCompileEnd(a1 + 80, a7, "pipeline", __p, (v25 + v26));
  if (v49 < 0)
  {
    operator delete(__p[0]);
    if (!a8)
    {
      goto LABEL_30;
    }
  }

  else if (!a8)
  {
    goto LABEL_30;
  }

  LODWORD(__p[0]) = 3;
  __p[1] = v27;
  std::vector<CompileTimeData>::push_back[abi:ne200100](a6, __p);
  LODWORD(__p[0]) = 4;
  __p[1] = &v27[-*(a5 + 72)];
  std::vector<CompileTimeData>::push_back[abi:ne200100](a6, __p);
  v33 = *(&v55 + 1);
  v46 = 0;
  v47 = 0;
  v45 = 0;
  std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v45, *a6, a6[1], (a6[1] - *a6) >> 4);
  v34 = v45;
  if (v46 != v45)
  {
    v35 = &v24[v33];
    v36 = (v46 - v45) >> 4;
    *v35 = v36;
    v35[2] = BYTE2(v36);
    v35[3] = BYTE3(v36);
    v36 = v36;
    if (v36)
    {
      v37 = v35 + 4;
      v38 = v34 + 8;
      do
      {
        *v37 = *(v38 - 2);
        v39 = *v38;
        v38 += 2;
        *(v37 + 4) = v39;
        v37 += 12;
        --v36;
      }

      while (v36);
      goto LABEL_29;
    }
  }

  if (v34)
  {
LABEL_29:
    v46 = v34;
    operator delete(v34);
  }

LABEL_30:
  v40 = *(a5 + 24);
  if (v40)
  {
    if (v40 != 1)
    {
      goto LABEL_43;
    }

    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  v41 = *(a5 + 16);
  (*(a3[3] + 16))();
  free(v24);
LABEL_35:
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(v51);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(v52);
  if (!v24)
  {
    result = 0;
    goto LABEL_41;
  }

LABEL_36:
  if (*(a5 + 64) == 1)
  {
    BackendCompilationOutput::free(a5);
  }

  else
  {
    v42 = *(*(a1 + 8) + 8 * a2);
    if (*(v42 + 155) == 1)
    {
      (*(v42 + 16))(*(v42 + 128));
      *(v42 + 155) = 0;
    }
  }

  result = v19 == 0;
LABEL_41:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_257A422D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, char a22)
{
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(&a20);
  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(&a22);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerObject::runFragmentPasses(uint64_t a1, void *a2)
{
  v2 = a2[4];
  if (!*(v2 + 28))
  {
    return 1;
  }

  v4 = *a2 + *(v2 + 24);
  v5 = ((*(v4 + 8) & 0x20000000) != 0) | *(a1 + 72);
  *(a1 + 72) = v5;
  v6 = (a1 + 64);
  v13 = (a1 + 64);
  v14 = v5;
  v7 = a2[6];
  v8 = 16;
  if (*(v4 + 8) < 0)
  {
    v8 = 24;
  }

  if (MTLCheckPixelFormatValidPass::checkPixelFormatValid(&v13, v7, v4, (v4 + v8)))
  {
    return 1;
  }

  v11 = a2[6];
  if (v11)
  {
    v12 = MEMORY[0x259C6AE50](v11, v9);
    MEMORY[0x259C6B890](v12, 0x10B2C407FF26C1CLL);
  }

  a2[6] = 0;
  (*(a2[3] + 16))(a2[3], 2 * (*v6 != 0), 0, 0);
  return 0;
}

uint64_t MTLCompilerObject::runVertexPasses(char **a1, uint64_t *a2, int a3, MTLCompilerObject::FragmentVaryingsInfo *a4)
{
  v7 = *a2;
  v8 = a2[4];
  v9 = v8[7];
  MTLCompilerObject::getFragmentVaryingsInfo(a1, (v8[1] >> 3) & 1, (*a2 + v8[4]), v8[5], a4);
  if (v9 < 0xC)
  {
    return 1;
  }

  v10 = v7 + *(a2[4] + 24);
  v11 = a2[6];
  v37 = "air.vertex";
  v38 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v11, &v37);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v14 = *(Operand - 8 * *(Operand + 8) + 8);
  if (v14)
  {
    v15 = *(v14 + 8);
    v16 = *(v14 + 8) == 0;
    v19 = *(v10 + 8);
    v18 = (v10 + 8);
    v17 = v19;
    if (v15)
    {
      v36 = v17;
      v20 = 0;
      v21 = *(Operand - 8 * *(Operand + 8) + 8);
      do
      {
        v22 = *(v21 - 8 * *(v14 + 8));
        String = llvm::MDString::getString(*(v22 - 8 * *(v22 + 8)));
        if (v24 == 14)
        {
          v29 = *String == 0x6E696F702E726961 && *(String + 6) == 0x657A69735F746E69;
          v20 |= v29;
        }

        else if (v24 == 29)
        {
          v25 = *String == 0x646E65722E726961 && String[1] == 0x65677261745F7265;
          v26 = v25 && String[2] == 0x5F79617272615F74;
          if (v26 && *(String + 21) == 0x7865646E695F7961)
          {
            *(a4 + 22) = dataTypeFromMetadata(1u, v22);
          }
        }

        v21 += 8;
        --v15;
      }

      while (v15);
      v16 = 0;
      v17 = v36;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v30 = *(v10 + 8);
    v18 = (v10 + 8);
    v17 = v30;
    v16 = 1;
  }

  if (MTLCompilerObject::checkVertexRenderTargetArrayIndex(a1, *(a4 + 22), (v17 >> 5) & 3, v20 & 1))
  {
    result = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToVertexModule(a1, a2, a4);
    if (!result)
    {
      return result;
    }

    MTLCompilerObject::addPostVertexDumpingToModule(a1, a2);
    if (*(a2[4] + 4) & 0x10) != 0 || (a1[9] & 1) != 0 || ((v16 ^ *v18))
    {
      return 1;
    }

    v33 = a1 + 8;
    if (*v18)
    {
      v34 = "true";
    }

    else
    {
      v34 = "false";
    }

    v35 = "not void";
    if (v16)
    {
      v35 = "void";
    }

    MTLCompilerErrorObject::setFormattedErrorMessage(v33, "RasterizationEnabled is %s but the vertex shader's return type is %s", v34, v35);
  }

  else
  {
    if (a2[6])
    {
      v32 = MEMORY[0x259C6AE50]();
      MEMORY[0x259C6B890](v32, 0x10B2C407FF26C1CLL);
    }

    a2[6] = 0;
    v33 = a1 + 8;
  }

  (*(a2[3] + 16))(a2[3], 2 * (*v33 != 0), 0, 0);
  return 0;
}

uint64_t MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToVertexModule(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 32);
  v4 = *(v3 + 28);
  if (v4 < 0xC)
  {
    return 1;
  }

  v8 = (*a2 + *(v3 + 24));
  v9 = *(a2 + 48);
  v34 = "air.vertex";
  v36 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v9, &v34);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v12 = (~*(*(a2 + 32) + 4) & 0x84) != 0 || *a3 == a3[1];
  v13 = !v12;
  v14 = *(v8 + 2);
  if ((v14 & 4) == 0 && !v13)
  {
    return 1;
  }

  if ((v14 & 4) != 0)
  {
    v15 = 10;
    if ((v14 & 0x100000) == 0)
    {
      v15 = 6;
    }

    v16 = v4 - v15 * 2;
    v17 = &v8[v15];
    if ((v14 & 2) != 0)
    {
      MTLCompilerObject::validateSerializedVertexDescriptor(a1, &v8[v15], v4 - v15 * 2);
      v19 = *v17;
      v18 = v17;
      v17 = (v17 + v19);
      v16 -= v19;
    }

    else
    {
      if ((MTLCompilerObject::checkNoStageInAttributes(a1, Operand) & 1) == 0)
      {
        v32 = *(a2 + 24);
        v33 = *(a1 + 64);
        goto LABEL_38;
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v16 = v4;
    v17 = v8;
  }

  v20 = *(v8 + 2);
  if ((v20 & 0x80) != 0)
  {
    if (v16 <= 1 || (v21 = 2 * *v17 + 2, v16 < v21) || ((v22 = *v8, v23 = *(v8 + 1), v22) ? (v24 = v22 - v4) : (v24 = 0), (v25 = v24 + v16, v23) ? (v26 = v4 - v23) : (v26 = 0), v25 != v26 + v21))
    {
      abort();
    }

    goto LABEL_30;
  }

  if ((v13 | (v20 >> 1)))
  {
    v17 = 0;
LABEL_30:
    v27 = *(a1 + 72);
    v28 = (a1 + 64);
    v34 = v28;
    v35 = v27;
    v29 = MTLAddVertexFetchingToModulePass::addVertexFetchingToModule(&v34, *(a2 + 48), (v20 >> 2) & 1, v18, v17, ((v20 & 1) == 0) & v27, 1u, (v20 >> 8) & 3, (~v20 & 0xC) == 0, (~v20 & 0x14) == 0, *(*(a2 + 32) + 4), a3);
    if (v29)
    {
      *(a2 + 48) = v29;
      return 1;
    }

    if (*(a2 + 48))
    {
      v31 = MEMORY[0x259C6AE50]();
      MEMORY[0x259C6B890](v31, 0x10B2C407FF26C1CLL);
    }

    *(a2 + 48) = 0;
    v32 = *(a2 + 24);
    v33 = *v28;
LABEL_38:
    (*(v32 + 16))(v32, 2 * (v33 != 0), 0, 0);
    return 0;
  }

  return 1;
}

void MTLCompilerObject::addPostVertexDumpingToModule(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2[7] >= 0xCu)
  {
    v3 = v2[1];
    if ((v3 & 0x10) != 0)
    {
      v4 = *(*a2 + v2[6] + 8);
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      v5 = (a1 + 64);
      v6 = 0;
      *(a2 + 48) = MTLAddPostVertexDumpingToModulePass::addPostVertexDumpingToModule(&v5, *(a2 + 48), (v4 >> 11), 0, &v8, v7, (v3 >> 10) & 1);
      v5 = v7;
      std::vector<PostVertexDumpOutput>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }
}

uint64_t MTLCompilerObject::runLinkingPasses(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 40);
  if (v7 == 1)
  {
    result = MTLCompilerObject::runVertexLinkingPass(a1, a2, a3, a4);
    if (!result)
    {
      return result;
    }

    v7 = *(a2 + 40);
  }

  if (v7 == 2)
  {
    MTLCompilerObject::runFragmentLinkingPass(a1, a2, a3);
  }

  return 1;
}

uint64_t MTLCompilerObject::runVertexLinkingPass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 32);
  v5 = v4[1];
  if ((v5 & 4) == 0)
  {
    return 1;
  }

  v8 = (*(*a2 + v4[6] + 8) >> 5) & 3;
  v9 = (a1 + 64);
  if ((v5 & 8) == 0)
  {
    v11 = (a1 + 64);
    v12 = 0;
    if ((MTLVertexOutputLinkingPass::vertexOutputLinking(&v11, *(a2 + 48), a4, a4 + 48, *(a4 + 72), v8, *(a4 + 76), *(a4 + 80), v4[10], v4[11], *(a4 + 88), *(a4 + 84)) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 1;
  }

  v11 = (a1 + 64);
  v12 = 0;
  if (MTLVertexOutputPackingPass::vertexOutputPacking(&v11, *(a2 + 48), a4, (a4 + 24), a4 + 48, *(a4 + 72), v8, *(a4 + 76), *(a4 + 80), v4[10], v4[11], *(a4 + 88), *(a4 + 84)))
  {
    return 1;
  }

LABEL_7:
  if (*(a2 + 48))
  {
    v10 = MEMORY[0x259C6AE50]();
    MEMORY[0x259C6B890](v10, 0x10B2C407FF26C1CLL);
  }

  *(a2 + 48) = 0;
  (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*v9 != 0), 0, 0);
  return 0;
}

uint64_t MTLCompilerObject::runFragmentLinkingPass(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 32) + 4);
  if ((v3 & 4) != 0)
  {
    v6 = result + 64;
    v7 = 0;
    v4 = *(a2 + 48);
    if ((v3 & 8) != 0)
    {
      v9[0] = &unk_2868ECDF0;
      v9[1] = a3;
      v9[3] = v9;
      MTLFragmentInputPackingPass::fragmentInputPacking(&v6, v4, v9);
      result = std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](v9);
    }

    else
    {
      v8[0] = &unk_2868ECE38;
      v8[1] = a3;
      v8[3] = v8;
      MTLFragmentInputLinkingPass::fragmentInputLinking(&v6, v4, v8);
      result = std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](v8);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_257A42C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](va);
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
          v14 = MEMORY[0x259C6AE50]();
          MEMORY[0x259C6B890](v14, 0x10B2C407FF26C1CLL);
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

void sub_257A42E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::generateReflection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 + 32) + 4);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (*(a2 + 40) == 1)
  {
    v17 = (a1 + 64);
    v18 = 0;
    MTLAddPostVertexDumpingToModulePass::addPostVertexDumpingToModule(&v17, *(a2 + 48), -1, 1, &v20, v19, (v4 >> 10) & 1);
    v4 = *(*(a2 + 32) + 4);
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  v17 = (a1 + 64);
  v18 = 0;
  ReflectionData = MTLGenerateReflectionDataPass::generateReflectionData(&v17, *(a2 + 48), v4, (a3 + 8), v7, v19, *(a3 + 128), *(a3 + 136), (a3 + 24));
  v9 = *a3;
  *a3 = ReflectionData;
  if (v9)
  {
    free(v9);
  }

  v17 = v19;
  std::vector<PostVertexDumpOutput>::__destroy_vector::operator()[abi:ne200100](&v17);
  v10 = *(a2 + 32);
  if ((*(v10 + 4) & 2) == 0)
  {
    return 0;
  }

  if ((*(v10 + 2) & 0x80) != 0)
  {
    if (!*(a3 + 168) && (*(a1 + 72) & 1) == 0)
    {
      v12 = *(a2 + 48);
      v13 = MTLWriteAIRReflectionToMemoryBuffer();
      std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((a3 + 168), v13);
    }

    if (!*(a3 + 176) && (*(a1 + 72) & 1) == 0)
    {
      v14 = *(a2 + 48);
      v15 = MTLWriteAIRReflectionToMemoryBuffer();
      std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100]((a3 + 176), v15);
    }
  }

  MTLCompilerObject::patchReflection(a1, a2, a3);
  v16 = *(a3 + 8);
  CompilerOutputReflectionBlock::CompilerOutputReflectionBlock(v19, *a3);
  (*(*(a2 + 24) + 16))();
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(v19);
  return 1;
}

void sub_257A43058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CompilerOutputReflectionBlock::~CompilerOutputReflectionBlock(va);
  _Unwind_Resume(a1);
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

void MTLCompilerObject::patchReflection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a2 + 32) + 4))
  {
    v3 = a1 + 64;
    v4 = 0;
    MTLGenerateReflectionDataPass::patchTraceBufferReflectionData(&v3, *(a2 + 48), *a3, *(a3 + 24));
  }
}

void *MTLCompilerObject::deserializePluginData(void *result, void *a2, uint64_t a3)
{
  v4 = result;
  v5 = a2[5];
  if (v5 > 4)
  {
    if ((v5 - 5) < 2)
    {
LABEL_26:

      return deserializePluginDataForFunctionType<MTLSerializedStatelessFunctionData>(a2, a3);
    }

    if ((v5 - 7) < 2)
    {
      v6 = a2[4];
      v7 = (*a2 + *(v6 + 24));
      if (*(v6 + 28) >= 0xCu)
      {
        v8 = *v7;
        if (v8)
        {
          result = MTLDeserializePluginDataDictionary(&v7[v8]);
          *(a3 + 112) = result;
        }

        v9 = *(v7 + 1);
        if (v9)
        {
          result = MTLDeserializePluginDataDictionary(&v7[v9]);
          *(a3 + 120) = result;
        }
      }

      v10 = *(v4 + 72);
      v11 = (v7[8] >> 3) & 1;
LABEL_35:
      *(v4 + 72) = v11 | v10;
      return result;
    }

LABEL_25:
    if ((*(a2[4] + 3) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    v16 = a2[4];
    v17 = (*a2 + *(v16 + 24));
    if (*(v16 + 28) >= 0xCu)
    {
      v18 = *v17;
      if (v18)
      {
        result = MTLDeserializePluginDataDictionary(&v17[v18]);
        *(a3 + 112) = result;
      }

      v19 = *(v17 + 1);
      if (v19)
      {
        result = MTLDeserializePluginDataDictionary(&v17[v19]);
        *(a3 + 120) = result;
      }
    }

    v10 = *(v4 + 72);
    v11 = (*(v17 + 2) >> 19) & 1;
    goto LABEL_35;
  }

  if (v5 == 2)
  {
    v20 = a2[4];
    v21 = (*a2 + *(v20 + 24));
    if (*(v20 + 28) >= 0x10u)
    {
      v22 = *v21;
      if (v22)
      {
        result = MTLDeserializePluginDataDictionary(&v21[v22]);
        *(a3 + 112) = result;
      }

      v23 = *(v21 + 1);
      if (v23)
      {
        result = MTLDeserializePluginDataDictionary(&v21[v23]);
        *(a3 + 120) = result;
      }
    }

    v10 = *(v4 + 72);
    v11 = (*(v21 + 2) >> 29) & 1;
    goto LABEL_35;
  }

  if (v5 != 3)
  {
    goto LABEL_25;
  }

  v12 = a2[4];
  v13 = (*a2 + *(v12 + 24));
  if (*(v12 + 28) >= 0xCu)
  {
    v14 = *v13;
    if (v14)
    {
      result = MTLDeserializePluginDataDictionary(&v13[v14]);
      *(a3 + 112) = result;
    }

    v15 = *(v13 + 1);
    if (v15)
    {
      result = MTLDeserializePluginDataDictionary(&v13[v15]);
      *(a3 + 120) = result;
    }
  }

  *(v4 + 72) |= (v13[8] & 8) != 0;
  *(v4 + 73) |= (v13[8] & 0x10) != 0;
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

uint64_t MTLCompilerObject::runFWPassesForFunctionType(char **a1, uint64_t *a2, int a3, MTLCompilerObject::FragmentVaryingsInfo *a4)
{
  v5 = a2[5];
  if (v5 > 4)
  {
    if ((v5 - 5) < 4)
    {
      return 1;
    }

    return (*(a2[4] + 3) >> 6) & 1;
  }

  switch(v5)
  {
    case 1:

      return MTLCompilerObject::runVertexPasses(a1, a2, a3, a4);
    case 2:

      return MTLCompilerObject::runFragmentPasses(a1, a2);
    case 3:
      if (*(a2[4] + 28) < 0xCu)
      {
        return 1;
      }

      result = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(a1, a2);
      if (result)
      {
        return 1;
      }

      break;
    default:
      return (*(a2[4] + 3) >> 6) & 1;
  }

  return result;
}

void MTLCompilerObject::runDebugInstrumentationPass(MTLCompilerObject *a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(a2[4] + 5) & 0x10) != 0 && [*(a3 + 112) objectForKeyedSubscript:@"MTLBoundsCheck::Options"])
  {
    v6 = mach_absolute_time();
    v7 = a2[5];
    if (v7 == 3)
    {
      v6 = MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToKernelModule(a1, a2);
      if (v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v7 != 1)
      {
        goto LABEL_23;
      }

      *__p = 0u;
      v18 = 0u;
      *v16 = 0u;
      v19 = v20;
      memset(v20, 0, sizeof(v20));
      v21 = 0;
      MTLCompilerObject::getFragmentVaryingsInfo(a1, (*(a2[4] + 4) >> 3) & 1, (*a2 + *(a2[4] + 16)), *(a2[4] + 20), v16);
      if (MTLCompilerObject::checkVertexDescriptorAndAddVertexFetchingToVertexModule(a1, a2, v16))
      {
        MTLCompilerObject::addPostVertexDumpingToModule(a1, a2);
        std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(&v19, v20[0]);
        if (__p[1])
        {
          *&v18 = __p[1];
          operator delete(__p[1]);
        }

        v6 = v16[0];
        if (v16[0])
        {
          v16[1] = v16[0];
          operator delete(v16[0]);
        }

LABEL_23:
        MTLCompilerObject::addDebugInstrumentationToModule(v6, a2, a3);
      }

      std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::destroy(&v19, v20[0]);
      if (__p[1])
      {
        *&v18 = __p[1];
        operator delete(__p[1]);
      }

      if (v16[0])
      {
        v16[1] = v16[0];
        operator delete(v16[0]);
      }
    }
  }

  else
  {
    v8 = a2[6];
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v10 = Function;
      v15[0] = *(Function + 8);
      v15[1] = 0;
      llvm::SmallVector<llvm::User *,4u>::SmallVector<llvm::Value::user_iterator_impl<llvm::User>>(v16, v15);
      v11 = v16[0];
      if (LODWORD(v16[1]))
      {
        v12 = 8 * LODWORD(v16[1]);
        do
        {
          v13 = *v11;
          if (*v11 && *(v13 + 16) == 84)
          {
            llvm::Instruction::eraseFromParent(v13);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
        v11 = v16[0];
      }

      if (v11 != __p)
      {
        free(v11);
      }

      if (!*(v10 + 1))
      {
        llvm::Function::eraseFromParent(v10);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_257A43734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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
  if ((atomic_load_explicit(&qword_28153FBE0, memory_order_acquire) & 1) == 0)
  {
    MTLCompilerObject::addDebugInstrumentationToModule();
  }

  if ((atomic_load_explicit(&qword_28153FBE8, memory_order_acquire) & 1) == 0)
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
  if (MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions != *v7 || *(&MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions + 1) != *(v7 + 8) || qword_27F8ECDB0 != *(v7 + 16) || dword_27F8ECDB8 != *(v7 + 24))
  {
    v12 = *v7;
    *(&MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions + 12) = *(v7 + 12);
    MTLCompilerObject::addDebugInstrumentationToModule(BinaryRequestData &,FrameworkPassesOutput &)::cachedOptions = v12;
  }

  v13 = a3[15];
  MTLUpdateBoundsRunPipeline();
}

void sub_257A43DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
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

uint64_t MTLCompilerObject::loadModule(uint64_t a1, void *a2, uint64_t a3, llvm::LLVMContext *a4)
{
  if (*(a1 + 72))
  {
    return 1;
  }

  v7 = a2[6];
  v8 = a2[4];
  if ((*(v8 + 3) & 4) != 0)
  {
    v7 = MTLCompilerObject::invokeFunctionLoader(a1, v8, a2[1], a4, v7, *(a3 + 128), *(a3 + 136), a2[3]);
    *a2[4] &= ~0x4000000u;
  }

  v4 = v7 != 0;
  if (!v7)
  {
    free(*(a3 + 128));
    *(a3 + 128) = 0;
  }

  a2[6] = v7;
  return v4;
}

uint64_t MTLCompilerObject::lowerModule(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 72))
  {
    return 1;
  }

  v9 = *(a2 + 48);
  Instance = MTLCompilerSharedMemoryInterface::getInstance(a1);
  MTLCompilerSharedMemoryInterface::setLoweringRuntimes(Instance, (a1 + 32), a2);
  v11 = *(a2 + 32);
  if ((*(v11 + 3) & 2) != 0 && v9)
  {
    v9 = MTLCompilerObject::invokeLowerModule(a1, v11, a4, v9, *(a2 + 40), *(a2 + 24));
    **(a2 + 32) &= ~0x2000000u;
  }

  v4 = v9 != 0;
  if (!v9)
  {
    free(*(a3 + 128));
    *(a3 + 128) = 0;
  }

  *(a2 + 48) = v9;
  return v4;
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
  v37 = xmmword_257A6DE20;
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
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_257A6F51A);
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

void sub_257A46B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
        MEMORY[0x259C6B870](v4, 0x1000C8077774924);
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
      MEMORY[0x259C6B870](v2, 0x1000C8077774924);
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

void sub_257A46EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(va);
  (*(*v9 + 8))(v9);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerPluginInterface::compilerBuildRequest(MTLCompilerPluginInterface *this, int a2, signed int a3, const void *a4, uint64_t a5, uint64_t a6, llvm::Module *a7, BackendCompilationOutput *a8)
{
  if (a2)
  {
    if (a3 == 32023)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3;
    }

    getSerializedModule(v13, &v22);
    v14 = v22;
    if (*(v22 + 16) == *(v22 + 8))
    {
      v19 = "Invalid serialized bitcode";
    }

    else
    {
      v15 = *(this + 12);
      if (v15)
      {
        *(this + 155) = 1;
        v16 = v15(*(this + 16), a4, a5, a6);
LABEL_16:
        (*(*v14 + 8))(v14);
        return v16;
      }

      v19 = "Driver does not support MTLCompilerBuildRequestWithSerializedBitcode, but MTLCompilerOptionCompilerPluginRequiresSerializedBitcode was set.";
    }

    *(a8 + 2) = v19;
    v16 = 1;
    goto LABEL_16;
  }

  *(this + 155) = 1;
  v17 = *(this + 4);
  if (v17)
  {
    return v17(*(this + 16), a4, a5, a6, a7, a8, a8 + 8, a8 + 32, a8 + 40, a8 + 48, a8 + 56, a8 + 16);
  }

  *(a8 + 5) = 0;
  *(a8 + 7) = 0;
  v20 = *(this + 3);
  v21 = *(this + 16);

  return v20(v21, a4, a5, a7, a8, a8 + 8, a8 + 16);
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

void MTLCompilerObject::backendCompileExecutableRequest(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v36 = 0u;
  v37 = 0;
  memset(v35, 0, 24);
  v35[3] = -1;
  v38 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v34 = 0;
  v28 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v26 = 0;
  v27 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "MTLBuildFunctions");
  if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
  {
    MTLCompilerObject::buildSpecializedFunctionRequest();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1 + 80;
    if (*(a1 + 103) < 0)
    {
      v4 = *(a1 + 80);
    }

    v5 = __p;
    if (DiagnosticContext < 0)
    {
      v5 = __p[0];
    }

    *buf = 136446722;
    *v49 = v4;
    *&v49[8] = 2082;
    *&v49[10] = v5;
    *&v49[18] = 2080;
    *&v50 = "pipeline";
    _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", buf, 0x20u);
  }

  v6 = mach_absolute_time();
  if (SHIBYTE(DiagnosticContext) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x259C6A4D0](v23);
  __p[0] = v23;
  DiagnosticContext = llvm::LLVMContext::getDiagnosticContext(v23);
  __p[1] = llvm::LLVMContext::getDiagnosticHandlerCallBack(v23);
  v7 = llvm::LLVMContext::setDiagnosticHandlerCallBack();
  *buf = 0;
  *&v49[4] = 0u;
  v50 = 0u;
  memset(v51, 0, sizeof(v51));
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  MTLCompilerObject::getReadParametersFromRequest(v7, buf, *a2, *(a2 + 8), (*(a2 + 32) + 88), *(a2 + 32));
  ModuleFromBinaryRequest = MTLCompilerObject::readModuleFromBinaryRequest(a1, buf, v23, (a2 + 40), &v43, &v43 + 1, 1);
  *(a2 + 48) = ModuleFromBinaryRequest;
  if (!ModuleFromBinaryRequest)
  {
    (*(*(a2 + 24) + 16))(*(a2 + 24), 2 * (*(a1 + 64) != 0), 0, 0);
LABEL_16:
    if (v43)
    {
      free(v43);
    }

    goto LABEL_18;
  }

  if ((MTLCompilerObject::runFrameworkPasses(a1, a2, v35, v23) & 1) == 0)
  {
    goto LABEL_16;
  }

  MTLCompilerObject::backendCompileModule(a1, a2, v29, v9, &v26);
  v10 = *(a2 + 32);
  if ((*(v10 + 5) & 2) != 0)
  {
    if ((v27 - v26) >> 4 == -2)
    {
      v11 = 0;
    }

    else
    {
      v11 = 12 * (((v27 - v26) >> 4) + 2) + 4;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = 0;
  v22 = 0;
  if ((*(v10 + 2) & 0x80) != 0)
  {
    v19 = *a2;
    v20 = *(v10 + 176);
    v18 = MTLGPUArchiverFromId();
    v21 = v18;
    if (!v18 || !MTLCompilerObject::storeToBinaryArchive(a1, *(a2 + 32), *(a2 + 8), buf, v29, *(a2 + 40), v35, &v21, &v22))
    {
      (*(*(a2 + 24) + 16))();
      if (v43)
      {
        free(v43);
      }

      free(v22);
      MTLGPUArchiverDestroy();
LABEL_18:
      ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
      llvm::LLVMContext::~LLVMContext(v23);
      goto LABEL_19;
    }
  }

  MTLCompilerObject::serializeBackendCompilationOutput(a1, *(a2 + 16), a2, v35, v29, &v26, v6, v11);
  if (v18)
  {
    MTLGPUArchiverDestroy();
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(__p);
  llvm::LLVMContext::~LLVMContext(v23);
  if (v43)
  {
    free(v43);
    v43 = 0uLL;
  }

LABEL_19:
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  for (i = 22; i != 19; --i)
  {
    std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](&v35[i], 0);
  }

  v13 = v44;
  *&v44 = 0;
  if (v13)
  {
    free(v13);
  }

  v14 = v38;
  v38 = 0;
  if (v14)
  {
    free(v14);
  }

  v15 = v36;
  *&v36 = 0;
  if (v15)
  {
    free(v15);
  }

  v16 = v35[0];
  v35[0] = 0;
  if (v16)
  {
    free(v16);
  }

  v17 = *MEMORY[0x277D85DE8];
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

uint64_t MTLCodeGenServiceBuildRequest(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if ((atomic_load_explicit(&qword_28153FBF8, memory_order_acquire) & 1) == 0)
    {
      MTLCodeGenServiceBuildRequest_cold_1();
    }

    v12 = qword_28153FBF0;
    v13 = mmap(0, qword_28153FBF0 + 0x800000, 3, 4098, 503316480, 0);
    if (v13 == -1)
    {
      v15 = *(a6 + 16);
      v16 = "Cannot allocate stack";
    }

    else
    {
      v14 = v13;
      if (!mprotect(v13, qword_28153FBF0, 0))
      {
        v20 = a1;
        v21 = a2;
        v22 = a3;
        v23 = a4;
        v24 = a5;
        v25 = a6;
        split_stack_call(v14 + qword_28153FBF0, 0x800000, invokeBuildRequest, &v20);
        return munmap(v14, v12 + 0x800000);
      }

      v15 = *(a6 + 16);
      v16 = "Cannot set guard page protection";
    }

    v17 = a6;
    v18 = 1;
  }

  else
  {
    v15 = *(a6 + 16);
    v16 = "Compilation failed: compiler service missing";
    v17 = a6;
    v18 = 2;
  }

  return v15(v17, v18, 0, 0, v16);
}

uint64_t ___ZL14disableFreezerv_block_invoke()
{
  v0 = getpid();

  return MEMORY[0x282203BE0](18, v0, 0, 0, 0);
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

uint64_t MTLCompilerPluginInterface::init(MTLCompilerPluginInterface *this, char *__s1, const void *a3, size_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  *(this + 154) = 0;
  if (strncmp(__s1, "simulatorDummyPlugin", 0x15uLL))
  {
    {
      std::string::basic_string[abi:ne200100]<0>(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes, "/System/Library/Extensions/");
      std::string::basic_string[abi:ne200100]<0>(byte_28153FB48, "/System/Library/PrivateFrameworks/");
      __cxa_atexit(__cxx_global_array_dtor, 0, &dword_2579AB000);
    }

    {
      std::string::basic_string[abi:ne200100]<0>(&MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPluginSuffixes, ".framework");
      std::string::basic_string[abi:ne200100]<0>(byte_28153FB18, ".bundle");
      __cxa_atexit(__cxx_global_array_dtor_147, 0, &dword_2579AB000);
    }

    std::string::basic_string[abi:ne200100]<0>(&v28, __s1);
    v8 = 0;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v28;
    }

    else
    {
      v9 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v11 = (v9 + size);
    while (1)
    {
      v12 = MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8 + 23];
      v13 = v12 >= 0 ? &MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8] : *&MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8];
      v14 = v12 >= 0 ? MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8 + 23] : *&MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[v8 + 8];
      if (!v14)
      {
        break;
      }

      if (size >= v14)
      {
        v15 = *v13;
        v16 = size;
        v17 = v9;
        while (1)
        {
          v18 = v16 - v14;
          if (v18 == -1)
          {
            goto LABEL_19;
          }

          v19 = memchr(v17, v15, v18 + 1);
          if (!v19)
          {
            goto LABEL_19;
          }

          v20 = v19;
          if (!memcmp(v19, v13, v14))
          {
            break;
          }

          v17 = (&v20->__r_.__value_.__l.__data_ + 1);
          v16 = v11 - (&v20->__r_.__value_.__l.__data_ + 1);
          if (v16 < v14)
          {
            goto LABEL_19;
          }
        }

        if (v20 != v11 && v20 == v9)
        {
          break;
        }
      }

LABEL_19:
      v8 += 24;
      if (v8 == 48)
      {
        goto LABEL_31;
      }
    }

    std::string::erase(&v28, 0, v14);
LABEL_31:
    operator new();
  }

  *(this + 13) = strdup(__s1);
  *(this + 17) = 0;
  *(this + 154) = 1;
  *this = MTLSimCompilerCreate;
  *(this + 1) = MTLSimCompilerDelete;
  *(this + 4) = MTLSimCompilerBuildRequestWithOptions;
  *(this + 2) = MTLSimCompilerReleaseReply;
  if (!*(this + 16))
  {
    if (a3)
    {
      v21 = malloc_type_malloc(a4, 0x44CA798uLL);
      *(this + 14) = v21;
      *(this + 15) = a4;
      memcpy(v21, a3, a4);
    }

    *(this + 16) = (*this)(a3, a4);
  }

  if (*(this + 152) == 1 && !*(this + 18))
  {
    v22 = *(this + 9);
    if (v22)
    {
      v23 = v22();
      *(this + 18) = v23;
      if (v23)
      {
        v24 = *(this + 11);
        if (v24)
        {
          v25 = v24();
        }

        else
        {
          v25 = 0;
        }

        *(this + 153) = v25;
        goto LABEL_46;
      }
    }

    else
    {
      *(this + 18) = 0;
    }

    *(this + 152) = 0;
  }

LABEL_46:
  result = 1;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_257A48280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (byte_28153FB17 < 0)
  {
    MTLCompilerPluginInterface::init();
  }

  _Unwind_Resume(a1);
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

void std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<FunctionConstantDesc>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
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

void sub_257A48590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  llvm::raw_ostream::~raw_ostream(va);
  _Unwind_Resume(a1);
}

void ScopedDiagnosticHandler::~ScopedDiagnosticHandler(ScopedDiagnosticHandler *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(this + 2);
  llvm::LLVMContext::setDiagnosticHandlerCallBack();
}

uint64_t std::vector<MTLArgumentData>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MTLArgumentData>::__emplace_back_slow_path<MTLArgumentData const&>(a1, a2);
  }

  else
  {
    std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(a1, a2);
    result = v3 + 288;
  }

  a1[1] = result;
  return result;
}

__n128 std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[2];
  *(v4 + 16) = a2[1];
  *(v4 + 32) = v6;
  *v4 = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[6];
  *(v4 + 80) = a2[5];
  *(v4 + 96) = v9;
  *(v4 + 48) = v7;
  *(v4 + 64) = v8;
  v10 = *(a2 + 15);
  *(v4 + 112) = *(a2 + 14);
  *(v4 + 120) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 16);
  v11 = *(a2 + 17);
  *(v4 + 136) = v11;
  *(v4 + 128) = v12;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 19);
  *(v4 + 144) = *(a2 + 18);
  *(v4 + 152) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a2[10];
  v15 = a2[11];
  v16 = *(a2 + 24);
  *(v4 + 200) = 0;
  *(v4 + 192) = v16;
  *(v4 + 176) = v15;
  *(v4 + 160) = v14;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(v4 + 200, *(a2 + 25), *(a2 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 26) - *(a2 + 25)) >> 4));
  result = a2[14];
  v18 = a2[15];
  v19 = a2[17];
  *(v4 + 256) = a2[16];
  *(v4 + 272) = v19;
  *(v4 + 224) = result;
  *(v4 + 240) = v18;
  *(a1 + 8) = v4 + 288;
  return result;
}

void sub_257A48728(_Unwind_Exception *a1)
{
  v6 = *(v4 + 152);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(v3, v2);
  *(v1 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t std::vector<MTLArgumentData>::__emplace_back_slow_path<MTLArgumentData const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E3)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 5) >= 0x71C71C71C71C71)
  {
    v6 = 0xE38E38E38E38E3;
  }

  else
  {
    v6 = v3;
  }

  v31 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v6);
  }

  v7 = 288 * v2;
  v28 = 0;
  v29 = v7;
  v30 = v7;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = a2[2];
  v10 = a2[6];
  v12 = a2[3];
  v11 = a2[4];
  *(v7 + 80) = a2[5];
  *(v7 + 96) = v10;
  *(v7 + 48) = v12;
  *(v7 + 64) = v11;
  *v7 = v8;
  *(v7 + 16) = v9;
  v13 = *(a2 + 15);
  *(v7 + 112) = *(a2 + 14);
  *(v7 + 120) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 17);
  *(v7 + 128) = *(a2 + 16);
  *(v7 + 136) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 19);
  *(v7 + 144) = *(a2 + 18);
  *(v7 + 152) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a2[10];
  v17 = a2[11];
  v18 = *(a2 + 24);
  *(v7 + 200) = 0;
  *(v7 + 192) = v18;
  *(v7 + 176) = v17;
  *(v7 + 160) = v16;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(v7 + 200, *(a2 + 25), *(a2 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 26) - *(a2 + 25)) >> 4));
  v19 = a2[16];
  v20 = a2[17];
  v21 = a2[15];
  *(v7 + 224) = a2[14];
  *(v7 + 240) = v21;
  *(v7 + 256) = v19;
  *(v7 + 272) = v20;
  *&v30 = v30 + 288;
  v22 = a1[1];
  v23 = v29 + *a1 - v22;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, *a1, v22, v23);
  v24 = *a1;
  *a1 = v23;
  v25 = a1[2];
  v27 = v30;
  *(a1 + 1) = v30;
  *&v30 = v24;
  *(&v30 + 1) = v25;
  v28 = v24;
  v29 = v24;
  std::__split_buffer<MTLArgumentData>::~__split_buffer(&v28);
  return v27;
}

void sub_257A48934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a4;
  v19[0] = a1;
  v19[1] = &v21;
  v19[2] = &v22;
  if (a2 == a3)
  {
    v20 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = *(v7 + 32);
      *(a4 + 16) = *(v7 + 16);
      *(a4 + 32) = v9;
      *a4 = v8;
      v10 = *(v7 + 48);
      v11 = *(v7 + 64);
      v12 = *(v7 + 96);
      *(a4 + 80) = *(v7 + 80);
      *(a4 + 96) = v12;
      *(a4 + 48) = v10;
      *(a4 + 64) = v11;
      *(a4 + 112) = *(v7 + 112);
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(a4 + 128) = *(v7 + 128);
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(a4 + 144) = *(v7 + 144);
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      v13 = *(v7 + 176);
      v14 = *(v7 + 192);
      *(a4 + 160) = *(v7 + 160);
      *(a4 + 176) = v13;
      *(a4 + 192) = v14;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 216) = 0;
      *(a4 + 200) = *(v7 + 200);
      *(a4 + 216) = *(v7 + 216);
      *(v7 + 200) = 0;
      *(v7 + 208) = 0;
      *(v7 + 216) = 0;
      v15 = *(v7 + 224);
      v16 = *(v7 + 240);
      v17 = *(v7 + 272);
      *(a4 + 256) = *(v7 + 256);
      *(a4 + 272) = v17;
      *(a4 + 224) = v15;
      *(a4 + 240) = v16;
      v7 += 288;
      a4 += 288;
    }

    while (v7 != a3);
    v22 = a4;
    v20 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(a1, v5);
      v5 += 288;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>>::~__exception_guard_exceptions[abi:ne200100](v19);
}

void std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(uint64_t a1, uint64_t a2)
{
  v6 = (a2 + 200);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(a2 + 152);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a2 + 136);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a2 + 120);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>::operator()[abi:ne200100](a1);
  }

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

uint64_t std::__split_buffer<MTLArgumentData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTLArgumentData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTLArgumentData>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 288;
    std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(v5, v4 - 288);
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

  v3 = *off_27984E700[v2];
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

void sub_257A4919C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
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

void sub_257A49394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
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

void sub_257A49700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t *a12)
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

void sub_257A49830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
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

uint64_t *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::insert(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 3) + 1;
    if (v14 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v15 = a2 - v13;
    v16 = v7 - v13;
    v17 = v16 >> 2;
    if (v16 >> 2 <= v14)
    {
      v17 = ((v6 - *a1) >> 3) + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v19 = v15 >> 3;
    v32 = a1;
    if (v18)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(a1, v18);
    }

    v29 = 0;
    v30 = 8 * v19;
    v31 = (8 * v19);
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(&v29, a3);
    v21 = v30;
    memcpy(v31, v4, a1[1] - v4);
    v22 = *a1;
    v23 = v30;
    *&v31 = v31 + a1[1] - v4;
    a1[1] = v4;
    v24 = v4 - v22;
    v25 = (v23 - (v4 - v22));
    memcpy(v25, v22, v24);
    v26 = *a1;
    *a1 = v25;
    v27 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(&v29);
    return v21;
  }

  else if (a2 == v6)
  {
    v20 = *a3;
    *a3 = 0;
    *v6 = v20;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = v6 - 1;
    v9 = a1[1];
    if (v6 >= 8)
    {
      v10 = *v8;
      *v8 = 0;
      *v6 = v10;
      v9 = v6 + 1;
    }

    a1[1] = v9;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v4, v8, v6);
    v11 = *a3;
    *a3 = 0;
    v12 = *v4;
    *v4 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  return v4;
}

void sub_257A49AF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<llvm::ErrorList>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 8);
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x259C6B890](v2, 0xA1C4030951706);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::emplace_back<std::unique_ptr<llvm::ErrorInfoBase>>(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v6 = *result;
    v5 = result[1];
    if (v5 <= *v3)
    {
      v9 = v4 - v6;
      v8 = v9 == 0;
      v10 = v9 >> 2;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(v3[4], v11);
    }

    v7 = (((v5 - *v3) >> 3) + 1 + ((((v5 - *v3) >> 3) + 1) >> 63)) >> 1;
    result = std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(v5, v4, &v5[-v7]);
    v3[1] -= 8 * v7;
  }

  v12 = *a2;
  *a2 = 0;
  *v4 = v12;
  v3[2] = (v4 + 1);
  return result;
}

void *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_backward_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(void *a1, void *a2, void *a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v8 = *--v6;
      v7 = v8;
      *v6 = 0;
      v10 = *--a3;
      v9 = v10;
      *a3 = v7;
      if (v10)
      {
        (*(*v9 + 8))(v9);
      }
    }

    while (v6 != a1);
  }

  return a2;
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,std::unique_ptr<llvm::ErrorInfoBase> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *llvm::ErrorList::ErrorList(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = MEMORY[0x277D82258] + 16;
  a1[1] = 0;
  v5 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](a1 + 1, a2);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:ne200100](v5, a3);
  return a1;
}

void sub_257A49EA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void llvm::ErrorHandlerTraits<void (&)(llvm::ErrorInfoBase &)>::apply<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  (*(**a2 + 24))(__p, *a2);
  v5 = llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(v4, __p, 1);
  v6 = *v4 + 24 * *(v4 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  ++*(v4 + 8);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = 0;
}

void sub_257A4A030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t llvm::SmallVectorTemplateCommon<std::string,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::string,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 24 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorTemplateBase<std::string,false>::grow();
    }

    v7 = a2 - *a1;
    llvm::SmallVectorTemplateBase<std::string,false>::grow();
  }

  return a2;
}

std::string *llvm::detail::join_impl<std::string *>@<X0>(std::string *result@<X0>, std::string *a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (result != a2)
  {
    v8 = result;
    v10 = (0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 3) - 1) * a4;
    v11 = result;
    do
    {
      size = SHIBYTE(v11->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = v11->__r_.__value_.__l.__size_;
      }

      v10 += size;
      ++v11;
    }

    while (v11 != a2);
    std::string::reserve(a5, v10);
    v13 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
    if (v13 >= 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = v8->__r_.__value_.__r.__words[0];
    }

    if (v13 >= 0)
    {
      v15 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v8->__r_.__value_.__l.__size_;
    }

    result = std::string::append(a5, v14, v15);
    for (i = v8 + 1; i != a2; ++i)
    {
      std::string::append(a5, a3, a4);
      v17 = SHIBYTE(i->__r_.__value_.__r.__words[2]);
      if (v17 >= 0)
      {
        v18 = i;
      }

      else
      {
        v18 = i->__r_.__value_.__r.__words[0];
      }

      if (v17 >= 0)
      {
        v19 = HIBYTE(i->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = i->__r_.__value_.__l.__size_;
      }

      result = std::string::append(a5, v18, v19);
    }
  }

  return result;
}

void sub_257A4A220(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double ___ZL15logCompileBeginRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERyPKcS7__block_invoke()
{
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  LODWORD(v1) = info.denom;
  result = v0 / v1;
  gMachTimeToNS = *&result;
  return result;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<void>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10) - a3 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5, a2, v6, 0);
  }

  return result;
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(void *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void *flatbuffers::FlatBufferBuilder::TrackField(void *this, uint64_t a2, unsigned int a3)
{
  v5 = this;
  v6 = this[7];
  if (this[6] - v6 <= 7uLL)
  {
    this = flatbuffers::vector_downward::reallocate(this, 8uLL);
    v6 = v5[7];
  }

  *v6 = a3 | (a2 << 32);
  v5[7] += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return this;
}

void *flatbuffers::FlatBufferBuilder::Align(flatbuffers::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return flatbuffers::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

void *flatbuffers::vector_downward::fill(void *this, unint64_t a2)
{
  v3 = this;
  v4 = this[6];
  if (v4 - this[7] >= a2)
  {
    this[6] = v4 - a2;
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(this, a2);
    v3[6] -= a2;
  }

  v5 = 0;
  do
  {
    *(v3[6] + v5++) = 0;
  }

  while (a2 != v5);
  return this;
}

uint64_t flatbuffers::vector_downward::reallocate(flatbuffers::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 - *(this + 6) + v4;
  v6 = *(this + 7) - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (*(this + 3) + v3 + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_2868ECDA0;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_2868ECDA0;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + *(this + 4) - v5;
  *(this + 5) = result;
  *(this + 6) = v11;
  *(this + 7) = result + v6;
  return result;
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x259C6B870);
  }
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 6);
    if ((v6 - *(v5 + 7)) <= 0xB)
    {
      flatbuffers::vector_downward::reallocate(v5, 0xCuLL);
      v6 = *(v5 + 6);
    }

    *(v5 + 6) = v6 - 12;
    v7 = *a3;
    *(v6 - 4) = *(a3 + 2);
    *(v6 - 12) = v7;
    v8 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v8);
  }

  return result;
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(void *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(uint64_t a1, char a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    flatbuffers::vector_downward::reallocate(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, __int16 a2)
{
  v4 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  v6 = *(this + 6);
  if (v6 - *(this + 7) < v5)
  {
    flatbuffers::vector_downward::reallocate(this, v5);
    v6 = *(this + 6);
  }

  *(this + 6) = v6 - v5;
  bzero((v6 - v5), v5);
  v7 = v4 - a2;
  v9 = *(this + 6);
  v8 = *(this + 7);
  v9[1] = v7;
  *v9 = *(this + 34);
  v10 = *(this + 16);
  v11 = (v8 - 8 * v10);
  if (v10)
  {
    v12 = v8 - 8 * v10;
    do
    {
      v13 = (v4 - *v12);
      *(v9 + *(v12 + 4)) = v4 - *v12;
      v12 += 8;
    }

    while (v12 < v8);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v14 = *(this + 4);
  v15 = *(this + 5);
  v16 = v14 - v9 + v15;
  if (*(this + 81) == 1 && v15 < v11)
  {
    v18 = *v9;
    v19 = v15 + v14;
    v20 = *(this + 5);
    while (1)
    {
      v21 = *v20;
      if (v18 == *(v19 - v21) && !memcmp((v19 - v21), v9, v18))
      {
        break;
      }

      if (++v20 >= v11)
      {
        v16 = v14 - v9 + v15;
        goto LABEL_19;
      }
    }

    v9 = (v9 + (v14 - v9 + v15 - v4));
    *(this + 6) = v9;
    v16 = v21;
  }

LABEL_19:
  if (v16 == v14 + v15 - v9)
  {
    if ((v9 - v11) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v11 = *(this + 7);
      v14 = *(this + 4);
      v15 = *(this + 5);
    }

    *v11 = v16;
    *(this + 7) = v11 + 4;
  }

  *(v15 + v14 - v4) = v16 - v4;
  *(this + 70) = 0;
  return v4;
}

uint64_t flatbuffers::FlatBufferBuilder::Finish(flatbuffers::FlatBufferBuilder *this, int a2, const char *a3, int a4)
{
  *(this + 7) = *(this + 5);
  v8 = 4;
  if (a4)
  {
    v8 = 8;
  }

  flatbuffers::FlatBufferBuilder::PreAlign(this, v8 + 4 * (a3 != 0), *(this + 9));
  if (a3)
  {
    v9 = *(this + 6);
    if ((v9 - *(this + 7)) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v9 = *(this + 6);
    }

    *(this + 6) = v9 - 4;
    *(v9 - 4) = *a3;
  }

  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10) - a2 + 4);
  if (a4)
  {
    result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10));
  }

  *(this + 71) = 1;
  return result;
}

void *flatbuffers::FlatBufferBuilder::PreAlign(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return flatbuffers::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

void *flatbuffers::vector_downward::push(void *this, const unsigned __int8 *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = this[6];
    if (v6 - this[7] < a3)
    {
      flatbuffers::vector_downward::reallocate(this, a3);
      v6 = v5[6];
    }

    v5[6] = v6 - a3;

    return memcpy((v6 - a3), __src, a3);
  }

  return this;
}

void flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(*(this + 11), *(v2 + 8));
    MEMORY[0x259C6B890](v2, 0x1060C40C2B13FB5);
  }

  flatbuffers::vector_downward::~vector_downward(this);
}

void flatbuffers::vector_downward::~vector_downward(flatbuffers::vector_downward *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      v4 = *(this + 4);
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x259C6B870](v2, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

uint64_t llvm::detail::scope_exit<MTLCompilerPluginInterface::airntEmitPipelineImage(void *,llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,AIRFunctionScript const*,char **,unsigned long *,char **,unsigned long *,char **)::{lambda(void)#1}>::~scope_exit(uint64_t a1)
{
  if (*(a1 + 8) == 1 && **a1)
  {
    v2 = MEMORY[0x259C6AE50]();
    MEMORY[0x259C6B890](v2, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,ReadModuleParameters *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_28;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
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
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || v7[4] != a2[2] || v7[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v7;
}

void llvm::SMDiagnostic::~SMDiagnostic(llvm::SMDiagnostic *this)
{
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(this + 128);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
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

void MTLCompilerObject::buildRequest(uint64_t a1, unsigned int a2, int a3, unsigned int *a4, std::string::size_type a5, uint64_t a6)
{
  v194 = *MEMORY[0x277D85DE8];
  {
    llvm::install_fatal_error_handler(fatalErrorHandler, 0, v146);
    __cxa_atexit(llvm::ScopedFatalErrorHandler::~ScopedFatalErrorHandler, &MTLCompilerObject::buildRequest(unsigned int,unsigned int,void const*,unsigned long,void({block_pointer})(unsigned int,void const*,unsigned long,char const*))::scopeHandler, &dword_2579AB000);
  }

  free(*(a1 + 64));
  *(a1 + 64) = 0;
  v159 = (a1 + 64);
  *(a1 + 72) = 0;
  switch(a3)
  {
    case 0:
      std::string::basic_string[abi:ne200100]<0>(&buf, "MTLInvalidRequest");
      logCompileError((a1 + 80), "invalid compiler request type");
      std::string::~string(&buf);
      abort();
    case 1:
      if ((*a4 & 0x30000000) != 0x10000000)
      {
        goto LABEL_26;
      }

      if (MTLCompilerObject::buildRequest(unsigned int,unsigned int,void const*,unsigned long,void({block_pointer})(unsigned int,void const*,unsigned long,char const*))::requestCount >= 1)
      {
        goto LABEL_290;
      }

      ++MTLCompilerObject::buildRequest(unsigned int,unsigned int,void const*,unsigned long,void({block_pointer})(unsigned int,void const*,unsigned long,char const*))::requestCount;
LABEL_26:
      if (a2 >= ((*(a1 + 16) - *(a1 + 8)) >> 3))
      {
        goto LABEL_290;
      }

      v191 = 0u;
      buf.__r_.__value_.__r.__words[0] = a4;
      buf.__r_.__value_.__l.__size_ = a5;
      buf.__r_.__value_.__r.__words[2] = a2;
      v189 = a6;
      *&v190 = a4;
      *(&v190 + 1) = 1;
      DWORD2(v191) = 0;
      MTLCompilerObject::backendCompileExecutableRequest(a1, &buf);
      goto LABEL_285;
    case 3:
    case 13:
      v182 = 0;
      v183 = 0;
      v184 = 0;
      MTLBuildRequestTypeToString(a3, &__p);
      if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
      {
        MTLCompilerObject::buildSpecializedFunctionRequest();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 103) >= 0)
        {
          v11 = a1 + 80;
        }

        else
        {
          v11 = *(a1 + 80);
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v11;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v189 = "source";
        _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", &buf, 0x20u);
      }

      v13 = mach_absolute_time();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v180 = 0;
      MEMORY[0x259C6A4D0](&v179);
      v151 = v13;
      v154 = a1 + 80;
      __p.__r_.__value_.__r.__words[0] = &v179;
      __p.__r_.__value_.__r.__words[2] = llvm::LLVMContext::getDiagnosticContext(&v179);
      __p.__r_.__value_.__l.__size_ = llvm::LLVMContext::getDiagnosticHandlerCallBack(&v179);
      llvm::LLVMContext::setDiagnosticHandlerCallBack();
      v152 = a1;
      v14 = a4[1];
      v15 = a4 + *a4 + 19;
      *&v178.__r_.__value_.__r.__words[1] = 0uLL;
      v178.__r_.__value_.__r.__words[0] = &v179;
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = ((v15 & 0xFFFFFFFFFFFFFFFCLL) + v14);
      if ((v15 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v18 = strlen(((v15 & 0xFFFFFFFFFFFFFFFCLL) + v14));
      }

      else
      {
        v18 = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(&v178, v17, &v17[v18]);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v178, " ", "");
      v71 = a4[3];
      if (v71)
      {
        llvm::SmallVectorImpl<char>::append<char const*,void>(&v178, "-Os ", "");
        v71 = a4[3];
      }

      if ((v71 & 2) != 0)
      {
        v72 = mach_absolute_time();
      }

      else
      {
        v72 = 0;
      }

      __s1 = 0;
      v150 = v72;
      if (a3 != 13)
      {
        memset(&buf, 0, sizeof(buf));
        v173 = 0;
        v76 = *(a1 + 32);
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v178, 0);
        --v178.__r_.__value_.__l.__size_;
        v77 = MTLGPUCompilerBuildFromSource();
        v158 = v77 != 0;
        if (v77)
        {
          MTLObjectGetAsMetalLib();
          createLibraryInfo();
        }

        v83 = a4[3];
        if ((v83 & 2) != 0)
        {
          v85 = (*&gMachTimeToNS * (mach_absolute_time() - v150));
          LODWORD(v186) = 0;
          *(&v186 + 1) = v85;
          std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &v186);
          v86 = (v183 - v182) >> 4;
          if (v86 == -2)
          {
            v84 = 0;
          }

          else
          {
            v84 = 12 * v86 + 28;
          }

          v83 = a4[3];
        }

        else
        {
          v84 = 0;
          v85 = 0;
        }

        v87 = MTLCompilerObject::serializeLibraryReply(a1, &v180, __s1, 0, buf.__r_.__value_.__l.__data_, (buf.__r_.__value_.__l.__size_ - buf.__r_.__value_.__r.__words[0]) >> 3, v84, 0, (v83 & 4) != 0, 0, 0);
        v88 = buf.__r_.__value_.__r.__words[0];
        if (buf.__r_.__value_.__r.__words[0])
        {
          buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
LABEL_265:
          operator delete(v88);
        }

LABEL_266:
        if (v178.__r_.__value_.__l.__data_ != &v179)
        {
          free(v178.__r_.__value_.__l.__data_);
        }

        ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&__p);
        llvm::LLVMContext::~LLVMContext(&v179);
        v141 = v158;
        if (!v87)
        {
          v141 = 0;
        }

        if (v141)
        {
          MTLBuildRequestTypeToString(a3, &buf);
          v142 = logCompileEnd(v154, v151, "source", &buf, &unk_257A6F51A);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if ((a4[3] & 2) != 0)
          {
            LODWORD(buf.__r_.__value_.__l.__data_) = 6;
            buf.__r_.__value_.__l.__size_ = v142;
            std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
            LODWORD(buf.__r_.__value_.__l.__data_) = 4;
            buf.__r_.__value_.__l.__size_ = v142 - v85;
            std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
          }

          v165 = 0;
          v166 = 0;
          v167 = 0;
          std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v165, v182, v183, (v183 - v182) >> 4);
          if (v87[13])
          {
            v143 = v87[12];
            memset(&buf, 0, sizeof(buf));
            std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&buf, v165, v166, (v166 - v165) >> 4);
            serializeCompileTimeData(v87 + v143, &buf);
            if (buf.__r_.__value_.__r.__words[0])
            {
              buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          if (v165)
          {
            v166 = v165;
            operator delete(v165);
          }

          (*(a6 + 16))(a6, 0, v87, v180, 0);
          free(v87);
        }

        else
        {
          v144 = *v159;
          (*(a6 + 16))(a6);
        }

        goto LABEL_282;
      }

      v176 = 0;
      v186 = 0uLL;
      v187 = 0;
      v73 = a4[1];
      if (!v73)
      {
        v81 = a1;
        v82 = *(a1 + 32);
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v178, 0);
        --v178.__r_.__value_.__l.__size_;
        v158 = MTLGPUCompilerBuildFromSourceToBuffer() != 0;
        std::vector<char *>::push_back[abi:ne200100](&v186, &__s1);
        goto LABEL_253;
      }

      v173 = 0;
      v174 = 0;
      v175 = 0;
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v169[1] = 0;
      v74 = *(a1 + 32);
      llvm::SmallVectorTemplateBase<char,true>::push_back(&v178, 0);
      --v178.__r_.__value_.__l.__size_;
      if (!MTLGPUCompilerCompileFromSource())
      {
        goto LABEL_245;
      }

      AsObject = MTLModuleGetAsObject();
      v94 = (v171 - v170) >> 3;
      if ((v94 + 1) >> 61)
      {
        std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
      }

      v95 = (v172 - v170) >> 2;
      if (v95 <= v94 + 1)
      {
        v95 = v94 + 1;
      }

      if (v172 - v170 >= 0x7FFFFFFFFFFFFFF8)
      {
        v96 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v96 = v95;
      }

      if (v96)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v170, v96);
      }

      v115 = (8 * v94);
      *v115 = AsObject;
      v116 = 8 * v94 + 8;
      v117 = v115 - (v171 - v170);
      memcpy(v117, v170, v171 - v170);
      v118 = v170;
      v170 = v117;
      v171 = v116;
      v172 = 0;
      if (v118)
      {
        operator delete(v118);
      }

      v171 = v116;
      if (v73 < 5)
      {
LABEL_242:
        v81 = v152;
        v134 = *(v152 + 4);
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v178, 0);
        --v178.__r_.__value_.__l.__size_;
        v158 = MTLGPUCompilerLinkToBuffer() != 0;
        if (__s1)
        {
          std::vector<char *>::push_back[abi:ne200100](&v186, &__s1);
        }
      }

      else
      {
        v119 = 1;
        while (1)
        {
          v120 = ((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
          v121 = (v119 & 1) != 0 ? 0 : v16 - v120;
          v124 = *v120;
          v122 = v120 + 1;
          v123 = v124;
          snprintf(&buf, 0x20uLL, "%s%zu", "linked-air-blob-", (v174 - v173) >> 3);
          v169[0] = LLVMCreateMemoryBufferWithMemoryRange();
          std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v173, v169);
          v168 = 0;
          v125 = MTLObjectCreate();
          if (!v125)
          {
            break;
          }

          v126 = v171;
          if (v171 >= v172)
          {
            v128 = (v171 - v170) >> 3;
            if ((v128 + 1) >> 61)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v129 = (v172 - v170) >> 2;
            if (v129 <= v128 + 1)
            {
              v129 = v128 + 1;
            }

            if (v172 - v170 >= 0x7FFFFFFFFFFFFFF8)
            {
              v130 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v130 = v129;
            }

            if (v130)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v170, v130);
            }

            v131 = (8 * v128);
            *v131 = v125;
            v127 = 8 * v128 + 8;
            v132 = v131 - (v171 - v170);
            memcpy(v132, v170, v171 - v170);
            v133 = v170;
            v170 = v132;
            v171 = v127;
            v172 = 0;
            if (v133)
            {
              operator delete(v133);
            }
          }

          else
          {
            *v171 = v125;
            v127 = (v126 + 8);
          }

          v119 = 0;
          v171 = v127;
          v73 = v73 + v121 - v123 - 4;
          v16 = v122 + v123;
          if (v73 <= 4)
          {
            goto LABEL_242;
          }
        }

        std::vector<char *>::push_back[abi:ne200100](&v186, &v168);
LABEL_245:
        v158 = 0;
        v81 = v152;
      }

      v135 = v173;
      v136 = v174;
      while (v135 != v136)
      {
        v137 = *v135;
        LLVMDisposeMemoryBuffer();
        ++v135;
      }

      if (v170)
      {
        v171 = v170;
        operator delete(v170);
      }

      if (v173)
      {
        v174 = v173;
        operator delete(v173);
      }

LABEL_253:
      if ((a4[3] & 2) != 0)
      {
        v85 = (*&gMachTimeToNS * (mach_absolute_time() - v150));
        LODWORD(buf.__r_.__value_.__l.__data_) = 0;
        buf.__r_.__value_.__l.__size_ = v85;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
        v139 = (v183 - v182) >> 4;
        if (v139 == -2)
        {
          v138 = 0;
        }

        else
        {
          v138 = (12 * v139 + 28);
        }
      }

      else
      {
        v138 = 0;
        v85 = 0;
      }

      if (*(&v186 + 1) == v186)
      {
        v140 = 0;
      }

      else
      {
        v140 = v186;
      }

      v87 = MTLCompilerObject::serializeLibraryToArchiveReply(v81, &v180, v140, (*(&v186 + 1) - v186) >> 3, v158, v176, v138);
      if (v176)
      {
        LLVMDisposeMemoryBuffer();
      }

      v88 = v186;
      if (v186)
      {
        *(&v186 + 1) = v186;
        goto LABEL_265;
      }

      goto LABEL_266;
    case 4:
      std::string::basic_string[abi:ne200100]<0>(&v182, "MTLBuildOpaqueRequest");
      if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
      {
        MTLCompilerObject::buildSpecializedFunctionRequest();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 103) >= 0)
        {
          v59 = a1 + 80;
        }

        else
        {
          v59 = *(a1 + 80);
        }

        v60 = &v182;
        if (v184 < 0)
        {
          v60 = v182;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v59;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v60;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v189 = "opaque";
        _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", &buf, 0x20u);
      }

      v61 = mach_absolute_time();
      if (SHIBYTE(v184) < 0)
      {
        operator delete(v182);
      }

      v62 = *(a1 + 8);
      if (a2 >= ((*(a1 + 16) - v62) >> 3))
      {
        goto LABEL_290;
      }

      v193 = 0;
      memset(&buf, 0, sizeof(buf));
      LODWORD(v189) = 0;
      v190 = 0u;
      v191 = 0u;
      v192 = 0;
      v63 = *(v62 + 8 * a2);
      *(v63 + 155) = 1;
      v64 = *(v63 + 32);
      if (v64)
      {
        v65 = v64(*(v63 + 128), a4, a5, 0, 0, &buf, &buf.__r_.__value_.__l.__size_, &v190, &v190 + 8, &v191, &v191 + 8, &buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        *(&v191 + 1) = 0;
        v65 = (*(v63 + 24))(*(v63 + 128), a4, a5, 0, &buf, &buf.__r_.__value_.__l.__size_, &buf.__r_.__value_.__r.__words[2]);
      }

      LODWORD(v189) = v65;
      if (v65)
      {
        if (v65 != 1)
        {
LABEL_290:
          abort();
        }

        v78 = 2;
      }

      else
      {
        v78 = 0;
      }

      (*(a6 + 16))(a6, v78, buf.__r_.__value_.__r.__words[0], buf.__r_.__value_.__l.__size_, buf.__r_.__value_.__r.__words[2]);
      v79 = *(*(a1 + 8) + 8 * a2);
      if (*(v79 + 155) == 1)
      {
        (*(v79 + 16))(*(v79 + 128));
        *(v79 + 155) = 0;
      }

      std::string::basic_string[abi:ne200100]<0>(&v182, "MTLBuildOpaqueRequest");
      logCompileEnd(a1 + 80, v61, "opaque", &v182, &unk_257A6F51A);
      if ((SHIBYTE(v184) & 0x80000000) == 0)
      {
        goto LABEL_285;
      }

      v80 = v182;
      goto LABEL_284;
    case 5:
      v170 = 0;
      v182 = 0;
      v183 = 0;
      v184 = 0;
      MEMORY[0x259C6A4D0](&v180);
      __p.__r_.__value_.__r.__words[0] = &v180;
      __p.__r_.__value_.__r.__words[2] = llvm::LLVMContext::getDiagnosticContext(&v180);
      __p.__r_.__value_.__l.__size_ = llvm::LLVMContext::getDiagnosticHandlerCallBack(&v180);
      llvm::LLVMContext::setDiagnosticHandlerCallBack();
      std::string::basic_string[abi:ne200100]<0>(&v178, "MTLBuildCISPIRequestToArchive");
      if (logCompileBegin(std::string const&,unsigned long long &,char const*,std::string const&)::onceToken != -1)
      {
        MTLCompilerObject::buildSpecializedFunctionRequest();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 103) >= 0)
        {
          v22 = a1 + 80;
        }

        else
        {
          v22 = *(a1 + 80);
        }

        v23 = &v178;
        if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = v178.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v22;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v23;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v189 = "CI SPI";
        _os_log_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Compilation BEGIN (ParentProcessName=%{public}s) Build request: %{public}s - %s", &buf, 0x20u);
      }

      v147 = mach_absolute_time();
      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      v148 = a1 + 80;
      v153 = a1;
      v24 = a4[2];
      v25 = a4[3];
      std::vector<llvm::Module *>::vector[abi:ne200100](&v178, v24);
      v149 = v24;
      if (!v24)
      {
        goto LABEL_54;
      }

      v26 = 0;
      v27 = (a4 + v25 + 4);
      break;
    case 6:
      v21 = "MTLSpecializeFunction request type is deprecated, use MTLSpecializeFunctionToArchive";
      goto LABEL_108;
    case 7:
      v191 = 0u;
      buf.__r_.__value_.__r.__words[0] = a4;
      *&buf.__r_.__value_.__r.__words[1] = a5;
      v189 = a6;
      *&v190 = a4;
      *(&v190 + 1) = 1;
      DWORD2(v191) = 0;
      MTLCompilerObject::downgradeAndLoadModuleRequest(a1, &buf);
      goto LABEL_285;
    case 8:
      v66 = *MEMORY[0x277D85DE8];

      MTLCompilerObject::logCompilerFailure(a1, a4, a5, a6);
      return;
    case 10:
      if (a2 >= ((*(a1 + 16) - *(a1 + 8)) >> 3))
      {
        goto LABEL_290;
      }

      v191 = 0u;
      buf.__r_.__value_.__r.__words[0] = a4;
      buf.__r_.__value_.__l.__size_ = a5;
      buf.__r_.__value_.__r.__words[2] = a2;
      v189 = a6;
      *&v190 = a4;
      *(&v190 + 1) = 5;
      DWORD2(v191) = 4;
      MTLCompilerObject::backendCompileStatelessRequest(a1, &buf);
      goto LABEL_285;
    case 11:
      v21 = "MTLStitchFunctionDagRequest request type is deprecated, use MTLStitchFunctionDagToArchive";
LABEL_108:
      MTLCompilerErrorObject::setFormattedErrorMessage(v159, v21);
      v67 = *(a6 + 16);
      v68 = *MEMORY[0x277D85DE8];
      v69 = 2 * (*v159 != 0);

      v67(a6, v69, 0, 0);
      return;
    case 14:
      MEMORY[0x259C6A4D0](&buf);
      MTLCompilerObject::stitchFunctionDag(a1, &buf, v58, a4, a5, a6);
      llvm::LLVMContext::~LLVMContext(&buf);
      goto LABEL_285;
    case 15:
      v19 = *MEMORY[0x277D85DE8];

      MTLCompilerObject::buildSpecializedFunctionRequest(a1, a4, a5, v10, a6);
      return;
    case 16:
      v70 = *MEMORY[0x277D85DE8];

      MTLCompilerObject::generateMachO(a1, a4, a5, a6);
      return;
    case 17:
      v20 = *MEMORY[0x277D85DE8];

      MTLCompilerObject::generateBinaryArchiveID(a1, a4, a5, a6);
      return;
    default:
      std::string::basic_string[abi:ne200100]<0>(&buf, "MTLBuildRequestTypeUnknown");
      logCompileError((a1 + 80), "unknown compiler request type");
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      (*(a6 + 16))(a6, 2, 0, 0, "Internal compiler error.");
      goto LABEL_285;
  }

  do
  {
    v28 = *v27;
    buf.__r_.__value_.__r.__words[0] = a4 + *(v27 - 1);
    buf.__r_.__value_.__l.__size_ = v28;
    buf.__r_.__value_.__r.__words[2] = &unk_257A6F51A;
    v189 = 0;
    llvm::getLazyBitcodeModule();
    llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(v185, &v186);
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(v185);
    if (v187)
    {
      (*(a6 + 16))(a6, 2, 0, 0, "Failed to read function bitcode.");
LABEL_163:
      if ((v187 & 1) == 0)
      {
        std::unique_ptr<llvm::Module>::reset[abi:ne200100](&v186, 0);
      }

LABEL_165:
      v92 = 0;
      v97 = 0;
      v98 = 1;
      goto LABEL_187;
    }

    v29 = v186;
    *&v186 = 0;
    llvm::Module::materializeAll(&buf, v29);
    if (buf.__r_.__value_.__r.__words[0])
    {
      (*(a6 + 16))(a6, 2, 0, 0, "Failed to materializeAll.");
      if (buf.__r_.__value_.__r.__words[0])
      {
        (*(*buf.__r_.__value_.__l.__data_ + 8))(buf.__r_.__value_.__r.__words[0]);
      }

      goto LABEL_163;
    }

    v30 = MTLUpgradeAIRModule();
    if (v30)
    {
      *(v178.__r_.__value_.__r.__words[0] + v26) = v29;
    }

    else
    {
      (*(a6 + 16))(a6, 2, 0, 0, "Failed to upgrade AIR version.");
      if (v29)
      {
        v31 = MEMORY[0x259C6AE50](v29);
        MEMORY[0x259C6B890](v31, 0x10B2C407FF26C1CLL);
      }
    }

    if (buf.__r_.__value_.__r.__words[0])
    {
      (*(*buf.__r_.__value_.__l.__data_ + 8))(buf.__r_.__value_.__r.__words[0]);
    }

    if ((v187 & 1) == 0)
    {
      v32 = v186;
      *&v186 = 0;
      if (v32)
      {
        v33 = MEMORY[0x259C6AE50]();
        MEMORY[0x259C6B890](v33, 0x10B2C407FF26C1CLL);
      }
    }

    if (!v30)
    {
      goto LABEL_165;
    }

    v27 += 2;
    v26 += 8;
  }

  while (8 * v24 != v26);
LABEL_54:
  std::vector<ImageFilterFunctionInfoSPI>::vector[abi:ne200100](&v186, *a4);
  std::vector<llvm::Function *>::vector[abi:ne200100](&v173, *a4);
  if (*a4)
  {
    v34 = 0;
    v35 = (a4 + 5);
    v36 = (a4 + a4[1]);
    do
    {
      v37 = v36[2];
      v38 = *(v178.__r_.__value_.__r.__words[0] + 8 * v36[1]);
      if (v35)
      {
        strlen(v35);
      }

      Function = llvm::Module::getFunction();
      if (Function)
      {
        *&buf.__r_.__value_.__r.__words[1] = 0uLL;
        v189 = 0;
        v40 = *v36 != 0;
        buf.__r_.__value_.__s.__data_[0] = v40;
        if (v37)
        {
          v156 = v35;
          v157 = v36;
          v41 = v37;
          v42 = 0;
          v43 = v36 + 5;
          v155 = v41;
          v44 = v41;
          do
          {
            v45 = *(v43 - 2);
            v46 = *(v43 - 1);
            v47 = *v43;
            if (v42 >= v189)
            {
              size = buf.__r_.__value_.__l.__size_;
              v49 = &v42[-buf.__r_.__value_.__l.__size_];
              v50 = 0xAAAAAAAAAAAAAAABLL * (&v42[-buf.__r_.__value_.__l.__size_] >> 2);
              v51 = v50 + 1;
              if (v50 + 1 > 0x1555555555555555)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * (&v189[-buf.__r_.__value_.__l.__size_] >> 2) > v51)
              {
                v51 = 0x5555555555555556 * (&v189[-buf.__r_.__value_.__l.__size_] >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * (&v189[-buf.__r_.__value_.__l.__size_] >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v52 = 0x1555555555555555;
              }

              else
              {
                v52 = v51;
              }

              if (v52)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(&buf.__r_.__value_.__l.__size_, v52);
              }

              v53 = 12 * v50;
              *v53 = v45;
              *(v53 + 4) = v46;
              *(v53 + 8) = v47;
              v42 = (12 * v50 + 12);
              v54 = v53 - v49;
              memcpy((v53 - v49), size, v49);
              v55 = buf.__r_.__value_.__l.__size_;
              buf.__r_.__value_.__l.__size_ = v54;
              buf.__r_.__value_.__r.__words[2] = v42;
              v189 = 0;
              if (v55)
              {
                operator delete(v55);
              }
            }

            else
            {
              *v42 = v45;
              *(v42 + 1) = v46;
              *(v42 + 2) = v47;
              v42 += 12;
            }

            v43 += 3;
            buf.__r_.__value_.__r.__words[2] = v42;
            --v44;
          }

          while (v44);
          v40 = buf.__r_.__value_.__s.__data_[0];
          v35 = v156;
          v36 = v157;
          LODWORD(v37) = v155;
        }

        *(v173 + v34) = Function;
        v56 = (v186 + 32 * v34);
        v56->__r_.__value_.__s.__data_[0] = v40;
        if (v56 != &buf)
        {
          std::vector<ImageFilterFunctionArgumentInfoSPI>::__assign_with_size[abi:ne200100]<ImageFilterFunctionArgumentInfoSPI*,ImageFilterFunctionArgumentInfoSPI*>(&v56->__r_.__value_.__l.__size_, buf.__r_.__value_.__l.__size_, buf.__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((buf.__r_.__value_.__r.__words[2] - buf.__r_.__value_.__l.__size_) >> 2));
        }

        if (buf.__r_.__value_.__l.__size_)
        {
          buf.__r_.__value_.__r.__words[2] = buf.__r_.__value_.__l.__size_;
          operator delete(buf.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        MTLCompilerErrorObject::setFormattedErrorMessage(v159, "Failed to find function %s in library", v35);
        (*(a6 + 16))(a6, 2, 0, 0, *v159);
      }

      v35 += strlen(v35) + 1;
      v36 += 3 * v37 + 3;
      ++v34;
    }

    while (v34 < *a4);
  }

  if ((*(a4 + 17) & 2) != 0)
  {
    v57 = mach_absolute_time();
  }

  else
  {
    v57 = 0;
  }

  v179 = 0;
  ComposeImageFuncFromLibrariesSPI = MTLCompilerObject::getComposeImageFuncFromLibrariesSPI(v153);
  if (ComposeImageFuncFromLibrariesSPI)
  {
    v90 = ComposeImageFuncFromLibrariesSPI(&v178, &v173, &v186, &v179);
    goto LABEL_147;
  }

  if (v149 >= 2)
  {
    MTLCompilerErrorObject::setFormattedErrorMessage(v159, "Creating a ComputePipeline from multiple libraries is unsupported. Found functions from %d modules", v149);
    goto LABEL_167;
  }

  ComposeImageFuncSPI = MTLCompilerObject::getComposeImageFuncSPI(v153);
  if (ComposeImageFuncSPI)
  {
    v90 = ComposeImageFuncSPI(*v178.__r_.__value_.__l.__data_, &v173, &v186, &v179);
LABEL_147:
    v91 = v90;
    if (v90)
    {
      if ((*(a4 + 17) & 2) != 0)
      {
        v92 = (*&gMachTimeToNS * (mach_absolute_time() - v57));
        LODWORD(buf.__r_.__value_.__l.__data_) = 2;
        buf.__r_.__value_.__l.__size_ = v92;
        std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
        v99 = (v183 - v182) >> 4;
        if (v99 == -2)
        {
          v93 = 0;
        }

        else
        {
          v93 = (12 * v99 + 28);
        }
      }

      else
      {
        v92 = 0;
        v93 = 0;
      }

      v100 = *(v91 + 5);
      LLVMExtraMakeSharedModule();
      Name = llvm::Value::getName(v91);
      if (Name)
      {
        std::string::basic_string[abi:ne200100](&buf, Name, v101);
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      MTLMetalFunctionCreate();
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v104 = *(v91 + 5);
      if (*(v104 + 239) < 0)
      {
        v105 = *(v104 + 216);
      }

      MTLMetalLibCreateExecutableWithTriple();
      MTLMetalLibInsertFunction();
      v106 = MTLWriteMetalLibToMemoryBuffer();
      v97 = MTLCompilerObject::serializeLibraryToArchiveReply(v153, &v170, 0, 0, 1, v106, v93);
      if (v106)
      {
        LLVMDisposeMemoryBuffer();
      }

      LLVMExtraDisposeSharedModule();
      v98 = 0;
      goto LABEL_184;
    }

    v159 = &v179;
LABEL_167:
    (*(a6 + 16))(a6, 2, 0, 0, *v159);
  }

  else
  {
    (*(a6 + 16))(a6, 2, 0, 0, "Failed to load composeImageFunc plugin");
  }

  v92 = 0;
  v97 = 0;
  v98 = 1;
LABEL_184:
  if (v173)
  {
    v174 = v173;
    operator delete(v173);
  }

  buf.__r_.__value_.__r.__words[0] = &v186;
  std::vector<ImageFilterFunctionInfoSPI>::__destroy_vector::operator()[abi:ne200100](&buf);
LABEL_187:
  if (v178.__r_.__value_.__r.__words[0])
  {
    v178.__r_.__value_.__l.__size_ = v178.__r_.__value_.__r.__words[0];
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&__p);
  llvm::LLVMContext::~LLVMContext(&v180);
  if (v97)
  {
    v107 = v98;
  }

  else
  {
    v107 = 1;
  }

  if ((v107 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, &unk_257A6F51A);
    if (_MTLIsInternalBuild() && *a4)
    {
      v108 = 20;
      do
      {
        std::string::basic_string[abi:ne200100]<0>(&v178, "; ");
        std::string::push_back(&v178, *(a4 + v108));
        buf = v178;
        memset(&v178, 0, sizeof(v178));
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v110 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v110 = buf.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, p_buf, v110);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v178.__r_.__value_.__l.__data_);
        }

        v111 = v108 - 19;
        ++v108;
      }

      while (v111 < *a4);
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "MTLBuildCISPIRequestToArchive");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v112 = &__p;
    }

    else
    {
      v112 = __p.__r_.__value_.__r.__words[0];
    }

    v113 = logCompileEnd(v148, v147, "CI SPI", &buf, v112);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if ((*(a4 + 17) & 2) != 0)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 6;
      buf.__r_.__value_.__l.__size_ = v113;
      std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
      LODWORD(buf.__r_.__value_.__l.__data_) = 4;
      buf.__r_.__value_.__l.__size_ = v113 - v92;
      std::vector<CompileTimeData>::push_back[abi:ne200100](&v182, &buf);
    }

    v162 = 0;
    v163 = 0;
    v164 = 0;
    std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&v162, v182, v183, (v183 - v182) >> 4);
    if (v97[13])
    {
      v114 = v97[12];
      memset(&buf, 0, sizeof(buf));
      std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(&buf, v162, v163, (v163 - v162) >> 4);
      serializeCompileTimeData(v97 + v114, &buf);
      if (buf.__r_.__value_.__r.__words[0])
      {
        buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (v162)
    {
      v163 = v162;
      operator delete(v162);
    }

    (*(a6 + 16))(a6, 0, v97, v170, 0);
    free(v97);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_282:
  v80 = v182;
  if (v182)
  {
    v183 = v182;
LABEL_284:
    operator delete(v80);
  }

LABEL_285:
  v145 = *MEMORY[0x277D85DE8];
}

void fatalErrorHandler(void *a1, char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = p_str;
    _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "LLVM ERROR: %s", buf, 0xCu);
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "Cannot select:");
  v8 = 10;
  std::string::basic_string[abi:ne200100]<0>(&v9, "unable to lower arguments");
  v10 = 10;
  std::string::basic_string[abi:ne200100]<0>(v11, "unable to translate");
  v12 = 21;
  std::string::basic_string[abi:ne200100]<0>(v13, "cannot select");
  v14 = 21;
  std::string::basic_string[abi:ne200100]<0>(v15, "unable to legalize");
  v16 = 21;
  memset(v5, 0, sizeof(v5));
  v3 = v5;
  LOBYTE(v4) = 0;
  operator new();
}

void sub_257A4D4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  a24 = &a13;
  std::vector<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>>::__destroy_vector::operator()[abi:ne200100](&a24);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, void *a2)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(a1, v10);
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

void sub_257A4D8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 33) < 0)
  {
    operator delete(*(v33 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerObject::logCompilerFailure(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = a3;
  if (a3 <= 7 || ((v6 = *a2, v28 = 8, !v6) ? (v7 = 0) : (v7 = DeserialContext::stringFromSerializedData(&v26)), (v8 = [gReplayLogDirectory stringByAppendingString:v7], v27 > v28) ? (v9 = v27 - v28 > 7) : (v9 = 0), !v9))
  {
LABEL_30:
    abort();
  }

  v10 = v26;
  v11 = *(v26 + v28);
  v12 = v28 + 8;
  v28 += 8;
  if (v11)
  {
    if (v12 >= v27)
    {
      goto LABEL_30;
    }

    v28 = v11 + v12;
    if (v11 + v12 > v27)
    {
      goto LABEL_30;
    }

    v13 = v8;
    v25 = 0;
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v14 createDirectoryAtPath:gReplayLogDirectory withIntermediateDirectories:1 attributes:0 error:&v25])
    {
      v15 = fopen([v13 UTF8String], "wb");
      if (v15)
      {
        v16 = v15;
        v17 = fwrite(v10 + v12, 1uLL, v11, v15);
        fclose(v16);
        if (v17 == v11)
        {
          v18 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
          *v18 = 1;
          return (*(a4 + 16))(a4, 0, v18, 1, 0);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          MTLCompilerObject::logCompilerFailure(v13);
        }

        MTLCompilerErrorObject::setFormattedErrorMessage((a1 + 64), "Failed to write log file (wrote %llu bytes, expected %llu bytes): %s", v17, v11, [v13 UTF8String]);
        v21 = *(a1 + 64);
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MTLCompilerObject::logCompilerFailure(v13);
      }

      v24 = (a1 + 64);
      [v13 UTF8String];
      MTLCompilerErrorObject::setFormattedErrorMessage(v24, "Failure to create log file: %s");
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MTLCompilerObject::logCompilerFailure(&v25);
      }

      v24 = (a1 + 64);
      [objc_msgSend(v25 "localizedDescription")];
      MTLCompilerErrorObject::setFormattedErrorMessage(v24, "Failure to create log directory: %s");
    }

    v21 = *v24;
LABEL_25:
    v20 = *(a4 + 16);
    v22 = a4;
    v23 = 2;
    return v20(v22, v23, 0, 0, v21);
  }

  v20 = *(a4 + 16);
  v21 = "MTLCompilerService received an empty replay block to log";
  v22 = a4;
  v23 = 1;
  return v20(v22, v23, 0, 0, v21);
}

uint64_t MTLCompilerObject::generateMachO(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v130 = *MEMORY[0x277D85DE8];
  v122 = 0u;
  v123 = 0u;
  v124 = 1065353216;
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  if (*(a2 + 22))
  {
    v106 = a2 + a2[4];
    DynamicLibraryWriter = MTLGPUArchiverFromId();
  }

  else
  {
    v5 = a2[5];
    if (*(a2 + 128))
    {
      DynamicLibraryWriter = MTLGPUArchiverCreateDynamicLibraryWriter();
    }

    else
    {
      DynamicLibraryWriter = MTLGPUArchiverCreateExecutableWriter();
    }

    MTLGPUArchiverToId();
  }

  if (!DynamicLibraryWriter)
  {
    __p = 0;
    if (!MTLGPUArchiverDeleteWithId())
    {
      std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
      logMachOError((a1 + 80), __p);
      if (SBYTE7(v125[1]) < 0)
      {
        operator delete(*&v125[0]);
      }

      free(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
    logMachOError((a1 + 80), v121);
    if (SBYTE7(v125[1]) < 0)
    {
      operator delete(*&v125[0]);
    }

    (*(a4 + 16))(a4, 2, 0, 0, v121);
    free(v121);
    goto LABEL_206;
  }

  v6 = *(a2 + 30);
  v121 = 0;
  v7 = *a2;
  if (!MTLGPUArchiverAddTool())
  {
    __p = 0;
    if (!MTLGPUArchiverDeleteWithId())
    {
      std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
      logMachOError((a1 + 80), __p);
      if (SBYTE7(v125[1]) < 0)
      {
        operator delete(*&v125[0]);
      }

      free(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
    logMachOError((a1 + 80), v121);
    if (SBYTE7(v125[1]) < 0)
    {
      operator delete(*&v125[0]);
    }

    goto LABEL_146;
  }

  if (*(a2 + 29))
  {
    v8 = a2[9];
    if (!LLVMCreateMemoryBufferWithMemoryRange())
    {
      v117 = 0;
      if (!MTLGPUArchiverDeleteWithId())
      {
        std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
        logMachOError((a1 + 80), v117);
        if (SBYTE7(v125[1]) < 0)
        {
          operator delete(*&v125[0]);
        }

        free(v117);
      }

      strcpy(v125, "Unable to store metal script");
      std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
      logMachOError((a1 + 80), v125);
      if (v116 < 0)
      {
        operator delete(__p);
      }

      (*(a4 + 16))(a4, 2, 0, 0, v121);
      MTLGPUArchiverDestroy();
      goto LABEL_206;
    }

    v9 = MTLGPUArchiverAddDescriptor();
    LLVMDisposeMemoryBuffer();
    if (!v9)
    {
      __p = 0;
      if (!MTLGPUArchiverDeleteWithId())
      {
        std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
        logMachOError((a1 + 80), __p);
        if (SBYTE7(v125[1]) < 0)
        {
          operator delete(*&v125[0]);
        }

        free(__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
      logMachOError((a1 + 80), v121);
      if (SBYTE7(v125[1]) < 0)
      {
        operator delete(*&v125[0]);
      }

LABEL_146:
      (*(a4 + 16))(a4, 2, 0, 0, v121);
      free(v121);
      MTLGPUArchiverDestroy();
      goto LABEL_206;
    }
  }

  v112 = a2;
  if (!*(a2 + 27))
  {
LABEL_22:
    v18 = v112;
    v108 = malloc_type_malloc(8 * v112[1], 0x2004093837F09uLL);
    v105 = malloc_type_malloc(8 * v112[1], 0x10040436913F5uLL);
    if (v112[1])
    {
      v109 = 0;
      v19 = 0;
      do
      {
        v20 = &v112[13 * v19 + 17];
        v21 = v18 + *(v20 + 16);
        v22 = strncmp((v21 + 4), "AIRC", 4uLL);
        v23 = strncmp((v21 + 4), "AIRS", 4uLL);
        if (*(v18 + 128) == 1)
        {
          *&v125[0] = 0;
          BYTE8(v125[0]) = 0;
          v126 = 0x1000000000000;
          v125[1] = xmmword_257A6DE20;
          memset(&v125[2], 0, 32);
          v127 = 1;
          v128 = 256;
          v129 = 0;
          __p = 0x100000000;
          v115 = 0;
          flatbuffers::FlatBufferBuilder::AddStruct<Air::Version>(v125, 4, &__p);
          v24 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(v125, 2);
          flatbuffers::FlatBufferBuilder::TrackField(v125, 6, v24);
          v25 = flatbuffers::FlatBufferBuilder::EndTable(v125, 0);
          flatbuffers::FlatBufferBuilder::Finish(v125, v25, "AIRD", 0);
          v26 = LLVMCreateMemoryBufferWithMemoryRangeCopy();
          flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(v125);
        }

        else if (*(v20 + 24))
        {
          v26 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v26 = 0;
        }

        if (*(v20 + 40))
        {
          v27 = *(v20 + 32);
          v28 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v28 = 0;
        }

        if (*(v20 + 56))
        {
          v29 = *(v20 + 48);
          v30 = LLVMCreateMemoryBufferWithMemoryRange();
        }

        else
        {
          v30 = 0;
        }

        v31 = *v20;
        if (*v20)
        {
          v32 = v112 + *(v20 + 64);
          v33 = v112 + *(v20 + 72);
        }

        v121 = 0;
        if (v22)
        {
          v34 = v23 == 0;
        }

        else
        {
          v34 = 1;
        }

        v35 = v34;
        v110 = v35;
        if (!v34)
        {
          v36 = *v112;
        }

        v37 = MTLGPUArchiverAddUnit();
        if (v37)
        {
          if (v22 && *(v20 + 8))
          {
            v38 = 0;
            LOBYTE(v39) = 1;
            v40 = v112;
            do
            {
              std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(&v122, (v40 + *(v20 + 96)));
              v39 = v39 && MTLGPUArchiverAddLinkedModulesWithReferences() != 0;
              ++v38;
              v40 += 4;
            }

            while (v38 < *(v20 + 8));
          }

          else
          {
            v39 = 1;
          }

          if (((v110 | !v39) & 1) == 0)
          {
            v108[v109] = v37;
            if (v31)
            {
              v39 = MTLGPUArchiverSetUnitHash() != 0;
            }

            ++v109;
            if (*(v20 + 88))
            {
              v41 = (v112 + *(v20 + 80));
              if (v41[5])
              {
                if (v41[7])
                {
                  v42 = v41[4];
                  LLVMCreateMemoryBufferWithMemoryRange();
                  v44 = v41[6];
                  v43 = v41[7];
                  LLVMCreateMemoryBufferWithMemoryRange();
                  if (v39)
                  {
                    LOBYTE(v39) = MTLGPUArchiverSetUnitReflection() != 0;
                  }

                  LLVMDisposeMemoryBuffer();
                  LLVMDisposeMemoryBuffer();
                }
              }
            }
          }
        }

        else
        {
          LOBYTE(v39) = 1;
        }

        if (v26)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v28)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v30)
        {
          LLVMDisposeMemoryBuffer();
        }

        if (v37)
        {
          v45 = v39;
        }

        else
        {
          v45 = 0;
        }

        if (!v45)
        {
          v46 = v121;
          std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
          logMachOError((a1 + 80), v46);
          if (SBYTE7(v125[1]) < 0)
          {
            operator delete(*&v125[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v118, &v121);
        }

        ++v19;
        v18 = v112;
      }

      while (v19 < v112[1]);
    }

    v47 = *(v18 + 25);
    v48 = v18[7];
    v121 = 0;
    if (v47 < 0x40)
    {
LABEL_127:
      free(v108);
      free(v105);
      if (*(v112 + 128) == 1)
      {
        v121 = 0;
        v78 = v112[8];
        v79 = MTLGPUArchiverSetInstallName();
        v80 = v79 != 0;
        if (!v79)
        {
          v81 = v121;
          if (v121)
          {
            std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
            logMachOError((a1 + 80), v81);
            if (SBYTE7(v125[1]) < 0)
            {
              operator delete(*&v125[0]);
            }

            std::vector<char *>::push_back[abi:ne200100](&v118, &v121);
            v80 = 0;
          }
        }
      }

      else
      {
        v80 = 1;
      }

      for (i = v123; i; i = *i)
      {
        v83 = i[6];
        MTLGPUArchiverUnitRefDestroy();
      }

      v121 = 0;
      if (!v80)
      {
        goto LABEL_189;
      }

      v84 = MTLGPUArchiverPackUnits();
      if (!v84)
      {
        v85 = v121;
        if (v121)
        {
          std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
          logMachOError((a1 + 80), v85);
          if (SBYTE7(v125[1]) < 0)
          {
            operator delete(*&v125[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v118, &v121);
        }
      }

      if (!v84)
      {
        goto LABEL_189;
      }

      v86 = *(v112 + 6);
      v87 = *(v112 + 129);
      if (!v87)
      {
        v89 = v112[6];
        sandbox_extension_consume();
      }

      v90 = MTLGPUArchiverBuildToFD();
      if (!v90)
      {
        v91 = v121;
        std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
        logMachOError((a1 + 80), v91);
        if (SBYTE7(v125[1]) < 0)
        {
          operator delete(*&v125[0]);
        }

        std::vector<char *>::push_back[abi:ne200100](&v118, &v121);
      }

      if ((v87 & 1) == 0)
      {
        sandbox_extension_release();
      }

      if (v90)
      {
        *&v125[0] = 0;
        (*(a4 + 16))(a4, 0, v125, 8, 0);
      }

      else
      {
LABEL_189:
        __p = 0;
        if (!MTLGPUArchiverDeleteWithId())
        {
          v92 = __p;
          std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
          logMachOError((a1 + 80), v92);
          if (SBYTE7(v125[1]) < 0)
          {
            operator delete(*&v125[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v118, &__p);
        }

        v93 = v118;
        if (v119 == v118)
        {
          v95 = 25;
        }

        else
        {
          if (((v119 - v118) >> 3) <= 1)
          {
            v94 = 1;
          }

          else
          {
            v94 = (v119 - v118) >> 3;
          }

          v95 = 25;
          do
          {
            v96 = *v93++;
            v95 += strlen(v96) + 1;
            --v94;
          }

          while (v94);
        }

        v97 = malloc_type_malloc(v95, 0x100004077774924uLL);
        qmemcpy(v97, "Failed to generate machO:", 25);
        v98 = v97 + 25;
        v99 = v118;
        if (v119 != v118)
        {
          v100 = 0;
          do
          {
            v101 = v99[v100];
            v102 = strlen(v101);
            memcpy(v98, v101, v102);
            v98 += v102;
            free(*(v118 + v100));
            *v98 = 10;
            ++v100;
            v99 = v118;
          }

          while (v100 < (v119 - v118) >> 3);
        }

        *v98 = 0;
        (*(a4 + 16))(a4, 2, 0, 0, v97);
        free(v97);
      }

      MTLGPUArchiverDestroy();
      goto LABEL_206;
    }

    v49 = 0;
    v50 = v112 + v48;
    v51 = v47 >> 6 << 6;
    v52 = 1;
    while (1)
    {
      v53 = *(v50 + v49);
      if (v53 > 1)
      {
        if (v53 == 2)
        {
          goto LABEL_107;
        }

        if (v53 != 3)
        {
LABEL_99:
          v121 = 0;
LABEL_123:
          v77 = v121;
          std::string::basic_string[abi:ne200100]<0>(v125, "MTLGenerateMachO");
          logMachOError((a1 + 80), v77);
          if (SBYTE7(v125[1]) < 0)
          {
            operator delete(*&v125[0]);
          }

          std::vector<char *>::push_back[abi:ne200100](&v118, &v121);
          v52 = 0;
          goto LABEL_126;
        }

        v54 = malloc_type_malloc(0x18uLL, 0x2004093837F09uLL);
        v55 = v54;
        v56 = *(v50 + v49 + 32);
        v57 = (v50 + v49 + 16);
        if ((v56 & 2) != 0)
        {
LABEL_90:
          v59 = *v57;
        }

        else
        {
          v58 = *v57;
          if (v58 != -1)
          {
            v57 = &v108[v58];
            goto LABEL_90;
          }

          v59 = 0;
        }

        v54[1] = v59;
        v60 = (v50 + v49 + 24);
        if (v56)
        {
LABEL_94:
          v62 = *v60;
        }

        else
        {
          v61 = *v60;
          if (v61 != -1)
          {
            v60 = &v108[v61];
            goto LABEL_94;
          }

          v62 = 0;
        }

        v54[2] = v62;
        v63 = (v50 + v49 + 8);
        if ((v56 & 4) == 0)
        {
          v64 = *v63;
          if (v64 == -1)
          {
            goto LABEL_111;
          }

          v63 = &v108[v64];
        }

        v65 = *v63;
LABEL_112:
        *v55 = v65;
        goto LABEL_119;
      }

      if (v53)
      {
        if (v53 != 1)
        {
          goto LABEL_99;
        }

LABEL_107:
        v55 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
        v74 = (v50 + v49 + 8);
        if ((*(v50 + v49 + 32) & 2) != 0)
        {
LABEL_110:
          v65 = *v74;
        }

        else
        {
          v75 = *v74;
          if (v75 != -1)
          {
            v74 = &v108[v75];
            goto LABEL_110;
          }

LABEL_111:
          v65 = 0;
        }

        goto LABEL_112;
      }

      v66 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
      v55 = v66;
      v67 = *(v50 + v49 + 32);
      v68 = (v50 + v49 + 8);
      if ((v67 & 2) == 0)
      {
        v69 = *v68;
        if (v69 == -1)
        {
          v70 = 0;
          goto LABEL_104;
        }

        v68 = &v108[v69];
      }

      v70 = *v68;
LABEL_104:
      *v66 = v70;
      v71 = v50 + v49;
      if (v67)
      {
        v73 = *(v71 + 16);
      }

      else
      {
        v72 = *(v71 + 16);
        if (v72 == -1)
        {
          v73 = 0;
        }

        else
        {
          v73 = v108[v72];
        }
      }

      v66[1] = v73;
LABEL_119:
      v121 = 0;
      if ((v52 & 1) == 0)
      {
        free(v55);
        goto LABEL_123;
      }

      v76 = MTLGPUArchiverAddPipeline();
      free(v55);
      if (!v76)
      {
        goto LABEL_123;
      }

      v52 = 1;
LABEL_126:
      v49 += 64;
      if (v51 == v49)
      {
        goto LABEL_127;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = v112 + v112[10];
  v13 = *(v112 + 26);
  while (1)
  {
    if (v11 >= v13 || (v14 = v11 + 32, v13 < v11 + 32) || (v15 = *(v12 + v11 + 16), v125[0] = *(v12 + v11), v125[1] = v15, v13 <= v14) || v13 - v14 <= 3 || v11 + 36 >= v13 || (v11 += 36 + *(v12 + v14), v11 > v13))
    {
      abort();
    }

    LLVMCreateMemoryBufferWithMemoryRange();
    v117 = 0;
    v16 = MTLGPUArchiverAddUnit();
    LLVMDisposeMemoryBuffer();
    if (!v16)
    {
      break;
    }

    v17 = MTLGPUArchiverUnitRefCreateWithUnitId();
    __p = v125;
    std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&v122, v125)[6] = v17;
    if (++v10 >= *(v112 + 27))
    {
      goto LABEL_22;
    }
  }

  if (!MTLGPUArchiverDeleteWithId())
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
    logMachOError((a1 + 80), 0);
    if (v116 < 0)
    {
      operator delete(__p);
    }

    free(0);
  }

  v88 = v117;
  std::string::basic_string[abi:ne200100]<0>(&__p, "MTLGenerateMachO");
  logMachOError((a1 + 80), v88);
  if (v116 < 0)
  {
    operator delete(__p);
  }

  (*(a4 + 16))(a4, 2, 0, 0, v117);
  free(v117);
  MTLGPUArchiverDestroy();
LABEL_206:
  if (v118)
  {
    v119 = v118;
    operator delete(v118);
  }

  result = std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(&v122);
  v104 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_257A4EC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (*(v36 - 185) < 0)
  {
    operator delete(*(v36 - 208));
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<llvm::Value *,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,std::allocator<llvm::Value *>>::~__hash_table(&a36);
  _Unwind_Resume(a1);
}

void MTLCompilerObject::generateBinaryArchiveID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  v21 = 0;
  *(a2 + 16);
  if (MTLGPUArchiverCreateExecutableWriter())
  {
    v7 = MTLGPUArchiverToId();
    if (v7)
    {
      v8 = v7;
      v9 = strlen(v7);
      (*(a4 + 16))(a4, 0, v8, v9 + 1, 0);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "MTLGenerateBinaryArchiveID");
      logMachOError((a1 + 80), "Failed to create binary archive ID");
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      (*(a4 + 16))(a4, 2, 0, 0, "Failed to generate Binary archive ID");
    }

    MTLGPUArchiverDestroy();
  }

  else
  {
    v10 = v21;
    std::string::basic_string[abi:ne200100]<0>(__p, "MTLGenerateBinaryArchiveID");
    logMachOError((a1 + 80), v10);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(&v18, "Failed to generate Binary archive ID: ");
    std::string::basic_string[abi:ne200100]<0>(v16, v21);
    if ((v17 & 0x80u) == 0)
    {
      v11 = v16;
    }

    else
    {
      v11 = v16[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v12 = v17;
    }

    else
    {
      v12 = v16[1];
    }

    v13 = std::string::append(&v18, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v20 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (v20 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    (*(a4 + 16))(a4, 2, 0, 0, v15);
    free(v21);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_257A4EF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::find_if[abi:ne200100]<std::__wrap_iter<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo *>,fatalErrorHandler(void *,char const*,BOOL)::$_0>(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v6 = *(a3 + 23);
    while (1)
    {
      v7 = *(v3 + 23);
      v8 = v7 >= 0 ? *(v3 + 23) : *(v3 + 8);
      if ((v6 & 0x80) != 0)
      {
        if (v8 == -1)
        {
LABEL_26:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v10 = *a3;
        v9 = a3[1] >= v8 ? v8 : a3[1];
      }

      else
      {
        if (v8 == -1)
        {
          goto LABEL_26;
        }

        v9 = v6 >= v8 ? v8 : v6;
        v10 = a3;
      }

      v11 = v7 >= 0 ? v3 : *v3;
      if (!memcmp(v10, v11, v9) && v9 == v8)
      {
        break;
      }

      v3 += 32;
      if (v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

void *std::vector<fatalErrorHandler(void *,char const*,BOOL)::AllowHashInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::AllowHashInfo>>::vector[abi:ne200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_257A4F104(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>,fatalErrorHandler(void *,char const*,BOOL)::CollectInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::vector<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo,std::allocator<fatalErrorHandler(void *,char const*,BOOL)::CollectInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *llvm::SmallVectorImpl<char>::append<char const*,void>(void *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[1];
  if (result[2] < (v5 + a3 - __src))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + v5), __src, v4);
    v5 = v3[1];
  }

  v3[1] = v5 + v4;
  return result;
}

void *llvm::SmallVectorTemplateBase<char,true>::push_back(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<llvm::Module *>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_257A4F438(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<ImageFilterFunctionInfoSPI>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<ImageFilterFunctionInfoSPI>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<ImageFilterFunctionInfoSPI>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionInfoSPI>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionInfoSPI>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ImageFilterFunctionInfoSPI>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ImageFilterFunctionInfoSPI>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ImageFilterFunctionInfoSPI>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void *std::vector<llvm::Function *>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_257A4F658(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<ImageFilterFunctionArgumentInfoSPI>::__assign_with_size[abi:ne200100]<ImageFilterFunctionArgumentInfoSPI*,ImageFilterFunctionArgumentInfoSPI*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ImageFilterFunctionArgumentInfoSPI>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<ImageFilterFunctionArgumentInfoSPI>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ImageFilterFunctionArgumentInfoSPI>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t DeserialContext::stringFromSerializedData(DeserialContext *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  v3 = v1 - v2;
  if (v1 <= v2 || (v5 = *this, v6 = strnlen((*this + v2), v1 - v2), v6 == v3))
  {
    abort();
  }

  v7 = v6;
  result = [MEMORY[0x277CCACA8] stringWithCString:v5 + v2 encoding:4];
  *(this + 2) += v7 + 1;
  return result;
}

void logMachOError(uint64_t *a1, const std::string::value_type *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, &unk_257A6F51A);
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
    logMachOError(a1);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_257A4FA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_28;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
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
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_28;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1] || v7[4] != a2[2] || v7[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,MTLOpaqueGPUArchiverUnitRef *>>>::find<MTLUINT256_t>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
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

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == *a2 && result[3] == a2[1] && result[4] == a2[2] && result[5] == a2[3])
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

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(uint64_t a1)
{
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateSlabs(a1, *(a1 + 16), (*(a1 + 16) + 8 * *(a1 + 24)));
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateCustomSizedSlabs(a1);
  v2 = *(a1 + 64);
  if (v2 != (a1 + 80))
  {
    free(v2);
  }

  v3 = *(a1 + 16);
  if (v3 != (a1 + 32))
  {
    free(v3);
  }

  return a1;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateSlabs(uint64_t result, llvm **a2, llvm **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    v6 = a2;
    do
    {
      v7 = ((v6 - *(v5 + 16)) >> 10) & 0x1FFFFFF;
      if (v7 >= 0x1E)
      {
        LOBYTE(v7) = 30;
      }

      v8 = *v4++;
      result = llvm::deallocate_buffer(v8, (4096 << v7));
      ++v6;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::DeallocateCustomSizedSlabs(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    v2 = *(result + 64);
    v3 = v2 + 16 * v1;
    do
    {
      v4 = *v2;
      v5 = *(v2 + 8);
      v2 += 16;
      result = llvm::deallocate_buffer(v4, v5);
    }

    while (v2 != v3);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 3);
      *(a4 + 32) = *(v6 + 8);
      *(a4 + 24) = v8;
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<FunctionConstantDesc>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<FunctionConstantDesc>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<FunctionConstantDesc>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<FunctionConstantDesc>::__emplace_back_slow_path<FunctionConstantDesc>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 3);
  *(v7 + 32) = *(a2 + 8);
  *(v7 + 24) = v9;
  *&v18 = 40 * v2 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(&v16);
  return v15;
}

void sub_257A501F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<FunctionConstantDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionDesc>,FunctionDesc*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v9 = *(v7 + 48);
      v10 = *(v7 + 64);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = v9;
      *(a4 + 16) = v8;
      *(a4 + 64) = v10;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v7 + 96);
      *(a4 + 112) = *(v7 + 112);
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(a4 + 120) = *(v7 + 120);
      v7 += 136;
      a4 += 136;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator<FunctionDesc>::destroy[abi:ne200100](a1, v5);
      v5 += 136;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator<FunctionDesc>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    *(a2 + 104) = v3;
    operator delete(v3);
  }

  v4 = (a2 + 72);
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<FunctionDesc>,FunctionDesc*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 136;
      std::allocator<FunctionDesc>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<FunctionDesc>::~__split_buffer(void **a1)
{
  std::__split_buffer<FunctionDesc>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<FunctionDesc>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 136;
    std::allocator<FunctionDesc>::destroy[abi:ne200100](v4, i - 136);
  }
}

void *std::vector<MTLTagType>::emplace_back<MTLTagType>(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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
  return v6 - 1;
}

__n128 std::vector<FunctionDesc>::__construct_one_at_end[abi:ne200100]<FunctionDesc const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
  *v4 = *a2;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  std::vector<FunctionConstantDesc>::__init_with_size[abi:ne200100]<FunctionConstantDesc*,FunctionConstantDesc*>(v4 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  std::vector<MTLTagType>::__init_with_size[abi:ne200100]<MTLTagType*,MTLTagType*>(v4 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  result = *(a2 + 120);
  *(v4 + 120) = result;
  *(a1 + 8) = v4 + 136;
  return result;
}

void sub_257A5064C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<FunctionDesc>::__emplace_back_slow_path<FunctionDesc const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionDesc>>(a1, v6);
  }

  v7 = 136 * v2;
  v18 = 0;
  v19 = v7;
  v20 = 136 * v2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *(v7 + 16) = v8;
  *v7 = *a2;
  v11 = 136 * v2;
  *(v11 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  std::vector<FunctionConstantDesc>::__init_with_size[abi:ne200100]<FunctionConstantDesc*,FunctionConstantDesc*>(v11 + 72, *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  std::vector<MTLTagType>::__init_with_size[abi:ne200100]<MTLTagType*,MTLTagType*>(v7 + 96, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  *(v7 + 120) = *(a2 + 120);
  *&v20 = v20 + 136;
  v12 = a1[1];
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FunctionDesc>,FunctionDesc*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<FunctionDesc>::~__split_buffer(&v18);
  return v17;
}

void sub_257A507F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v4 - 40) = v3;
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100]((v4 - 40));
  std::__split_buffer<FunctionDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<FunctionConstantDesc>::__init_with_size[abi:ne200100]<FunctionConstantDesc*,FunctionConstantDesc*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<FunctionConstantDesc>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A50880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<FunctionConstantDesc>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<FunctionConstantDesc>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FunctionConstantDesc>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*,FunctionConstantDesc*,FunctionConstantDesc*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v9 = *(v6 + 3);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v6 + 8);
      v4[1].__r_.__value_.__r.__words[0] = v9;
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v14 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FunctionConstantDesc>,FunctionConstantDesc*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::vector<MTLTagType>::__init_with_size[abi:ne200100]<MTLTagType*,MTLTagType*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A50A20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::unique_ptr<llvm::Module>::reset[abi:ne200100](a1, 0);
  }

  return a1;
}

uint64_t std::vector<CompileTimeData>::__init_with_size[abi:ne200100]<CompileTimeData*,CompileTimeData*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CompileTimeData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A50B08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CompileTimeData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CompileTimeData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 136;
        std::allocator<FunctionDesc>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MTLArgumentData>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<MTLArgumentData>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<MTLArgumentData>>::destroy[abi:ne200100]<MTLArgumentData,0>(a1, i))
  {
    i -= 288;
  }

  *(a1 + 8) = a2;
}

void *std::vector<MTLArgumentData>::__append(void *result, unint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  if (0x8E38E38E38E38E39 * ((v2 - v3) >> 5) < a2)
  {
    v4 = 0x8E38E38E38E38E39 * ((v3 - *result) >> 5);
    if (v4 + a2 <= 0xE38E38E38E38E3)
    {
      v5 = 0x8E38E38E38E38E39 * ((v2 - *result) >> 5);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0x71C71C71C71C71)
      {
        v7 = 0xE38E38E38E38E3;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(result, v7);
      }

      MTLArgumentData::MTLArgumentData((288 * v4));
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (a2)
  {
    MTLArgumentData::MTLArgumentData(v3);
  }

  result[1] = v3;
  return result;
}

void sub_257A50E58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<llvm::MemoryBuffer>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void std::vector<std::unique_ptr<llvm::MemoryBuffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<llvm::MemoryBuffer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}