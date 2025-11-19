void *std::vector<std::unique_ptr<llvm::MemoryBuffer>>::clear[abi:ne200100](void *result)
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

uint64_t llvm::SmallVector<LLVMOpaqueModule *,1u>::SmallVector(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, &a2[8 * a3]);
  return a1;
}

void sub_257A51004(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *llvm::SmallVector<char const*,1u>::SmallVector(void *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(a1, a2, *a3);
  return a1;
}

void sub_257A51064(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<void,LLVMMemoryBufferDeleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return LLVMDisposeMemoryBuffer();
  }

  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,LLVMOpaqueMemoryBuffer *>>>::__emplace_unique_key_args<std::string,std::string,LLVMOpaqueMemoryBuffer *&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

const void **std::__hash_table<std::__hash_value_type<std::string,llvm::StringRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,llvm::StringRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,llvm::StringRef>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,llvm::StringRef>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,llvm::StringRef>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_257A51584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_257A5164C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868ECDF0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_0>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::operator()(uint64_t a1, void *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  v8 = MTLCompilerObject::serializeFragmentPackingInfo(*a2, *a3, *a4, *a5, a6, a7, v7 + 40);
  v9 = *(v7 + 32);
  *(v7 + 32) = v8;
  if (v9)
  {

    free(v9);
  }
}

uint64_t std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,std::vector<PackedInput> const&,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868ECE38;
  a2[1] = v2;
  return result;
}

void std::__function::__func<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1,std::allocator<MTLCompilerObject::runFragmentLinkingPass(BinaryRequestData &,FrameworkPassesOutput &)::$_1>,void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::operator()(uint64_t a1, void *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  v8 = MTLCompilerObject::serializeFragmentLinkingInfo(*a2, *a3, *a4, *a5, *a6, a7, v7 + 40);
  v9 = *(v7 + 32);
  *(v7 + 32) = v8;
  if (v9)
  {

    free(v9);
  }
}

uint64_t std::__function::__value_func<void ()(llvm::Module *,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<VaryingInfo> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<PostVertexDumpOutput>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 96;
        std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id MTLDeserializePluginDataDictionary(const unsigned __int8 *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:*a1];
  if (*a1)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = &a1[v4];
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v5 + 2 length:*v5 encoding:4 freeWhenDone:0];
      v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v5 + *v5 + 4 length:v5[1] freeWhenDone:0];
      [v2 setObject:v7 forKey:v6];

      v4 += *v5 + v5[1] + 4;
      ++v3;
    }

    while (v3 < *a1);
  }

  return v2;
}

uint64_t Air::CloneFunctionOptions<Air::FunctionOptions>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v8 = Air::CloneShaderValidationConfiguration<Air::ShaderValidationConfiguration>(a1, (a2 + v7 + *(a2 + v7)));
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 70) = 1;
  v9 = (a2 + v5);
  if (*v9 >= 0x15u && (v10 = v9[10]) != 0)
  {
    v11 = *(a2 + v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 20, v11, 0);
  v15 = (a2 - *a2);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    v17 = *(a2 + v16);
  }

  else
  {
    v17 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v17, 0);
  v18 = (a2 - *a2);
  if (*v18 >= 0x17u && (v19 = v18[11]) != 0)
  {
    v20 = *(a2 + v19);
  }

  else
  {
    v20 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 22, v20, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  v21 = (a2 - *a2);
  v23 = *v21 >= 0x13u && (v22 = v21[9]) != 0 && *(a2 + v22) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v23, 0);
  v24 = (a2 - *a2);
  v26 = *v24 >= 0x11u && (v25 = v24[8]) != 0 && *(a2 + v25) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v26, 0);
  v27 = (a2 - *a2);
  v29 = *v27 >= 0xFu && (v28 = v27[7]) != 0 && *(a2 + v28) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v29, 0);
  v30 = (a2 - *a2);
  v32 = *v30 >= 0xDu && (v31 = v30[6]) != 0 && *(a2 + v31) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v32, 0);
  v33 = (a2 - *a2);
  v35 = *v33 >= 0xBu && (v34 = v33[5]) != 0 && *(a2 + v34) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v35, 0);
  v36 = (a2 - *a2);
  if (*v36 >= 5u && (v37 = v36[2]) != 0)
  {
    v38 = *(a2 + v37);
    if (v38 >= 3)
    {
      abort();
    }
  }

  else
  {
    v38 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v38, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Air::CloneLinkedFunctions<Air::LinkedFunctions>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 9u && (v7 = v6[4]) != 0)
  {
    v17 = (a2 + v7 + *(a2 + v7));
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air13FunctionGroupEEEZNS3_20CloneLinkedFunctionsINS3_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 7u && *(a2 + v5 + 6))
  {
    v17 = (a2 + *(a2 + v5 + 6) + *(a2 + *(a2 + v5 + 6)));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (a2 + v5);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v17 = (a2 + v11 + *(a2 + v11));
    v12 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v17, &v17, a1);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 70) = 1;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v9);
  }

  if (v12)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v12);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneVertexFunctionDescriptorINS3_24VertexFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39VertexFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A52068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneVertexDescriptor<Air::VertexDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v16 = (a2 + v7 + *(a2 + v7));
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a2 + v5);
  if (*v9 >= 5u && (v10 = v9[2]) != 0)
  {
    v16 = (a2 + v10 + *(a2 + v10));
    v11 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v11)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v11);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t Air::CloneShaderValidationConfiguration<Air::ShaderValidationConfiguration>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  v6 = *v4 >= 0xDu && (v5 = v4[6]) != 0 && *(a2 + v5) != 0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v6, 0);
  v10 = (a2 - *a2);
  v12 = *v10 >= 0xBu && (v11 = v10[5]) != 0 && *(a2 + v11) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v12, 0);
  v13 = (a2 - *a2);
  v15 = *v13 >= 9u && (v14 = v13[4]) != 0 && *(a2 + v14) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v15, 0);
  v16 = (a2 - *a2);
  v18 = *v16 >= 7u && (v17 = v16[3]) != 0 && *(a2 + v17) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v18, 0);
  v19 = (a2 - *a2);
  v21 = *v19 >= 5u && (v20 = v19[2]) != 0 && *(a2 + v20) != 0;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v21, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(uint64_t a1, uint64_t a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air13FunctionGroupEEEZNS3_20CloneLinkedFunctionsINS3_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::FunctionGroup>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneFunctionGroup<Air::FunctionGroup>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionGroup>,std::allocator<flatbuffers::Offset<Air::FunctionGroup>>>(std::vector<flatbuffers::Offset<Air::FunctionGroup>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A524E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_257A525D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air20CloneLinkedFunctionsINS5_15LinkedFunctionsEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_30LinkedFunctionsCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_257A526B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<Air::FunctionGroup>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_257A52734(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneFunctionGroup<Air::FunctionGroup>(uint64_t a1, const char *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = &a2[-v4];
  if (*v6 >= 7u && (v7 = *(v6 + 3)) != 0)
  {
    v16 = &a2[v7 + *&a2[v7]];
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air18CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v16, &v16, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = &a2[v5];
  if (*v9 >= 5u && (v10 = *(v9 + 2)) != 0)
  {
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, &a2[v10 + 4 + *&a2[v10]], *&a2[v10 + *&a2[v10]]);
  }

  else
  {
    String = 0;
  }

  *(a1 + 70) = 1;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (String)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  }

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v14 - v13 + v12);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetINS_6StringEEEZN3Air18CloneFunctionGroupINS5_13FunctionGroupEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS5_28FunctionGroupCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, flatbuffers::FlatBufferBuilder *a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4));
      String = flatbuffers::FlatBufferBuilder::CreateString(a4, v9 + 4, *v9);
      v11 = __p;
      *(__p + v8) = String;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = __p;
  }

  if (v16 == v11)
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v12 = v11;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, (v16 - v11) >> 2);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_257A52934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<flatbuffers::String>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_257A529B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      flatbuffers::FlatBufferBuilder::PushElement<flatbuffers::String>(a1, *(v7 + 4 * v8));
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 8) - *(a1 + 12) + *(a1 + 10) - a2 + 4;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v4);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateString(flatbuffers::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  flatbuffers::vector_downward::fill(this, 1uLL);
  flatbuffers::vector_downward::push(this, a2, a3);
  flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

void *std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_257A52B94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v3 = *(a1 + 40);
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
    if (v6 >= 3)
    {
      abort();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v6, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v7 + v3);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A52D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_21CloneVertexDescriptorINS3_16VertexDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_31VertexDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A52DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_257A52E68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 9u && (v5 = v4[4]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 8, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 7u && (v11 = v10[3]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 1;
  }

  v13 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v12, 1);
  v14 = (a2 - *a2);
  if (*v14 >= 5u)
  {
    v15 = v14[2];
    if (v15)
    {
      v13 = *(a2 + v15);
      if (v13 >= 9)
      {
        abort();
      }
    }

    else
    {
      v13 = 1;
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v13, 1);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

void *std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_257A52FF8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 7u && (v5 = v4[3]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 6, v6, 0);
  v10 = (a2 - *a2);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v12, 0);
  v13 = (a2 - *a2);
  if (*v13 >= 5u && (v14 = v13[2]) != 0)
  {
    v15 = *(a2 + v14);
    if (v15 >= 0x38 || ((0xFFE7FFFFFFFFFFuLL >> v15) & 1) == 0)
    {
      abort();
    }

    v16 = byte_257A6DED0[v15];
  }

  else
  {
    v16 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 4, v16, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A53208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air33FragmentColorAttachmentDescriptorEEEZNS3_31CloneFragmentFunctionDescriptorINS3_26FragmentFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41FragmentFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneFragmentColorAttachmentDescriptor<Air::FragmentColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A532EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::ClonePixelFormat<Air::PixelFormat>(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 53:
    case 54:
    case 55:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
    case 84:
    case 85:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 103:
    case 104:
    case 105:
    case 110:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 123:
    case 124:
    case 125:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
    case 150:
    case 151:
    case 152:
    case 153:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 221:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 227:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 240:
    case 241:
    case 250:
    case 252:
    case 253:
    case 255:
    case 260:
    case 261:
    case 262:
    case 263:
    case 300:
    case 301:
    case 302:
    case 303:
    case 304:
    case 313:
    case 314:
    case 315:
    case 323:
    case 324:
    case 325:
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
    case 505:
    case 506:
    case 507:
    case 508:
    case 509:
    case 510:
    case 520:
    case 521:
    case 522:
    case 523:
    case 524:
    case 525:
    case 526:
    case 527:
    case 528:
    case 529:
    case 530:
    case 540:
    case 541:
    case 542:
    case 543:
    case 544:
    case 545:
    case 546:
    case 547:
    case 548:
    case 550:
    case 551:
    case 552:
    case 553:
    case 554:
    case 555:
    case 556:
    case 560:
    case 562:
    case 563:
    case 564:
    case 565:
    case 566:
    case 567:
    case 568:
    case 569:
    case 570:
    case 571:
    case 572:
    case 573:
    case 574:
    case 575:
    case 576:
    case 577:
    case 578:
    case 579:
    case 580:
    case 581:
    case 582:
    case 583:
    case 584:
    case 585:
    case 586:
    case 587:
    case 588:
    case 589:
    case 590:
    case 591:
    case 592:
    case 593:
    case 594:
    case 595:
    case 596:
    case 597:
    case 598:
    case 599:
    case 600:
    case 601:
    case 602:
    case 603:
    case 604:
    case 605:
    case 606:
    case 607:
    case 608:
    case 609:
    case 610:
    case 611:
    case 612:
    case 613:
    case 615:
    case 616:
    case 617:
    case 618:
    case 619:
    case 620:
    case 621:
    case 622:
    case 623:
    case 624:
    case 625:
    case 626:
    case 627:
    case 628:
    case 629:
    case 630:
    case 631:
    case 632:
    case 633:
    case 634:
    case 635:
    case 636:
    case 637:
    case 638:
    case 639:
    case 640:
    case 641:
    case 642:
    case 643:
    case 644:
    case 645:
    case 646:
    case 647:
    case 648:
    case 649:
    case 650:
    case 651:
    case 652:
      return result;
    default:
      abort();
  }
}

void *std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_257A533A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneFragmentColorAttachmentDescriptor<Air::FragmentColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = Air::ClonePixelFormat<Air::PixelFormat>(v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);
  v11 = (a2 - *a2);
  if (*v11 >= 0x15u && (v12 = v11[10]) != 0)
  {
    v13 = *(a2 + v12);
    if (v13 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v13, 1);
  v15 = (a2 - *a2);
  if (*v15 >= 0x13u)
  {
    v16 = v15[9];
    if (v16)
    {
      v14 = *(a2 + v16);
      if (v14 >= 0x14)
      {
LABEL_36:
        abort();
      }
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v14, 1);
  v17 = (a2 - *a2);
  if (*v17 >= 0x11u && (v18 = v17[8]) != 0)
  {
    v19 = *(a2 + v18);
    if (v19 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v19 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v19, 0);
  v20 = (a2 - *a2);
  if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
  {
    v22 = *(a2 + v21);
    if (v22 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v22 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v22, 0);
  v23 = (a2 - *a2);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = *(a2 + v24);
    if (v25 >= 6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v25 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v25, 0);
  v26 = (a2 - *a2);
  if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
  {
    v28 = *(a2 + v27);
    if (v28 >= 6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v28 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v28, 0);
  v29 = (a2 - *a2);
  if (*v29 >= 9u && (v30 = v29[4]) != 0)
  {
    v31 = *(a2 + v30);
    if (v31 >= 3)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v31 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v31, 0);
  v32 = (a2 - *a2);
  if (*v32 >= 7u && (v33 = v32[3]) != 0)
  {
    v34 = *(a2 + v33);
  }

  else
  {
    v34 = 15;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v34, 15);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(void *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(uint64_t a1, __int16 a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    flatbuffers::vector_downward::reallocate(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 2) = a2;
  v5 = v4 - 2;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void *flatbuffers::FlatBufferBuilder::AddElement<float>(void *result, uint64_t a2, float a3, float a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<float>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<float>(uint64_t a1, float a2)
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

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_257A5389C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_30CloneComputeFunctionDescriptorINS3_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A5397C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneStageInputOutputDescriptor<Air::StageInputOutputDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v20 = (a2 + v7 + *(a2 + v7));
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v20, &v20, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 5u && *(a2 + v5 + 4))
  {
    v20 = (a2 + *(a2 + v5 + 4) + *(a2 + *(a2 + v5 + 4)));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v20, &v20, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 70) = 1;
  v10 = (a2 + v5);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v12, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v9);
  }

  v16 = (a2 - *a2);
  if (*v16 >= 0xBu && (v17 = v16[5]) != 0)
  {
    v18 = *(a2 + v17);
    if (v18 >= 2)
    {
      abort();
    }
  }

  else
  {
    v18 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v18, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_257A53BA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 8 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 8 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 8uLL);
  flatbuffers::vector_downward::push(a1, a2, v6);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A53D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A53DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_257A53EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A53F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air29TileColorAttachmentDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneTileColorAttachmentDescriptor<Air::TileColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A54070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>::vector[abi:ne200100](void *result, unint64_t a2)
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

void sub_257A540EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneTileColorAttachmentDescriptor<Air::TileColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = (a2 - *a2);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = *(a2 + v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 - v3;
  v10 = Air::ClonePixelFormat<Air::PixelFormat>(v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 + v4);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_257A54238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneObjectFunctionDescriptorINS3_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A54318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_257A543D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneMeshFunctionDescriptorINS3_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A544B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,CompilerOutputBlock>(void *a1, char *a2)
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

uint64_t std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *OUTLINED_FUNCTION_0_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

void OUTLINED_FUNCTION_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  if (*(a3 + 23) < 0)
  {
    v4 = *a3;
  }
}

void __cxx_global_array_dtor()
{
  v0 = &byte_28153FB5F;
  v1 = -48;
  v2 = &byte_28153FB5F;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void __cxx_global_array_dtor_147()
{
  v0 = &byte_28153FB2F;
  v1 = -48;
  v2 = &byte_28153FB2F;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void MTLArgumentRewritePass::~MTLArgumentRewritePass(MTLArgumentRewritePass *this)
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

BOOL MTLArgumentRewritePass::runOnModule(MTLArgumentRewritePass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  isLibraryModule = MTLBoundsCheck::isLibraryModule(a2, v4);
  if (!isLibraryModule)
  {
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
        v9 = *(v8 + 3);
        v10 = *(v9 + 12);
        if (v10 != 1)
        {
          v11 = *(v9 + 16) + 8;
          v12 = 8 * v10 - 8;
          while (1)
          {
            v13 = *(*v11 + 8);
            if (v13 == 15)
            {
              v14 = *(*(this + 4) + 23);
              v15 = (v13 & 0xFFFFFF00) == 768;
              if (MTLBoundsCheck::checkAddressSpace((v13 >> 8)) || (v14 & v15 & 1) != 0)
              {
                break;
              }
            }

            v11 += 8;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_20;
            }
          }

          if ((*(*(this + 4) + 20) & 2) != 0)
          {
            if (llvm::Function::hasFnAttribute())
            {
              llvm::Function::removeFnAttr();
            }

            if (llvm::Function::hasFnAttribute())
            {
              llvm::Function::removeFnAttr();
            }
          }
        }
      }

LABEL_20:
      ;
    }

    MTLArgumentRewritePass::stripDeadArguments(this);
    EntryFunction = MetalModulePass::getEntryFunction(this);
    MTLArgumentRewritePass::instrumentMainFunction(this, EntryFunction, *(this + 16));
  }

  return !isLibraryModule;
}

void MTLArgumentRewritePass::stripDeadArguments(MTLArgumentRewritePass *this)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v28 = *(this + 5);
  v29 = v31;
  v30 = 0;
  EntryFunction = MetalModulePass::getEntryFunction(this);
  v3 = *(EntryFunction + 24);
  v27[1] = *(EntryFunction + 112);
  v44[0] = v45;
  v44[1] = 0x400000000;
  v41 = v43;
  v42 = 0x400000000;
  v39[0] = v40;
  v39[1] = 0x400000000;
  v36 = v38;
  v37 = 0x400000000;
  LODWORD(v27[0]) = 0;
  if (*(v3 + 12) != 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
      v6 = *(v5 - 8 * *(v5 + 8) + 8 * v4);
      Impl = v6;
      v31[0] = *(*(v3 + 16) + 8 * (v4 + 1));
      if (*(EntryFunction + 18))
      {
        llvm::Function::BuildLazyArguments(EntryFunction);
        v4 = v27[0];
        v6 = Impl;
      }

      v7 = *(EntryFunction + 88);
      String = llvm::MDString::getString(*&v6[-2 * v6[2] + 2]);
      v10 = v9;
      hasNUsesOrMore = llvm::Value::hasNUsesOrMore((v7 + 40 * v4));
      v13 = v10 != 14 || *String != 0x67616D692E726961 || *(String + 6) != 0x6B636F6C62656761;
      if ((v13 & (hasNUsesOrMore ^ 1) & 1) == 0)
      {
        MTLMDBuilder::getMetadata<unsigned int>(&v28);
        llvm::MDNode::replaceOperandWith();
        v14 = *(Impl + *(Impl + 2) - 1 - *(Impl + 2));
        if (!*v14)
        {
          v15 = llvm::MDString::getString(v14);
          if (v16 == 14 && *v15 == 0x5F6772612E726961 && *(v15 + 6) == 0x646573756E755F67)
          {
            llvm::SmallVector<llvm::Metadata *,8u>::SmallVector<llvm::MDOperand const*,void>(&v33, Impl - 8 * *(Impl + 2), Impl - 8);
            v18 = *(this + 5);
            Impl = llvm::MDTuple::getImpl();
            if (v33 != &v34)
            {
              free(v33);
            }
          }
        }

        llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(v39, v27);
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v44, &Impl);
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v41, v31);
      }

      v4 = LODWORD(v27[0]) + 1;
      LODWORD(v27[0]) = v4;
      v19 = *(v3 + 12) - 1;
    }

    while (v4 < v19);
    if (v42 != v19)
    {
      v20 = **(v3 + 16);
      v21 = llvm::FunctionType::get();
      v22 = *(EntryFunction + 32);
      v35 = 257;
      v23 = llvm::Function::Create(v21, v22 & 0xF, &v33, *(this + 6));
      v24 = *(this + 5);
      v35 = 257;
      llvm::BasicBlock::Create(v24, &v33, v23, 0, v25);
    }
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v39[0] != v40)
  {
    free(v39[0]);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v44[0] != v45)
  {
    free(v44[0]);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_257A552A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  if (a26 != v59)
  {
    free(a26);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a36);
  if (a59 != a11)
  {
    free(a59);
  }

  v62 = *(v60 - 224);
  if (v62 != a12)
  {
    free(v62);
  }

  v63 = *(v60 - 192);
  if (v63 != a13)
  {
    free(v63);
  }

  v64 = *(v60 - 144);
  if (v64 != a14)
  {
    free(v64);
  }

  if (a19 != a15)
  {
    free(a19);
  }

  _Unwind_Resume(a1);
}

void MTLArgumentRewritePass::instrumentMainFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72[8] = *MEMORY[0x277D85DE8];
  v5 = *(a3 - 8 * *(a3 + 8) + 16);
  v65[0] = &v5[-2 * v5[2]];
  v65[1] = v5;
  llvm::SmallVector<llvm::Metadata *,8u>::SmallVector<llvm::MDOperand const*>(&v70, v65);
  v62 = 0;
  v6 = *(a2 + 80);
  if (v6)
  {
    v7 = (v6 - 24);
  }

  else
  {
    v7 = 0;
  }

  FirstNonPHIOrDbg = llvm::BasicBlock::getFirstNonPHIOrDbg(v7);
  for (i = *(FirstNonPHIOrDbg + 16); i == 59; i = *(v13 + 16))
  {
    v10 = *(FirstNonPHIOrDbg + 32);
    v11 = *(FirstNonPHIOrDbg + 40) + 40;
    FirstNonPHIOrDbg = v10 - 24;
    if (v10)
    {
      v12 = v10 == v11;
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
      v13 = v10 - 24;
    }
  }

  v67 = 257;
  llvm::SplitBlock();
  v62 = v7;
  v65[0] = "instrumentBlock";
  v67 = 259;
  llvm::Value::setName();
  MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *&>(v65, &v62);
  FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v62);
  llvm::IRBuilderBase::SetInsertPoint(v65, FirstNonPHI);
  if (*(*(a1 + 32) + 4) != 1)
  {
    v16 = 0;
    goto LABEL_62;
  }

  v16 = v71;
  if (v71)
  {
    v50 = 0;
    v17 = 8 * v71;
    v18 = v70;
    while (1)
    {
      v19 = *v18;
      v20 = (*v18 - 8 * *(*v18 + 8));
      v21 = *(*v20 + 128);
      v22 = (v21 + 24);
      if (*(v21 + 32) >= 0x41u)
      {
        v22 = *v22;
      }

      v23 = v20[1];
      v24 = *v22;
      if (*(a2 + 18))
      {
        llvm::Function::BuildLazyArguments(a2);
      }

      v25 = *(a2 + 88);
      String = llvm::MDString::getString(v23);
      v28 = v27;
      v29 = (v25 + 40 * v24);
      hasNUsesOrMore = llvm::Value::hasNUsesOrMore(v29);
      if ((hasNUsesOrMore & 1) == 0)
      {
        goto LABEL_59;
      }

      switch(v28)
      {
        case 19:
          hasNUsesOrMore = memcmp(String, "air.indirect_buffer", 0x13uLL);
          if (hasNUsesOrMore)
          {
            goto LABEL_49;
          }

          v43 = *v29;
          if (*(*v29 + 8) == 15)
          {
            v56 = 0;
            ParamDereferenceableBytes = 0;
            LOBYTE(v58) = 0;
            v59 = 0;
            v60 = 256;
            v61 = 1;
            MetalModulePass::cacheStaticBoundsInfo(a1, v29, &v56);
            v44 = MTLArgumentRewritePass::computeArgumentCount(a1, **(v43 + 16));
            hasNUsesOrMore = MTLBoundsCheck::getLocationIndex(v19);
            if ((*(*(a1 + 32) + 22) & 0x80) == 0)
            {
              v45 = hasNUsesOrMore;
              v63.n128_u64[0] = "air.read_write";
              v63.n128_u64[1] = 14;
              v64 = 1;
              MTLBoundsCheck::getArgAccessType(v19, &v63, &v51);
              v63 = v51;
              v46 = 2 * v45;
              if (llvm::StringRef::find() != -1)
              {
                *(*(*(a1 + 64) + 64) + 640) |= 1 << v46;
              }

              hasNUsesOrMore = llvm::StringRef::find();
              if (hasNUsesOrMore != -1)
              {
                *(*(*(a1 + 64) + 64) + 640) |= 2 << v46;
              }
            }

            v41 = v44 + v50;
            goto LABEL_58;
          }

          break;
        case 11:
          hasNUsesOrMore = memcmp(String, "air.texture", 0xBuLL);
          if (hasNUsesOrMore)
          {
            if (*String != 0x706D61732E726961 || *(String + 3) != 0x72656C706D61732ELL)
            {
LABEL_49:
              if (*(*v29 + 8) == 15)
              {
                v51.n128_u32[2] = 0;
                v51.n128_u8[12] = 0;
                v52 = 0;
                v54 = 0;
                v53 = 1;
                v51.n128_u64[0] = v29;
                MetalModulePass::cacheStaticBoundsInfo(a1, v29, &v51);
              }
            }
          }

          break;
        case 10:
          if (*String != 0x666675622E726961 || *(String + 4) != 29285)
          {
            goto LABEL_49;
          }

          hasNUsesOrMore = MTLBoundsCheck::checkAddressSpace(v29);
          if (hasNUsesOrMore)
          {
            LocationIndex = MTLBoundsCheck::getLocationIndex(v19);
            v56 = 0;
            v61 = 0;
            v60 = 256;
            v59 = 1;
            ParamDereferenceableBytes = 0;
            v58 = LocationIndex;
            if ((*(*(a1 + 32) + 20) & 0x40) != 0 && llvm::Function::hasParamAttribute())
            {
              ParamDereferenceableBytes = llvm::AttributeList::getParamDereferenceableBytes((a2 + 112));
            }

            v32 = LocationIndex;
            if ((*(*(a1 + 32) + 20) & 4) != 0)
            {
              v33 = *(a1 + 72);
              v34 = llvm::ConstantInt::get();
              v35 = *(a1 + 72);
              v55 = 257;
              Cast = llvm::IRBuilderBase::CreateCast(v65, 47, v29, v35, &v51);
              v55 = 257;
              v37 = llvm::IRBuilderBase::CreateOr(v65, Cast, v34, &v51);
              v38 = *v29;
              v55 = 257;
              v39 = llvm::IRBuilderBase::CreateCast(v65, 48, v37, v38, &v51);
              llvm::Value::replaceUsesOutsideBlock();
              v29 = v39;
            }

            v56 = v29;
            MetalModulePass::cacheStaticBoundsInfo(a1, v29, &v56);
            if ((*(*(a1 + 32) + 22) & 0x80) == 0)
            {
              v63.n128_u64[0] = "air.read_write";
              v63.n128_u64[1] = 14;
              v64 = 1;
              MTLBoundsCheck::getArgAccessType(v19, &v63, &v51);
              v63 = v51;
              v40 = 2 * v32;
              if (llvm::StringRef::find() != -1)
              {
                *(*(*(a1 + 64) + 64) + 640) |= 1 << v40;
              }

              hasNUsesOrMore = llvm::StringRef::find();
              if (hasNUsesOrMore != -1)
              {
                *(*(*(a1 + 64) + 64) + 640) |= 2 << v40;
              }
            }

            v41 = v50 + 1;
LABEL_58:
            v50 = v41;
          }

          break;
        default:
          goto LABEL_49;
      }

LABEL_59:
      ++v18;
      v17 -= 8;
      if (!v17)
      {
        v16 = v50 > 0x5B;
        break;
      }
    }
  }

LABEL_62:
  if (!*(a1 + 120) && *(**(*(a2 + 24) + 16) + 8) != 7)
  {
    *(*(*(a1 + 64) + 64) + 640) &= 0x5555555555555555uLL;
  }

  if ((*(*(a1 + 32) + 22) & 1) == 0 && v16)
  {
    *(*(*(a1 + 64) + 64) + 648) |= 1u;
    *(*(*(a1 + 64) + 64) + 651) = 1;
    v47 = llvm::dbgs(hasNUsesOrMore);
    llvm::raw_ostream::operator<<(v47, "Instrumentation failure: argumentLimits\n", 0x28uLL);
  }

  v48 = *(a1 + 40);
  llvm::MDTuple::getImpl();
  llvm::MDNode::replaceOperandWith();
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v69);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v68);
  if (v65[0] != &v66)
  {
    free(v65[0]);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void sub_257A55AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  v18 = *(v16 - 176);
  if (v18 != (v16 - 160))
  {
    free(v18);
  }

  _Unwind_Resume(a1);
}

void *llvm::SmallVector<llvm::Metadata *,8u>::SmallVector<llvm::MDOperand const*,void>(void *a1, char *a2, char *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::MDOperand const*,void>(a1, a2, a3);
  return a1;
}

void sub_257A55B6C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::MDOperand const*,void>(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 3) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
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

uint64_t MTLArgumentRewritePass::computeArgumentCount(MTLArgumentRewritePass *this, llvm::Type *a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (a2 && v4 == 16)
  {
    v5 = 1;
LABEL_13:
    if (!isSpecialStructType(v2))
    {
      v8 = *(v2 + 3);
      if (v8)
      {
        v9 = 0;
        v10 = *(v2 + 2);
        v11 = 8 * v8;
        do
        {
          v12 = *v10++;
          v9 += MTLArgumentRewritePass::computeArgumentCount(this, v12);
          v11 -= 8;
        }

        while (v11);
        return (v9 * v5);
      }
    }

LABEL_22:
    v9 = 0;
    return (v9 * v5);
  }

  v5 = 1;
  v6 = *(a2 + 8);
  while (v2 && v6 == 17)
  {
    if (v4 == 17)
    {
      v7 = 1;
      do
      {
        v7 *= *(v2 + 8);
        v2 = *(v2 + 3);
        v4 = *(v2 + 8);
      }

      while (v4 == 17);
    }

    else
    {
      v7 = 1;
    }

    v5 *= v7;
    v6 = v4;
    if (v4 == 16)
    {
      goto LABEL_13;
    }
  }

  v9 = 0;
  if (v2 && v6 == 15)
  {
    v13 = **(v2 + 2);
    if (*(v13 + 8) != 16 || !isSpecialStructType(v13))
    {
      v9 = 1;
      return (v9 * v5);
    }

    goto LABEL_22;
  }

  return (v9 * v5);
}

void *llvm::SmallVector<llvm::Metadata *,8u>::SmallVector<llvm::MDOperand const*>(void *a1, char **a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::MDOperand const*,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_257A55D6C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLGlobalTLSArgumentPass::~MTLGlobalTLSArgumentPass(MTLGlobalTLSArgumentPass *this)
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

uint64_t MTLGlobalTLSArgumentPass::runOnModule(llvm::BasicBlock **this, llvm::Module *a2)
{
  v31[20] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  if (!MTLBoundsCheck::isLibraryModule(a2, v4))
  {
    v29 = v31;
    v30 = 0x400000000;
    v5 = *(a2 + 2);
    if (v5 != (a2 + 8))
    {
      do
      {
        if (v5)
        {
          v6 = v5 - 7;
        }

        else
        {
          v6 = 0;
        }

        if ((v6[33] & 0x1C) != 0 && *(*v6 + 8) == 15)
        {
          Metadata = llvm::Value::getMetadata();
          if (Metadata)
          {
            llvm::Value::setMetadata();
            LOBYTE(String) = 0;
            LOBYTE(v27) = 0;
            v24[0] = v6;
            v8 = Metadata - 8 * *(Metadata + 8);
            v24[1] = *v8;
            v9 = *(v8 + 8);
            if (v9)
            {
              String = llvm::MDString::getString(v9);
              v26 = v10;
              if ((v27 & 1) == 0)
              {
                LOBYTE(v27) = 1;
              }
            }

            llvm::SmallVectorImpl<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo>::emplace_back<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo&>(&v29, v24);
          }
        }

        v5 = v5[1];
      }

      while (v5 != (a2 + 8));
      if (v30)
      {
        EntryFunction = MetalModulePass::getEntryFunction(this);
        v12 = EntryFunction;
        if (EntryFunction)
        {
          v13 = *(EntryFunction + 24);
          llvm::SmallVector<llvm::Type *,8u>::SmallVector<llvm::Type * const*,void>(&v28, (*(v13 + 16) + 8), (*(v13 + 16) + 8 * *(v13 + 12)));
          if (v30)
          {
            v14 = v29;
            v15 = 40 * v30;
            do
            {
              v24[0] = *(*v14 + 24);
              if (*(v24[0] + 8) != 15)
              {
                v24[0] = llvm::PointerType::get();
              }

              llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v28, v24);
              v14 += 40;
              v15 -= 40;
            }

            while (v15);
          }

          v16 = **(v13 + 16);
          v17 = llvm::FunctionType::get();
          v18 = *(v12 + 32);
          v27 = 257;
          v19 = llvm::Function::Create(v17, v18 & 0xF, v24, *(v12 + 40));
          *(v19 + 14) = *(v12 + 112);
          llvm::Value::takeName();
          llvm::Function::addFnAttr();
          *(v12 + 32) = *(v12 + 32) & 0xFFFFBFC0 | 0x4007;
          v20 = this[5];
          v27 = 257;
          llvm::BasicBlock::Create(v20, v24, v19, 0, v21);
        }
      }
    }

    if (v29 != v31)
    {
      free(v29);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_257A5671C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (STACK[0x258] != a10)
  {
    free(STACK[0x258]);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&STACK[0x2A8]);
  if (STACK[0x330] != &STACK[0x340])
  {
    free(STACK[0x330]);
  }

  if (STACK[0x380] != a11)
  {
    free(STACK[0x380]);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::SmallVectorImpl<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo>::emplace_back<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo&>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,true>::growAndEmplaceBack<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo&>(a1, a2);
  }

  v3 = *a1 + 40 * v2;
  v4 = *a2;
  v5 = *(a2 + 16);
  *(v3 + 32) = *(a2 + 32);
  *v3 = v4;
  *(v3 + 16) = v5;
  LODWORD(v3) = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 40 * v3 - 40;
}

uint64_t llvm::SmallVectorTemplateBase<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,true>::growAndEmplaceBack<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v3;
  v10 = *(a2 + 32);
  v4 = llvm::SmallVectorTemplateCommon<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,true>>(a1, v9, 1);
  v5 = *a1 + 40 * *(a1 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 16);
  *v5 = *v4;
  *(v5 + 16) = v7;
  *(v5 + 32) = v6;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 40 * v5 - 40;
}

unint64_t llvm::SmallVectorTemplateCommon<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 40 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = a2 - *a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

uint64_t llvm::SmallVector<llvm::Type *,8u>::SmallVector<llvm::Type * const*,void>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, a3);
  return a1;
}

void sub_257A569D0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void NullTextureCheckPass::~NullTextureCheckPass(NullTextureCheckPass *this)
{
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

BOOL NullTextureCheckPass::runOnModule(NullTextureCheckPass *this, llvm::Module *a2)
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
    llvm::InstVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v23, *(a2 + 4), a2 + 24);
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

        CheckedTextureFunction = NullTextureCheckPass::getCheckedTextureFunction(this, v11);
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

void sub_257A56CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a25 != v25)
  {
    free(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NullTextureCheckPass::getCheckedTextureFunction(NullTextureCheckPass *this, llvm::Function *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 5);
  Name = llvm::Value::getName(a2);
  v24 = v5;
  v6 = *(a2 + 3);
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "mtl.checked.");
  v7 = std::string::append[abi:ne200100]<unsigned char const*,0>(&__p, (Name + 4), (Name + v5));
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v7->__r_.__value_.__l.__data_, v7->__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v8;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Function = llvm::Module::getFunction();
  if (!Function)
  {
    llvm::Type::getInt8Ty(*v4, v9);
    Int32Ty = llvm::Type::getInt32Ty(*v4, v11);
    llvm::Type::getInt64Ty(*v4, v12);
    v20 = 0;
    llvm::SmallVector<llvm::Type *,8u>::SmallVector<llvm::Type * const*,void>(&__p, (*(v6 + 16) + 8), (*(v6 + 16) + 8 * *(v6 + 12)));
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__p, &Int32Ty);
    v13 = **(v6 + 16);
    v20 = llvm::FunctionType::get();
    if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
    {
      free(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = *(a2 + 14);
    v14 = getOrInsertFunction<std::string const&,llvm::FunctionType *&,llvm::AttributeList>(v4, &v22, &v20, &__p);
    llvm::Function::addFnAttr();
    *(v14 + 8) = *(v14 + 8) & 0xFFFFBFC0 | 0x4007;
    if ((*(*(*(this + 4) + 72) + 20) & 2) != 0 && ((llvm::Function::hasFnAttribute() & 1) != 0 || llvm::Function::hasFnAttribute()))
    {
      llvm::Function::removeFnAttr();
    }

    v16 = *(**(v20 + 16) + 8);
    v17 = *v4;
    __p.__r_.__value_.__r.__words[0] = "checkBlock";
    v26 = 259;
    llvm::BasicBlock::Create(v17, &__p, v14, 0, v15);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v18 = *MEMORY[0x277D85DE8];
  return Function;
}

void sub_257A57794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a45 != a21)
  {
    free(a45);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a55);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::InstVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(uint64_t result, uint64_t a2, uint64_t a3)
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

          result = llvm::InstVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit(v4, v10);
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

uint64_t llvm::InstVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit(uint64_t result, uint64_t a2)
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
        result = NullTextureCheckPass::TextureOpVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor>::visitCallInst(v4, v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t NullTextureCheckPass::TextureOpVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor>::visitCallInst(uint64_t a1, llvm::Instruction *a2)
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

    return NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor::visitTextureOp(a1, v6, v5, a2);
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

uint64_t NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor::visitTextureOp(uint64_t a1, int a2, int a3, llvm::Instruction *this)
{
  if (!*(a1 + 8) || !*(this + 6) && (*(this + 23) & 0x20) == 0 || (result = llvm::Instruction::getMetadataImpl(this)) == 0)
  {
    v7 = *a1;
    v8 = this;
    return llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v7, &v8);
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

void sub_257A581DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void StitchingReflection::initializeMetadataTypeMapMap(StitchingReflection *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v363.__r_.__value_.__l.__size_ = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__s, "air.void_type");
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = __s;
  }

  v81 = xmmword_257A6DF10;
  v82 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v78, "air.BOOL_type");
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v83, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v83 = v78;
  }

  v84 = xmmword_257A6DF20;
  v85 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v77, "air.char_type");
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v86 = v77;
  }

  v87 = xmmword_257A6DF30;
  v88 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v76, "air.uchar_type");
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = v76;
  }

  v90 = xmmword_257A6DF40;
  v91 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v75, "air.short_type");
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v92 = v75;
  }

  v93 = xmmword_257A6DF50;
  v94 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v74, "air.ushort_type");
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v95, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v95 = v74;
  }

  v96 = 41;
  v97 = 0;
  v98 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v73, "air.int_type");
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v99, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v99 = v73;
  }

  v100 = 29;
  v101 = 0;
  v102 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v72, "air.uint_type");
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v103, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v103 = v72;
  }

  v104 = 33;
  v105 = 0;
  v106 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v71, "air.long_type");
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v71;
  }

  v108 = 81;
  v109 = 0;
  v110 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v70, "air.ulong_type");
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v111 = v70;
  }

  v112 = 85;
  v113 = 0;
  v114 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v69, "air.half_type");
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v115 = v69;
  }

  v116 = 16;
  v117 = 0;
  v118 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v68, "air.float_type");
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v119, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v119 = v68;
  }

  v120 = 3;
  v121 = 0;
  v122 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v67, "air.double_type");
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v123 = v67;
  }

  v124 = 89;
  v125 = 0;
  v126 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v66, "air.bfloat_type");
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v127, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v127 = v66;
  }

  v128 = 121;
  v129 = 0;
  v130 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v65, "air.matrix_type");
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v65;
  }

  v132 = 136;
  v133 = 0;
  v134 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v64, "air.pointer_type");
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v135 = v64;
  }

  v136 = 60;
  v137 = 0;
  v138 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v63, "air.lvalue_reference_type");
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v63;
  }

  v140 = 60;
  v141 = 0;
  v142 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v62, "air.rvalue_reference_type");
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v143, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v143 = v62;
  }

  v144 = 60;
  v145 = 0;
  v146 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v61, "air.array_type");
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v147 = v61;
  }

  v148 = 2;
  v149 = 0;
  v150 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v60, "air.struct_type");
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v151, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v151 = v60;
  }

  v152 = 1;
  v153 = 0;
  v154 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v59, "air.sampler_type");
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v155, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v155 = v59;
  }

  v156 = 59;
  v157 = 0;
  v158 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v58, "air.instance_acceleration_structure_type");
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v58;
  }

  v160 = 118;
  v161 = 0;
  v162 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v57, "air.primitive_acceleration_structure_type");
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v163, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v163 = v57;
  }

  v164 = 117;
  v165 = 0;
  v166 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v56, "air.texture_1d_type");
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v56;
  }

  v168 = 58;
  v169 = 0;
  v170 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v55, "air.texture_1d_array_type");
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v171, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v171 = v55;
  }

  v172 = 58;
  v173 = 1;
  v174 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v54, "air.texture_2d_type");
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v175, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    v175 = v54;
  }

  v176 = 58;
  v177 = 2;
  v178 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v53, "air.texture_2d_array_type");
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v179, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v179 = v53;
  }

  v180 = 58;
  v181 = 3;
  v182 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v52, "air.texture_3d_type");
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v183, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v183 = v52;
  }

  v184 = 58;
  v185 = 7;
  v186 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v51, "air.texture_cube_type");
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v187, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v187 = v51;
  }

  v188 = 58;
  v189 = 5;
  v190 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v50, "air.texture_cube_array_type");
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v191, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v191 = v50;
  }

  v192 = 58;
  v193 = 6;
  v194 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v49, "air.texture_2d_ms_type");
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v195, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v195 = v49;
  }

  v196 = 58;
  v197 = 4;
  v198 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v48, "air.texture_2d_ms_array_type");
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v199, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v199 = v48;
  }

  v200 = 58;
  v201 = 8;
  v202 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v47, "air.texture_buffer_1d_type");
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v203 = v47;
  }

  v204 = 58;
  v205 = 9;
  v206 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v46, "air.depth_2d_type");
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v207, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
  }

  else
  {
    v207 = v46;
  }

  v208 = 58;
  v209 = 2;
  v210 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v45, "air.depth_2d_array_type");
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v45;
  }

  v212 = 58;
  v213 = 3;
  v214 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v44, "air.depth_cube_type");
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v215 = v44;
  }

  v216 = 58;
  v217 = 5;
  v218 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v43, "air.depth_cube_array_type");
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v219 = v43;
  }

  v220 = 58;
  v221 = 6;
  v222 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v42, "air.depth_2d_ms_type");
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v223, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v223 = v42;
  }

  v224 = 58;
  v225 = 4;
  v226 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v41, "air.depth_2d_ms_array_type");
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v227, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v227 = v41;
  }

  v228 = 58;
  v229 = 8;
  v230 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v40, "air.r8unorm_type");
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v231, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v231 = v40;
  }

  v232 = 62;
  v233 = 0;
  v234 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v39, "air.r8snorm_type");
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v39;
  }

  v236 = 63;
  v237 = 0;
  v238 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v38, "air.r16unorm_type");
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v239, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v239 = v38;
  }

  v240 = 64;
  v241 = 0;
  v242 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v37, "air.r16snorm_type");
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v243, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v243 = v37;
  }

  v244 = 65;
  v245 = 0;
  v246 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v36, "air.rg8unorm_type");
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v247, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v247 = v36;
  }

  v248 = 66;
  v249 = 0;
  v250 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v35, "air.rg8snorm_type");
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v251, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v251 = v35;
  }

  v252 = 67;
  v253 = 0;
  v254 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v34, "air.rg16unorm_type");
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v255, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v255 = v34;
  }

  v256 = 68;
  v257 = 0;
  v258 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v33, "air.rg16snorm_type");
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v259, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v259 = v33;
  }

  v260 = 69;
  v261 = 0;
  v262 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v32, "air.rgba8unorm_type");
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v263, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v263 = v32;
  }

  v264 = 70;
  v265 = 0;
  v266 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v31, "air.rgba8snorm_type");
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v267, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v267 = v31;
  }

  v268 = 72;
  v269 = 0;
  v270 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v30, "air.rgba16unorm_type");
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v271, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v271 = v30;
  }

  v272 = 73;
  v273 = 0;
  v274 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v29, "air.rgba16snorm_type");
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v275, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v275 = v29;
  }

  v276 = 74;
  v277 = 0;
  v278 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v28, "air.srgba8unorm_type");
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v279, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v279 = v28;
  }

  v280 = 71;
  v281 = 0;
  v282 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v27, "air.rgb10a2_type");
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v283, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v283 = v27;
  }

  v284 = 75;
  v285 = 0;
  v286 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v26, "air.rg11b10f_type");
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v287, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v287 = v26;
  }

  v288 = 92;
  v289 = 0;
  v290 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v25, "air.rgb9e5_type");
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v291, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v291 = v25;
  }

  v292 = 77;
  v293 = 0;
  v294 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v24, "air.visible_function_table_type");
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v295 = v24;
  }

  v296 = 115;
  v297 = 0;
  v298 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v23, "air.intersection_function_table_type");
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v299, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v299 = v23;
  }

  v300 = 116;
  v301 = 0;
  v302 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v22, "air.vector_type");
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v303, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v303 = v22;
  }

  v304 = 137;
  v305 = 0;
  v306 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v21, "air.packed_vector_type");
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v307, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v307 = v21;
  }

  v308 = 137;
  v309 = 0;
  v310 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v20, "air.imageblock_type");
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v311, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v311 = v20;
  }

  v312 = 138;
  v313 = 0;
  v314 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v19, "air.opaque_type");
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v315, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v315 = v19;
  }

  v316 = 0u;
  v317 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v18, "air.llong_type");
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v318, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v318 = v18;
  }

  v319 = 0u;
  v320 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v17, "air.ullong_type");
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v321, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v321 = v17;
  }

  v322 = 0u;
  v323 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v16, "air.function_type");
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v324, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v324 = v16;
  }

  v325 = 0u;
  v326 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v15, "air.enum_type");
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v327, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v327 = v15;
  }

  v328 = 0u;
  v329 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v14, "air.union_type");
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v330, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v330 = v14;
  }

  v331 = 0u;
  v332 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "air.command_buffer_type");
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v333, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v333 = v13;
  }

  v334 = 0u;
  v335 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v12, "air.compute_pipeline_state_type");
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v336, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v336 = v12;
  }

  v337 = 0u;
  v338 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v11, "air.render_pipeline_state_type");
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v339, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v339 = v11;
  }

  v340 = 0u;
  v341 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "air.mesh_grid_properties_type");
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v342, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    v342 = v10;
  }

  v343 = 0u;
  v344 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v9, "air.patch_control_point_type");
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v345, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v345 = v9;
  }

  v346 = 0u;
  v347 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "air.interpolant_type");
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v348, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v348 = v8;
  }

  v349 = 0u;
  v350 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v7, "air.bounds_checked_buffer_type");
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v351, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v351 = v7;
  }

  v352 = 0u;
  v353 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "air.mesh_type");
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v354, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v354 = v6;
  }

  v355 = 0u;
  v356 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "air.array_of_type");
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v357, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
  }

  else
  {
    v357 = v5;
  }

  v358 = 0u;
  v359 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "air.array_ref_of_type");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v360, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v360 = __p;
  }

  v361 = 0u;
  v362 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__assign_unique<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const*>((v1 + 312), &__str, &v363);
  v2 = 456;
  do
  {
    if (SHIBYTE(v78.__r_.__value_.__r.__words[v2 + 2]) < 0)
    {
      operator delete(*(&v78.__r_.__value_.__l.__data_ + v2 * 8));
    }

    v2 -= 6;
  }

  while (v2 * 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_257A5A164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
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
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (a88 < 0)
  {
    operator delete(a87);
  }

  if (a90 < 0)
  {
    operator delete(a89);
  }

  if (a92 < 0)
  {
    operator delete(a91);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a93);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(STACK[0x408]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(STACK[0x528]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(STACK[0x570]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(STACK[0x588]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(STACK[0x648]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  if (SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(STACK[0x678]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  if (SLOBYTE(STACK[0x6BF]) < 0)
  {
    operator delete(STACK[0x6A8]);
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
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

  while (v93 != &STACK[0x720])
  {
    v95 = *(v93 - 25);
    v93 -= 6;
    if (v95 < 0)
    {
      operator delete(*v93);
    }
  }

  _Unwind_Resume(a1);
}

void StitchingReflection::StitchingReflection(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  MTLArgumentData::MTLArgumentData((a1 + 3));
}

void sub_257A5AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(a9);
  MTLArgumentData::~MTLArgumentData((v19 + 3));
  a19 = v19;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void StitchingReflection::getReflectionFromStitchingMetadata(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  StitchingReflection::stitchingArgumentTypeFromNode(a1, a2, &v10);
  v8 = v10.n128_u32[0];
  if (v10.n128_i64[0] <= 57)
  {
    if (v10.n128_i64[0] > 32)
    {
      if (v10.n128_i64[0] > 44)
      {
        if (v10.n128_u64[0] != 45 && v10.n128_u64[0] != 49 && v10.n128_u64[0] != 53)
        {
          goto LABEL_38;
        }
      }

      else if (v10.n128_u64[0] != 33 && v10.n128_u64[0] != 37 && v10.n128_u64[0] != 41)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    if (v10.n128_i64[0] > 2)
    {
      if (v10.n128_u64[0] != 3 && v10.n128_u64[0] != 16 && v10.n128_u64[0] != 29)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    if (v10.n128_u64[0] == 1)
    {
      StitchingReflection::initStructType(a1, a2, a3, a4);
      goto LABEL_12;
    }

    if (v10.n128_u64[0] == 2)
    {
      StitchingReflection::initArrayType(a1, a2, a4);
      goto LABEL_12;
    }

LABEL_38:
    v9 = v13;
    *a4 = v12;
    *(a4 + 16) = v9;
    *(a4 + 32) = v14;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    *(a4 + 48) = 0;
    v16 = 0;
    v15 = 0uLL;
    goto LABEL_12;
  }

  if (v10.n128_i64[0] > 135)
  {
    switch(v10.n128_u64[0])
    {
      case 0x88uLL:
        StitchingReflection::initMatrixType(a1, a2, a4);
        goto LABEL_12;
      case 0x89uLL:
        StitchingReflection::initVectorType(a1, a2, a4);
        goto LABEL_12;
      case 0x8AuLL:
        StitchingReflection::initImageBlockType(a1, a2, a4);
        goto LABEL_12;
    }

    goto LABEL_38;
  }

  if (v10.n128_u64[0] - 59 > 0x3E)
  {
LABEL_32:
    if (v10.n128_u64[0] == 58)
    {
      StitchingReflection::initTextureType(a1, a2, v10.n128_i32[2], v11, a4);
      goto LABEL_12;
    }

    goto LABEL_38;
  }

  if (((1 << (v10.n128_u8[0] - 59)) & 0x4000000044400004) == 0)
  {
    if (v10.n128_u64[0] == 59)
    {
      *(a4 + 64) = 0;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *a4 = 59;
      goto LABEL_12;
    }

    if (v10.n128_u64[0] == 60)
    {
      StitchingReflection::initPointerType(a1, a2, a4);
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_11:
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *a4 = v8;
LABEL_12:
  v10.n128_u64[0] = &v15;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void sub_257A5B0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a10 = &a19;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double StitchingReflection::initScalarType@<D0>(MTLDataType a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = a1;
  return result;
}

uint64_t StitchingReflection::getMatrixType(uint64_t a1, uint64_t a2)
{
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), &v24);
  v3 = a2 - 8 * *(a2 + 8);
  v4 = *(*(v3 + 40) + 128);
  if (*(v4 + 16) == 16)
  {
    v5 = (v4 + 24);
    if (*(v4 + 32) >= 0x41u)
    {
      v5 = *v5;
    }

    v6 = *v5;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(*(v3 + 48) + 128);
  if (*(v7 + 16) == 16)
  {
    v8 = (v7 + 24);
    if (*(v7 + 32) >= 0x41u)
    {
      v8 = *v8;
    }

    v9 = *v8;
  }

  else
  {
    v9 = -1;
  }

  if (v24.n128_u64[0] == 121)
  {
    v18 = v9 - 2;
    v19 = v9 + 131;
    if ((v9 - 2) >= 3)
    {
      v19 = 0;
    }

    v20 = v9 | 0x80;
    if (v18 >= 3)
    {
      v20 = 0;
    }

    v21 = v9 + 125;
    if (v18 >= 3)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    if (v6 != 2)
    {
      v22 = 0;
    }

    if (v6 == 3)
    {
      v22 = v20;
    }

    if (v6 == 4)
    {
      return v19;
    }

    else
    {
      return v22;
    }
  }

  else
  {
    v10 = v9 - 2;
    v11 = v9 | 0x18;
    if ((v9 - 2) >= 3)
    {
      v11 = 0;
    }

    v12 = v9 + 21;
    if (v10 >= 3)
    {
      v12 = 0;
    }

    v13 = v9 + 18;
    if (v10 >= 3)
    {
      v13 = 0;
    }

    if (v6 != 2)
    {
      v13 = 0;
    }

    if (v6 != 3)
    {
      v12 = v13;
    }

    if (v6 != 4)
    {
      v11 = v12;
    }

    v14 = v9 + 11;
    if (v10 >= 3)
    {
      v14 = 0;
    }

    v15 = v9 | 8;
    if (v10 >= 3)
    {
      v15 = 0;
    }

    v16 = v9 + 5;
    if (v10 >= 3)
    {
      v16 = 0;
    }

    if (v6 != 2)
    {
      v16 = 0;
    }

    if (v6 == 3)
    {
      v16 = v15;
    }

    if (v6 == 4)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if (v24.n128_u64[0] != 3)
    {
      v17 = 0;
    }

    if (v24.n128_u64[0] == 16)
    {
      return v11;
    }
  }

  return v17;
}

__n128 StitchingReflection::stitchingArgumentTypeFromNode@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v10[0] = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8)));
  v10[1] = v5;
  llvm::StringRef::str(v10, __p);
  v6 = std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::find<std::string>((a1 + 312), __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  result = *(v6 + 5);
  *a3 = result;
  a3[1].n128_u64[0] = v6[7];
  return result;
}

uint64_t StitchingReflection::getVectorType(uint64_t a1, uint64_t a2)
{
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), &v20);
  v3 = *(*(a2 - 8 * *(a2 + 8) + 40) + 128);
  if (*(v3 + 16) == 16)
  {
    v4 = (v3 + 24);
    if (*(v3 + 32) >= 0x41u)
    {
      v4 = *v4;
    }

    v5 = *v4;
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 - 2;
  if (v20.n128_i64[0] > 44)
  {
    v7 = v5 | 0x50;
    if (v6 >= 3)
    {
      v7 = 0;
    }

    v14 = v5 + 84;
    if (v6 >= 3)
    {
      v14 = 0;
    }

    v15 = v5 | 0x78;
    if (v6 >= 3)
    {
      v15 = 0;
    }

    if (v20.n128_u64[0] != 121)
    {
      v15 = 0;
    }

    if (v20.n128_u64[0] != 85)
    {
      v14 = v15;
    }

    if (v20.n128_u64[0] != 81)
    {
      v7 = v14;
    }

    v16 = v5 + 44;
    if (v6 >= 3)
    {
      v16 = 0;
    }

    v17 = v5 | 0x30;
    if (v6 >= 3)
    {
      v17 = 0;
    }

    v12 = v5 + 52;
    if (v6 >= 3)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] != 53)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] == 49)
    {
      v12 = v17;
    }

    if (v20.n128_u64[0] == 45)
    {
      v12 = v16;
    }

    v13 = v20.n128_u64[0] <= 80;
  }

  else
  {
    v7 = v5 | 0x20;
    if (v6 >= 3)
    {
      v7 = 0;
    }

    v8 = v5 + 36;
    if (v6 >= 3)
    {
      v8 = 0;
    }

    v9 = v5 | 0x28;
    if (v6 >= 3)
    {
      v9 = 0;
    }

    if (v20.n128_u64[0] != 41)
    {
      v9 = 0;
    }

    if (v20.n128_u64[0] != 37)
    {
      v8 = v9;
    }

    if (v20.n128_u64[0] != 33)
    {
      v7 = v8;
    }

    v10 = v5 + 2;
    if (v6 >= 3)
    {
      v10 = 0;
    }

    v11 = v5 + 15;
    if (v6 >= 3)
    {
      v11 = 0;
    }

    v12 = v5 + 28;
    if (v6 >= 3)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] != 29)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] == 16)
    {
      v12 = v11;
    }

    if (v20.n128_u64[0] == 3)
    {
      v12 = v10;
    }

    v13 = v20.n128_u64[0] <= 32;
  }

  if (v13)
  {
    return v12;
  }

  else
  {
    return v7;
  }
}

uint64_t StitchingReflection::getAccessType(uint64_t a1, uint64_t a2)
{
  String = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 40));
  if (v3 == 5)
  {
    return 2 * (memcmp(String, "write", 5uLL) == 0);
  }

  if (v3 == 10)
  {
    return memcmp(String, "read_write", 0xAuLL) == 0;
  }

  return 0;
}

unint64_t StitchingReflection::getTypeInfoDescriptor(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - 8 * *(a2 + 8));
  v3 = *(v2[1] + 128);
  if (*(v3 + 16) == 16)
  {
    v4 = (v3 + 24);
    if (*(v3 + 32) >= 0x41u)
    {
      v4 = *v4;
    }

    v5 = *v4;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v6 = *(v2[2] + 128);
  if (*(v6 + 16) == 16)
  {
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    v8 = *v7 << 32;
  }

  else
  {
    v8 = 0xFFFFFFFF00000000;
  }

  v9 = v2[3];
  if (v9)
  {
    v10 = llvm::MDNode::classof(v9);
    v11 = v2[3];
    if (v10 && v11 != 0)
    {
      v14 = *(v11 - 8 * *(v11 + 8));
      v15 = *(*(v14 - 8 * *(v14 + 8) + 8) + 128);
      if (*(v15 + 16) == 16)
      {
        v16 = (v15 + 24);
        if (*(v15 + 32) >= 0x41u)
        {
          v16 = *v16;
        }

        v17 = *v16;
      }
    }
  }

  return v8 | v5;
}

void StitchingReflection::traverseStruct(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v4 = a2 - 8 * *(a2 + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    v8 = llvm::MDNode::classof(v5);
    v54 = *(v4 + 40);
    if (v8 && *(v4 + 40) != 0)
    {
      v53 = *(v54 + 8);
      if (v53)
      {
        v10 = 0;
        v52 = a4;
        do
        {
          v69 = 0;
          v68 = 0u;
          memset(v67, 0, sizeof(v67));
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v73 = xmmword_257A6DAF0;
          memset(v74, 0, sizeof(v74));
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v11 = *(v54 - 8 * *(v54 + 8) + 8 * v10);
          v66 = 0;
          v64 = 0u;
          __p = 0u;
          v12 = *(v11 + 8);
          v13 = (v11 - 8 * v12);
          v14 = *(v13[1] + 128);
          if (*(v14 + 16) == 16)
          {
            v15 = (v14 + 24);
            if (*(v14 + 32) >= 0x41u)
            {
              v15 = *v15;
            }

            v16 = *v15;
          }

          else
          {
            v16 = -1;
          }

          v61 = v16;
          v17 = *(v13[2] + 128);
          if (*(v17 + 16) == 16)
          {
            v18 = (v17 + 24);
            if (*(v17 + 32) >= 0x41u)
            {
              v18 = *v18;
            }

            v19 = *v18;
          }

          else
          {
            v19 = -1;
          }

          v62 = v19;
          v63 = v13[3];
          v20 = v13[4];
          if (v20)
          {
            String = llvm::MDString::getString(v20);
            v23 = -*(v11 + 8);
          }

          else
          {
            v22 = 0;
            v23 = -v12;
            String = &unk_257A6F51A;
          }

          *&v64 = String;
          *(&v64 + 1) = v22;
          v24 = v11 + 8 * v23;
          v25 = *(v24 + 40);
          if (v25)
          {
            v26 = llvm::MDNode::classof(v25);
            v27 = *(v24 + 40);
            v28 = v27 ? v26 : 0;
            if (v28 == 1)
            {
              v29 = *(v27 + 8);
              std::vector<AttributeDescriptor>::reserve(&__p, v29);
              v30 = v27;
              if (v29)
              {
                do
                {
                  v31 = *(v30 - 8 * *(v27 + 8));
                  v32 = llvm::MDString::getString(*(v31 - 8 * *(v31 + 8)));
                  if (v33 == 22 && (*v32 == 0x646E65722E726961 ? (v34 = v32[1] == 0x65677261745F7265) : (v34 = 0), v34 ? (v35 = *(v32 + 14) == 0x727474615F746567) : (v35 = 0), v35))
                  {
                    v44 = *(*(v31 - 8 * *(v31 + 8) + 8) + 128);
                    if (*(v44 + 16) == 16)
                    {
                      v45 = (v44 + 24);
                      if (*(v44 + 32) >= 0x41u)
                      {
                        v45 = *v45;
                      }

                      v37 = *v45;
                    }

                    else
                    {
                      v37 = -1;
                    }

                    v36 = 10;
                  }

                  else
                  {
                    v36 = 0;
                    v37 = 0;
                  }

                  v38 = *(&__p + 1);
                  if (*(&__p + 1) >= v66)
                  {
                    v40 = (*(&__p + 1) - __p) >> 5;
                    v41 = v40 + 1;
                    if ((v40 + 1) >> 59)
                    {
                      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                    }

                    v42 = v66 - __p;
                    if ((v66 - __p) >> 4 > v41)
                    {
                      v41 = v42 >> 4;
                    }

                    if (v42 >= 0x7FFFFFFFFFFFFFE0)
                    {
                      v43 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v43 = v41;
                    }

                    if (v43)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(&__p, v43);
                    }

                    v46 = 32 * v40;
                    *v46 = v36;
                    *(v46 + 2) = 0;
                    *(v46 + 4) = v37;
                    *(v46 + 16) = 0;
                    *(v46 + 24) = 0;
                    *(v46 + 8) = 0;
                    v39 = 32 * v40 + 32;
                    v47 = (32 * v40 - (*(&__p + 1) - __p));
                    memcpy(v47, __p, *(&__p + 1) - __p);
                    v48 = __p;
                    *&__p = v47;
                    *(&__p + 1) = v39;
                    v66 = 0;
                    if (v48)
                    {
                      operator delete(v48);
                    }
                  }

                  else
                  {
                    **(&__p + 1) = v36;
                    *(v38 + 2) = 0;
                    *(v38 + 4) = v37;
                    *(v38 + 16) = 0;
                    *(v38 + 24) = 0;
                    v39 = v38 + 32;
                    *(v38 + 8) = 0;
                  }

                  *(&__p + 1) = v39;
                  v30 += 8;
                  --v29;
                }

                while (v29);
              }
            }
          }

          v67[0] = v64;
          LODWORD(v68) = v61;
          for (i = __p; i != *(&__p + 1); i += 32)
          {
            if (*i == 10)
            {
              LODWORD(v73) = *(i + 4);
            }
          }

          StitchingReflection::getReflectionFromStitchingMetadata(&v56, a1, v63, v52);
          if (v52)
          {
            DWORD1(v57) = HIDWORD(v56);
            HIDWORD(v56) = v56;
            LODWORD(v56) = 60;
          }

          v75 = v56;
          v76 = v57;
          v77 = v58;
          std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(&v74[1], v59, v60, 0x2E8BA2E8BA2E8BA3 * ((v60 - v59) >> 4));
          v50 = a3[1];
          if (v50 >= a3[2])
          {
            v51 = std::vector<MTLStructMemberInfo>::__emplace_back_slow_path<MTLStructMemberInfo const&>(a3, v67);
          }

          else
          {
            std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(a3, a3[1], v67);
            v51 = v50 + 176;
            a3[1] = v50 + 176;
          }

          a3[1] = v51;
          v78 = &v59;
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v78);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          *&v56 = &v74[1];
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v56);
          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          ++v10;
        }

        while (v10 != v53);
      }
    }
  }
}

void sub_257A5BAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  MTLStructMemberInfo::~MTLStructMemberInfo(&a35);
  _Unwind_Resume(a1);
}

unint64_t StitchingReflection::initMatrixType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  MatrixType = StitchingReflection::getMatrixType(a1, a2);
  *a3 = MatrixType;
  result = StitchingReflection::getTypeInfoDescriptor(MatrixType, a2);
  *(a3 + 4) = result;
  return result;
}

void sub_257A5BB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

unint64_t StitchingReflection::initVectorType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  VectorType = StitchingReflection::getVectorType(a1, a2);
  *a3 = VectorType;
  result = StitchingReflection::getTypeInfoDescriptor(VectorType, a2);
  *(a3 + 4) = result;
  return result;
}

void sub_257A5BBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double StitchingReflection::initSamplerType@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 59;
  return result;
}

uint64_t StitchingReflection::initTextureType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 58;
  *(a5 + 16) = (a4 << 16) | a3;
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), v9);
  *(a5 + 12) = v9[0].n128_u32[0];
  result = StitchingReflection::getAccessType(v7, a2);
  *(a5 + 24) = result;
  return result;
}

void sub_257A5BC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void StitchingReflection::initPointerType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 60;
  v5 = *(a2 - 8 * *(a2 + 8) + 32);
  StitchingReflection::getTypeInfoDescriptor(a1, v5);
  *(a3 + 24) = v6;
  StitchingReflection::getReflectionFromStitchingMetadata(&v8, a1, v5, 0);
  *(a3 + 4) = v9;
  v7 = v8;
  *(a3 + 12) = v8;
  *(a3 + 20) = v10;
  if (v7 == 1)
  {
    *(a3 + 32) = v11;
    if (&v8 != a3)
    {
      std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a3 + 48), v12, v13, 0x2E8BA2E8BA2E8BA3 * ((v13 - v12) >> 4));
    }
  }

  v14 = &v12;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_257A5BD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v11 - 40) = v10;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100]((v11 - 40));
  a9 = (v9 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void StitchingReflection::initStructType(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  v8 = (a4 + 48);
  *(a4 + 64) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *a4 = 1;
  *(a4 + 4) = StitchingReflection::getTypeInfoDescriptor(a1, a2);
  v9 = *(a2 - 8 * *(a2 + 8) + 32);
  if (v9)
  {
    String = llvm::MDString::getString(v9);
  }

  else
  {
    v11 = 0;
    String = &unk_257A6F51A;
  }

  *(a4 + 32) = String;
  *(a4 + 40) = v11;
  std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo const*,MTLStructMemberInfo const*>(v8, 0, 0, 0);
  StitchingReflection::traverseStruct(a1, a2, v8, a3);
}

void sub_257A5BE8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StitchingReflection::initArrayType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 2;
  *(a3 + 4) = StitchingReflection::getTypeInfoDescriptor(a1, a2);
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), v9);
  *(a3 + 12) = v9[0].n128_u32[0];
  v6 = *(*(a2 - 8 * *(a2 + 8) + 40) + 128);
  if (*(v6 + 16) == 16)
  {
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    v8 = *v7;
  }

  else
  {
    v8 = -1;
  }

  *(a3 + 28) = v8;
}

void sub_257A5BF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *StitchingReflection::initImageBlockType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = StitchingReflection::getReflectionFromStitchingMetadata(a3, a1, *(a2 - 8 * *(a2 + 8) + 40), 1);
  *a3 = 138;
  return result;
}

void *MTLGenerateReflectionDataPass::generateReflectionData(uint64_t a1, llvm::Module *a2, char a3, void *a4, int a5, void *a6, const void *a7, size_t a8, void *a9)
{
  v116 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    memset(v108, 0, sizeof(v108));
    parseFunctions(a2, v108);
    v14 = v108[0];
    v106 = 0;
    v105 = 0;
    v107 = 0;
    v15 = entryPointsType[*(v108[0] + 48)];
    memset(v104, 0, sizeof(v104));
    v79 = v15;
    v16 = v15 != 5 || *(v108[0] + 24) == 0;
    v76 = a4;
    v77 = a6;
    __n = a8;
    if (!v16)
    {
      StitchingReflection::StitchingReflection(v113);
    }

    v102 = 0;
    v101 = 0;
    v100 = 0;
    v17 = *(v108[0] + 8);
    if (v17)
    {
      v18 = *(v17 + 8);
    }

    else
    {
      v18 = 0;
    }

    v19 = *v108[0];
    if (*(*v108[0] + 18))
    {
      llvm::Function::BuildLazyArguments(*v108[0]);
      v20 = *(v14 + 48);
    }

    if (v18)
    {
      v21 = *(v19 + 88);
      v22 = *(*(v14 + 8) - 8 * *(*(v14 + 8) + 8));
      DataLayout = llvm::Module::getDataLayout(*(*v14 + 40));
      llvm::DataLayout::DataLayout(v113, DataLayout);
      MTLArgumentData::MTLArgumentData(v112);
    }

    v24 = 954437177 * ((v101 - v100) >> 5);
    if (v24)
    {
      v25 = 0;
      do
      {
        std::vector<MTLArgumentData>::push_back[abi:ne200100](v104, (v100 + v25));
        v25 += 288;
      }

      while (288 * v24 != v25);
    }

    v113[0] = &v100;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v113);
    v100 = 0;
    v101 = &v100;
    v102 = 0x2020000000;
    v26 = 12;
    v103 = 12;
    if ((v79 | 2) == 3)
    {
      v26 = 0x38E38E38E38E38E4 * ((v106 - v105) >> 5) + 16;
      v103 = v26;
    }

    v27 = *(v14 + 128);
    if (!v27 || *(*(v14 + 120) + v27 - 1))
    {
      LODWORD(v27) = v27 + 1;
    }

    v78 = v24;
    v103 = v26 + v27 + 8;
    v111 = 0;
    v110 = 0;
    __p = &v110;
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke;
    v99[3] = &unk_27984E5E0;
    v99[4] = &v100;
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_2;
    v98[3] = &unk_27984E608;
    v98[4] = &v100;
    serializeArguments(v104, &__p, v99, v98);
    v28 = entryPointsType[*(v14 + 48)];
    v75 = v101[3];
    if (v28 == 2)
    {
      v101[3] += 4;
      MTLArgumentData::MTLArgumentData(v113);
    }

    if ((v28 | 2) == 3)
    {
      v101[3] += 8;
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_5;
      v97[3] = &unk_27984E5E0;
      v97[4] = &v100;
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_6;
      v96[3] = &unk_27984E608;
      v96[4] = &v100;
      serializePostVertexDumpOutputs(a6, v97, v96);
    }

    v29 = v101;
    v30 = v101[3];
    v31 = v30;
    if (a9)
    {
      *a9 = v30;
      v31 = v29[3];
    }

    v32 = __n + v31 + 8;
    v29[3] = v32;
    v74 = entryPointsType[*(v14 + 48)];
    if (v74 == 6)
    {
      v29[3] = v32 + ((*(v14 + 104) - *(v14 + 96)) >> 1) + 8;
    }

    v94 = 0;
    v93 = 0;
    v95 = 0;
    v113[0] = "air.global_bindings";
    v115 = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(a2, v113);
    v34 = NamedMetadata;
    if (NamedMetadata)
    {
      v113[1] = 0;
      v113[0] = 0;
      v114 = 0;
      NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
      std::vector<MTLArgumentData>::reserve(&v93, NumOperands);
      if (llvm::NamedMDNode::getNumOperands(v34))
      {
        Operand = llvm::NamedMDNode::getOperand(v34);
        v37 = Operand - 8 * *(Operand + 8);
        v38 = *(v37 + 16);
        v39 = *(*(v37 + 8) + 128);
        if (v94 < v95)
        {
          MTLArgumentData::MTLArgumentData(v94);
        }

        std::vector<MTLArgumentData>::__emplace_back_slow_path<>(&v93);
      }

      llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(v113);
    }

    v101[3] += 4;
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_7;
    v92[3] = &unk_27984E5E0;
    v92[4] = &v100;
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_8;
    v91[3] = &unk_27984E608;
    v91[4] = &v100;
    serializeArguments(&v93, &__p, v92, v91);
    v40 = v101[3];
    v9 = malloc_type_malloc(v40, 0x100004077774924uLL);
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(&__p, v110);
    v111 = 0;
    __p = &v110;
    v110 = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x2020000000;
    v90 = v9;
    *v9 = 0x4E494253504C544DLL;
    v41 = v88;
    ++v90;
    *v88[3] = 131073;
    v41[3] += 4;
    if ((v79 | 2) == 3)
    {
      LODWORD(v43) = 954437177 * ((v106 - v105) >> 5);
      v42 = v88;
      *v88[3] = v43;
      v42[3] += 4;
      v43 = v43;
      if (v43)
      {
        v44 = 4;
        do
        {
          v45 = v88;
          *v88[3] = *(v105 + v44);
          v45[3] += 4;
          v44 += 288;
          --v43;
        }

        while (v43);
      }
    }

    v46 = *(v14 + 120);
    v47 = *(v14 + 128);
    v48 = v88;
    memcpy(v88[3], v46, v47);
    v49 = (v48[3] + v47);
    v48[3] = v49;
    if (!v47 || v46[v47 - 1])
    {
      *v49 = 0;
      ++v48[3];
    }

    v50 = v88;
    *v88[3] = v78;
    v50[3] += 4;
    v51 = v88;
    *v88[3] = v75;
    v51[3] += 4;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_9;
    v86[3] = &unk_27984E5E0;
    v86[4] = &v87;
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_10;
    v85[3] = &unk_27984E608;
    v85[4] = &v87;
    serializeArguments(v104, &__p, v86, v85);
    if (entryPointsType[*(v14 + 48)] == 2)
    {
      v52 = v88;
      v53 = v88[3];
      *v53 = 0;
      *(v53 + 1) = 0;
      *(v53 + 3) = 0;
      v52[3] += 4;
      MTLArgumentData::MTLArgumentData(v113);
    }

    if ((v28 | 2) == 3)
    {
      v54 = v88;
      *v88[3] = a5;
      v54[3] += 4;
      v55 = v88;
      *v88[3] = v30;
      v55[3] += 4;
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_13;
      v84[3] = &unk_27984E5E0;
      v84[4] = &v87;
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_14;
      v83[3] = &unk_27984E608;
      v83[4] = &v87;
      serializePostVertexDumpOutputs(v77, v84, v83);
    }

    v56 = v88;
    *v88[3] = -1;
    v56[3] += 4;
    v57 = v88;
    *v88[3] = __n;
    v57[3] += 4;
    if (__n)
    {
      v58 = v88;
      memcpy(v88[3], a7, __n);
      v58[3] += __n;
    }

    if (v74 == 6)
    {
      v59 = v88;
      v60 = v88[3];
      *v60 = *(v14 + 70) & 3;
      *(v60 + 1) = 0;
      *(v60 + 3) = 0;
      v59[3] += 4;
      v61 = *(v14 + 104) - *(v14 + 96);
      v62 = v88;
      v63 = v88[3];
      *v63 = v61 >> 3;
      v63[1] = v61 >> 11;
      v63[2] = v61 >> 19;
      v63[3] = v61 >> 27;
      v62[3] += 4;
      v64 = *(v14 + 96);
      if (*(v14 + 104) != v64)
      {
        v65 = 0;
        v66 = 1;
        do
        {
          v67 = *(v64 + 8 * v65);
          v68 = v88;
          *v88[3] = v67;
          v68[3] += 4;
          v65 = v66;
          v64 = *(v14 + 96);
          ++v66;
        }

        while (v65 < (*(v14 + 104) - v64) >> 3);
      }
    }

    v69 = v88;
    *v88[3] = v40;
    v69[3] += 4;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_15;
    v82[3] = &unk_27984E5E0;
    v82[4] = &v87;
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_16;
    v81[3] = &unk_27984E608;
    v81[4] = &v87;
    serializeArguments(&v93, &__p, v82, v81);
    *v76 = v101[3];
    _Block_object_dispose(&v87, 8);
    v113[0] = &v93;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v113);
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(&__p, v110);
    _Block_object_dispose(&v100, 8);
    v113[0] = v104;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v113);
    v113[0] = &v105;
    std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v113);
    v113[0] = v108;
    std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](v113);
  }

  else
  {
    v9 = 0;
  }

  v70 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_257A5D2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x3C0] = v65;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  MTLArgumentData::~MTLArgumentData(&STACK[0x4E8]);
  _Block_object_dispose(&a65, 8);
  STACK[0x3C0] = &STACK[0x230];
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(&STACK[0x3A0], STACK[0x3A8]);
  _Block_object_dispose(&STACK[0x338], 8);
  STACK[0x3C0] = &STACK[0x358];
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  STACK[0x3C0] = &STACK[0x370];
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  STACK[0x3C0] = &STACK[0x388];
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  _Unwind_Resume(a1);
}

uint64_t serializeArguments(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = 0x8E38E38E38E38E39 * ((v8 - *a1) >> 5);
  result = (*(a3 + 16))(a3, v10);
  if (v8 != v9)
  {
    v31 = a2;
    v12 = 0;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v13 = v10;
    do
    {
      v14 = *a1;
      v15 = (*a1 + v12);
      (*(a4 + 16))(a4, v15 + 4);
      (*(a3 + 16))(a3, (*v15 << 6) & 0x200 | (*v15 >> 4));
      v16 = *v15;
      if ((*v15 & 4) == 0)
      {
        (*(a3 + 16))(a3, v15[1]);
        (*(a3 + 16))(a3, v15[2]);
        v16 = *v15;
      }

      switch((v16 >> 4) & 0x1F)
      {
        case 1u:
        case 2u:
        case 3u:
        case 8u:
        case 0xEu:
        case 0x15u:
          v17 = (v14 + v12);
          (*(a3 + 16))(a3, *(v14 + v12 + 48));
          v18 = *(v14 + v12 + 236);
          (*(a3 + 16))(a3, v17[58]);
          (*(a3 + 16))(a3, v18);
          (*(a3 + 16))(a3, v17[13]);
          v19 = v17[14];
          goto LABEL_23;
        case 4u:
          LODWORD(v32[0]) = 0;
          v34 = 0;
          v20 = *(v14 + v12 + 32);
          v21 = strlen(v20);
          LODWORD(v20) = textureTypeFromString(v20, v21, v32, &v34);
          (*(a3 + 16))(a3, LODWORD(v32[0]));
          v19 = v20 | (v34 << 16);
          goto LABEL_23;
        case 5u:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x13u:
        case 0x17u:
          break;
        case 6u:
          v22 = v14 + v12;
          v23 = *(v14 + v12 + 32);
          v24 = strlen(v23);
          v25 = dataTypeFromString(v23, v24);
          (*(a3 + 16))(a3, v25);
          v19 = *(v22 + 12);
          goto LABEL_23;
        case 9u:
          v26 = v14 + v12;
          goto LABEL_19;
        case 0xAu:
          v26 = v14 + v12;
          (*(a3 + 16))(a3, *(v14 + v12 + 184));
LABEL_19:
          (*(a3 + 16))(a3, *(v26 + 188));
          if (*(v26 + 192))
          {
            serializeStructInfo((v26 + 200), v31, a3, a4, 0);
          }

          else
          {
            (*(a3 + 16))(a3, 0);
          }

          (*(a3 + 16))(a3, *(v14 + v12 + 224));
          v19 = *(v14 + v12 + 228);
LABEL_23:
          (*(a3 + 16))(a3, v19);
          break;
        case 0x14u:
          v32[0] = *(v14 + v12 + 240);
          v32[1] = *(v14 + v12 + 256);
          v33 = *(v14 + v12 + 272);
          serializeStitchingTypeInfo(v32, a3);
          if (LODWORD(v32[0]) == 1 || LODWORD(v32[0]) == 138 || LODWORD(v32[0]) == 60 && HIDWORD(v32[0]) == 1)
          {
            serializeStitchingStructInfo(*(v14 + v12 + 160), v33, *(&v33 + 1), a3, a4);
          }

          break;
        case 0x16u:
          v27 = dataTypeFromString("mesh", 4uLL);
          (*(a3 + 16))(a3, v27);
          v28 = v14 + v12;
          (*(a3 + 16))(a3, *(v14 + v12 + 12));
          (*(a3 + 16))(a3, *(v14 + v12 + 60));
          (*(a3 + 16))(a3, *(v14 + v12 + 64));
          (*(a3 + 16))(a3, *(v14 + v12 + 68));
          serializeStructInfo(*(v28 + 168), v31, a3, a4, (*v28 >> 12) & 1);
          serializeStructInfo(*(v28 + 176), v31, a3, a4, (*v28 >> 12) & 1);
          break;
        default:
          abort();
      }

      v12 += 288;
      --v13;
    }

    while (v13);
    v29 = 0;
    do
    {
      v30 = *a1 + v29;
      if (*(v30 + 72))
      {
        result = serializeStructInfo(*(v30 + 160), v31, a3, a4, (*v30 >> 12) & 1);
      }

      else
      {
        result = (*(a3 + 16))(a3, 0);
      }

      v29 += 288;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_2(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t extractOutputImageBlockDataFromMetadata(FunctionDesc *a1, MTLArgumentData *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a1 + 16;
  DataLayout = llvm::Module::getDataLayout(*(*a1 + 40));
  llvm::DataLayout::DataLayout(v7, DataLayout);
  if (*v2 && *(*v2 + 8))
  {
    MTLArgumentData::MTLArgumentData(&v6);
  }

  result = MEMORY[0x259C6A2B0](v7);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_257A5DB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(&a9);
  MTLArgumentData::~MTLArgumentData(&a12);
  MEMORY[0x259C6A2B0](&a48);
  _Unwind_Resume(a1);
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_4(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

void serializePostVertexDumpOutputs(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 16))(a2, -1431655765 * ((a1[1] - *a1) >> 5));
  v6 = a1[1];
  if (*a1 != v6)
  {
    v7 = *a1 + 64;
    do
    {
      v19 = *(v7 - 64);
      if (*(v7 - 25) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, *(v7 - 48), *(v7 - 40));
      }

      else
      {
        v8 = *(v7 - 48);
        v20.__r_.__value_.__r.__words[2] = *(v7 - 32);
        *&v20.__r_.__value_.__l.__data_ = v8;
      }

      v9 = v7 - 64;
      v10 = *(v7 - 24);
      v22 = *(v7 - 8);
      v21 = v10;
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 8));
      }

      else
      {
        v11 = *v7;
        __p.__r_.__value_.__r.__words[2] = *(v7 + 16);
        *&__p.__r_.__value_.__l.__data_ = v11;
      }

      v24 = *(v7 + 24);
      size = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
      v13 = v20.__r_.__value_.__r.__words[0];
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v20;
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v20.__r_.__value_.__l.__size_;
      }

      v17 = v13;
      v18 = size;
      (*(a3 + 16))(a3, &v17);
      (*(a2 + 16))(a2, v21);
      v14 = v22;
      (*(a2 + 16))(a2, DWORD2(v21));
      (*(a2 + 16))(a2, v14);
      v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      p_p = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = __p.__r_.__value_.__l.__size_;
      }

      v17 = p_p;
      v18 = v15;
      (*(a3 + 16))(a3, &v17);
      (*(a2 + 16))(a2, v24);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      v7 += 96;
    }

    while (v9 + 96 != v6);
  }
}

void sub_257A5DDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_6(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_8(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_9(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_10(uint64_t a1, const void **a2)
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

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_11(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_12(uint64_t a1, const void **a2)
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

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_13(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_14(uint64_t a1, const void **a2)
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

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_15(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_16(uint64_t a1, const void **a2)
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

void MTLGenerateReflectionDataPass::patchTraceBufferReflectionData(MTLGenerateReflectionDataPass *this, llvm::Module *a2, char *a3, uint64_t a4)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  parseFunctions(a2, &v25);
  if (v26 == v25)
  {
    goto LABEL_34;
  }

  if (a4 == -1)
  {
    goto LABEL_34;
  }

  if (!a3)
  {
    goto LABEL_34;
  }

  v4 = *(v25 + 8);
  if (!v4)
  {
    goto LABEL_34;
  }

  v24 = *(v4 + 8);
  if (!v24)
  {
    goto LABEL_34;
  }

  for (i = 0; i != v24; ++i)
  {
    v6 = *(v4 - 8 * *(v4 + 8) + 8 * i);
    v7 = *(v6 + 8);
    if (!v7)
    {
      continue;
    }

    v8 = 0;
    v9 = -1;
    while (1)
    {
      v10 = *(v6 - 8 * *(v6 + 8) + 8 * v8);
      if (!*v10)
      {
        String = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8 * v8));
        if (v12 == 18)
        {
          v13 = *String == 0x61636F6C2E726961 && *(String + 8) == 0x646E695F6E6F6974;
          if (v13 && *(String + 16) == 30821)
          {
            v20 = *(*(v6 - 8 * *(v6 + 8) + 8 * (v8 + 1)) + 128);
            v21 = (v20 + 24);
            if (*(v20 + 32) >= 0x41u)
            {
              v21 = *v21;
            }

            v9 = *v21;
            v8 += 2;
            goto LABEL_10;
          }
        }

        v15 = llvm::MDString::getString(v10);
        if (v16 == 12 && *v15 == 0x5F6772612E726961 && *(v15 + 8) == 1701667182)
        {
          v18 = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8 * (v8 + 1)));
          if (v19 == 37 && !memcmp(v18, "__resource_tracking_impl_trace_buffer", 0x25uLL))
          {
            break;
          }
        }
      }

LABEL_10:
      if (++v8 >= v7)
      {
        goto LABEL_33;
      }
    }

    if (v9 != -1)
    {
      *&a3[a4] = v9;
      break;
    }

LABEL_33:
    ;
  }

LABEL_34:
  v28 = &v25;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&v28);
}

void sub_257A5E2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 176)
  {
    v6 = (i - 72);
    std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 = *(i - 112);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  *(a1 + 8) = a2;
}

void *std::vector<AttributeDescriptor>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void StitchingReflection::~StitchingReflection(StitchingReflection *this)
{
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(this + 312);
  v5 = (this + 224);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 22);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t serializeStructInfo(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a2 + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a2 + 8 && *(v9 + 32) <= a1)
  {
    v38 = *(v9 + 40);
    v39 = *(a3 + 16);
    v40 = *MEMORY[0x277D85DE8];

    return v39(a3, v38);
  }

  else
  {
LABEL_9:
    v13 = *(a2 + 16);
    v43[0] = a1;
    *&v45[0] = v43;
    *(std::__tree<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::__map_value_compare<std::vector<MTLStructMemberInfo> const*,std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::less<std::vector<MTLStructMemberInfo> const*>,true>,std::allocator<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>>>::__emplace_unique_key_args<std::vector<MTLStructMemberInfo> const*,std::piecewise_construct_t const&,std::tuple<std::vector<MTLStructMemberInfo> const*&&>,std::tuple<>>(a2, v43) + 10) = v13 + 1;
    (*(a3 + 16))(a3);
    v14 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
    result = (*(a3 + 16))(a3, v14);
    if (v14)
    {
      v16 = 0;
      do
      {
        v17 = *a1;
        v18 = *a1 + v16;
        (*(a4 + 16))(a4, v18);
        (*(a3 + 16))(a3, *(v18 + 32));
        (*(a3 + 16))(a3, *(v17 + v16 + 72));
        if (*(v17 + v16 + 40))
        {
          (*(a3 + 16))(a3, 2);
          (*(a3 + 16))(a3, 0);
          (*(a3 + 16))(a3, 0);
          (*(a3 + 16))(a3, *(v17 + v16 + 40));
          (*(a3 + 16))(a3, *(v17 + v16 + 44));
          (*(a3 + 16))(a3, *(v17 + v16 + 48));
          if (a5)
          {
            if (*(v17 + v16 + 96))
            {
              StructIndirectArgumentIndexStride = getStructIndirectArgumentIndexStride((v17 + v16 + 104));
            }

            else
            {
              StructIndirectArgumentIndexStride = 1;
            }
          }

          else
          {
            StructIndirectArgumentIndexStride = 0;
          }
        }

        else
        {
          StructIndirectArgumentIndexStride = *(v17 + v16 + 36);
        }

        (*(a3 + 16))(a3, StructIndirectArgumentIndexStride);
        v20 = *(v17 + v16 + 88);
        (*(a3 + 16))(a3, *(v17 + v16 + 84));
        (*(a3 + 16))(a3, v20);
        v21 = v17 + v16;
        if (*(v17 + v16 + 96))
        {
          serializeStructInfo(v21 + 104, a2, a3, a4, a5);
        }

        v22 = *(v21 + 56);
        if (v22)
        {
          v23 = *v22;
          v24 = v22[2];
          v45[1] = v22[1];
          v45[2] = v24;
          v45[0] = v23;
          v25 = v22[3];
          v26 = v22[4];
          v27 = v22[6];
          v45[5] = v22[5];
          v45[6] = v27;
          v45[3] = v25;
          v45[4] = v26;
          v28 = *(v22 + 15);
          v46 = *(v22 + 14);
          v47 = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = *(v22 + 17);
          v48 = *(v22 + 16);
          v49 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v30 = *(v22 + 19);
          v50 = *(v22 + 18);
          v51 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v31 = v22[10];
          v32 = v22[11];
          v54 = *(v22 + 24);
          v52 = v31;
          v53 = v32;
          memset(v55, 0, sizeof(v55));
          std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(v55, *(v22 + 25), *(v22 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(v22 + 26) - *(v22 + 25)) >> 4));
          v33 = v22[14];
          v34 = v22[15];
          v35 = v22[17];
          v58 = v22[16];
          v59 = v35;
          v56 = v33;
          v57 = v34;
          memset(v43, 0, sizeof(v43));
          std::vector<MTLArgumentData>::__init_with_size[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*>(v43, v45, &v60, 1uLL);
          v44 = v55;
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v44);
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }

          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }

          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          }

          serializeArguments(v43, a2, a3, a4);
          *&v45[0] = v43;
          std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v45);
        }

        v36 = v17 + v16;
        (*(a3 + 16))(a3, *(v36 + 76));
        result = (*(a3 + 16))(a3, *(v36 + 80));
        v16 += 176;
      }

      while (176 * v14 != v16);
    }

    v37 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_257A5E924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a13;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t serializeStitchingTypeInfo(unsigned int *a1, uint64_t a2)
{
  v7 = (a2 + 16);
  (*(a2 + 16))(a2, *a1);
  (*v7)(a2, a1[1]);
  (*v7)(a2, a1[2]);
  (*v7)(a2, a1[3]);
  (*v7)(a2, a1[4]);
  (*v7)(a2, a1[5]);
  (*v7)(a2, a1[6]);
  v4 = a1[7];
  v5 = *v7;

  return v5(a2, v4);
}

uint64_t serializeStitchingStructInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a2;
  v15[1] = a3;
  (*(a5 + 16))(a5, v15);
  v8 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  result = (*(a4 + 16))(a4, v8);
  if (v8)
  {
    v10 = 0;
    v11 = 176 * v8;
    do
    {
      v12 = *a1 + v10;
      (*(a5 + 16))(a5, v12);
      (*(a4 + 16))(a4, *(v12 + 32));
      (*(a4 + 16))(a4, *(v12 + 76));
      v13 = *(v12 + 144);
      v14[0] = *(v12 + 128);
      v14[1] = v13;
      v14[2] = *(v12 + 160);
      result = serializeStitchingTypeInfo(v14, a4);
      if (LODWORD(v14[0]) == 1 || LODWORD(v14[0]) == 138 || LODWORD(v14[0]) == 60 && HIDWORD(v14[0]) == 1)
      {
        result = serializeStitchingStructInfo(v12 + 104, *(v12 + 16), *(v12 + 24), a4, a5);
      }

      v10 += 176;
    }

    while (v11 != v10);
  }

  return result;
}

uint64_t getStructIndirectArgumentIndexStride(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 0;
  }

  v2 = *(v1 - 104);
  if (*(v1 - 80))
  {
    StructIndirectArgumentIndexStride = getStructIndirectArgumentIndexStride(v1 - 72);
  }

  else
  {
    v5 = *(v1 - 120);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6 <= 1)
      {
        StructIndirectArgumentIndexStride = 1;
      }

      else
      {
        StructIndirectArgumentIndexStride = v6;
      }
    }

    else
    {
      StructIndirectArgumentIndexStride = 1;
    }
  }

  v7 = *(v1 - 136);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  return v2 + v7 * StructIndirectArgumentIndexStride;
}

void *std::__tree<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::__map_value_compare<std::vector<MTLStructMemberInfo> const*,std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::less<std::vector<MTLStructMemberInfo> const*>,true>,std::allocator<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>>>::__emplace_unique_key_args<std::vector<MTLStructMemberInfo> const*,std::piecewise_construct_t const&,std::tuple<std::vector<MTLStructMemberInfo> const*&&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void *std::vector<MTLArgumentData>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0xE38E38E38E38E4)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_257A5EDDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<MTLArgumentData>::__emplace_back_slow_path<>(void *a1)
{
  v1 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 <= 0xE38E38E38E38E3)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5) > v2)
    {
      v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 5) >= 0x71C71C71C71C71)
    {
      v3 = 0xE38E38E38E38E3;
    }

    else
    {
      v3 = v2;
    }

    v5 = a1;
    if (v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v3);
    }

    v4 = 288 * v1;
    MTLArgumentData::MTLArgumentData((288 * v1));
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void sub_257A5EF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__assign_unique<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const*>(uint64_t *a1, std::string *__str, std::string *a3)
{
  v4 = __str;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = __str == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), v4);
        *(v8 + 40) = *&v4[1].__r_.__value_.__l.__data_;
        *(v8 + 56) = v4[1].__r_.__value_.__s.__data_[16];
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique(a1, v8);
        v4 += 2;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(a1, v10);
  }

  while (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>(a1, &v4->__r_.__value_.__l.__data_);
    v4 += 2;
  }
}

void sub_257A5F008(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__construct_node_hash<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_257A5F4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_257A5F5A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<MTLStructMemberInfo>::__vdeallocate(a1);
    if (a4 <= 0x1745D1745D1745DLL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
      {
        v10 = 0x1745D1745D1745DLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v14, a2, a3, v8);
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, v13);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v15, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*,MTLStructMemberInfo*,MTLStructMemberInfo*>(a1, (a2 + v11), a3, a1[1], v12);
  }
}

void std::vector<MTLStructMemberInfo>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 14;
    do
    {
      v8 = *(v7 - 7);
      v9 = *(v7 - 6);
      v10 = *(v7 - 5);
      *(a4 + 48) = *(v7 - 16);
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
      *a4 = v8;
      v12 = *(v7 - 7);
      v11 = *(v7 - 6);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(a4 + 64);
      *(a4 + 56) = v12;
      *(a4 + 64) = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = v7 - 14;
      v15 = *(v7 - 5);
      *(a4 + 88) = *(v7 - 3);
      *(a4 + 72) = v15;
      if (a4 != v7 - 14)
      {
        v16 = *(v7 - 1);
        v17 = *v7;
        std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(a4 + 104);
      }

      v18 = *(v7 + 1);
      v19 = *(v7 + 3);
      *(a4 + 144) = *(v7 + 2);
      *(a4 + 160) = v19;
      *(a4 + 128) = v18;
      a4 += 176;
      v7 += 22;
    }

    while (v14 + 22 != a3);
    return a3;
  }

  return result;
}

__n128 std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v6;
  *a2 = v5;
  v7 = a3[3];
  v8 = a3[4];
  v9 = a3[6];
  *(a2 + 80) = a3[5];
  *(a2 + 96) = v9;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  v11 = *(a3 + 14);
  v10 = *(a3 + 15);
  *(a2 + 120) = v10;
  *(a2 + 112) = v11;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a3 + 16);
  v12 = *(a3 + 17);
  *(a2 + 136) = v12;
  *(a2 + 128) = v13;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a3 + 19);
  *(a2 + 144) = *(a3 + 18);
  *(a2 + 152) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a3[10];
  v16 = a3[11];
  v17 = *(a3 + 24);
  *(a2 + 200) = 0;
  *(a2 + 192) = v17;
  *(a2 + 176) = v16;
  *(a2 + 160) = v15;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(a2 + 200, *(a3 + 25), *(a3 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 26) - *(a3 + 25)) >> 4));
  result = a3[14];
  v19 = a3[15];
  v20 = a3[17];
  *(a2 + 256) = a3[16];
  *(a2 + 272) = v20;
  *(a2 + 224) = result;
  *(a2 + 240) = v19;
  return result;
}

void sub_257A5F948(_Unwind_Exception *a1)
{
  v5 = *(v1 + 152);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(v3, v2);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  *(a2 + 48) = *(a3 + 12);
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *a2 = v5;
  v8 = *(a3 + 8);
  *(a2 + 56) = *(a3 + 7);
  *(a2 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 72);
  v10 = *(a3 + 88);
  *(a2 + 104) = 0;
  *(a2 + 72) = v9;
  *(a2 + 88) = v10;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(a2 + 104, *(a3 + 13), *(a3 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 14) - *(a3 + 13)) >> 4));
  result = a3[8];
  v12 = a3[10];
  *(a2 + 144) = a3[9];
  *(a2 + 160) = v12;
  *(a2 + 128) = result;
  return result;
}

void sub_257A5FA0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<MTLStructMemberInfo>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 176;
    std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(v4, i - 176);
  }
}

void std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo const*,MTLStructMemberInfo const*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<MTLStructMemberInfo>::__vdeallocate(a1);
    if (a4 <= 0x1745D1745D1745DLL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
      {
        v10 = 0x1745D1745D1745DLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v14, a2, a3, v8);
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v13, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo const*,MTLStructMemberInfo const*,MTLStructMemberInfo*>(a1, (a2 + v11), a3, a1[1]);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo const*,MTLStructMemberInfo const*,MTLStructMemberInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(a1, v4, v6);
      v6 += 11;
      v4 = v12 + 176;
      v12 += 176;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::vector<MTLArgumentData>::__init_with_size[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLArgumentData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A5FCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<MTLArgumentData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(a1, v4, v6);
      v6 += 18;
      v4 = v12 + 288;
      v12 += 288;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::vector<MTLArgumentData>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLArgumentData const*>,std::__wrap_iter<MTLArgumentData const*>>(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 5)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 5)) >= a5)
      {
        v18 = 9 * a5;
        std::vector<MTLArgumentData>::__move_range(a1, a2, a1[1], a2 + 288 * a5);
        v17 = &v7[2 * v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<MTLArgumentData>::__move_range(a1, v5, v10, v5 + 288 * a5);
        v17 = v7 + v16;
      }

      std::__copy_impl::operator()[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 5);
    if (v12 > 0xE38E38E38E38E3)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 5);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x71C71C71C71C71)
    {
      v15 = 0xE38E38E38E38E3;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v15);
    }

    v19 = 32 * (v13 >> 5);
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = v19 + 288 * a5;
    v21 = 288 * a5;
    do
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(v26, v19, v7);
      v19 += 288;
      v7 += 18;
      v21 -= 288;
    }

    while (v21);
    v24 = v20;
    v5 = std::vector<MTLArgumentData>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<MTLArgumentData>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<MTLArgumentData>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = *(v9 + 32);
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 32) = v11;
      *v8 = v10;
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      v14 = *(v9 + 96);
      *(v8 + 80) = *(v9 + 80);
      *(v8 + 96) = v14;
      *(v8 + 48) = v12;
      *(v8 + 64) = v13;
      *(v8 + 112) = *(v9 + 112);
      *(v9 + 112) = 0;
      *(v9 + 120) = 0;
      *(v8 + 128) = *(v9 + 128);
      *(v9 + 128) = 0;
      *(v9 + 136) = 0;
      *(v8 + 144) = *(v9 + 144);
      *(v9 + 144) = 0;
      *(v9 + 152) = 0;
      v15 = *(v9 + 176);
      v16 = *(v9 + 192);
      *(v8 + 160) = *(v9 + 160);
      *(v8 + 176) = v15;
      *(v8 + 192) = v16;
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 216) = 0;
      *(v8 + 200) = *(v9 + 200);
      *(v8 + 216) = *(v9 + 216);
      *(v9 + 200) = 0;
      *(v9 + 208) = 0;
      *(v9 + 216) = 0;
      v17 = *(v9 + 224);
      v18 = *(v9 + 240);
      v19 = *(v9 + 272);
      *(v8 + 256) = *(v9 + 256);
      *(v8 + 272) = v19;
      *(v8 + 224) = v17;
      *(v8 + 240) = v18;
      v9 += 288;
      v8 += 288;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MTLArgumentData *,MTLArgumentData *,MTLArgumentData *>(&v21, a2, v7, v6);
}

uint64_t std::vector<MTLArgumentData>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MTLArgumentData *,MTLArgumentData *,MTLArgumentData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = (a4 + v7 - 288);
      v11 = *(a3 + v7 - 240);
      v12 = *(a3 + v7 - 224);
      v13 = *(a3 + v7 - 192);
      *(v9 - 208) = *(a3 + v7 - 208);
      *(v9 - 192) = v13;
      *(v9 - 240) = v11;
      *(v9 - 224) = v12;
      v14 = *(a3 + v7 - 288);
      v15 = *(a3 + v7 - 272);
      *(v9 - 256) = *(a3 + v7 - 256);
      *v10 = v14;
      v10[1] = v15;
      v16 = *(a3 + v7 - 176);
      *(v8 - 176) = 0;
      *(v8 - 168) = 0;
      v17 = *(a4 + v7 - 168);
      *(v9 - 176) = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v18 = *(v8 - 160);
      *(v8 - 160) = 0;
      *(v8 - 152) = 0;
      v19 = *(v9 - 152);
      *(v9 - 160) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v20 = a4 + v7;
      v21 = a3 + v7;
      v22 = *(a3 + v7 - 144);
      *(v21 - 144) = 0;
      *(v21 - 136) = 0;
      v23 = *(a4 + v7 - 136);
      *(a4 + v7 - 144) = v22;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v24 = *(v21 - 128);
      v25 = *(v21 - 112);
      *(v20 - 96) = *(v21 - 96);
      *(v20 - 128) = v24;
      *(v20 - 112) = v25;
      std::vector<MTLStructMemberInfo>::__vdeallocate((v20 - 88));
      *(v20 - 88) = *(v21 - 88);
      *(v20 - 72) = *(v21 - 72);
      *(v21 - 88) = 0;
      *(v21 - 80) = 0;
      *(v21 - 72) = 0;
      v26 = *(v21 - 64);
      v27 = *(v21 - 48);
      v28 = *(v21 - 16);
      *(v20 - 32) = *(v21 - 32);
      *(v20 - 16) = v28;
      *(v20 - 64) = v26;
      *(v20 - 48) = v27;
      v7 -= 288;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 208;
    do
    {
      v8 = *(v7 - 208);
      v9 = *(v7 - 176);
      *(a4 + 16) = *(v7 - 192);
      *(a4 + 32) = v9;
      *a4 = v8;
      v10 = *(v7 - 160);
      v11 = *(v7 - 144);
      v12 = *(v7 - 112);
      *(a4 + 80) = *(v7 - 128);
      *(a4 + 96) = v12;
      *(a4 + 48) = v10;
      *(a4 + 64) = v11;
      v14 = *(v7 - 96);
      v13 = *(v7 - 88);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a4 + 120);
      *(a4 + 112) = v14;
      *(a4 + 120) = v13;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v16 = v7 - 208;
      v18 = *(v7 - 80);
      v17 = *(v7 - 72);
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = *(a4 + 136);
      *(a4 + 128) = v18;
      *(a4 + 136) = v17;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v21 = *(v7 - 64);
      v20 = *(v7 - 56);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *(a4 + 152);
      *(a4 + 144) = v21;
      *(a4 + 152) = v20;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v23 = *(v7 - 48);
      v24 = *(v7 - 32);
      *(a4 + 192) = *(v7 - 16);
      *(a4 + 160) = v23;
      *(a4 + 176) = v24;
      if (a4 != v16)
      {
        std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a4 + 200), *(v7 - 8), *v7, 0x2E8BA2E8BA2E8BA3 * ((*v7 - *(v7 - 8)) >> 4));
      }

      v25 = *(v7 + 16);
      v26 = *(v7 + 32);
      v27 = *(v7 + 64);
      *(a4 + 256) = *(v7 + 48);
      *(a4 + 272) = v27;
      *(a4 + 224) = v25;
      *(a4 + 240) = v26;
      a4 += 288;
      v7 += 288;
    }

    while (v16 + 288 != a3);
    return a3;
  }

  return result;
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to fstat %s: %s", v3, 0x16u);
}

{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "mmap failed for %s: %s, falling back to LLVM file loading", v3, 0x16u);
}

{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to open %s: %s", v3, 0x16u);
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *a2;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void rtLibPathInBundle(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 bundlePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

{
  v8 = *MEMORY[0x277D85DE8];
  [a2 bundlePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MTLCompilerSharedMemoryInterface::getRuntimeLibraryModules(uint8_t *buf, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 47) < 0)
  {
    a3 = *a3;
  }

  *buf = 136315138;
  *a4 = a3;
  _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Runtime library %s was not mapped", buf, 0xCu);
}

void llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::scc_iterator(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 64) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 40) = v6;

    operator delete(v6);
  }
}

uint64_t OGLCodeGenService::OGLCodeGenService()
{
  v0 = *MEMORY[0x277D85DF8];
  v1 = dlerror();
  return fprintf(v0, "OGLCodeGenService: ERROR: %s\n", v1);
}

uint64_t GEPExpressionSum::accumulateGEP(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return MEMORY[0x259C6B870](result, 0x1000C8000313F17);
  }

  return result;
}

void MTLCompilerObject::downgradeAndLoadModuleRequest()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    dword_28153FC20 = 0;
    xmmword_28153FC00 = 0u;
    unk_28153FC10 = 0u;
    unk_28153FC38 = 0u;
    unk_28153FC48 = 0u;
    unk_28153FC58 = 0u;
    __cxa_guard_release(&_MergedGlobals);
  }
}

{
  if (__cxa_guard_acquire(&qword_28153FBD8))
  {
    qword_28153FCD0 = &unk_28153FCE0;
    qword_28153FCD8 = 0x400000000;
    qword_28153FD40 = &unk_28153FD50;
    qword_28153FD48 = 0x1000000000;
    qword_28153FE50 = &unk_28153FE60;
    qword_28153FE58 = 0x1000000000;
    qword_28153FF20 = &qword_28153FF30;
    qword_28153FF28 = 0;
    qword_28153FF30 = algn_28153FF48;
    xmmword_28153FF38 = 0u;
    v0 = OUTLINED_FUNCTION_1_0();
    __cxa_atexit(v0, v1, v2);
    __cxa_guard_release(&qword_28153FBD8);
  }
}

void fatalDiagnosticHandler(uint64_t *a1)
{
  OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  v3 = 136315138;
  v4 = v1;
  _os_log_fault_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "LLVM ERROR: %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void MTLCompilerObject::addDebugInstrumentationToModule()
{
  if (__cxa_guard_acquire(&qword_28153FBE0))
  {
    LODWORD(xmmword_28153FC88) = 0;
    unk_28153FC78 = 0u;
    xmmword_28153FC68 = 0u;
    xmmword_28153FCA0 = 0u;
    unk_28153FCB0 = 0u;
    unk_28153FCC0 = 0u;

    __cxa_guard_release(&qword_28153FBE0);
  }
}

{
  if (__cxa_guard_acquire(&qword_28153FBE8))
  {
    qword_28153FF60 = &unk_28153FF70;
    qword_28153FF68 = 0x400000000;
    qword_28153FFD0 = &unk_28153FFE0;
    qword_28153FFD8 = 0x1000000000;
    qword_2815400E0 = &unk_2815400F0;
    qword_2815400E8 = 0x1000000000;
    qword_2815401B0 = &qword_2815401C0;
    qword_2815401B8 = 0;
    qword_2815401C0 = &qword_2815401D8;
    xmmword_2815401C8 = 0u;
    v0 = OUTLINED_FUNCTION_1_0();
    __cxa_atexit(v0, &qword_28153FF60, v1);

    __cxa_guard_release(&qword_28153FBE8);
  }
}

void logCompileError(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3(v1, v2, v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

void MTLCodeGenServiceBuildRequest_cold_1()
{
  if (__cxa_guard_acquire(&qword_28153FBF8))
  {
    qword_28153FBF0 = getpagesize();

    __cxa_guard_release(&qword_28153FBF8);
  }
}

void MTLCompilerPluginInterface::init()
{
  operator delete(*MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes);
}

{
  operator delete(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPluginSuffixes);
}

void MTLCompilerPluginInterface::init(uint64_t a1, uint64_t a2, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to dlopen compiler plugin at %s, dlerror %s", buf, 0x16u);
}

void MTLCompilerPluginInterface::init(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_fault_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Compiler plugin %s is not registered with the MTLCompilerObject", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *a2;
  if (*a2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t llvm::ErrorList::join(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_4(v4);
    (*(v6 + 8))(v5);
  }

  return MEMORY[0x259C6B890](a2, 0xA1C4030951706);
}

void MTLCompilerObject::logCompilerFailure(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [objc_msgSend(*a1 "localizedDescription")];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void MTLCompilerObject::logCompilerFailure(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void logMachOError(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3(v1, v2, v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::AllocaInst::AllocaInst()
{
  return MEMORY[0x2821F1840]();
}

{
  return MEMORY[0x2821F1850]();
}

uint64_t llvm::BranchInst::BranchInst()
{
  return MEMORY[0x2821F1898]();
}

{
  return MEMORY[0x2821F18A0]();
}

{
  return MEMORY[0x2821F18A8]();
}

uint64_t llvm::StructType::create()
{
  return MEMORY[0x2821F19B0]();
}

{
  return MEMORY[0x2821F19C0]();
}

{
  return MEMORY[0x2821F19C8]();
}

uint64_t llvm::AttrBuilder::addAttribute()
{
  return MEMORY[0x2821F1AB8]();
}

{
  return MEMORY[0x2821F1AC0]();
}

uint64_t llvm::ConstantInt::get()
{
  return MEMORY[0x2821F1B60]();
}

{
  return MEMORY[0x2821F1B70]();
}

uint64_t llvm::Instruction::setMetadata()
{
  return MEMORY[0x2821F1C38]();
}

{
  return MEMORY[0x2821F1C40]();
}

uint64_t llvm::raw_ostream::operator<<()
{
  return MEMORY[0x2821F1F08]();
}

{
  return MEMORY[0x2821F1F18]();
}

uint64_t llvm::FunctionType::get()
{
  return MEMORY[0x2821F2050]();
}

{
  return MEMORY[0x2821F2058]();
}

void llvm::SmallVectorBase<unsigned int>::mallocForGrow()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned int>::grow_pod()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod()
{
    ;
  }
}

uint64_t llvm::ConstantDataVector::get()
{
  return MEMORY[0x2821F2B48]();
}

{
  return MEMORY[0x2821F2B50]();
}

{
  return MEMORY[0x2821F2B58]();
}

{
  return MEMORY[0x2821F2B60]();
}

uint64_t llvm::ConstantDataVector::getFP()
{
  return MEMORY[0x2821F2B68]();
}

{
  return MEMORY[0x2821F2B70]();
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList()
{
    ;
  }
}

uint64_t llvm::User::operator new(llvm::User *this)
{
  return MEMORY[0x2821F3B08](this);
}

{
  return MEMORY[0x2821F3B10](this);
}

{
  return MEMORY[0x2821F3B18](this);
}

uint64_t llvm::Value::setMetadata()
{
  return MEMORY[0x2821F3E18]();
}

{
  return MEMORY[0x2821F3E20]();
}

uint64_t llvm::Module::getOrInsertFunction()
{
  return MEMORY[0x2821F3FC0]();
}

{
  return MEMORY[0x2821F3FC8]();
}

uint64_t llvm::Function::addParamAttr()
{
  return MEMORY[0x2821F4530]();
}

{
  return MEMORY[0x2821F4538]();
}

uint64_t llvm::Function::addFnAttr()
{
  return MEMORY[0x2821F45E0]();
}

{
  return MEMORY[0x2821F45E8]();
}

{
  return MEMORY[0x2821F45F0]();
}

uint64_t llvm::StoreInst::StoreInst()
{
  return MEMORY[0x2821F4A90]();
}

{
  return MEMORY[0x2821F4A98]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}