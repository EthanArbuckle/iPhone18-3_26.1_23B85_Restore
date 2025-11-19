void sub_2181598F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceTanh(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "tanh");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218159B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceAbs(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "abs");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218159D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceExp2(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "exp2");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218159F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSign(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "sign");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21815A124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceSquare(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "square");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21815A330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceInverse(uint64_t a1, uint64_t *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (v6)
  {
    v7 = v6[5];
    std::string::basic_string[abi:ne200100]<0>(v20, "epsilon");
    v22 = *v7;
    v8 = v7[1];
    v23 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v19, v20, 1);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *a2;
    v10 = a2[1];
    v16[0] = v9;
    v16[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "x");
    v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v20);
    if (v11)
    {
      v12 = v11[5];
      v13 = v12[1];
      v15[0] = *v12;
      v15[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v14, v19);
      std::string::basic_string[abi:ne200100]<0>(__p, "inverse");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21815A5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  v31 = *(v29 - 104);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLog(uint64_t a1, uint64_t *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (v6)
  {
    v7 = v6[5];
    std::string::basic_string[abi:ne200100]<0>(v20, "epsilon");
    v22 = *v7;
    v8 = v7[1];
    v23 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v19, v20, 1);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *a2;
    v10 = a2[1];
    v16[0] = v9;
    v16[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "x");
    v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v20);
    if (v11)
    {
      v12 = v11[5];
      v13 = v12[1];
      v15[0] = *v12;
      v15[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v14, v19);
      std::string::basic_string[abi:ne200100]<0>(__p, "log");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21815A8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  v31 = *(v29 - 104);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceRsqrt(uint64_t a1, uint64_t *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (v6)
  {
    v7 = v6[5];
    std::string::basic_string[abi:ne200100]<0>(v20, "epsilon");
    v22 = *v7;
    v8 = v7[1];
    v23 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v19, v20, 1);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *a2;
    v10 = a2[1];
    v16[0] = v9;
    v16[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "x");
    v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v20);
    if (v11)
    {
      v12 = v11[5];
      v13 = v12[1];
      v15[0] = *v12;
      v15[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v14, v19);
      std::string::basic_string[abi:ne200100]<0>(__p, "rsqrt");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21815ABE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  v31 = *(v29 - 104);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceClip(uint64_t a1, void *a2, void *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v22, "alpha");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v22);
  if (v6)
  {
    v7 = v6[5];
    std::string::basic_string[abi:ne200100]<0>(v27, "alpha");
    v27[3] = *v7;
    v8 = *(v7 + 1);
    v27[4] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "beta");
    v9 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
    if (v9)
    {
      v10 = v9[5];
      std::string::basic_string[abi:ne200100]<0>(v28, "beta");
      v29 = *v10;
      v11 = v10[1];
      v30[0] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v24, v27, 2);
      v12 = 0;
      while (1)
      {
        v13 = &v27[v12];
        v14 = v30[v12];
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (*(v13 + 63) < 0)
        {
          operator delete(v13[5]);
        }

        v12 -= 5;
        if (v12 == -10)
        {
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          if (v23 < 0)
          {
            operator delete(v22[0]);
          }

          v15 = a2[1];
          v21[0] = *a2;
          v21[1] = v15;
          if (v15)
          {
            atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v27, "x");
          v16 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v27);
          if (v16)
          {
            v17 = v16[5];
            v18 = v17[1];
            v20[0] = *v17;
            v20[1] = v18;
            if (v18)
            {
              atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
            }

            std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v19, v24);
            std::string::basic_string[abi:ne200100]<0>(v22, "clip");
          }

          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }
      }
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21815AF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, std::__shared_weak_count *a33, int a34, __int16 a35, char a36, char a37)
{
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  if (*(v39 - 129) < 0)
  {
    operator delete(*(v39 - 152));
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceLogicalNot(uint64_t a1, void *a2, void *a3)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v15[0] = *a2;
  v15[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "x");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v13);
  if (v6)
  {
    v7 = v6[5];
    v8 = v7[1];
    v14[0] = *v7;
    v14[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = 0u;
    v11 = 0u;
    v12 = 1065353216;
    std::string::basic_string[abi:ne200100]<0>(&__p, "logical_not");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21815B230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v30 = *(v28 - 56);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(v28 - 72);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a16);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueInference::ValueInferenceThreshold(uint64_t a1, uint64_t *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (v6)
  {
    v7 = v6[5];
    std::string::basic_string[abi:ne200100]<0>(v20, "alpha");
    v22 = *v7;
    v8 = v7[1];
    v23 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v19, v20, 1);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *a2;
    v10 = a2[1];
    v16[0] = v9;
    v16[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "x");
    v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, v20);
    if (v11)
    {
      v12 = v11[5];
      v13 = v12[1];
      v15[0] = *v12;
      v15[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(v14, v19);
      std::string::basic_string[abi:ne200100]<0>(__p, "threshold");
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_21815B4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  v31 = *(v29 - 104);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a10);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a27);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_21815B804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21815B8CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

float MIL::MathOps::SignOp<float>(float a1)
{
  v1 = a1 < 0.0;
  v2 = a1 <= 0.0;
  result = 0.0;
  if (v1)
  {
    result = -1.0;
  }

  if (!v2)
  {
    return 1.0;
  }

  return result;
}

void *std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#1},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#1}>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_2829EABA8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#1},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#1}>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_2829EABA8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#1},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#1}>,float ()(float)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

float std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#1},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#1}>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return 1.0 / (v3 + v5);
}

void sub_21815BE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#1},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#1}>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#2},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#2}>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_2829EAC28;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#2},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#2}>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_2829EAC28;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#2},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#2}>,float ()(float)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

float std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#2},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#2}>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return logf(v3 + v5);
}

void sub_21815C0B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#2},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#2}>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#3},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#3}>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_2829EACA8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#3},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#3}>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_2829EACA8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#3},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#3}>,float ()(float)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

float std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#3},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#3}>,float ()(float)>::operator()(uint64_t a1, float *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return 1.0 / sqrtf(v3 + v5);
}

void sub_21815C330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#3},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#3}>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#4},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#4}>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_2829EAD28;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#4},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#4}>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_2829EAD28;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#4},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#4}>,float ()(float)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#4},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#4}>,float ()(float)>::operator()(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "alpha");
  if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v4))
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "beta");
  if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p))
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_21815C5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#4},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#4}>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#5},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#5}>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_2829EADA8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#5},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#5}>,float ()(float)>::~__func(void *a1)
{
  *a1 = &unk_2829EADA8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#5},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#5}>,float ()(float)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#5},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#5}>,float ()(float)>::operator()(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  if (!std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p))
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_21815C890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#5},std::allocator<std::function<float ()(float)> anonymous namespace::GetUnaryOpFunction<float>(std::string const&,std::unordered_map<std::string,float>)::{lambda(float)#5}>,float ()(float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,float>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,float> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__construct_node_hash<std::pair<std::string const,float> const&>();
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

void sub_21815CBAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21815CC74(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIL::Fp16>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::Fp16>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::Fp16>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::Fp16>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MIL::Fp16>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::Fp16>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::Fp16>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::Fp16>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_21815CEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21815CFAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t MIL::MathOps::AcosOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = acosf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::AcoshOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = acoshf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::AsinOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = asinf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::AsinhOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = asinhf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::AtanOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = atanf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::AtanhOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = atanhf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::CeilOp<MIL::Fp16>(__int16 a1)
{
  v4 = a1;
  Float = MIL::Fp16::GetFloat(&v4);
  return MIL::Fp16::FromFloat(v2, ceilf(Float));
}

uint64_t MIL::MathOps::CosOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = cosf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::CoshOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = coshf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::ExpOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = expf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::FloorOp<MIL::Fp16>(__int16 a1)
{
  v4 = a1;
  Float = MIL::Fp16::GetFloat(&v4);
  return MIL::Fp16::FromFloat(v2, floorf(Float));
}

uint64_t MIL::MathOps::RoundOp<MIL::Fp16>(__int16 a1)
{
  v4 = a1;
  Float = MIL::Fp16::GetFloat(&v4);
  return MIL::Fp16::FromFloat(v2, roundf(Float));
}

uint64_t MIL::MathOps::SinOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = sinf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::SinhOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = sinhf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::SqrtOp<MIL::Fp16>(__int16 a1)
{
  v4 = a1;
  Float = MIL::Fp16::GetFloat(&v4);
  return MIL::Fp16::FromFloat(v2, sqrtf(Float));
}

uint64_t MIL::MathOps::TanOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = tanf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::TanhOp<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = tanhf(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::AbsOp<MIL::Fp16>(__int16 a1)
{
  v4 = a1;
  Float = MIL::Fp16::GetFloat(&v4);
  return MIL::Fp16::FromFloat(v2, fabsf(Float));
}

uint64_t MIL::MathOps::Exp2Op<MIL::Fp16>(__int16 a1)
{
  v5 = a1;
  Float = MIL::Fp16::GetFloat(&v5);
  v2 = exp2f(Float);
  return MIL::Fp16::FromFloat(v3, v2);
}

uint64_t MIL::MathOps::SignOp<MIL::Fp16>(__int16 a1)
{
  v7 = a1;
  Float = MIL::Fp16::GetFloat(&v7);
  v3 = Float == 0.0;
  v4 = Float < 0.0;
  v5 = 0.0;
  if (v4)
  {
    v5 = -1.0;
  }

  if (!v4 && !v3)
  {
    v5 = 1.0;
  }

  return MIL::Fp16::FromFloat(v1, v5);
}

uint64_t MIL::MathOps::SquareOp<MIL::Fp16>(__int16 a1)
{
  v4 = a1;
  Float = MIL::Fp16::GetFloat(&v4);
  return MIL::Fp16::FromFloat(v2, Float * Float);
}

uint64_t std::__function::__func<MIL::Fp16 (*)(MIL::Fp16),std::allocator<MIL::Fp16 (*)(MIL::Fp16)>,MIL::Fp16 ()(MIL::Fp16)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EAE28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<MIL::Fp16 (*)(MIL::Fp16),std::allocator<MIL::Fp16 (*)(MIL::Fp16)>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#1},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::~__func(void *a1)
{
  *a1 = &unk_2829EAED8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#1},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::~__func(void *a1)
{
  *a1 = &unk_2829EAED8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#1},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#1},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 20);
  v14 = v3;
  v13 = v5;
  Float = MIL::Fp16::GetFloat(&v14);
  v7 = MIL::Fp16::GetFloat(&v13);
  v9 = MIL::Fp16::FromFloat(v8, 1.0 / (Float + v7));
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_21815D9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#1},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#1}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#2},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::~__func(void *a1)
{
  *a1 = &unk_2829EAF58;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#2},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::~__func(void *a1)
{
  *a1 = &unk_2829EAF58;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#2},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#2},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 20);
  v15 = v3;
  v14 = v5;
  Float = MIL::Fp16::GetFloat(&v15);
  v7 = MIL::Fp16::GetFloat(&v14);
  v8 = logf(Float + v7);
  v10 = MIL::Fp16::FromFloat(v9, v8);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_21815DC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#2},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#2}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#3},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#3}>,MIL::Fp16 ()(MIL::Fp16)>::~__func(void *a1)
{
  *a1 = &unk_2829EAFD8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#3},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#3}>,MIL::Fp16 ()(MIL::Fp16)>::~__func(void *a1)
{
  *a1 = &unk_2829EAFD8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#3},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#3}>,MIL::Fp16 ()(MIL::Fp16)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#3},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#3}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 20);
  v14 = v3;
  v13 = v5;
  Float = MIL::Fp16::GetFloat(&v14);
  v7 = MIL::Fp16::GetFloat(&v13);
  v9 = MIL::Fp16::FromFloat(v8, 1.0 / sqrtf(Float + v7));
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_21815DF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#3},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#3}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#4},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#4}>,MIL::Fp16 ()(MIL::Fp16)>::~__func(void *a1)
{
  *a1 = &unk_2829EB058;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#4},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#4}>,MIL::Fp16 ()(MIL::Fp16)>::~__func(void *a1)
{
  *a1 = &unk_2829EB058;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#4},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#4}>,MIL::Fp16 ()(MIL::Fp16)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#4},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#4}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(v16, "alpha");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v16);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 20);
  std::string::basic_string[abi:ne200100]<0>(__p, "beta");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = *(v6 + 20);
  v20 = v3;
  v19 = v5;
  v18 = v7;
  Float = MIL::Fp16::GetFloat(&v19);
  v9 = MIL::Fp16::GetFloat(&v20);
  v11 = MIL::Fp16::GetFloat(&v18);
  if (v11 >= v9)
  {
    v11 = v9;
  }

  if (Float >= v11)
  {
    v11 = Float;
  }

  v12 = MIL::Fp16::FromFloat(v10, v11);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  return v12;
}

void sub_21815E204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#4},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#4}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#5},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#5}>,MIL::Fp16 ()(MIL::Fp16)>::~__func(void *a1)
{
  *a1 = &unk_2829EB0D8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#5},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#5}>,MIL::Fp16 ()(MIL::Fp16)>::~__func(void *a1)
{
  *a1 = &unk_2829EB0D8;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#5},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#5}>,MIL::Fp16 ()(MIL::Fp16)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#5},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#5}>,MIL::Fp16 ()(MIL::Fp16)>::operator()(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 20);
  v14 = v3;
  v13 = v5;
  Float = MIL::Fp16::GetFloat(&v13);
  v8 = MIL::Fp16::GetFloat(&v14);
  if (Float >= v8)
  {
    v8 = Float;
  }

  v9 = MIL::Fp16::FromFloat(v7, v8);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_21815E4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#5},std::allocator<std::function<MIL::Fp16 ()(MIL::Fp16)> anonymous namespace::GetUnaryOpFunction<MIL::Fp16>(std::string const&,std::unordered_map<std::string,MIL::Fp16>)::{lambda(MIL::Fp16)#5}>,MIL::Fp16 ()(MIL::Fp16)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,MIL::Fp16>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,MIL::Fp16>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::Fp16>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::Fp16>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::Fp16>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MIL::Fp16> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,MIL::Fp16>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::Fp16>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::Fp16>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::Fp16>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,MIL::Fp16> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,MIL::Fp16>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::Fp16>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::Fp16>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::Fp16>>>::__construct_node_hash<std::pair<std::string const,MIL::Fp16> const&>();
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

void sub_21815E7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21815E8A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t MIL::MathOps::SignOp<int>(int a1)
{
  if (a1)
  {
    v1 = -1;
  }

  else
  {
    v1 = 0;
  }

  if (a1 >= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t std::__function::__func<int (*)(int),std::allocator<int (*)(int)>,int ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EB158;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<int (*)(int),std::allocator<int (*)(int)>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#1},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#1}>,int ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2829EB208;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#1},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#1}>,int ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2829EB208;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#1},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#1}>,int ()(int)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#1},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#1}>,int ()(int)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v5 + v3 + 1) >= 3)
  {
    return 0;
  }

  else
  {
    return (v5 + v3);
  }
}

void sub_21815F090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#1},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#1}>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#2},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#2}>,int ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2829EB288;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#2},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#2}>,int ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2829EB288;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#2},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#2}>,int ()(int)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#2},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#2}>,int ()(int)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return log((v5 + v3));
}

void sub_21815F308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#2},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#2}>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#3},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#3}>,int ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2829EB308;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#3},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#3}>,int ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2829EB308;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#3},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#3}>,int ()(int)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#3},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#3}>,int ()(int)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "epsilon");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return (1.0 / sqrt((v5 + v3)));
}

void sub_21815F588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#3},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#3}>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#4},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#4}>,int ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2829EB388;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#4},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#4}>,int ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2829EB388;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#4},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#4}>,int ()(int)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#4},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#4}>,int ()(int)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(v12, "alpha");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), v12);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 10);
  std::string::basic_string[abi:ne200100]<0>(__p, "beta");
  v6 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = *(v6 + 10);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v7 >= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= v5)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

void sub_21815F84C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#4},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#4}>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#5},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#5}>,int ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2829EB408;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#5},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#5}>,int ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2829EB408;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((a1 + 1));

  JUMPOUT(0x21CEAFEA0);
}

void std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#5},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#5}>,int ()(int)>::destroy_deallocate(void *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#5},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#5}>,int ()(int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
  v4 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>((a1 + 8), __p);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(v4 + 10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 <= v3)
  {
    return v3;
  }

  else
  {
    return v5;
  }
}

void sub_21815FAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#5},std::allocator<std::function<int ()(int)> anonymous namespace::GetUnaryOpFunction<int>(std::string const&,std::unordered_map<std::string,int>)::{lambda(int)#5}>,int ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::pair<std::string const,int> const&>();
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

void sub_21815FDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21815FEBC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_21816012C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2181601F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<unsigned char (*)(unsigned char),std::allocator<unsigned char (*)(unsigned char)>,unsigned char ()(unsigned char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2829EB488;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<unsigned char (*)(unsigned char),std::allocator<unsigned char (*)(unsigned char)>,unsigned char ()(unsigned char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,unsigned char>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned char> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned char> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,unsigned char>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned char>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned char>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned char>>>::__construct_node_hash<std::pair<std::string const,unsigned char> const&>();
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

void sub_2181605B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_218160680(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Cast::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21816135C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (a51)
  {
    (*(*a51 + 8))(a51);
  }

  v59 = *v56;
  *v56 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v57 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Clip::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218162384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = *(v61 - 96);
  *(v61 - 96) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = *v60;
  *v60 = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v61 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ElementwiseUnary::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218162FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 96), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 240), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Acos::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218163B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Acosh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218164694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Asin::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181651F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Asinh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218165D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Atan::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181668B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Atanh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218167414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Ceil::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218167F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Cos::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218168AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Cosh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218169634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ElementwiseUnaryWithEpsilon::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21816A30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = *(v51 - 112);
  *(v51 - 112) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *v50;
  *v50 = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v51 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Inverse::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21816B0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = *(v51 - 96);
  *(v51 - 96) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *v50;
  *v50 = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v51 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Log::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21816BEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = *(v51 - 96);
  *(v51 - 96) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *v50;
  *v50 = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v51 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Rsqrt::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21816CC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = *(v51 - 96);
  *(v51 - 96) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *v50;
  *v50 = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v51 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ElementwiseUnaryWithInt::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21816D8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55)
{
  v58 = *(v56 - 96);
  *(v56 - 96) = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  v59 = *v55;
  *v55 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 240), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Abs::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21816E51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 80);
  *(v59 - 80) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Exp2::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21816F158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 80);
  *(v59 - 80) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Sign::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21816FD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 80);
  *(v59 - 80) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Square::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181709D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v61 = *(v59 - 80);
  *(v59 - 80) = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Exp::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218171568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Floor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181720C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Round::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218172C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Sin::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218173788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Sinh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181742E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Sqrt::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218174E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Tan::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181759A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Tanh::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218176508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57)
{
  if (a50)
  {
    (*(*a50 + 8))(a50);
  }

  v60 = *v57;
  *v57 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 80), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v58 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::LogicalNot::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218176CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v38 - 64), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a31, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Threshold::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21817792C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceGather(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValueTypeInferenceGather(a1, v4, a3);
}

void sub_218177D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceGatherAlongAxis(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValueTypeInferenceGatherAlongAxis(a1, v4, a3);
}

void sub_218177DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceGatherNd(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::Shared::ValueTypeInferenceGatherNd(a1, v4, a3);
}

void sub_218177E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::BaseGather::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218178970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v54 = *(v52 - 104);
  *(v52 - 104) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *v51;
  *v51 = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v52 - 160), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::BaseGatherWithAxis::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21817990C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = *(v51 - 104);
  *(v51 - 104) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *v50;
  *v50 = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v51 - 184), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Gather::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21817A960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = *(v51 - 88);
  *(v51 - 88) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *v50;
  *v50 = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v51 - 168), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::GatherAlongAxis::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21817B9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = *(v51 - 88);
  *(v51 - 88) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *v50;
  *v50 = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v51 - 168), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::GatherNd::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21817C950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v54 = *(v52 - 88);
  *(v52 - 88) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *v51;
  *v51 = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v52 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a51, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateAffine(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v29, "padding_value");
  ParameterValue = MIL::IROperation::GetParameterValue(this);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v6 = (*(*ParameterValue + 32))(ParameterValue);
  v7 = MIL::IRValueType::AsTensorType(v6);
  v8 = (*(*v7 + 88))(v7);
  if (v8 == 4)
  {
    LOWORD(v29.__r_.__value_.__l.__data_) = MIL::IRValue::GetScalar<MIL::Fp16>(ParameterValue);
    Float = MIL::Fp16::GetFloat(&v29);
LABEL_7:
    if (Float == 0.0)
    {
      MIL::ValidationResult::ValidationResult(a2);
    }

    else
    {
      std::to_string(&v23, Float);
      v10 = std::string::insert(&v23, 0, "Unsupported value, '");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v29, "', for parameter 'padding_value'");
      v13 = v12->__r_.__value_.__r.__words[0];
      size = v12->__r_.__value_.__l.__size_;
      v24[0] = v12->__r_.__value_.__r.__words[2];
      *(v24 + 3) = *(&v12->__r_.__value_.__r.__words[2] + 3);
      v15 = SHIBYTE(v12->__r_.__value_.__r.__words[2]);
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      LocationPtr = MIL::IRObject::GetLocationPtr(this);
      v17 = LocationPtr[1];
      v21 = *LocationPtr;
      v22 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v15 < 0)
      {
        std::string::__init_copy_ctor_external(&v20, v13, size);
      }

      else
      {
        v20.__r_.__value_.__r.__words[0] = v13;
        v20.__r_.__value_.__l.__size_ = size;
        LODWORD(v20.__r_.__value_.__r.__words[2]) = v24[0];
        *(&v20.__r_.__value_.__r.__words[2] + 3) = *(v24 + 3);
        *(&v20.__r_.__value_.__s + 23) = v15;
      }

      MIL::ValidationResult::ValidationResult(a2, &v21, 315, &v20);
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      if (v15 < 0)
      {
        operator delete(v13);
      }
    }

    return;
  }

  if (v8 == 5)
  {
    Float = MIL::IRValue::GetScalar<float>(ParameterValue);
    goto LABEL_7;
  }

  v18 = MIL::IRObject::GetLocationPtr(this);
  v19 = v18[1];
  v27 = *v18;
  v28 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Unexpected dType for affine input padding_value.");
  MIL::ValidationResult::ValidationResult(a2, &v27, 1, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_21817CFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceCropResize(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v6 + 88))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "roi");
  v7 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "target_height");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v10 = MIL::IRValue::AsTensor(SingleValue);
  v11 = MIL::IRValue::GetScalar<int>(v10);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "target_width");
  v12 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v13 = MIL::IRValue::AsTensor(v12);
  v14 = MIL::IRValue::GetScalar<int>(v13);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = **(*(*v8 + 96))(v8);
  __p[1] = **(*(*v6 + 96))(v6);
  v17 = *(*(*(*v6 + 96))(v6) + 8);
  v18 = MIL::IRConstantDimension::Make(*a1, v11);
  v19 = MIL::IRConstantDimension::Make(*a1, v14);
  memset(v15, 0, sizeof(v15));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v15, __p, &v20, 5uLL);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_21817D324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceAffine(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v6 + 88))(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "output_height");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v8 = MIL::IRValue::AsTensor(SingleValue);
  v9 = MIL::IRValue::GetScalar<int>(v8);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "output_width");
  v10 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  v11 = MIL::IRValue::AsTensor(v10);
  v12 = MIL::IRValue::GetScalar<int>(v11);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 >= 1 && v12 > 0)
  {
    __p[0] = **(*(*v6 + 96))(v6);
    __p[1] = *(*(*(*v6 + 96))(v6) + 8);
    v16 = MIL::IRConstantDimension::Make(*a1, v9);
    v17 = MIL::IRConstantDimension::Make(*a1, v12);
    memset(v14, 0, sizeof(v14));
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v14, __p, &v18, 4uLL);
    MIL::IRTensorValueType::MakeWithShape();
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::UnknownLocation::Make(exception);
}

void sub_21817D65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  __cxa_free_exception(v26);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceResample(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v5 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "coordinates");
  v6 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(v6);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v5 + 88))(v5);
  __p[0] = **(*(*v5 + 96))(v5);
  __p[1] = *(*(*(*v5 + 96))(v5) + 8);
  v10 = *(*(*(*v7 + 96))(v7) + 8);
  v11 = *(*(*(*v7 + 96))(v7) + 16);
  memset(v8, 0, sizeof(v8));
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const* const*,MIL::IRDimension const* const*>(v8, __p, &v12, 4uLL);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_21817D960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceUpsampleNearestNeighbor(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v41, *v8, v8[1], (v8[1] - *v8) >> 3);
  v9 = *a2;
  v10 = a2[1];
  v37[0] = v9;
  v37[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "scale_factor_height");
    v11 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v32);
    v12 = MIL::IRValueType::AsTensorType(v11);
    v13 = (*(*v12 + 88))(v12);
    SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v32);
    v15 = MIL::IRValue::AsTensor(SingleValue);
    if (v13 == 11)
    {
      v16 = MIL::IRValue::GetScalar<int>(v15);
    }

    else
    {
      v16 = MIL::IRValue::GetScalar<float>(v15);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }

    std::string::basic_string[abi:ne200100]<0>(&v32, "scale_factor_width");
    v17 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &v32);
    v18 = MIL::IRValueType::AsTensorType(v17);
    v19 = (*(*v18 + 88))(v18);
    v20 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v32);
    v21 = MIL::IRValue::AsTensor(v20);
    if (v19 == 11)
    {
      v22 = MIL::IRValue::GetScalar<int>(v21);
    }

    else
    {
      v22 = MIL::IRValue::GetScalar<float>(v21);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v32, v41, v42, (v42 - v41) >> 3);
    v23 = (*(**(v42 - 16) + 16))(*(v42 - 16));
    v24 = *a1;
    if (v23)
    {
      v25 = (*(*v23 + 48))(v23);
      v26 = MIL::IRConstantDimension::Make(v24, vcvtms_u32_f32(v16 * v25));
    }

    else
    {
      v26 = MIL::IRUnknownDimension::Make(*a1, 0);
    }

    *(v33 - 16) = v26;
    v27 = (*(**(v41 + v33 - v32 - 8) + 16))(*(v41 + v33 - v32 - 8));
    v28 = *a1;
    if (v27)
    {
      v29 = (*(*v27 + 48))(v27);
      v30 = MIL::IRConstantDimension::Make(v28, vcvtms_u32_f32(v22 * v29));
    }

    else
    {
      v30 = MIL::IRUnknownDimension::Make(*a1, 0);
    }

    *(v33 - 8) = v30;
    MIL::IRTensorValueType::MakeWithShape();
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v35, __p);
  v35[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v36 = v40;
  MIL::ValidationError::ValidationError(exception, v35);
}

void sub_21817DE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  MIL::ValidationResult::~ValidationResult(&a15);
  MIL::ValidationResult::~ValidationResult(&a24);
  v31 = *(v29 - 120);
  if (v31)
  {
    *(v29 - 112) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::anonymous namespace::ImageResizingValidationHelper(void *a1@<X0>, MIL::IRTensorValueType *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v6 = (*(*a2 + 96))(a2);
  v18 = 0;
  v19 = 0;
  v17 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v17, *v6, v6[1], (v6[1] - *v6) >> 3);
  if (MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(&v17))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v8 = a1[1];
    v15[0] = *a1;
    v15[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v14, "Variadic shape is not supported for upsample op type inference.");
    MIL::ValidationResult::ValidationResult(v16, v15, 315, v14);
    MIL::ValidationError::ValidationError(exception, v16);
  }

  if (MIL::IRTensorValueType::Rank(a2) <= 2)
  {
    v9 = __cxa_allocate_exception(0x48uLL);
    v10 = a1[1];
    v12[0] = *a1;
    v12[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v11, "Rank of the input tensor must be at least 3.");
    MIL::ValidationResult::ValidationResult(v13, v12, 315, v11);
    MIL::ValidationError::ValidationError(v9, v13);
  }

  MIL::ValidationResult::ValidationResult(a3);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_21817E07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  MIL::ValidationResult::~ValidationResult(&a18);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v33)
  {
    __cxa_free_exception(v32);
  }

  v36 = *(v34 - 56);
  if (v36)
  {
    *(v34 - 48) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceUpsampleBilinear(MIL::IRUnknownDimension **a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceUpsampleNearestNeighbor(a1, v4, a3);
}

void sub_21817E194(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceResizeNearestNeighbor(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v32, *v8, v8[1], (v8[1] - *v8) >> 3);
  v9 = a2[1];
  v28[0] = *a2;
  v28[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v23, "target_size_width");
    SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v23);
    v11 = MIL::IRValue::AsTensor(SingleValue);
    v12 = MIL::IRValue::GetScalar<int>(v11);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v23);
    }

    std::string::basic_string[abi:ne200100]<0>(&v23, "target_size_height");
    v13 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v23);
    v14 = MIL::IRValue::AsTensor(v13);
    v15 = MIL::IRValue::GetScalar<int>(v14);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v23);
    }

    if (v12 >= 1 && v15 > 0)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v23, v32, v33, (v33 - v32) >> 3);
      v16 = MIL::IRConstantDimension::Make(*a1, v12);
      *(v24 - 8) = v16;
      v17 = MIL::IRConstantDimension::Make(*a1, v15);
      *(v24 - 16) = v17;
      MIL::IRTensorValueType::MakeWithShape();
    }

    exception = __cxa_allocate_exception(0x48uLL);
    v20 = a2[1];
    *&v22 = *a2;
    *(&v22 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v21, "Param target_size should be greater than zero.");
    MIL::ValidationError::ValidationError(exception, &v22, v21, 315);
  }

  v18 = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v26, __p);
  v26[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v27 = v31;
  MIL::ValidationError::ValidationError(v18, v26);
}

void sub_21817E50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  MIL::ValidationResult::~ValidationResult(&a24);
  MIL::ValidationResult::~ValidationResult(&a33);
  v40 = *(v38 - 104);
  if (v40)
  {
    *(v38 - 96) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceResizeBilinear(MIL::IRConstantDimension **a1, void *a2, void *a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceResizeNearestNeighbor(a1, v4, a3);
}

void sub_21817E670(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceCrop(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v7 + 88))(v7);
  v8 = (*(*v7 + 96))(v7);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v47, *v8, v8[1], (v8[1] - *v8) >> 3);
  v9 = a2[1];
  v43[0] = *a2;
  v43[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    std::string::basic_string[abi:ne200100]<0>(&v38, "crop_height");
    SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v38);
    v11 = MIL::IRValue::AsTensor(SingleValue);
    Data = MIL::IRTensorValue::GetDataView<int>(v11);
    v14 = v13;
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v38);
    }

    std::string::basic_string[abi:ne200100]<0>(&v38, "crop_width");
    v15 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &v38);
    v16 = MIL::IRValue::AsTensor(v15);
    v17 = MIL::IRTensorValue::GetDataView<int>(v16);
    v19 = v18;
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v38);
    }

    v38 = 0;
    v39 = 0;
    v40 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v38, v47, v48, (v48 - v47) >> 3);
    v20 = (*(**(v48 - 16) + 16))(*(v48 - 16));
    v21 = *a1;
    if (v20)
    {
      v22 = (*(*v20 + 48))(v20);
      v23 = a2[1];
      v37[0] = *a2;
      v37[1] = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = MIL::IRConstantDimension::Make(v21, v24);
      *(v39 - 16) = v25;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }
    }

    else
    {
      v26 = MIL::IRUnknownDimension::Make(*a1, 0);
      *(v39 - 16) = v26;
    }

    v27 = (*(**(v47 + v39 - v38 - 8) + 16))(*(v47 + v39 - v38 - 8));
    v28 = *a1;
    if (v27)
    {
      v29 = (*(*v27 + 48))(v27);
      v30 = *a2;
      v31 = a2[1];
      v36[0] = v30;
      v36[1] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = MIL::IRConstantDimension::Make(v28, v32);
      *(v39 - 8) = v33;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }

    else
    {
      v34 = MIL::IRUnknownDimension::Make(*a1, 0);
      *(v39 - 8) = v34;
    }

    MIL::IRTensorValueType::MakeWithShape();
  }

  exception = __cxa_allocate_exception(0x48uLL);
  MIL::MILResult::MILResult(v41, __p);
  v41[0].__r_.__value_.__r.__words[0] = &unk_2829E9B70;
  v42 = v46;
  MIL::ValidationError::ValidationError(exception, v41);
}

void sub_21817EAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  MIL::ValidationResult::~ValidationResult(&a20);
  MIL::ValidationResult::~ValidationResult(&a29);
  v36 = *(v34 - 128);
  if (v36)
  {
    *(v34 - 120) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

unint64_t MIL::Operators::Common::ios15::CustomValueTypeInference::anonymous namespace::InferCroppedDimension(_DWORD *a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a2 != 2)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v13 = a4[1];
    v40[0] = *a4;
    v40[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v39, "Crop parameter must have exactly 2 elements");
    MIL::ValidationResult::ValidationResult(v41, v40, 315, v39);
    MIL::ValidationError::ValidationError(exception, v41);
  }

  if ((*a1 & 0x80000000) != 0 || (v4 = a1[1], v4 < 0))
  {
    v9 = __cxa_allocate_exception(0x48uLL);
    v10 = a4[1];
    v37[0] = *a4;
    v37[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v36, "Crop parameter must be non-negative");
    MIL::ValidationResult::ValidationResult(v38, v37, 315, v36);
    MIL::ValidationError::ValidationError(v9, v38);
  }

  v6 = (v4 + *a1);
  result = a3 - v6;
  if (a3 <= v6)
  {
    v15 = __cxa_allocate_exception(0x48uLL);
    v16 = a4[1];
    v34[0] = *a4;
    v34[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    std::to_string(&v28, v6);
    v17 = std::string::insert(&v28, 0, "Sum of crop parameters (");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v29, ") must be less than input dimension (");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v27, a3);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v27;
    }

    else
    {
      v21 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v30, v21, size);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v31, ").");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v33 = v25->__r_.__value_.__r.__words[2];
    v32 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    MIL::ValidationResult::ValidationResult(v35, v34, 315, &v32);
    MIL::ValidationError::ValidationError(v15, v35);
  }

  return result;
}

void sub_21817EE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, std::__shared_weak_count *a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  MIL::ValidationResult::~ValidationResult(&a50);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  if (v62)
  {
    __cxa_free_exception(v63);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Affine::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218180F78(_Unwind_Exception *a1)
{
  v3 = *(v2 - 96);
  *(v2 - 96) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3D0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x468], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Crop::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218182714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void **a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58)
{
  v61 = a58;
  a58 = 0;
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  v62 = *v58;
  *v58 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v59 - 224), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CropResize::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218184494(_Unwind_Exception *a1)
{
  v4 = *(v2 - 216);
  *(v2 - 216) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 88), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x330], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Resample::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218186F34(_Unwind_Exception *a1)
{
  v3 = STACK[0x4C0];
  STACK[0x4C0] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x440], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x4E8], 0);
  _Unwind_Resume(a1);
}

void sub_218187B00()
{
  v0 = STACK[0x4C0];
  if (STACK[0x4C0])
  {
    STACK[0x4C8] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x218187AC0);
}

void MIL::Operators::Common::ios15::ResizeBilinear::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218188974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = *(v60 - 72);
  *(v60 - 72) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *v59;
  *v59 = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v60 - 104), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a59, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ResizeNearestNeighbor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218189AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void **a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  v58 = a55;
  a55 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  v59 = *v55;
  *v55 = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a50, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v56 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::UpsampleBilinear::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21818AE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 96);
  *(v67 - 96) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x210], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::UpsampleNearestNeighbor::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21818C234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(v67 - 96);
  *(v67 - 96) = 0;
  if (v69)
  {
    (*(*v69 + 8))(v69);
  }

  v70 = *v66;
  *v66 = 0;
  if (v70)
  {
    (*(*v70 + 8))(v70);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a66, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v67 - 248), 0);
  _Unwind_Resume(a1);
}

void sub_21818C7AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[17],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_21818C894(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21818C90C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[14],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_21818C9F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21818CA6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[12],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_21818CB54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21818CBCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[11],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_21818CCB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21818CD2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[23],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_21818CE14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21818CE8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[20],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_21818CF74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21818CFEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[19],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_21818D0D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21818D14C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[18],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_21818D234(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateEinsum(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  LocationPtr = MIL::IRObject::GetLocationPtr(this);
  v7 = *LocationPtr;
  v6 = LocationPtr[1];
  v21[0] = *LocationPtr;
  v21[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "values");
  v8 = (*(*this + 152))(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 == 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "values");
    ParameterType = MIL::IROperation::GetParameterType(this);
    v10 = MIL::IRValueType::AsTensorType(ParameterType);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "values");
    v11 = MIL::IROperation::GetParameterType(this);
    v12 = MIL::IRValueType::AsTensorType(v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v14, "equation");
    ParameterValue = MIL::IROperation::GetParameterValue(this);
    MIL::IRValue::GetScalar<std::string>(ParameterValue, &__p);
    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = v7;
    v19 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v16, "Inputs 'values' must be of length 2");
    MIL::ValidationResult::ValidationResult(a2, &v18, 315, v16);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_21818D43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::ValidateInputsForEinsum(MIL::IRTensorValueType *a1@<X0>, MIL::IRTensorValueType *a2@<X1>, const std::string *a3@<X2>, uint64_t *a4@<X3>, MIL::IRConstantDimension *a5@<X4>, uint64_t a6@<X5>, MIL::ValidationResult *a7@<X8>)
{
  v111[1] = *MEMORY[0x277D85DE8];
  if (!(*(*a1 + 104))(a1) || !(*(*a2 + 104))(a2) || (v14 = MIL::IRTensorValueType::Rank(a1), v14 != MIL::IRTensorValueType::Rank(a2)))
  {
    v22 = a4[1];
    v106 = *a4;
    v107 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v104, "Inputs must have equal fixed ranks");
    MIL::ValidationResult::ValidationResult(a7, &v106, 315, v104);
    if (v105 < 0)
    {
      operator delete(v104[0]);
    }

    v23 = v107;
    if (!v107)
    {
      return;
    }

    goto LABEL_22;
  }

  v15 = (*(*a1 + 88))(a1);
  if (v15 != (*(*a2 + 88))(a2))
  {
    v24 = a4[1];
    v102 = *a4;
    v103 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v100, "Inputs must have the same datatype");
    MIL::ValidationResult::ValidationResult(a7, &v102, 319, v100);
    if (v101 < 0)
    {
      operator delete(v100[0]);
    }

    v23 = v103;
    if (!v103)
    {
      return;
    }

    goto LABEL_22;
  }

  v16 = MIL::IRTensorValueType::Rank(a1);
  if (v16 - 3 >= 2)
  {
    std::to_string(&v98, v16);
    v25 = std::string::insert(&v98, 0, "Rank of the inputs is ");
    v26 = *&v25->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v27 = std::string::append(&__str, ", but it must be either 3 or 4");
    v28 = v27->__r_.__value_.__r.__words[0];
    size = v27->__r_.__value_.__l.__size_;
    LODWORD(v86.__r_.__value_.__l.__data_) = v27->__r_.__value_.__r.__words[2];
    *(v86.__r_.__value_.__r.__words + 3) = *(&v27->__r_.__value_.__r.__words[2] + 3);
    v30 = SHIBYTE(v27->__r_.__value_.__r.__words[2]);
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }

    v31 = a4[1];
    v96 = *a4;
    v97 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v30 < 0)
    {
      std::string::__init_copy_ctor_external(&v95, v28, size);
    }

    else
    {
      v95.__r_.__value_.__r.__words[0] = v28;
      v95.__r_.__value_.__l.__size_ = size;
      LODWORD(v95.__r_.__value_.__r.__words[2]) = v86.__r_.__value_.__l.__data_;
      *(&v95.__r_.__value_.__r.__words[2] + 3) = *(v86.__r_.__value_.__r.__words + 3);
      *(&v95.__r_.__value_.__s + 23) = v30;
    }

    MIL::ValidationResult::ValidationResult(a7, &v96, 315, &v95);
    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v95.__r_.__value_.__l.__data_);
    }

    if (v97)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v97);
    }

    if (v30 < 0)
    {
      v32 = v28;
LABEL_45:
      operator delete(v32);
    }

    return;
  }

  v57 = v16 - 3;
  v58 = v16;
  v17 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v17 >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = a3->__r_.__value_.__r.__words[0];
  }

  if (v17 < 0)
  {
    v17 = a3->__r_.__value_.__l.__size_;
  }

  if (v17 >= 2)
  {
    v19 = v18 + v17;
    v20 = v18;
    while (1)
    {
      v21 = memchr(v20, 45, v17 - 1);
      if (!v21)
      {
        goto LABEL_80;
      }

      if (*v21 == 15917)
      {
        break;
      }

      v20 = (v21 + 1);
      v17 = v19 - v20;
      if (v19 - v20 < 2)
      {
        goto LABEL_80;
      }
    }

    if (v21 == v19)
    {
      goto LABEL_80;
    }

    v33 = v21 - v18;
    if (v33 == -1)
    {
      goto LABEL_80;
    }

    std::string::basic_string(&__str, a3, 0, v33, &v98);
    std::string::basic_string(&v98, a3, v33 + 2, 0xFFFFFFFFFFFFFFFFLL, &v86);
    v34 = std::string::find(&__str, 44, 0);
    if (v34 == -1)
    {
      v51 = a4[1];
      v89 = *a4;
      v90 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v87, "Invalid equation");
      MIL::ValidationResult::ValidationResult(a7, &v89, 315, v87);
      if (v88 < 0)
      {
        operator delete(v87[0]);
      }

      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v90);
      }

LABEL_102:
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        v32 = __str.__r_.__value_.__r.__words[0];
        goto LABEL_45;
      }

      return;
    }

    v35 = v34;
    std::string::basic_string(&v86, &__str, 0, v34, &v85);
    std::string::basic_string(&v85, &__str, v35 + 1, 0xFFFFFFFFFFFFFFFFLL, &v79);
    v36 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v86.__r_.__value_.__l.__size_;
    }

    if (v36 != v58)
    {
      goto LABEL_86;
    }

    v37 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = v85.__r_.__value_.__l.__size_;
    }

    if (v37 != v58)
    {
      goto LABEL_86;
    }

    v38 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v98.__r_.__value_.__l.__size_;
    }

    if (v38 != v58)
    {
LABEL_86:
      v50 = a4[1];
      v83 = *a4;
      v84 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v81, "Invalid equation, ranks from the equation are incompatible with the input/output ranks.");
      MIL::ValidationResult::ValidationResult(a7, &v83, 315, v81);
      if (v82 < 0)
      {
        operator delete(v81[0]);
      }

      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      goto LABEL_92;
    }

    std::vector<int>::vector[abi:ne200100](&v79, v58);
    std::vector<int>::vector[abi:ne200100](&v77, v58);
    std::vector<int>::vector[abi:ne200100](&v75, v58);
    v74[0] = 0;
    v74[1] = 0;
    v72 = &v73;
    v73 = v74;
    v110 = xmmword_218583BB0;
    v70 = 0;
    v71 = 0;
    v69 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v69, &v110, v111, 4uLL);
    v41 = v69;
    if (v80 - v79 != v70 - v69 || memcmp(v79, v69, v80 - v79))
    {
      v42 = 0;
      if (!v41)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v109 = xmmword_21858FF00;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v66, &v109, &v110, 4uLL);
    v53 = v66;
    if (v78 - v77 == v67 - v66 && !memcmp(v77, v66, v78 - v77))
    {
      v108 = xmmword_21858FF10;
      v64 = 0;
      v65 = 0;
      __p = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v108, &v109, 4uLL);
      v55 = __p;
      v42 = v76 - v75 == v64 - __p && memcmp(v75, __p, v76 - v75) == 0;
      if (v55)
      {
        v64 = v55;
        operator delete(v55);
      }

      v53 = v66;
      if (!v66)
      {
LABEL_116:
        v41 = v69;
        if (!v69)
        {
LABEL_62:
          if (v42)
          {
            goto LABEL_68;
          }

          *&v110 = 0x100000000;
          DWORD2(v110) = 2;
          v70 = 0;
          v71 = 0;
          v69 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v69, &v110, &v110 + 12, 3uLL);
          v43 = v69;
          if (v80 - v79 != v70 - v69 || memcmp(v79, v69, v80 - v79))
          {
            v44 = 0;
            if (!v43)
            {
              goto LABEL_67;
            }

            goto LABEL_66;
          }

          *&v109 = 0x100000002;
          DWORD2(v109) = 3;
          v67 = 0;
          v68 = 0;
          v66 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v66, &v109, &v109 + 12, 3uLL);
          v54 = v66;
          if (v78 - v77 == v67 - v66 && !memcmp(v77, v66, v78 - v77))
          {
            *&v108 = 0x100000000;
            DWORD2(v108) = 3;
            v64 = 0;
            v65 = 0;
            __p = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v108, &v108 + 12, 3uLL);
            v56 = __p;
            v44 = v76 - v75 == v64 - __p && memcmp(v75, __p, v76 - v75) == 0;
            if (v56)
            {
              v64 = v56;
              operator delete(v56);
            }

            v54 = v66;
            if (!v66)
            {
LABEL_122:
              v43 = v69;
              if (!v69)
              {
LABEL_67:
                if (!v44)
                {
                  v52 = a4[1];
                  v61 = *a4;
                  v62 = v52;
                  if (v52)
                  {
                    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  std::string::basic_string[abi:ne200100]<0>(v59, "invalid or unsupported equation.");
                  MIL::ValidationResult::ValidationResult(a7, &v61, 315, v59);
                  if (v60 < 0)
                  {
                    operator delete(v59[0]);
                  }

                  if (v62)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
                  }

                  goto LABEL_74;
                }

LABEL_68:
                if (a5 && a6)
                {
                  v45 = (*(*a1 + 96))(a1);
                  v69 = 0;
                  v70 = 0;
                  v71 = 0;
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v69, *v45, v45[1], (v45[1] - *v45) >> 3);
                  v46 = (*(*a2 + 96))(a2);
                  v66 = 0;
                  v67 = 0;
                  v68 = 0;
                  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v66, *v46, v46[1], (v46[1] - *v46) >> 3);
                  *&v110 = &v69;
                  *(&v110 + 1) = &v66;
                  *&v109 = MIL::IRConstantDimension::Make(a5, 1);
                  std::vector<MIL::IRDimension const*>::vector[abi:ne200100](&__p, v58);
                  *(__p + v58 - 1) = *(v66 + v58 - 1);
                  *(__p + v57) = *(v69 + v57);
                  *(__p + v58 - 2) = v47;
                  if (v58 == 4)
                  {
                    *__p = v48;
                  }

                  (*(*a1 + 88))(a1);
                  MIL::IRTensorValueType::MakeWithShape();
                }

                MIL::ValidationResult::ValidationResult(a7);
LABEL_74:
                std::__tree<float>::destroy(&v73, v74[0]);
                if (v75)
                {
                  v76 = v75;
                  operator delete(v75);
                }

                if (v77)
                {
                  v78 = v77;
                  operator delete(v77);
                }

                if (v79)
                {
                  v80 = v79;
                  operator delete(v79);
                }

LABEL_92:
                if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v85.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v86.__r_.__value_.__l.__data_);
                }

                goto LABEL_102;
              }

LABEL_66:
              v70 = v43;
              operator delete(v43);
              goto LABEL_67;
            }
          }

          else
          {
            v44 = 0;
            if (!v54)
            {
              goto LABEL_122;
            }
          }

          v67 = v54;
          operator delete(v54);
          goto LABEL_122;
        }

LABEL_61:
        v70 = v41;
        operator delete(v41);
        goto LABEL_62;
      }
    }

    else
    {
      v42 = 0;
      if (!v53)
      {
        goto LABEL_116;
      }
    }

    v67 = v53;
    operator delete(v53);
    goto LABEL_116;
  }

LABEL_80:
  v49 = a4[1];
  v93 = *a4;
  v94 = v49;
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v91, "Invalid equation");
  MIL::ValidationResult::ValidationResult(a7, &v93, 315, v91);
  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  v23 = v94;
  if (v94)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_21818DFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  std::__tree<float>::destroy(&a26, a27);
  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a72 < 0)
  {
    operator delete(a70);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceLinear(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  (*(*v6 + 88))(v6);
  v7 = (*(*v6 + 96))(v6);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v33, *v7, v7[1], (v7[1] - *v7) >> 3);
  std::string::basic_string[abi:ne200100]<0>(&__p, "weight");
  v8 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v9 = MIL::IRValueType::AsTensorType(v8);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  v10 = (*(*v9 + 96))(v9);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v30, *v10, v10[1], (v10[1] - *v10) >> 3);
  v11 = *(v34 - 8);
  if (v11 == *(v31 - 8) || (*(*v11 + 24))(v11) && (v12 = MIL::IRDimension::AsUnknown(*(v34 - 8)), !(*(*v12 + 32))(v12)))
  {
    v13 = (*(*v6 + 96))(v6);
    __p = 0;
    v28 = 0;
    v29 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&__p, *v13, v13[1], (v13[1] - *v13) >> 3);
    *(v28 - 8) = *v30;
    MIL::IRTensorValueType::MakeWithShape();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "The last dimension of x and the last dimension of weight should be compatible, but they are ", 92);
  (*(**(v34 - 8) + 40))(v36);
  if ((v37 & 0x80u) == 0)
  {
    v15 = v36;
  }

  else
  {
    v15 = v36[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v16 = v37;
  }

  else
  {
    v16 = v36[1];
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " and ", 5);
  (*(**(v31 - 8) + 40))(v25);
  if ((v26 & 0x80u) == 0)
  {
    v19 = v25;
  }

  else
  {
    v19 = v25[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v20 = v26;
  }

  else
  {
    v20 = v25[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  exception = __cxa_allocate_exception(0x48uLL);
  v22 = a2[1];
  *&v24 = *a2;
  *(&v24 + 1) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  std::stringbuf::str();
  MIL::ValidationError::ValidationError(exception, &v24, v23, 315);
}

void sub_21818E698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v42)
  {
    __cxa_free_exception(v41);
  }

  std::ostringstream::~ostringstream(&a24, MEMORY[0x277D82828]);
  MEMORY[0x21CEAFDA0](&a41);
  v45 = *(v43 - 144);
  if (v45)
  {
    *(v43 - 136) = v45;
    operator delete(v45);
  }

  v46 = *(v43 - 120);
  if (v46)
  {
    *(v43 - 112) = v46;
    operator delete(v46);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceMatMul(MIL::IRConstantDimension **a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v6 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "y");
  v7 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, &__p);
  v8 = MIL::IRValueType::AsTensorType(v7);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "transpose_x");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v10 = MIL::IRValue::GetScalar<BOOL>(SingleValue);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "transpose_y");
  v11 = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, &__p);
  v12 = MIL::IRValue::GetScalar<BOOL>(v11);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  (*(*v6 + 88))(v6);
  MIL::ValueTypeInferenceUtils::GetMatmulOutShape(a1, v6, v8, v10, v12, &__p);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_21818E988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceEinsum(MIL::IRConstantDimension **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "values");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  std::vector<std::shared_ptr<MIL::IRTypedArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRTypedArgument>*,std::shared_ptr<MIL::IRTypedArgument>*>(&v29, v8[5], v8[6], (v8[6] - v8[5]) >> 4);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v30 - v29 != 32)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v15 = a2[1];
    *&v28 = *a2;
    *(&v28 + 1) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v27, "Inputs 'values' must be of length 2");
    MIL::ValidationError::ValidationError(exception, &v28, v27, 315);
  }

  ValueType = MIL::IRTypedArgument::GetValueType(*v29);
  v10 = MIL::IRValueType::AsTensorType(ValueType);
  v11 = MIL::IRTypedArgument::GetValueType(v29[2]);
  v12 = MIL::IRValueType::AsTensorType(v11);
  std::string::basic_string[abi:ne200100]<0>(__p, "equation");
  SingleValue = MIL::ValueTypeInferenceUtils::GetSingleValue(a3, __p);
  MIL::IRValue::GetScalar<std::string>(SingleValue, &v26);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = 0;
  if (!MIL::ValidationResult::IsGood(__p))
  {
    v16 = __cxa_allocate_exception(0x48uLL);
    v17 = a2[1];
    *&v22 = *a2;
    *(&v22 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    Message = MIL::MILResult::GetMessage(__p);
    if (*(Message + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, *Message, *(Message + 8));
    }

    else
    {
      v19 = *Message;
      v21.__r_.__value_.__r.__words[2] = *(Message + 16);
      *&v21.__r_.__value_.__l.__data_ = v19;
    }

    Reason = MIL::ValidationResult::GetReason(__p);
    MIL::ValidationError::ValidationError(v16, &v22, &v21, Reason);
  }

  v32 = v25;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const* const*,MIL::IRValueType const* const*>(a4, &v32, &v33, 1uLL);
  MIL::ValidationResult::~ValidationResult(__p);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  __p[0] = &v29;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_21818EC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v40)
  {
    __cxa_free_exception(v39);
  }

  MIL::ValidationResult::~ValidationResult(&a17);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  a17 = v41 - 104;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void sub_21818ED7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x21818ED74);
}

uint64_t MIL::Operators::Common::ios15::anonymous namespace::ValidateInputsForEinsum(MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,std::string const&,std::shared_ptr<MIL::Location const> &,MIL::MILContext *,MIL::IRValueType const**)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4[1] != *a4)
  {
    v8 = 0;
    do
    {
      if (*(a3 + 23) >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      v10 = *(v9 + v8);
      v17 = v10;
      v11 = *a1;
      v12 = *(*a1 + 8);
      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = *a1 + 8;
      do
      {
        if (*(v12 + 28) >= v10)
        {
          v13 = v12;
        }

        v12 = *(v12 + 8 * (*(v12 + 28) < v10));
      }

      while (v12);
      if (v13 == *a1 + 8 || v10 < *(v13 + 28))
      {
LABEL_13:
        v18 = &v17;
        *(std::__tree<std::__value_type<char,int>,std::__map_value_compare<char,std::__value_type<char,int>,std::less<char>,true>,std::allocator<std::__value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v11, &v17) + 8) = a2;
        a2 = (a2 + 1);
        v11 = *a1;
      }

      v18 = &v17;
      v14 = std::__tree<std::__value_type<char,int>,std::__map_value_compare<char,std::__value_type<char,int>,std::less<char>,true>,std::allocator<std::__value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v11, &v17);
      v15 = *a4;
      *(*a4 + 4 * v8++) = *(v14 + 8);
    }

    while (v8 < (a4[1] - v15) >> 2);
  }

  return a2;
}

uint64_t MIL::Operators::Common::ios15::anonymous namespace::ValidateInputsForEinsum(MIL::IRTensorValueType const*,MIL::IRTensorValueType const*,std::string const&,std::shared_ptr<MIL::Location const> &,MIL::MILContext *,MIL::IRValueType const**)::$_1::operator()(void **a1, uint64_t a2)
{
  v4 = *(**a1 + 8 * a2);
  if ((*(*v4 + 24))(v4))
  {
    v5 = a1;
  }

  else
  {
    v5 = a1 + 1;
    v6 = *(*a1[1] + 8 * a2);
    if (!(*(*v6 + 24))(v6))
    {
      v7 = MIL::IRDimension::AsConstant(*(**a1 + 8 * a2));
      v8 = (*(*v7 + 48))(v7);
      v9 = MIL::IRDimension::AsConstant(*(*a1[1] + 8 * a2));
      if (v8 > (*(*v9 + 48))(v9))
      {
        v5 = a1;
      }
    }
  }

  return *(**v5 + 8 * a2);
}

uint64_t *std::__tree<std::__value_type<char,int>,std::__map_value_compare<char,std::__value_type<char,int>,std::less<char>,true>,std::allocator<std::__value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(uint64_t a1, char *a2)
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
      v5 = *(v2 + 28);
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

void MIL::Operators::Common::ios15::Einsum::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21818FB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  if (a46)
  {
    (*(*a46 + 8))(a46);
  }

  v49 = *v46;
  *v46 = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v47 - 128), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v47 - 248), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Linear::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218191324(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 120), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 256), 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::MatMul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218192990(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  *(v2 - 88) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v2 - 144), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x208], 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateMakeList(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v68, "init_length");
  if (MIL::IROperation::TryGetParameterValue(this, v68, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(&v65, "init_length");
    ParameterValue = MIL::IROperation::GetParameterValue(this);
    v6 = MIL::IRValue::GetScalar<int>(ParameterValue) < 1;
    if (SHIBYTE(v67) < 0)
    {
      operator delete(v65);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else if (v6)
  {
LABEL_7:
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v8 = LocationPtr[1];
    v63 = *LocationPtr;
    v64 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Param init_length of operator 'make_list' must be greater than or equal to 1");
    MIL::ValidationResult::ValidationResult(a2, &v63, 315, __p);
    if (v62 < 0)
    {
      operator delete(__p[0]);
    }

    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }

    return;
  }

  v9 = (*(*this + 160))(this);
  std::map<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>::map[abi:ne200100](v68, v9);
  v10 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(v59, "elem_shape");
    v70 = v59;
    v11 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v68, v59);
    v13 = *(v11 + 56);
    v12 = *(v11 + 64);
    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    if (v10 >= (v12 - v13) >> 4)
    {
      if (v66 == v65 || (v66 - v65) >= 0x11)
      {
        v43 = MIL::IRObject::GetLocationPtr(this);
        v44 = v43[1];
        v49 = *v43;
        v50 = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v47, "Param elem_shape of operator 'make_list' can have minimum 1 and maximum 4 dimensions specified");
        MIL::ValidationResult::ValidationResult(a2, &v49, 315, v47);
        if (v48 < 0)
        {
          operator delete(v47[0]);
        }

        v42 = v50;
        if (v50)
        {
          goto LABEL_56;
        }
      }

      else
      {
        MIL::ValidationResult::ValidationResult(a2);
      }

      goto LABEL_57;
    }

    std::string::basic_string[abi:ne200100]<0>(v59, "elem_shape");
    ParameterType = MIL::IROperation::GetParameterType(this);
    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    if ((*(*ParameterType + 16))(ParameterType) != 1 || (v15 = (*(*ParameterType + 24))(ParameterType), (v16 = v15) == 0) || (*(*v15 + 88))(v15) != 3 && (*(*v16 + 88))(v16) != 11)
    {
      v40 = MIL::IRObject::GetLocationPtr(this);
      v41 = v40[1];
      v57 = *v40;
      v58 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v55, "elem_shape of operator 'make_list' should be tuple of int or string");
      MIL::ValidationResult::ValidationResult(a2, &v57, 315, v55);
      if (v56 < 0)
      {
        operator delete(v55[0]);
      }

      v42 = v58;
      if (v58)
      {
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    v17 = (*(*ParameterType + 24))(ParameterType);
    if ((*(*v17 + 88))(v17) == 3)
    {
      v18 = v66;
      if (v66 < v67)
      {
        *v66 = 1;
        v19 = v18 + 4;
        goto LABEL_50;
      }

      v25 = v65;
      v26 = v66 - v65;
      v27 = (v66 - v65) >> 2;
      v28 = v27 + 1;
      if ((v27 + 1) >> 62)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v29 = v67 - v65;
      if ((v67 - v65) >> 1 > v28)
      {
        v28 = v29 >> 1;
      }

      v30 = v29 >= 0x7FFFFFFFFFFFFFFCLL;
      v31 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v30)
      {
        v31 = v28;
      }

      if (v31)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v65, v31);
      }

      v36 = (4 * v27);
      v37 = 0;
      *v36 = 1;
      v19 = (v36 + 1);
      goto LABEL_48;
    }

    std::string::basic_string[abi:ne200100]<0>(v59, "elem_shape");
    v20 = MIL::IROperation::TryGetParameterValue(this, v59, v10);
    if (v60 < 0)
    {
      operator delete(v59[0]);
    }

    if (!v20)
    {
      break;
    }

    v21 = MIL::IRValue::AsTensor(v20);
    v59[0] = MIL::IRTensorValue::GetDataView<int>(v21);
    v59[1] = v22;
    v23 = MIL::Util::Span<int const,18446744073709551615ul>::At(v59, 0);
    v24 = v66;
    if (v66 < v67)
    {
      *v66 = *v23;
      v19 = v24 + 4;
      goto LABEL_50;
    }

    v25 = v65;
    v26 = v66 - v65;
    v32 = (v66 - v65) >> 2;
    v33 = v32 + 1;
    if ((v32 + 1) >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v34 = v67 - v65;
    if ((v67 - v65) >> 1 > v33)
    {
      v33 = v34 >> 1;
    }

    v30 = v34 >= 0x7FFFFFFFFFFFFFFCLL;
    v35 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v30)
    {
      v35 = v33;
    }

    if (v35)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v65, v35);
    }

    v38 = (4 * v32);
    v37 = &v38[-((v66 - v65) >> 2)];
    *v38 = *v23;
    v19 = (v38 + 1);
LABEL_48:
    memcpy(v37, v25, v26);
    v39 = v65;
    v65 = v37;
    v66 = v19;
    v67 = 0;
    if (v39)
    {
      operator delete(v39);
    }

LABEL_50:
    v66 = v19;
    ++v10;
  }

  v45 = MIL::IRObject::GetLocationPtr(this);
  v46 = v45[1];
  v53 = *v45;
  v54 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v51, "elem_shape of operator 'make_list' should be tuple of const values");
  MIL::ValidationResult::ValidationResult(a2, &v53, 315, v51);
  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  v42 = v54;
  if (v54)
  {
LABEL_56:
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

LABEL_57:
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v68, v68[1]);
}

void sub_218193510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  v48 = *(v46 - 152);
  if (v48)
  {
    *(v46 - 144) = v48;
    operator delete(v48);
  }

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(v46 - 128, *(v46 - 120));
  _Unwind_Resume(a1);
}

uint64_t MIL::Util::Span<int const,18446744073709551615ul>::At(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::range_error::range_error[abi:ne200100](exception, "index out of bounds");
    __cxa_throw(exception, off_278235F68, MEMORY[0x277D825E0]);
  }

  return *a1 + 4 * a2;
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceListGather(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "ls");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v5 = MIL::IRValueType::AsListType(SingleValueType);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = (*(*v5 + 64))(v5);
  v7 = MIL::IRValueType::AsTensorType(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "indices");
  v8 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v9 = MIL::IRValueType::AsTensorType(v8);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = **(*(*v9 + 96))(v9);
  v10 = (*(*v7 + 96))(v7);
  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(__p, *v10, v10[1], (v10[1] - *v10) >> 3);
  std::vector<MIL::IRDimension const*>::insert(__p, __p[0], &v11);
  (*(*v7 + 88))(v7);
  MIL::IRTensorValueType::MakeWithShape();
}

void sub_2181938D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<MIL::IRDimension const*>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string const*>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<MIL::IRDimension const*>::emplace_back<MIL::IRDimension const*>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_218193AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceMakeList(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v23[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "dtype");
  SingleValue = MIL::ValueTypeInferenceUtils::TryGetSingleValue(a3, __p);
  v7 = MIL::IRValue::AsTensor(SingleValue);
  MIL::IRValue::GetScalar<std::string>(v7, &v22);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  MIL::StringToIRDataType(&v22.__r_.__value_.__l.__data_, 0);
  std::string::basic_string[abi:ne200100]<0>(__p, "elem_shape");
  v8 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a3, __p);
  if (v8)
  {
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    __p[0] = 0;
    __p[1] = 0;
    v21 = 0;
    std::vector<std::string const*>::reserve(__p, (v8[6] - v8[5]) >> 4);
    v10 = v8[5];
    v9 = v8[6];
    while (v10 != v9)
    {
      ValueType = MIL::IRTypedArgument::GetValueType(*v10);
      v12 = MIL::IRValueType::AsTensorType(ValueType);
      if ((*(*v12 + 88))(v12) == 3)
      {
        v23[0] = MIL::IRUnknownDimension::Make(*a1, 0);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v23);
      }

      else
      {
        Value = MIL::IRTypedArgument::GetValue(*v10);
        v14 = MIL::IRValue::AsTensor(Value);
        v15 = MIL::IRValue::GetScalar<int>(v14);
        if (v15 <= 0)
        {
          exception = __cxa_allocate_exception(0x48uLL);
          v17 = a2[1];
          *&v19 = *a2;
          *(&v19 + 1) = v17;
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
          }

          std::string::basic_string[abi:ne200100]<0>(v18, "elem_shape values must be > 0");
          MIL::ValidationError::ValidationError(exception, &v19, v18, 315);
        }

        v23[0] = MIL::IRConstantDimension::Make(*a1, v15);
        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](__p, v23);
      }

      v10 += 2;
    }

    MIL::IRTensorValueType::MakeWithShape();
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_218193E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v37)
  {
    __cxa_free_exception(v36);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceListRead@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "ls");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a1, &__p);
  if ((v8[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  v5 = MIL::IRValueType::AsListType(SingleValueType);
  __p = (*(*v5 + 64))(v5);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const* const*,MIL::IRValueType const* const*>(a2, &__p, v8, 1uLL);
}

void sub_218194100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::ListGather::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218194C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v49 = *(v47 - 96);
  *(v47 - 96) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *v46;
  *v46 = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v47 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a46, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ListLength::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_21819561C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a27, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a33, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ListRead::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218196108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  v55 = *(v53 - 96);
  *(v53 - 96) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *v52;
  *v52 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100]((v53 - 152), 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a45, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ListScatter::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218197380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void **a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = *(v62 - 104);
  *(v62 - 104) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  v65 = *v61;
  *v61 = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a48, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a61, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::ListWrite::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_218198640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v59 = *(v57 - 104);
  *(v57 - 104) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = *v56;
  *v56 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a40, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a56, 0);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::MakeList::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2181996BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void **a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  if (a41)
  {
    (*(*a41 + 8))(a41);
  }

  v60 = *v58;
  *v58 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a49, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a58, 0);
  _Unwind_Resume(a1);
}

void sub_218199B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[3],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218199C28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_218199CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRParameter>>::pair[abi:ne200100]<char const(&)[15],std::unique_ptr<MIL::IRParameter>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRParameter>::shared_ptr[abi:ne200100]<MIL::IRParameter,std::default_delete<MIL::IRParameter>,0>(v5 + 3, a3);
  return a1;
}

void sub_218199D88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateCond(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v5 = (*(*this + 208))(this, a2);
  if (*(*v5 + 8) - **v5 != 32)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v29 = LocationPtr[1];
    v89 = *LocationPtr;
    v90 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = (*(*this + 56))(this);
    v31 = v30;
    if (*(v30 + 23) >= 0)
    {
      v32 = *(v30 + 23);
    }

    else
    {
      v32 = *(v30 + 8);
    }

    std::string::basic_string[abi:ne200100](v87, v32 + 29);
    if (v88 >= 0)
    {
      v33 = v87;
    }

    else
    {
      v33 = v87[0];
    }

    if (v32)
    {
      if (v31[23] >= 0)
      {
        v34 = v31;
      }

      else
      {
        v34 = *v31;
      }

      memmove(v33, v34, v32);
    }

    strcpy(v33 + v32, " must have exactly two blocks");
    MIL::ValidationResult::ValidationResult(a3, &v89, 308, v87);
    if (v88 < 0)
    {
      operator delete(v87[0]);
    }

    v35 = v90;
    if (!v90)
    {
      return;
    }

LABEL_49:
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    return;
  }

  v6 = (*(*this + 208))(this);
  v7 = **v6;
  if ((*v6)[1] == v7 || (v8 = *v7, v9 = (*(*this + 208))(this), v10 = **v9, ((*v9)[1] - v10) <= 0x10))
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = *(v10 + 16);
  v12 = (*(*v8 + 88))(v8);
  v13 = (*(*v11 + 88))(v11);
  if (v12[1] - *v12 != v13[1] - *v13)
  {
    v36 = MIL::IRObject::GetLocationPtr(this);
    v37 = v36[1];
    v85 = *v36;
    v86 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v38 = (*(*this + 56))(this);
    v39 = v38;
    if (*(v38 + 23) >= 0)
    {
      v40 = *(v38 + 23);
    }

    else
    {
      v40 = *(v38 + 8);
    }

    std::string::basic_string[abi:ne200100](v83, v40 + 53);
    if (v84 >= 0)
    {
      v41 = v83;
    }

    else
    {
      v41 = v83[0];
    }

    if (v40)
    {
      if (v39[23] >= 0)
      {
        v42 = v39;
      }

      else
      {
        v42 = *v39;
      }

      memmove(v41, v42, v40);
    }

    strcpy(v41 + v40, " must return same number of values from both branches");
    MIL::ValidationResult::ValidationResult(a3, &v85, 102, v83);
    if (v84 < 0)
    {
      operator delete(v83[0]);
    }

    v35 = v86;
    if (!v86)
    {
      return;
    }

    goto LABEL_49;
  }

  v14 = v13;
  (*(*this + 200))(&v81, this);
  v15 = *v12;
  v16 = v12[1];
  if (v82 - v81 == v16 - *v12)
  {
    if (v16 == v15)
    {
LABEL_15:
      MIL::ValidationResult::ValidationResult(a3);
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v19 = v8 + 64;
      v20 = v11 + 64;
      while (1)
      {
        v21 = (*(*v19 + 16))(v19, v15 + v17, 1);
        if (0xAAAAAAAAAAAAAAABLL * ((v14[1] - *v14) >> 3) <= v18)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v22 = v21;
        v23 = (*(*v20 + 16))(v20, *v14 + v17, 1);
        if (MIL::IsEqualOrStrongerType(v22, v23, v24))
        {
          v22 = v23;
        }

        else if ((MIL::IsEqualOrStrongerType(v23, v22, v25) & 1) == 0)
        {
          v55 = (*(*this + 56))(this);
          v56 = v55;
          if (*(v55 + 23) >= 0)
          {
            v57 = *(v55 + 23);
          }

          else
          {
            v57 = *(v55 + 8);
          }

          std::string::basic_string[abi:ne200100](&v76, v57 + 69);
          if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v58 = &v76;
          }

          else
          {
            v58 = v76.__r_.__value_.__r.__words[0];
          }

          if (v57)
          {
            if (v56[23] >= 0)
            {
              v59 = v56;
            }

            else
            {
              v59 = *v56;
            }

            memmove(v58, v59, v57);
          }

          strcpy(v58 + v57, " must return compatible types from both branches for output at index ");
          std::to_string(&v75, v18);
          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = &v75;
          }

          else
          {
            v60 = v75.__r_.__value_.__r.__words[0];
          }

          if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v75.__r_.__value_.__l.__size_;
          }

          v62 = std::string::append(&v76, v60, size);
          v50 = v62->__r_.__value_.__r.__words[0];
          v63 = v62->__r_.__value_.__l.__size_;
          LODWORD(v70.__r_.__value_.__l.__data_) = v62->__r_.__value_.__r.__words[2];
          *(v70.__r_.__value_.__r.__words + 3) = *(&v62->__r_.__value_.__r.__words[2] + 3);
          v52 = SHIBYTE(v62->__r_.__value_.__r.__words[2]);
          v62->__r_.__value_.__l.__size_ = 0;
          v62->__r_.__value_.__r.__words[2] = 0;
          v62->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v76.__r_.__value_.__l.__data_);
          }

          v64 = MIL::IRObject::GetLocationPtr(this);
          v65 = v64[1];
          v73 = *v64;
          v74 = v65;
          if (v65)
          {
            atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v52 < 0)
          {
            std::string::__init_copy_ctor_external(&v72, v50, v63);
          }

          else
          {
            v72.__r_.__value_.__r.__words[0] = v50;
            v72.__r_.__value_.__l.__size_ = v63;
            LODWORD(v72.__r_.__value_.__r.__words[2]) = v70.__r_.__value_.__l.__data_;
            *(&v72.__r_.__value_.__r.__words[2] + 3) = *(v70.__r_.__value_.__r.__words + 3);
            *(&v72.__r_.__value_.__s + 23) = v52;
          }

          MIL::ValidationResult::ValidationResult(a3, &v73, 103, &v72);
          if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          v66 = v74;
          if (v74)
          {
            goto LABEL_101;
          }

          goto LABEL_102;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3) <= v18)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v26 = (*(*(this + 8) + 16))(this + 64, v81 + v17, 1);
        if (!MIL::Validation::TypeShapeAndDataTypeMatch(v26, v22, v27))
        {
          break;
        }

        ++v18;
        v15 = *v12;
        v17 += 24;
        if (v18 >= 0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 3))
        {
          goto LABEL_15;
        }
      }

      (*(*this + 56))(this);
      std::operator+<char>();
      v45 = std::string::append(&v75, " for output at index ");
      v46 = *&v45->__r_.__value_.__l.__data_;
      v76.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
      *&v76.__r_.__value_.__l.__data_ = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v70, v18);
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &v70;
      }

      else
      {
        v47 = v70.__r_.__value_.__r.__words[0];
      }

      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = v70.__r_.__value_.__l.__size_;
      }

      v49 = std::string::append(&v76, v47, v48);
      v50 = v49->__r_.__value_.__r.__words[0];
      v51 = v49->__r_.__value_.__l.__size_;
      v71[0] = v49->__r_.__value_.__r.__words[2];
      *(v71 + 3) = *(&v49->__r_.__value_.__r.__words[2] + 3);
      v52 = SHIBYTE(v49->__r_.__value_.__r.__words[2]);
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v75.__r_.__value_.__l.__data_);
      }

      v53 = MIL::IRObject::GetLocationPtr(this);
      v54 = v53[1];
      v68 = *v53;
      v69 = v54;
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v52 < 0)
      {
        std::string::__init_copy_ctor_external(&v67, v50, v51);
      }

      else
      {
        v67.__r_.__value_.__r.__words[0] = v50;
        v67.__r_.__value_.__l.__size_ = v51;
        LODWORD(v67.__r_.__value_.__r.__words[2]) = v71[0];
        *(&v67.__r_.__value_.__r.__words[2] + 3) = *(v71 + 3);
        *(&v67.__r_.__value_.__s + 23) = v52;
      }

      MIL::ValidationResult::ValidationResult(a3, &v68, 103, &v67);
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      v66 = v69;
      if (v69)
      {
LABEL_101:
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

LABEL_102:
      if (v52 < 0)
      {
        operator delete(v50);
      }
    }
  }

  else
  {
    v43 = MIL::IRObject::GetLocationPtr(this);
    v44 = v43[1];
    v79 = *v43;
    v80 = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*this + 56))(this);
    std::operator+<char>();
    MIL::ValidationResult::ValidationResult(a3, &v79, 102, &__p);
    if (v78 < 0)
    {
      operator delete(__p);
    }

    if (v80)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v80);
    }
  }

  v76.__r_.__value_.__r.__words[0] = &v81;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v76);
}

void sub_21819A674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  a39 = (v54 - 192);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a39);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::Const::Make(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v5 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3[0] = 0;
  v3[1] = 0;
  v2[0] = 0;
  v2[1] = 0;
  v7[0] = &unk_2829EA4C8;
  v7[1] = MIL::Operators::Common::ios15::CustomValidators::ValidateConst;
  v7[3] = v7;
  v6[0] = &unk_2829EB538;
  v6[3] = v6;
  MIL::IROperator::Make(__p, 0, 0, 1, 1, v3, v2, v7, v6);
}

void sub_21819AC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](&a22);
  v35 = *v33;
  *v33 = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateConst(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v24, "val");
  Attribute = MIL::IRObject::TryGetAttribute(this, v24);
  v6 = Attribute;
  if ((v25 & 0x80000000) == 0)
  {
    if (Attribute)
    {
      goto LABEL_3;
    }

LABEL_7:
    LocationPtr = MIL::IRObject::GetLocationPtr(this);
    v12 = LocationPtr[1];
    v22 = *LocationPtr;
    v23 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "Attribute val is undefined for const");
    MIL::ValidationResult::ValidationResult(a2, &v22, 315, __p);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = v23;
    if (!v23)
    {
      return;
    }

LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    return;
  }

  operator delete(v24[0]);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = (*(*this + 176))(this);
  if (*(v7 + 8) == *v7)
  {
    std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v7);
  v9 = (*(*v6 + 32))(v6);
  if (MIL::IsEqualOrStrongerType(Type, v9, v10))
  {
    MIL::ValidationResult::ValidationResult(a2);
    return;
  }

  v14 = MIL::IRObject::GetLocationPtr(this);
  v15 = v14[1];
  v18 = *v14;
  v19 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v16, "Attribute val has incompatible type with operation output");
  MIL::ValidationResult::ValidationResult(a2, &v18, 306, v16);
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v13 = v19;
  if (v19)
  {
    goto LABEL_12;
  }
}

void sub_21819AF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(v2);
    MEMORY[0x21CEAFEA0](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void MIL::Operators::Common::ios15::CustomValidators::ValidateWhileLoop(MIL::Operators::Common::ios15::CustomValidators *this@<X0>, const MIL::IROperation *a2@<X1>, MIL::ValidationResult *a3@<X8>)
{
  v5 = (*(*this + 208))(this, a2);
  if (*(*v5 + 8) - **v5 == 32)
  {
    std::string::basic_string[abi:ne200100]<0>(v229, "loop_vars");
    IsParameterSet = MIL::IROperation::IsParameterSet(this, v229);
    v7 = IsParameterSet;
    if (SHIBYTE(v230) < 0)
    {
      operator delete(v229[0]);
      if (v7)
      {
LABEL_4:
        v8 = (*(*this + 160))(this);
        std::string::basic_string[abi:ne200100]<0>(&v222, "loop_vars");
        v9 = std::map<std::string,std::unique_ptr<MIL::IRBlock>>::at(v8, &v222);
        v229[0] = 0;
        v229[1] = 0;
        v230 = 0;
        std::vector<std::shared_ptr<MIL::IRArgument>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRArgument>*,std::shared_ptr<MIL::IRArgument>*>(v229, *v9, v9[1], (v9[1] - *v9) >> 4);
        if (SHIBYTE(v224) < 0)
        {
          operator delete(v222);
        }

        std::string::basic_string[abi:ne200100]<0>(&v222, "loop_vars");
        v10 = (*(*this + 152))(this, &v222);
        if (SHIBYTE(v224) < 0)
        {
          operator delete(v222);
        }

        v11 = (*(*this + 208))(this);
        v12 = **v11;
        if ((*v11)[1] == v12)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v13 = *v12;
        v14 = (*(*this + 208))(this);
        v15 = **v14;
        if (((*v14)[1] - v15) <= 0x10)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v16 = *(v15 + 16);
        v17 = (*(*v13 + 40))(v13);
        v222 = 0;
        v223 = 0;
        v224 = 0;
        std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(&v222, *v17, v17[1], (v17[1] - *v17) >> 4);
        v18 = (*(*v16 + 40))(v16);
        v219 = 0;
        v220 = 0;
        v221 = 0;
        std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType>*,std::shared_ptr<MIL::IRNamedValueType>*>(&v219, *v18, v18[1], (v18[1] - *v18) >> 4);
        v19 = v10;
        if (v10 != (v223 - v222) >> 4 || v10 != (v220 - v219) >> 4)
        {
          LocationPtr = MIL::IRObject::GetLocationPtr(this);
          v72 = LocationPtr[1];
          v217 = *LocationPtr;
          v218 = v72;
          if (v72)
          {
            atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v73 = (*(*this + 56))(this);
          v74 = v73;
          if (*(v73 + 23) >= 0)
          {
            v75 = *(v73 + 23);
          }

          else
          {
            v75 = *(v73 + 8);
          }

          v76 = v215;
          std::string::basic_string[abi:ne200100](v215, v75 + 96);
          if (v216 < 0)
          {
            v76 = v215[0];
          }

          if (v75)
          {
            if (v74[23] >= 0)
            {
              v77 = v74;
            }

            else
            {
              v77 = *v74;
            }

            memmove(v76, v77, v75);
          }

          strcpy(v76 + v75, " cond and body blocks must declare the same number of inputs as num arguments bound to loop_vars");
          MIL::ValidationResult::ValidationResult(a3, &v217, 100, v215);
          if (v216 < 0)
          {
            operator delete(v215[0]);
          }

          v78 = v218;
          if (!v218)
          {
            goto LABEL_95;
          }

          goto LABEL_94;
        }

        v175 = v16;
        v176 = a3;
        if (v10)
        {
          v20 = 0;
          v21 = 0;
          v22 = v16 + 8;
          while (1)
          {
            std::string::basic_string[abi:ne200100]<0>(&__p, "loop_vars");
            ParameterType = MIL::IROperation::GetParameterType(this);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v21 >= (v220 - v219) >> 4)
            {
              std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
            }

            Name = MIL::IRNamedValueType::GetName(v219[v20]);
            v25 = (*(*v22 + 16))(v22, Name, 1);
            if (v21 >= (v223 - v222) >> 4)
            {
              std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
            }

            v26 = v25;
            v27 = MIL::IRNamedValueType::GetName(v222[v20]);
            v28 = (*(v13[8] + 16))(v13 + 8, v27, 1);
            if ((MIL::IsEqualOrStrongerType(v28, ParameterType, v29) & 1) == 0)
            {
              break;
            }

            if (v26 != v28)
            {
              v103 = MIL::IRObject::GetLocationPtr(this);
              v104 = v103[1];
              v204 = *v103;
              v205 = v104;
              if (v104)
              {
                atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v105 = (*(*this + 56))(this);
              v106 = v105;
              if (*(v105 + 23) >= 0)
              {
                v107 = *(v105 + 23);
              }

              else
              {
                v107 = *(v105 + 8);
              }

              v108 = &v208;
              std::string::basic_string[abi:ne200100](&v208, v107 + 27);
              if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v108 = v208.__r_.__value_.__r.__words[0];
              }

              if (v107)
              {
                if (v106[23] >= 0)
                {
                  v109 = v106;
                }

                else
                {
                  v109 = *v106;
                }

                memmove(v108, v109, v107);
              }

              strcpy(v108 + v107, " body block input at index ");
              std::to_string(&v207, v21);
              if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v110 = &v207;
              }

              else
              {
                v110 = v207.__r_.__value_.__r.__words[0];
              }

              if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v207.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v207.__r_.__value_.__l.__size_;
              }

              v112 = std::string::append(&v208, v110, size);
              v113 = *&v112->__r_.__value_.__l.__data_;
              v209.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
              *&v209.__r_.__value_.__l.__data_ = v113;
              v112->__r_.__value_.__l.__size_ = 0;
              v112->__r_.__value_.__r.__words[2] = 0;
              v112->__r_.__value_.__r.__words[0] = 0;
              v114 = std::string::append(&v209, " must be the same type as its cond block input at index ");
              v115 = *&v114->__r_.__value_.__l.__data_;
              __p.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
              *&__p.__r_.__value_.__l.__data_ = v115;
              v114->__r_.__value_.__l.__size_ = 0;
              v114->__r_.__value_.__r.__words[2] = 0;
              v114->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v206, v21);
              if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v116 = &v206;
              }

              else
              {
                v116 = v206.__r_.__value_.__r.__words[0];
              }

              if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v117 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v117 = v206.__r_.__value_.__l.__size_;
              }

              v118 = std::string::append(&__p, v116, v117);
              v119 = *&v118->__r_.__value_.__l.__data_;
              v203 = v118->__r_.__value_.__r.__words[2];
              *v202 = v119;
              v118->__r_.__value_.__l.__size_ = 0;
              v118->__r_.__value_.__r.__words[2] = 0;
              v118->__r_.__value_.__r.__words[0] = 0;
              MIL::ValidationResult::ValidationResult(v176, &v204, 304, v202);
              if (SHIBYTE(v203) < 0)
              {
                operator delete(v202[0]);
              }

              if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v206.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v209.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v207.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v208.__r_.__value_.__l.__data_);
              }

              v78 = v205;
              if (v205)
              {
                goto LABEL_94;
              }

              goto LABEL_95;
            }

            ++v21;
            v20 += 2;
            a3 = v176;
            if (v19 == v21)
            {
              goto LABEL_21;
            }
          }

          v86 = MIL::IRObject::GetLocationPtr(this);
          v87 = v86[1];
          v212 = *v86;
          v213 = v87;
          if (v87)
          {
            atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v88 = (*(*this + 56))(this);
          v89 = v88;
          if (*(v88 + 23) >= 0)
          {
            v90 = *(v88 + 23);
          }

          else
          {
            v90 = *(v88 + 8);
          }

          v91 = &v208;
          std::string::basic_string[abi:ne200100](&v208, v90 + 28);
          if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v91 = v208.__r_.__value_.__r.__words[0];
          }

          if (v90)
          {
            if (v89[23] >= 0)
            {
              v92 = v89;
            }

            else
            {
              v92 = *v89;
            }

            memmove(v91, v92, v90);
          }

          strcpy(v91 + v90, " loop_var argument at index ");
          std::to_string(&v207, v21);
          if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v93 = &v207;
          }

          else
          {
            v93 = v207.__r_.__value_.__r.__words[0];
          }

          if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v94 = HIBYTE(v207.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v94 = v207.__r_.__value_.__l.__size_;
          }

          v95 = std::string::append(&v208, v93, v94);
          v96 = *&v95->__r_.__value_.__l.__data_;
          v209.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
          *&v209.__r_.__value_.__l.__data_ = v96;
          v95->__r_.__value_.__l.__size_ = 0;
          v95->__r_.__value_.__r.__words[2] = 0;
          v95->__r_.__value_.__r.__words[0] = 0;
          v97 = std::string::append(&v209, " must be a compatible with its cond block input at index ");
          v98 = *&v97->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v98;
          v97->__r_.__value_.__l.__size_ = 0;
          v97->__r_.__value_.__r.__words[2] = 0;
          v97->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v206, v21);
          if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v99 = &v206;
          }

          else
          {
            v99 = v206.__r_.__value_.__r.__words[0];
          }

          if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v100 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v100 = v206.__r_.__value_.__l.__size_;
          }

          v101 = std::string::append(&__p, v99, v100);
          v102 = *&v101->__r_.__value_.__l.__data_;
          v211 = v101->__r_.__value_.__r.__words[2];
          *v210 = v102;
          v101->__r_.__value_.__l.__size_ = 0;
          v101->__r_.__value_.__r.__words[2] = 0;
          v101->__r_.__value_.__r.__words[0] = 0;
          MIL::ValidationResult::ValidationResult(v176, &v212, 304, v210);
          if (SHIBYTE(v211) < 0)
          {
            operator delete(v210[0]);
          }

          if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v206.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v209.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v207.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v208.__r_.__value_.__l.__data_);
          }

          v78 = v213;
          if (v213)
          {
            goto LABEL_94;
          }

          goto LABEL_95;
        }

LABEL_21:
        v30 = (*(*v13 + 88))(v13);
        if (v30[1] - *v30 != 24)
        {
          v79 = MIL::IRObject::GetLocationPtr(this);
          v80 = v79[1];
          v200 = *v79;
          v201 = v80;
          if (v80)
          {
            atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v81 = (*(*this + 56))(this);
          v82 = v81;
          if (*(v81 + 23) >= 0)
          {
            v83 = *(v81 + 23);
          }

          else
          {
            v83 = *(v81 + 8);
          }

          v84 = v198;
          std::string::basic_string[abi:ne200100](v198, v83 + 43);
          if (v199 < 0)
          {
            v84 = v198[0];
          }

          if (v83)
          {
            if (v82[23] >= 0)
            {
              v85 = v82;
            }

            else
            {
              v85 = *v82;
            }

            memmove(v84, v85, v83);
          }

          strcpy(v84 + v83, " cond block body should output only 1 value");
          MIL::ValidationResult::ValidationResult(a3, &v200, 300, v198);
          if (v199 < 0)
          {
            operator delete(v198[0]);
          }

          v78 = v201;
          if (!v201)
          {
            goto LABEL_95;
          }

          goto LABEL_94;
        }

        v31 = (*(*v13 + 88))(v13);
        if (v31[1] == *v31)
        {
          std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
        }

        v32 = (*(v13[8] + 16))(v13 + 8);
        v33 = (*(*v32 + 24))(v32);
        v34 = v33;
        if (v33 && ((*(*v33 + 88))(v33) == 2 || (*(*v34 + 88))(v34) == 5))
        {
          if (MIL::IRTensorValueType::IsScalar(v34))
          {
            goto LABEL_31;
          }

          v35 = (*(*v34 + 96))(v34);
          if (v35[1] == *v35)
          {
            goto LABEL_306;
          }

          if (!(*(***v35 + 16))())
          {
            goto LABEL_31;
          }

          v36 = (*(*v34 + 96))(v34);
          if (*(v36 + 8) == *v36)
          {
LABEL_306:
            std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
          }

          v37 = MIL::IRDimension::AsConstant(**v36);
          if ((*(*v37 + 48))(v37) == 1)
          {
LABEL_31:
            v38 = (*(*v175 + 88))(v175);
            v39 = v38[1];
            if (0xAAAAAAAAAAAAAAABLL * ((v39 - *v38) >> 3) != v19)
            {
              v123 = MIL::IRObject::GetLocationPtr(this);
              v124 = v123[1];
              v192 = *v123;
              v193 = v124;
              if (v124)
              {
                atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v125 = (*(*this + 56))(this);
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" loop body's block output count must match the number of input variables bound to loop_vars. This count does not include any immediate constant bound to loop_vars", v125, v190);
              MIL::ValidationResult::ValidationResult(a3, &v192, 100, v190);
              if (v191 < 0)
              {
                operator delete(v190[0]);
              }

              v78 = v193;
              if (!v193)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            }

            if (v39 != *v38)
            {
              v40 = 0;
              v41 = 0;
              v42 = 0;
              while (1)
              {
                if (v42 >= (v220 - v219) >> 4)
                {
                  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
                }

                v43 = MIL::IRNamedValueType::GetName(v219[v41]);
                if (v42 >= (v220 - v219) >> 4)
                {
                  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
                }

                v44 = v43;
                Type = MIL::IRNamedValueType::GetType(v219[v41]);
                v46 = *v38;
                if (0xAAAAAAAAAAAAAAABLL * ((v38[1] - *v38) >> 3) <= v42)
                {
                  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
                }

                v47 = Type;
                v48 = (*(v175[8] + 16))(v175 + 8, v46 + v40, 1);
                if ((MIL::IsEqualOrStrongerType(v47, v48, v49) & 1) == 0)
                {
                  break;
                }

                ++v42;
                v41 += 2;
                v40 += 24;
                if (v42 >= 0xAAAAAAAAAAAAAAABLL * ((v38[1] - *v38) >> 3))
                {
                  goto LABEL_39;
                }
              }

              v143 = MIL::IRObject::GetLocationPtr(this);
              v144 = v143[1];
              v188 = *v143;
              v189 = v144;
              if (v144)
              {
                atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v145 = (*(*this + 56))(this);
              v146 = v145;
              if (*(v145 + 23) >= 0)
              {
                v147 = *(v145 + 23);
              }

              else
              {
                v147 = *(v145 + 8);
              }

              v148 = &v208;
              std::string::basic_string[abi:ne200100](&v208, v147 + 23);
              if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v148 = v208.__r_.__value_.__r.__words[0];
              }

              if (v147)
              {
                if (v146[23] >= 0)
                {
                  v149 = v146;
                }

                else
                {
                  v149 = *v146;
                }

                memmove(v148, v149, v147);
              }

              strcpy(v148 + v147, " body block input type ");
              v150 = *(v44 + 23);
              if (v150 >= 0)
              {
                v151 = v44;
              }

              else
              {
                v151 = *v44;
              }

              if (v150 >= 0)
              {
                v152 = *(v44 + 23);
              }

              else
              {
                v152 = *(v44 + 8);
              }

              v153 = std::string::append(&v208, v151, v152);
              v154 = *&v153->__r_.__value_.__l.__data_;
              v209.__r_.__value_.__r.__words[2] = v153->__r_.__value_.__r.__words[2];
              *&v209.__r_.__value_.__l.__data_ = v154;
              v153->__r_.__value_.__l.__size_ = 0;
              v153->__r_.__value_.__r.__words[2] = 0;
              v153->__r_.__value_.__r.__words[0] = 0;
              v155 = std::string::append(&v209, " is not compatible with the type of the corresponding body block output ");
              v156 = *&v155->__r_.__value_.__l.__data_;
              __p.__r_.__value_.__r.__words[2] = v155->__r_.__value_.__r.__words[2];
              *&__p.__r_.__value_.__l.__data_ = v156;
              v155->__r_.__value_.__l.__size_ = 0;
              v155->__r_.__value_.__r.__words[2] = 0;
              v155->__r_.__value_.__r.__words[0] = 0;
              v157 = *(v46 + v40 + 23);
              if (v157 >= 0)
              {
                v158 = (v46 + v40);
              }

              else
              {
                v158 = *(v46 + v40);
              }

              if (v157 >= 0)
              {
                v159 = *(v46 + v40 + 23);
              }

              else
              {
                v159 = *(v46 + v40 + 8);
              }

              v160 = std::string::append(&__p, v158, v159);
              if (SHIBYTE(v160->__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v187, v160->__r_.__value_.__l.__data_, v160->__r_.__value_.__l.__size_);
              }

              else
              {
                v161 = *&v160->__r_.__value_.__l.__data_;
                v187.__r_.__value_.__r.__words[2] = v160->__r_.__value_.__r.__words[2];
                *&v187.__r_.__value_.__l.__data_ = v161;
              }

              MIL::ValidationResult::ValidationResult(v176, &v188, 103, &v187);
              if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v187.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v209.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v208.__r_.__value_.__l.__data_);
              }

              v78 = v189;
              if (!v189)
              {
                goto LABEL_95;
              }

LABEL_94:
              std::__shared_weak_count::__release_shared[abi:ne200100](v78);
LABEL_95:
              __p.__r_.__value_.__r.__words[0] = &v219;
              std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&__p);
              v219 = &v222;
              std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v219);
              v222 = v229;
              std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&v222);
              return;
            }

LABEL_39:
            (*(*this + 200))(&__p, this);
            if (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0] == v38[1] - *v38)
            {
              if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
              {
LABEL_45:
                MIL::ValidationResult::ValidationResult(v176);
LABEL_231:
                v209.__r_.__value_.__r.__words[0] = &__p;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v209);
                goto LABEL_95;
              }

              v50 = 0;
              v51 = 0;
              while (1)
              {
                OutputType = MIL::IROperation::GetOutputType(this, v51);
                if (0xAAAAAAAAAAAAAAABLL * ((v38[1] - *v38) >> 3) <= v51)
                {
                  std::vector<MIL::IRDimension const*>::__throw_out_of_range[abi:ne200100]();
                }

                v53 = OutputType;
                v54 = (*(v175[8] + 16))(v175 + 8, *v38 + v50, 1);
                if (!MIL::Validation::TypeShapeAndDataTypeMatch(v53, v54, v55))
                {
                  break;
                }

                ++v51;
                v50 += 24;
                if (v51 >= 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3))
                {
                  goto LABEL_45;
                }
              }

              v162 = MIL::IRObject::GetLocationPtr(this);
              v163 = v162[1];
              v179 = *v162;
              v180 = v163;
              if (v163)
              {
                atomic_fetch_add_explicit(&v163->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v164 = (*(*this + 56))(this);
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" output at index ", v164, &v207.__r_.__value_.__l.__data_);
              std::to_string(&v206, v51);
              if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v165 = &v206;
              }

              else
              {
                v165 = v206.__r_.__value_.__r.__words[0];
              }

              if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v166 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v166 = v206.__r_.__value_.__l.__size_;
              }

              v167 = std::string::append(&v207, v165, v166);
              v168 = *&v167->__r_.__value_.__l.__data_;
              v208.__r_.__value_.__r.__words[2] = v167->__r_.__value_.__r.__words[2];
              *&v208.__r_.__value_.__l.__data_ = v168;
              v167->__r_.__value_.__l.__size_ = 0;
              v167->__r_.__value_.__r.__words[2] = 0;
              v167->__r_.__value_.__r.__words[0] = 0;
              v169 = std::string::append(&v208, " must be the same type as the body block output at index ");
              v170 = *&v169->__r_.__value_.__l.__data_;
              v209.__r_.__value_.__r.__words[2] = v169->__r_.__value_.__r.__words[2];
              *&v209.__r_.__value_.__l.__data_ = v170;
              v169->__r_.__value_.__l.__size_ = 0;
              v169->__r_.__value_.__r.__words[2] = 0;
              v169->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v182, v51);
              if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v171 = &v182;
              }

              else
              {
                v171 = v182.__r_.__value_.__r.__words[0];
              }

              if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v172 = HIBYTE(v182.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v172 = v182.__r_.__value_.__l.__size_;
              }

              v173 = std::string::append(&v209, v171, v172);
              v174 = *&v173->__r_.__value_.__l.__data_;
              v178 = v173->__r_.__value_.__r.__words[2];
              *v177 = v174;
              v173->__r_.__value_.__l.__size_ = 0;
              v173->__r_.__value_.__r.__words[2] = 0;
              v173->__r_.__value_.__r.__words[0] = 0;
              MIL::ValidationResult::ValidationResult(v176, &v179, 103, v177);
              if (SHIBYTE(v178) < 0)
              {
                operator delete(v177[0]);
              }

              if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v182.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v209.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v208.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v206.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v207.__r_.__value_.__l.__data_);
              }

              v142 = v180;
              if (!v180)
              {
                goto LABEL_231;
              }
            }

            else
            {
              v126 = MIL::IRObject::GetLocationPtr(this);
              v127 = v126[1];
              v185 = *v126;
              v186 = v127;
              if (v127)
              {
                atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v128 = (*(*this + 56))(this);
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" returns ", v128, &v206.__r_.__value_.__l.__data_);
              v129 = (*(*this + 192))(this);
              std::to_string(&v182, v129);
              if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v130 = &v182;
              }

              else
              {
                v130 = v182.__r_.__value_.__r.__words[0];
              }

              if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v131 = HIBYTE(v182.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v131 = v182.__r_.__value_.__l.__size_;
              }

              v132 = std::string::append(&v206, v130, v131);
              v133 = *&v132->__r_.__value_.__l.__data_;
              v207.__r_.__value_.__r.__words[2] = v132->__r_.__value_.__r.__words[2];
              *&v207.__r_.__value_.__l.__data_ = v133;
              v132->__r_.__value_.__l.__size_ = 0;
              v132->__r_.__value_.__r.__words[2] = 0;
              v132->__r_.__value_.__r.__words[0] = 0;
              v134 = std::string::append(&v207, " outputs, but its body block declares ");
              v135 = *&v134->__r_.__value_.__l.__data_;
              v208.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
              *&v208.__r_.__value_.__l.__data_ = v135;
              v134->__r_.__value_.__l.__size_ = 0;
              v134->__r_.__value_.__r.__words[2] = 0;
              v134->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v181, 0xAAAAAAAAAAAAAAABLL * ((v38[1] - *v38) >> 3));
              if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v136 = &v181;
              }

              else
              {
                v136 = v181.__r_.__value_.__r.__words[0];
              }

              if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v137 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v137 = v181.__r_.__value_.__l.__size_;
              }

              v138 = std::string::append(&v208, v136, v137);
              v139 = *&v138->__r_.__value_.__l.__data_;
              v209.__r_.__value_.__r.__words[2] = v138->__r_.__value_.__r.__words[2];
              *&v209.__r_.__value_.__l.__data_ = v139;
              v138->__r_.__value_.__l.__size_ = 0;
              v138->__r_.__value_.__r.__words[2] = 0;
              v138->__r_.__value_.__r.__words[0] = 0;
              v140 = std::string::append(&v209, " outputs.");
              v141 = *&v140->__r_.__value_.__l.__data_;
              v184 = v140->__r_.__value_.__r.__words[2];
              *v183 = v141;
              v140->__r_.__value_.__l.__size_ = 0;
              v140->__r_.__value_.__r.__words[2] = 0;
              v140->__r_.__value_.__r.__words[0] = 0;
              MIL::ValidationResult::ValidationResult(v176, &v185, 102, v183);
              if (SHIBYTE(v184) < 0)
              {
                operator delete(v183[0]);
              }

              if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v209.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v181.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v208.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v207.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v182.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v206.__r_.__value_.__l.__data_);
              }

              v142 = v186;
              if (!v186)
              {
                goto LABEL_231;
              }
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v142);
            goto LABEL_231;
          }
        }

        v120 = MIL::IRObject::GetLocationPtr(this);
        v121 = v120[1];
        v196 = *v120;
        v197 = v121;
        if (v121)
        {
          atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v122 = (*(*this + 56))(this);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" cond block body should output a BOOLean or fp32 tensor of shape scalar or [1]", v122, v194);
        MIL::ValidationResult::ValidationResult(a3, &v196, 304, v194);
        if (v195 < 0)
        {
          operator delete(v194[0]);
        }

        v78 = v197;
        if (!v197)
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }
    }

    else if (IsParameterSet)
    {
      goto LABEL_4;
    }

    v64 = MIL::IRObject::GetLocationPtr(this);
    v65 = v64[1];
    v227 = *v64;
    v228 = v65;
    if (v65)
    {
      atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v66 = (*(*this + 56))(this);
    v67 = v66;
    if (*(v66 + 23) >= 0)
    {
      v68 = *(v66 + 23);
    }

    else
    {
      v68 = *(v66 + 8);
    }

    v69 = v225;
    std::string::basic_string[abi:ne200100](v225, v68 + 33);
    if (v226 < 0)
    {
      v69 = v225[0];
    }

    if (v68)
    {
      if (v67[23] >= 0)
      {
        v70 = v67;
      }

      else
      {
        v70 = *v67;
      }

      memmove(v69, v70, v68);
    }

    strcpy(v69 + v68, " must define at least 1 loop_var.");
    MIL::ValidationResult::ValidationResult(a3, &v227, 317, v225);
    if (v226 < 0)
    {
      operator delete(v225[0]);
    }

    v63 = v228;
    if (v228)
    {
LABEL_78:
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }
  }

  else
  {
    v56 = MIL::IRObject::GetLocationPtr(this);
    v57 = v56[1];
    v233 = *v56;
    v234 = v57;
    if (v57)
    {
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v58 = (*(*this + 56))(this);
    v59 = v58;
    if (*(v58 + 23) >= 0)
    {
      v60 = *(v58 + 23);
    }

    else
    {
      v60 = *(v58 + 8);
    }

    v61 = v231;
    std::string::basic_string[abi:ne200100](v231, v60 + 29);
    if (v232 < 0)
    {
      v61 = v231[0];
    }

    if (v60)
    {
      if (v59[23] >= 0)
      {
        v62 = v59;
      }

      else
      {
        v62 = *v59;
      }

      memmove(v61, v62, v60);
    }

    strcpy(v61 + v60, " must have exactly two blocks");
    MIL::ValidationResult::ValidationResult(a3, &v233, 308, v231);
    if (v232 < 0)
    {
      operator delete(v231[0]);
    }

    v63 = v234;
    if (v234)
    {
      goto LABEL_78;
    }
  }
}

void sub_21819C6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  a74 = &STACK[0x210];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a74);
  a74 = (v75 - 240);
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100](&a74);
  *(v75 - 240) = v75 - 216;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v75 - 240));
  *(v75 - 216) = v75 - 152;
  std::vector<std::shared_ptr<MIL::IRBlock>>::__destroy_vector::operator()[abi:ne200100]((v75 - 216));
  _Unwind_Resume(a1);
}

void *MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceCond@<X0>(MIL::IRUnknownDimension **a1@<X0>, void *a2@<X1>, MIL::IRValueType ****a3@<X4>, void *a4@<X8>)
{
  v6 = *a3;
  if (a3[1] - *a3 != 48)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v24 = a2[1];
    *&v36 = *a2;
    *(&v36 + 1) = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v35, "Output types of two and only two blocks have to be set to infer cond output types.");
    MIL::ValidationError::ValidationError(exception, &v36, v35, 315);
  }

  v8 = *v6;
  v7 = v6[1];
  v9 = v7 - *v6;
  if (v9 != v6[4] - v6[3])
  {
    v25 = __cxa_allocate_exception(0x48uLL);
    v26 = a2[1];
    *&v34 = *a2;
    *(&v34 + 1) = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v33, "Two blocks outputs must have same number of outputs.");
    MIL::ValidationError::ValidationError(v25, &v34, v33, 315);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  result = std::vector<std::string const*>::reserve(a4, v9 >> 3);
  if (v7 != v8)
  {
    if ((*(****a3 + 24))(***a3) && (*(**(*a3)[3] + 24))(*(*a3)[3]))
    {
      v13 = MIL::IRValueType::AsTensorType(***a3);
      v14 = MIL::IRValueType::AsTensorType(*(*a3)[3]);
      v15 = (*(*v13 + 88))(v13);
      if (v15 == (*(*v14 + 88))(v14))
      {
        v16 = *a1;
        v17 = (*(*v13 + 96))(v13);
        v18 = (*(*v14 + 96))(v14);
        (*(*v13 + 88))(v13);
        MIL::IRTensorValueType::MakeWithShape();
      }

      v21 = __cxa_allocate_exception(0x48uLL);
      v22 = a2[1];
      *&v30 = *a2;
      *(&v30 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v29, "Input a and input b should have the same dtype.");
      MIL::ValidationError::ValidationError(v21, &v30, v29, 315);
    }

    v19 = __cxa_allocate_exception(0x48uLL);
    v20 = a2[1];
    *&v32 = *a2;
    *(&v32 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v31, "The case of non-tensor blocks outputs has not been implemented yet.");
    MIL::ValidationError::ValidationError(v19, &v32, v31, 315);
  }

  return result;
}

void sub_21819D0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (v38)
  {
    __cxa_free_exception(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::DeduceSameShape(MIL::IRUnknownDimension *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  HasVariadicUnknownDims = MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(a2);
  v9 = MIL::ValueTypeInferenceUtils::ShapeHasVariadicUnknownDims(a3);
  v10 = !v9;
  if (!HasVariadicUnknownDims || (v10 & 1) != 0)
  {
    if (!HasVariadicUnknownDims || v9)
    {
      if ((HasVariadicUnknownDims | v10))
      {
        v32 = a2[1] - *a2;
        if (v32 != a3[1] - *a3)
        {
          exception = __cxa_allocate_exception(0x48uLL);
          MIL::UnknownLocation::Make(exception);
        }

        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        std::vector<std::string const*>::reserve(a4, v32 >> 3);
        v34 = *a2;
        if (a2[1] != *a2)
        {
          v35 = 0;
          do
          {
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a4, &CompatibleDim);
            ++v35;
            v34 = *a2;
          }

          while (v35 < (a2[1] - *a2) >> 3);
        }

        return;
      }

      v36 = a4;
      v37 = a3;
      v38 = a2;
    }

    else
    {
      v36 = a4;
      v37 = a2;
      v38 = a3;
    }
  }

  else
  {
    VariadicUnknownDimIndex = MIL::ValueTypeInferenceUtils::FindVariadicUnknownDimIndex(a2);
    v12 = MIL::ValueTypeInferenceUtils::FindVariadicUnknownDimIndex(a3);
    v13 = *a2;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v46, v13, v13 + 8 * VariadicUnknownDimIndex, VariadicUnknownDimIndex);
    v14 = *a3;
    v44 = 0;
    v45 = 0;
    __p = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&__p, v14, v14 + 8 * v12, v12);
    CompatibleDim = 0;
    v50 = 0;
    v51 = 0;
    if ((v47 - v46) >> 3 <= ((v44 - __p) >> 3))
    {
      v15 = (v44 - __p) >> 3;
    }

    else
    {
      v15 = (v47 - v46) >> 3;
    }

    std::vector<std::string const*>::reserve(&CompatibleDim, v15);
    if (v15)
    {
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = v46;
        if (v18 >= (v47 - v46) >> 3)
        {
          break;
        }

        if (v18 >= (v44 - __p) >> 3)
        {
          goto LABEL_12;
        }

        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&CompatibleDim, &v40);
LABEL_13:
        ++v18;
        v17 += 8;
        if (v15 == v18)
        {
          goto LABEL_14;
        }
      }

      v19 = __p;
LABEL_12:
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&CompatibleDim, &v19[v17]);
      goto LABEL_13;
    }

LABEL_14:
    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }

    v20 = 8 * VariadicUnknownDimIndex;
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    v21 = a2[1];
    v22 = v20 + *a2 + 8;
    v44 = 0;
    v45 = 0;
    __p = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&__p, v22, v21, (v21 - v22) >> 3);
    v23 = a3[1];
    v24 = 8 * v12 + *a3 + 8;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const* const*>,std::__wrap_iter<MIL::IRDimension const* const*>>(&v40, v24, v23, (v23 - v24) >> 3);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    if ((v44 - __p) >> 3 <= ((v41 - v40) >> 3))
    {
      v25 = (v41 - v40) >> 3;
    }

    else
    {
      v25 = (v44 - __p) >> 3;
    }

    std::vector<std::string const*>::reserve(&v46, v25);
    if (v25)
    {
      v27 = 0;
      v28 = -8 * v25;
      do
      {
        v29 = v41 - v40;
        if (v27 + ((v44 - __p) >> 3) >= v25)
        {
          v31 = (v44 - __p) >> 3;
          if (v27 + (v29 >> 3) >= v25)
          {
            std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v46, &v52);
            goto LABEL_29;
          }

          v30 = __p + 8 * (v27 - v25) + 8 * v31;
        }

        else
        {
          v30 = &v41[v28];
        }

        std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](&v46, v30);
LABEL_29:
        ++v27;
        v28 += 8;
      }

      while (v27 != v25);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(a4, 0, CompatibleDim, v50, (v50 - CompatibleDim) >> 3);
    __p = MIL::IRUnknownDimension::Make(a1, 1);
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a4, &__p);
    std::vector<MIL::IRDimension const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MIL::IRDimension const**>,std::__wrap_iter<MIL::IRDimension const**>>(a4, *(a4 + 8), v46, v47, (v47 - v46) >> 3);
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (CompatibleDim)
    {
      v50 = CompatibleDim;
      operator delete(CompatibleDim);
    }
  }
}

void sub_21819D6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (a26)
  {
    (*(*a26 + 8))(a26);
  }

  __cxa_free_exception(v27);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceSelect(MIL::IRUnknownDimension **a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__p, "a");
  SingleValueType = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v7 = MIL::IRValueType::AsTensorType(SingleValueType);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "b");
  v8 = MIL::ValueTypeInferenceUtils::GetSingleValueType(a3, __p);
  v9 = MIL::IRValueType::AsTensorType(v8);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = (*(*v7 + 88))(v7);
  if (v10 != (*(*v9 + 88))(v9))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v16 = a2[1];
    *&v18 = *a2;
    *(&v18 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v17, "Two inputs should have the same dtype.");
    MIL::ValidationError::ValidationError(exception, &v18, v17, 315);
  }

  v11 = (*(*v7 + 96))(v7);
  v12 = (*(*v9 + 96))(v9);
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  v13 = *v11;
  v14 = v11[1];
  if (*v11 == v14)
  {
    if (__p == v12)
    {
      goto LABEL_15;
    }

    v13 = *v12;
    v14 = *(v12 + 8);
  }

  else
  {
    if (*v12 != *(v12 + 8))
    {
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = v21;
      v20 = v22;
LABEL_15:
      (*(*v7 + 88))(v7);
      MIL::IRTensorValueType::MakeWithShape();
    }

    if (__p == v11)
    {
      goto LABEL_15;
    }
  }

  std::vector<MIL::IRValueType const*>::__assign_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(__p, v13, v14, (v14 - v13) >> 3);
  goto LABEL_15;
}

void sub_21819DB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::ios15::CustomValueTypeInference::ValueTypeInferenceWhileLoop@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a3;
  if (a3[1] - *a3 != 48)
  {
    exception = __cxa_allocate_exception(0x48uLL);
    v17 = a1[1];
    *&v25 = *a1;
    *(&v25 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v24, "Output types of exactly two blocks have to be set to infer while_loop output types.");
    MIL::ValidationError::ValidationError(exception, &v25, v24, 315);
  }

  v10 = *(v6 + 24);
  v9 = *(v6 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, "loop_vars");
  v11 = std::__hash_table<std::__hash_value_type<std::string,MIL::IRValueType const*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MIL::IRValueType const*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MIL::IRValueType const*>>>::find<std::string>(a2, __p);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v12 = (v9 - v10) >> 3;
  v13 = (v11[6] - v11[5]) >> 4;
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 != v13)
  {
    v18 = __cxa_allocate_exception(0x48uLL);
    v19 = a1[1];
    *&v21 = *a1;
    *(&v21 + 1) = v19;
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v20, "while_loop body block must output same number of values as input.");
    MIL::ValidationError::ValidationError(v18, &v21, v20, 315);
  }

  v14 = *a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  return std::vector<MIL::IRValueType const*>::__init_with_size[abi:ne200100]<MIL::IRValueType const**,MIL::IRValueType const**>(a4, *(v14 + 24), *(v14 + 32), (*(v14 + 32) - *(v14 + 24)) >> 3);
}

void sub_21819DD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v30)
  {
    __cxa_free_exception(v29);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios15::anonymous namespace::DeduceSameShapeOneVariadic(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  VariadicUnknownDimIndex = MIL::ValueTypeInferenceUtils::FindVariadicUnknownDimIndex(a1);
  v7 = a2[1] - *a2;
  if (((a1[1] - *a1) >> 3) - 1 > (v7 >> 3))
  {
    exception = __cxa_allocate_exception(0x48uLL);
    MIL::UnknownLocation::Make(exception);
  }

  v8 = VariadicUnknownDimIndex;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::string const*>::reserve(a3, v7 >> 3);
  v10 = v8 - 1;
  if (v8 != 1)
  {
    v11 = 0;
    do
    {
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a3, &CompatibleDim);
      ++v11;
    }

    while (v10 != v11);
  }

  v12 = *a2;
  v13 = a2[1] - *a2;
  v14 = v8 + (v13 >> 3) - ((a1[1] - *a1) >> 3) + 1;
  if (v10 < v14)
  {
    v15 = 8 * v8 - 8;
    do
    {
      std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a3, (*a2 + v15));
      ++v10;
      v15 += 8;
    }

    while (v10 < v14);
    v12 = *a2;
    v13 = a2[1] - *a2;
  }

  for (i = v13 >> 3; v10 < i; i = (a2[1] - *a2) >> 3)
  {
    std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](a3, &CompatibleDim);
    ++v10;
    v12 = *a2;
  }
}

void sub_21819E00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  __cxa_free_exception(v17);
  _Unwind_Resume(a1);
}